import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';
import 'package:springboot_test_bench/presentation/screens/friends/cubit/friends_req_cubit.dart';
import 'package:springboot_test_bench/presentation/screens/search_friends/search_friends_screen.dart';

class FriendsReqScreen extends StatefulWidget {
  const FriendsReqScreen({super.key});

  @override
  State<FriendsReqScreen> createState() => _FriendsReqScreenState();
}

class _FriendsReqScreenState extends State<FriendsReqScreen> {
  final FriendsReqCubit _friendsReqCubit = FriendsReqCubit();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _friendsReqCubit.loadFriendRequests();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _friendsReqCubit,
      child: Scaffold(
        backgroundColor: kprimaryColor,
        appBar: AppBar(
          title: const Text('Friend Requests'),
          actions: [
            //add Friends button
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                // Navigate to add friends screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchFriendsScreen()));
              },
            ),
          ],
        ),
        body: BlocBuilder<FriendsReqCubit, FriendsReqState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loadingReq: () =>
                  const Center(child: CircularProgressIndicator()),
              loadedReq: (requests) {
                return ListView.builder(
                  itemCount: requests.length,
                  itemBuilder: (context, index) {
                    final request = requests[index];
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: kprimaryColor,
                            child: Text(
                              request.senderUsername[0].toUpperCase(),
                            )),
                        title: Text(request.senderUsername),
                        subtitle: Text(request.senderEmail),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.check),
                              onPressed: () {
                                _friendsReqCubit
                                    .acceptFriendRequest(request.senderId);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                _friendsReqCubit
                                    .rejectFriendRequest(request.senderId);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                    //   child: ListTile(
                    //     leading: CircleAvatar(
                    //       backgroundColor: kprimaryColor,
                    //       child: Text(request.senderUsername[0].toUpperCase(),
                    //           style: const TextStyle(color: kWhiteColor)),
                    //     ),
                    //     title: Text(
                    //       request.senderUsername,
                    //       style: friendTileNameStyle,
                    //     ),
                    //     subtitle: Text(
                    //       request.senderEmail,
                    //       style: friendTileLastMessageStyle,
                    //     ),
                    //   ),
                    // );
                  },
                );
              },
              error: (message) => Center(
                  child: Text(
                message,
                style: subHeadingTextStyle,
              )),
            );
          },
        ),
      ),
    );
  }
}
