class BoardingModel {
  final String imagePath;
  final String title;
  final String body;
  BoardingModel({
    required this.imagePath,
    required this.title,
    required this.body,
  });

  static List<BoardingModel> boarding = [
    BoardingModel(
      imagePath: "onboarding1",
      title: "Buy luxry cars",
      body: "Yes it's as easy as that, use our app to buy your dream car.",
    ),
    BoardingModel(
      imagePath: "onboarding2",
      title: "Buy luxry cars",
      body: "Yes it's as easy as that, use our app to buy your dream car.",
    ),
    BoardingModel(
      imagePath: "onboarding3",
      title: "Buy luxry cars",
      body: "Yes it's as easy as that, use our app to buy your dream car.",
    )
  ];
}
