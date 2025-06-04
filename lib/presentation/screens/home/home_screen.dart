import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';
import 'package:springboot_test_bench/data/models/chatroom_model.dart';
import 'package:springboot_test_bench/data/models/friend_model.dart';
import 'package:springboot_test_bench/data/provider/room_provider.dart';
import 'package:springboot_test_bench/presentation/components/chatTile.dart';
import 'package:springboot_test_bench/presentation/screens/chat_screen/chat_screen.dart';
import 'package:springboot_test_bench/presentation/screens/chat_screen/cubit/chat_cubit.dart';
import 'package:springboot_test_bench/presentation/screens/friends/friends_req_screen.dart';
import 'package:springboot_test_bench/presentation/screens/home/cubit/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit _homeCubit;

  @override
  void initState() {
    super.initState();
    _homeCubit = HomeCubit()
      ..fetchFriends(); // 👈 Auto-fetch on screen creation
  }

  @override
  void dispose() {
    _homeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _homeCubit,
      child: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {},
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          bool isLoading = state is friendsLoading;
          final List<FriendModel> friends =
              state is loadedFriends ? state.friends : [];

          return Scaffold(
            backgroundColor: kprimaryColor,
            appBar: AppBar(
              title: Text(
                'Your Chats',
                style: appbarStyle,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FriendsReqScreen()));
                    },
                    child: const Icon(
                      Icons.people,
                    ),
                  ),
                ),
              ],
            ),
            body: isLoading
                ? const Center(
                    child: CircularProgressIndicator(color: kWhiteColor),
                  )
                : friends.length == 0 || friends.isEmpty || friends == []
                    ? SizedBox(
                        height: 200.h,
                        child: Center(
                          child: Text('No Friends Found',
                              style: subHeadingTextStyle.copyWith(
                                color: kWhiteColor,
                              )),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: friends.length,
                        itemBuilder: (context, index) {
                          final FriendModel friend = friends[index];

                          return ChatTile(friend: friend);
                        },
                      ),
          );
        }),
      ),
    );
  }
}
