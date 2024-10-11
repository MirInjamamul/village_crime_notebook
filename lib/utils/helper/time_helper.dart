

class TimeHelper{
  String formatSecondToMinute(int seconds){
    int minutes = seconds ~/60;
    int remainingSeconds = seconds % 60;
    String formattedMinutes = minutes.toString().padLeft(2, '0');
    String formattedSeconds = remainingSeconds.toString().padLeft(2, '0');
    return "$formattedMinutes:$formattedSeconds";
  }

  String getStringFromDate(DateTime date) {
    DateTime today = DateTime.now();
    if (date.year == today.year && date.month == today.month && date.day == today.day) {
      return "Today";
    } else if (date.year == today.year && date.month == today.month && date.day == today.day - 1) {
      return "Yesterday";
    } else {
      return "${date.day} ${getMonthName(date.month)} ${date.year}";
    }
  }

  String getMonthName(int month) {
    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    return months[month - 1];
  }
}

