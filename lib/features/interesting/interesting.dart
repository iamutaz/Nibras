
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/features/interesting/widgets/interesting_data.dart';
import 'data/cubit/categories_cubit.dart';
import 'data/cubit/categories_state.dart';
import 'data/repo/categories_repo.dart';
import 'widgets/bottom_actions.dart';
import 'widgets/choice_chip.dart';
import 'widgets/choice_tile.dart';
import 'widgets/interesting_header.dart';
import 'widgets/question_box.dart';

class Interesting extends StatefulWidget {
  const Interesting({super.key});

  @override
  State<Interesting> createState() => _InterestingState();
}

class _InterestingState extends State<Interesting> {
  final PageController _pageController = PageController();
  final TextEditingController _searchController = TextEditingController();

  int _currentPage = 0;
  String _searchText = '';
  final List<String> _selectedProfessions = [];
  String? _selectedGoal;

  bool get _isFirstPage => _currentPage == 0;

  bool get _canContinue {
    return _isFirstPage
        ? _selectedGoal != null
        : _selectedProfessions.isNotEmpty;
  }

  List<String> _filteredProfessions(List<String> professions) {
    if (_searchText.trim().isEmpty) return professions;

    return professions
        .where(
          (item) => item.toLowerCase().contains(_searchText.toLowerCase()),
        )
        .toList();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _goNext() {
    if (!_canContinue) return;

    if (_isFirstPage) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
     
    }
  }

  void _skip() {
   
  }

  void _toggleProfession(String profession) {
    setState(() {
      if (_selectedProfessions.contains(profession)) {
        _selectedProfessions.remove(profession);
      } else {
        _selectedProfessions.add(profession);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoriesCubit(CategoriesRepo())..getCategories(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() => _currentPage = index);
                    },
                    children: [
                      _GoalPage(
                        selectedGoal: _selectedGoal,
                        onGoalSelected: (value) {
                          setState(() => _selectedGoal = value);
                        },
                      ),
                      BlocBuilder<CategoriesCubit, CategoriesState>(
                        builder: (context, state) {
                          if (state is CategoriesLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          if (state is CategoriesFailure) {
                            return Center(
                              child: Text(state.error),
                            );
                          }

                          if (state is CategoriesSuccess) {
                            final professions = state.categories
                                .map((category) => category.name)
                                .toList();

                            return _ProfessionPage(
                              searchController: _searchController,
                              professions: _filteredProfessions(professions),
                              selectedProfessions: _selectedProfessions,
                              onSearchChanged: (value) {
                                setState(() => _searchText = value);
                              },
                              onProfessionSelected: _toggleProfession,
                            );
                          }

                          return const SizedBox();
                        },
                      ),
                    ],
                  ),
                ),
                BottomActions(
                  buttonText: _isFirstPage ? 'Next' : 'Save',
                  isEnabled: _canContinue,
                  onSkip: _skip,
                  onPressed: _goNext,
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GoalPage extends StatelessWidget {
  const _GoalPage({
    required this.selectedGoal,
    required this.onGoalSelected,
  });

  final String? selectedGoal;
  final ValueChanged<String> onGoalSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterestingHeader(),
          const QuestionBox(
            question: 'What’s Your Current\nGoal?',
          ),
          const SizedBox(height: 28),
          ...InterestingData.goals.map(
            (goal) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ChoiceTile(
                title: goal,
                isSelected: selectedGoal == goal,
                onTap: () => onGoalSelected(goal),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _ProfessionPage extends StatelessWidget {
  const _ProfessionPage({
    required this.searchController,
    required this.professions,
    required this.selectedProfessions,
    required this.onSearchChanged,
    required this.onProfessionSelected,
  });

  final TextEditingController searchController;
  final List<String> professions;
  final List<String> selectedProfessions;
  final ValueChanged<String> onSearchChanged;
  final ValueChanged<String> onProfessionSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterestingHeader(),
          const QuestionBox(
            question: 'What Profession Are\nYou Learning For?',
          ),
          const SizedBox(height: 24),
          TextField(
            controller: searchController,
            onChanged: onSearchChanged,
            style: const TextStyle(
              color: AppColors.hintcolor,
              fontSize: 14,
            ),
            decoration: InputDecoration(
              hintText: 'Search for your profession',
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.mainBlack,
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 18),
              border: _inputBorder(),
              enabledBorder: _inputBorder(),
              focusedBorder: _inputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 14,
            runSpacing: 14,
            children: professions.map((profession) {
              return ChoiceChipItem(
                title: profession,
                isSelected: selectedProfessions.contains(profession),
                onTap: () => onProfessionSelected(profession),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  OutlineInputBorder _inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(
        color: Color(0xffEEEEF2),
      ),
    );
  }
}

