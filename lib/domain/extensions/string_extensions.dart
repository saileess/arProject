import '../services/navigation_services/routers/routing_dto.dart';

extension StringExtension on String {
  RoutingDto get getRoutingData {
    final uriData = Uri.parse(this);
    return RoutingDto(
        route: uriData.path, queryParameters: uriData.queryParameters);
  }

  String get bookBibleName {
    // print(this);
    String bookName = this;

    if (bookName.length >= 7) {
      bookName = bookName.substring(0, 5);

      bookName = '$bookName...';
    }

    return bookName;
  }

  String get modifyVerseNo {
    var result = split('.');

    String ss = result[1];
    int index = ss.indexOf('0');

    if (ss.length < 3) {
      index = ss.indexOf('0');
      ss = '${ss.substring(1)}0';
      return ss;
    }
    if (index == 0) {
      ss = ss.substring(1);
      index = ss.indexOf('0');
      if (index == 0) {
        ss = ss.substring(1);
      }
      return ss;
    } else if (index == 1) {
      return ss;
    } else {
      return ss;
    }
  }

  String get modifyChapterNo {
    var result = split('.');
    return result[0];
  }
}
