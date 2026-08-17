import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'data/cubit/leaderboard_cubit.dart';
import 'data/cubit/leaderboard_state.dart';
import 'data/repo/leaderboard_repo.dart';
import 'data/model/leaderboard_response_body.dart';
import 'widgets/leaderboard_header.dart';
import 'widgets/duration_filter_buttons.dart';
import 'widgets/podium_widget.dart';
import 'widgets/ranking_list_item.dart';
import 'widgets/current_user_card.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  String _selectedDuration = 'All Time'; 

  String _periodFromLabel(String label) {
    switch (label) {
      case 'This Week':
        return 'week';
      case 'This Month':
        return 'month';
      case 'All Time':
      default:
        return 'all_time';
    }
  }

  LeaderboardEntry? _findByRank(List<LeaderboardEntry> list, int rank) {
    for (final entry in list) {
      if (entry.rank == rank) return entry;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LeaderboardCubit(LeaderboardRepo())
        ..getLeaderboard(_periodFromLabel(_selectedDuration)),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: const LeaderboardHeader(points: '0'),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: DurationFilterButtons(
                      selectedDuration: _selectedDuration,
                      onDurationChanged: (value) {
                        setState(() => _selectedDuration = value);
                        context.read<LeaderboardCubit>().getLeaderboard(
                              _periodFromLabel(value),
                            );
                      },
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Expanded(
                    child: BlocBuilder<LeaderboardCubit, LeaderboardState>(
                      builder: (context, state) {
                        if (state is LeaderboardLoading || state is LeaderboardInitial) {
                          return const Center(child: CircularProgressIndicator());
                        }

                        if (state is LeaderboardFailure) {
                          return Center(child: Text(state.error));
                        }

                        if (state is LeaderboardSuccess) {
                          final list = state.data.leaderboard;

                          final rank1 = _findByRank(list, 1);
final rank2 = _findByRank(list, 2);
final rank3 = _findByRank(list, 3);
final hasAnyPodium = rank1 != null || rank2 != null || rank3 != null;

final restList = list.where((e) => e.rank > 3).toList();

                      final myEntry = state.data.myRank != null
    ? _findByRank(list, state.data.myRank!)
    : null;

int pointsAway = 0;
if (myEntry != null && state.data.myRank! > 1) {
  final aboveEntry = _findByRank(list, state.data.myRank! - 1);
  if (aboveEntry != null) {
    pointsAway = aboveEntry.xp - myEntry.xp;
  }
}

                          return Column(
                            children: [
                          if (hasAnyPodium)
  PodiumWidget(
    first: rank1 != null
        ? PodiumEntry(name: rank1.student.name, points: rank1.xp.toString(), rank: 1)
        : null,
    second: rank2 != null
        ? PodiumEntry(name: rank2.student.name, points: rank2.xp.toString(), rank: 2)
        : null,
    third: rank3 != null
        ? PodiumEntry(name: rank3.student.name, points: rank3.xp.toString(), rank: 3)
        : null,
  ),
                              SizedBox(height: 20.h),
                              Expanded(
                                child: ListView.builder(
                                  padding: EdgeInsets.only(bottom: 8.h),
                                  itemCount: restList.length,
                                  itemBuilder: (context, index) {
                                    final entry = restList[index];
                                    return RankingListItem(
                                      rank: entry.rank,
                                      name: entry.student.name,
                                      points: entry.xp.toString(),
                                    );
                                  },
                                ),
                              ),
                        if (state.data.myRank != null)
  CurrentUserCard(
    rank: state.data.myRank!,
    name: myEntry?.student.name ?? 'You',
  ),
                            ],
                          );
                        }

                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}