import 'package:url_launcher/url_launcher.dart';

class LaunchURL {
  void launchURL(Uri uri) async {
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }
}
