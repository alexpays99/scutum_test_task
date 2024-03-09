class OnboardPageItem {
  OnboardPageItem({
    required this.lottieAsset,
    required this.text,
    this.animationDuration,
  });

  String lottieAsset;
  Duration? animationDuration;
  String text;
}
