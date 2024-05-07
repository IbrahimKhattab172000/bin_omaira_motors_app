class StepperData {
  StepperData({
    this.id = '',
    required this.label,
    this.state = StepperState.normal,
  });

  String id;
  String label;
  StepperState state;
}

enum StepperState { normal, loading, error, success }
