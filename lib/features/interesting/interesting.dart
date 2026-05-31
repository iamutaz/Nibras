import 'package:flutter/material.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';

import 'interesting_data.dart';
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
  String? _selectedProfession;
  String? _selectedGoal;

  bool get _isFirstPage => _currentPage == 0;

  bool get _canContinue {
    return _isFirstPage
        ? _selectedGoal != null
        : _selectedProfession != null;
  }

  List<String> get _filteredProfessions {
    if (_searchText.trim().isEmpty) return InterestingData.professions;

    return InterestingData.professions
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
      return;
    }
  }

  void _skip() {
    if (_isFirstPage) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    _ProfessionPage(
                      searchController: _searchController,
                      professions: _filteredProfessions,
                      selectedProfession: _selectedProfession,
                      onSearchChanged: (value) {
                        setState(() => _searchText = value);
                      },
                      onProfessionSelected: (value) {
                        setState(() => _selectedProfession = value);
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
    required this.selectedProfession,
    required this.onSearchChanged,
    required this.onProfessionSelected,
  });

  final TextEditingController searchController;
  final List<String> professions;
  final String? selectedProfession;
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
              prefixIcon: const Icon(Icons.search,
              color: AppColors.mainBlack
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
                isSelected: selectedProfession == profession,
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