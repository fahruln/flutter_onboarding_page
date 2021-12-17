class OnboardingContent {
  String? image;
  String? title;
  String? description;

  OnboardingContent({this.image, this.title, this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      image: 'images/Work From Home.png',
      title: 'Play Anywhere',
      description:
          'The video call feature can be\naccessed from anywhere in your\nhouse to help you.'),
  OnboardingContent(
      image: 'images/Work From Home(1).png',
      title: 'Stay Healthty',
      description:
          'Nobody likes to be alone and the\nbuilt-in group video call feature\nhelps you connect.'),
  OnboardingContent(
      image: 'images/Work From Home(2).png',
      title: 'Make Connections',
      description:
          'While working the app reminds\nyou to smile, laugh, walk and talk\nwith those who matters.')
];
