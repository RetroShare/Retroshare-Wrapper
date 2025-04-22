// Return yyyy-mm-dd at hh:mm

String getFormatedTime(int time) {
  final date = getTimeSinceEpoch(time);
  return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} at ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
}

DateTime getTimeSinceEpoch(int time) =>
    DateTime.fromMillisecondsSinceEpoch(time * 1000);

/// Return the distant result of a perceptual search in %
///
/// Where 32 is all diferent and 0 is all equal
double getPerceptualSearchPercent(int distant) => (distant / 32) * 100;
