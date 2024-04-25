class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List contents = [
  OnboardingContent(
      title: 'Discover Top Doctors',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia libero ut metus convallis tempor. Vestibulum consequat, tortor mattis consequat',
      image: 'assets/images/svg/s1.svg'),
  OnboardingContent(
      title: 'Ask a Doctor Online',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia libero ut metus convallis tempor. Vestibulum consequat, tortor mattis consequat',
      image: 'assets/images/svg/s2.svg'),
  OnboardingContent(
      title: 'Get Expert Advice',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia libero ut metus convallis tempor. Vestibulum consequat, tortor mattis consequat',
      image: 'assets/images/svg/s3.svg')
];
