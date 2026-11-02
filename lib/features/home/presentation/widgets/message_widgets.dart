import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class MessageWidget extends StatelessWidget {
  final String message;
  final bool isMessageSentByYou;
  final String? pathToImage;

  const MessageWidget({
    super.key,
    required this.message,
    this.isMessageSentByYou = false,
    this.pathToImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMessageSentByYou ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Container(
          
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isMessageSentByYou ? AppColors.green : AppColors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isMessageSentByYou ? 0 : 16),
              topRight: Radius.circular(isMessageSentByYou ? 16 : 0),
              bottomLeft: const Radius.circular(16),
              bottomRight: const Radius.circular(16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
              if (pathToImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric( vertical: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    
                    child: Image.asset(
                      pathToImage!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
