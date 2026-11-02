import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../widgets/appbar/leading.dart';
import '../widgets/appbar/title_widget.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/message_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.green,
          leadingWidth: 52,
      
          leading: const LeadingWidget(),
          titleSpacing: 0,
          toolbarHeight: 68,
          title: const TitleWidget(),
          actions: [
            const SizedBox(width: 16),
            SvgPicture.asset(AppImages.phoneIcon, width: 24, height: 24),
            const SizedBox(width: 16),
            SvgPicture.asset(AppImages.videoIcon, width: 24, height: 24),
            const SizedBox(width: 16),
            SvgPicture.asset(AppImages.moreIcon, width: 24, height: 24),
            const SizedBox(width: 16),
          ],
        ),
        backgroundColor: Colors.transparent,
      
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(AppImages.backgroundPage, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          // massages text
                          const SizedBox(height: 16),
                          // list of messages
                          const MessageWidget(
                            message: 'Hello !',
                            isMessageSentByYou: true,
                          ),
                          const MessageWidget(message: 'Hello !'),
                          const MessageWidget(
                            message:
                                'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                            isMessageSentByYou: true,
                          ),
                          
                          const MessageWidget(
                            message: "what a Great Content Tp learn Flutter",
                            isMessageSentByYou: true,
                            pathToImage: AppImages.routeImage,
                          ),
                          const MessageWidget(
                            message: 'what a Great Content Tp learn Flutter',
                          ),
                          SizedBox(height: 16),
                          // text input field outline border green color with send icon and mic icon
                        ],
                      ),
                    ),
                  ),
                  BottomNavigationBarWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
