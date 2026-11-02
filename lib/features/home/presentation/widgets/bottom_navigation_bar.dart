import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        //const SizedBox(width: 16),
        Flexible(
          child: TextField(
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
            decoration: InputDecoration(
              filled: false,

              hintText: 'Type a message ...',
              hintStyle: const TextStyle(
                color: AppColors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
              ),

              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(39),
                borderSide: BorderSide(
                  color: AppColors.green,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(39),
                borderSide: BorderSide(
                  color: AppColors.green,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(39),
                borderSide: BorderSide(
                  color: AppColors.green,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(39),
                borderSide: BorderSide(
                  color: AppColors.green,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      AppImages.sendIcon,
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              prefixIcon: IconButton(
                icon: SvgPicture.asset(
                  AppImages.cameraIcon,
                  width: 24,
                  height: 24,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        ClipOval(
          child: Material(
            color: AppColors.green,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  AppImages.micIcon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
