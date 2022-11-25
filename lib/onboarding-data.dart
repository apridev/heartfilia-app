class OnBoardingData{
  final String title;
  final  String image;
  final String subtitle;

  OnBoardingData({
    required this.title,
    required this.image,
    required this.subtitle
  });
}

List<OnBoardingData> onBoardingList = [
  OnBoardingData(
    title: 'Radiant Skin, \nMade By Nature', 
    image: 'assets/images/onboarding_one.png', 
    subtitle: 'Always Natural and Always Effective'
  ),
  
  OnBoardingData(
    title: 'Fresh Facial \nTreatments for You ', 
    image: 'assets/images/onboarding_two.png', 
    subtitle: 'New arrivals are here!'
  ),

  OnBoardingData(
    title: 'Give Your Skin \nSome Time Off', 
    image: 'assets/images/onboarding_three.png', 
    subtitle: 'With our vegan and cruelty-free'
  ),
];