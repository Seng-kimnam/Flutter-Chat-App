import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class LinkFormat extends StatelessWidget {
  final String url;
  final String throwMessage;
  final String label;
  final String addressUrl;
  const LinkFormat({super.key ,
    required this.url,
    required this.throwMessage,
    required this.label,
    required this.addressUrl
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () async {

            if(!await launchUrl(Uri.parse(addressUrl))){
                throw (throwMessage);
            }
      },
      child: Column(

        children: [

          Text(label),
          Text(url)
      ],
      ),
    );
  }
}
