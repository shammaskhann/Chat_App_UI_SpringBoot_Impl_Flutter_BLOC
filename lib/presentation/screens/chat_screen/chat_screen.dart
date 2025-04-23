import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';
import 'package:springboot_test_bench/data/models/chatroom_model.dart';
import 'package:springboot_test_bench/data/models/message_model.dart';
import 'package:springboot_test_bench/presentation/screens/chat_screen/cubit/chat_cubit.dart';
import 'package:springboot_test_bench/presentation/screens/home/home_screen.dart';
import 'package:springboot_test_bench/services/sharedPref_service.dart';
import 'package:springboot_test_bench/services/websocketservice.dart';

class ChatScreen extends StatefulWidget {
  final ChatRoom chatroom;
  const ChatScreen({required this.chatroom, super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messageController = TextEditingController();
  final WebSocketService _webSocketService = WebSocketService();
  final ScrollController _scrollController = ScrollController();
  String? _myId;

  @override
  void initState() {
    super.initState();
    init();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
  }

  init() async {
    String? id = await SharedPreferencesService.getUserId();
    log("📩 Received ID from initializer screen: $id");
    setState(() {
      _myId = id;
    });
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }

  @override
  Widget build(BuildContext context) {
    //_webSocketService.connect(widget.chatroom.roomId);
    return BlocProvider(
      create: (context) => ChatCubit(widget.chatroom, _webSocketService),
      child: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          List<Message> messages = [];
          // if(state is ) {
          //   context.read<ChatCubit>().emit(const chatLoading());
          // }
          messages.addAll(widget.chatroom.messages);
          // if (state is chatLoadId) {
          //   //_myId = state.id;
          //   log("📩 Received ID from initializer screen: $_myId");
          //   setState(() {
          //     log("State Id ${state.id}");
          //     _myId = state.id;
          //   });
          // }
          if (state is chatLoaded) {
            messages = state.messages;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _scrollToBottom();
            });
          }

          return Scaffold(
            backgroundColor: kprimaryColor,
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 52, 48, 137),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              title: Text(widget.chatroom.name),
            ),
            body: SafeArea(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  state.when(
                    initial: () => _buildLoading(),
                    loading: () => _buildLoading(),
                    loadId: (id) => _buildLoading(),
                    loaded: (messages) =>
                        Expanded(child: _buildMessageList(messages)),
                    error: (error) => Center(child: Text(error)),
                  ),
                  _buildMessageInput(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildMessageList(List<Message> messages) {
    return ListView.builder(
      controller: _scrollController,
      reverse: true,
      // shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return buildMessage(messages[index]);
      },
    );
  }

  Widget _buildMessageInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: _messageController,
                minLines: 1,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                style: GoogleFonts.oxanium(
                    fontSize: 14.sp, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message',
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              if (_messageController.text.isNotEmpty) {
                log("📩 Sending Message: ${_messageController.text},${_myId}");
                context
                    .read<ChatCubit>()
                    .sendMessage(_myId!, _messageController.text);
                _messageController.clear();
              }
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.send, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMessage(Message message) {
    return Align(
      alignment: message.sender == _myId
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: message.sender == _myId ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message.content,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
