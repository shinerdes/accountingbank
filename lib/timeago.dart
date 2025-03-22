String convertToAgo(DateTime input) {
//diff= 지금과, 입력된 시간의 차이
  Duration diff = DateTime.now().difference(input);

  if (diff.inDays >= 1) {
    return '${diff.inDays} 일 전';
  } else if (diff.inHours >= 1) {
    return '${diff.inHours} 시간 전';
  } else if (diff.inMinutes >= 1) {
    return '${diff.inMinutes} 분 전';
  } else if (diff.inSeconds >= 1) {
    return '${diff.inSeconds} 초 전';
  } else {
    return '방금 전';
  }
}
