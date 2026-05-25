import '../../domain/entities/onboarding_item.dart';

class OnboardingLocalDataSource {

  List<OnboardingItem> getOnboardingItems() {

    return [

      OnboardingItem(
       title: 'Welcome to\nNibras',
        description:
            'Your smart companion for a joyful and inspiring learning journey',
        image: 'assets/images/onboarding_1.png.png',
        highlightWidth: 107,
      ),

      OnboardingItem(
       title: 'Learn with\nFun & Interaction',
        description:
            'Visual lessons and interactive content that make understanding effortless',
        image: 'assets/images/onboarding_2.png.png',
        highlightWidth: 260,
      ),

      OnboardingItem(
        title: 'Discover &\nExperiment',
        description:
            'Unleash your curiosity and explore new horizons of knowledge',
        image: 'assets/images/onboarding_3.png.png',
        highlightWidth: 180,
      ),

      OnboardingItem(
       title: 'our Personal\nSpace',
        description:
            'Track your progress, achieve your goals, and build your learning\nprofile confidently',
        image: 'assets/images/onboarding_4.png.png',
        highlightWidth: 115,
      ),
      

    ];
  }
}