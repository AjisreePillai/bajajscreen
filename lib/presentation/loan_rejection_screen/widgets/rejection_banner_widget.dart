import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class RejectionBannerWidget extends StatelessWidget {
  const RejectionBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFFDE8E8),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: CustomIconWidget(
                iconName: 'assignment_late',
                color: const Color(0xFFC0392B),
                size: 36,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Unable to process your application',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF1A1A1A),
              height: 1.3,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xFF555555),
              height: 1.5,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            "We're unable to offer you a loan at this time based on your credit score. Thank you for your interest.",
          ),
        ],
      ),
    );
  }
}
