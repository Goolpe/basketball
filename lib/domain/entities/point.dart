class TotalDone {
  const TotalDone({
    required this.total,
    required this.done,
  });

  final int total;
  final int done;

  String get doneOnTotal => '$done/$total';
  String get percent => (done / total * 100).round().toString();
}
