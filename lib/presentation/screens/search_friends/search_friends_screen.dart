import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';
import 'package:springboot_test_bench/presentation/screens/search_friends/cubit/search_friends_cubit.dart';

class SearchFriendsScreen extends StatefulWidget {
  const SearchFriendsScreen({super.key});

  @override
  State<SearchFriendsScreen> createState() => _SearchFriendsScreenState();
}

class _SearchFriendsScreenState extends State<SearchFriendsScreen> {
  final TextEditingController _searchController = TextEditingController();
  late final SearchFriendsCubit _searchFriendCubit;

  @override
  void initState() {
    super.initState();
    _searchFriendCubit = SearchFriendsCubit();
    _searchFriendCubit.getAllUsers();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFriendCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => _searchFriendCubit,
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          title: const Text('Search Friends'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search by username...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _searchController.clear();
                      _searchFriendCubit.getAllUsers();
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  if (value.length > 2) {
                    _searchFriendCubit.getAllUsers(searchQuery: value);
                  } else if (value.isEmpty) {
                    _searchFriendCubit.getAllUsers();
                  }
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchFriendsCubit, SearchFriendsState>(
                builder: (context, state) {
                  return state.when(
                    friendRequestSent: (message) =>
                        const Center(child: CircularProgressIndicator()),
                    initial: () =>
                        const Center(child: Text('Search for friends')),
                    loadingAllUsers: () =>
                        const Center(child: CircularProgressIndicator()),
                    loadedAllUsers: (users) {
                      if (users.isEmpty) {
                        return const Center(child: Text('No users found'));
                      }
                      return ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: theme.primaryColor,
                              child: Text(
                                user.username[0].toUpperCase(),
                                style: TextStyle(
                                    color: theme.colorScheme.onPrimary),
                              ),
                            ),
                            title: Text(user.username),
                            subtitle: Text(user.email),
                            trailing: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: theme.primaryColor,
                              ),
                              onPressed: () {
                                context
                                    .read<SearchFriendsCubit>()
                                    .sendFriendRequest(user.id);
                              },
                              child: Text('Add Friend',
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    color: kWhiteColor,
                                  )),
                            ),
                          );
                        },
                      );
                    },
                    error: (message) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Error: $message'),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.primaryColor,
                            ),
                            onPressed: () => context
                                .read<SearchFriendsCubit>()
                                .getAllUsers(),
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
