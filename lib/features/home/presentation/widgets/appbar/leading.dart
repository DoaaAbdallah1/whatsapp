import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            SizedBox(width: 16),
            SvgPicture.asset(AppImages.leftArrowIcon, width: 8, height: 16),
            SizedBox(width: 16),
          ],
        );
  }
}