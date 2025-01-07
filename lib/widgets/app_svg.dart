import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  final String assets;
  final String currentCollor;
  final String replaceCollor;
  const AppSvg(
    this.assets, {
    this.currentCollor = '3F414E',
    this.replaceCollor = 'FFFFFF',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadAndModifySvg(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error loading SVG: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return SvgPicture.string(
            snapshot.data!,
          );
        } else {
          return const Text('No SVG data available');
        }
      },
    );
  }

  Future<String> _loadAndModifySvg() async {
    String rawSvg = await rootBundle.loadString(assets);

    String modifiedSvg =
        rawSvg.replaceAll('#$currentCollor', '#$replaceCollor');

    return modifiedSvg;
  }
}
