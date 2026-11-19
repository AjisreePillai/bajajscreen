import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class LoanRejectionAppBar extends StatelessWidget {
  const LoanRejectionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A2B4A),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: CustomIconWidget(
                    iconName: 'arrow_back',
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      CustomIconWidget(
                        iconName: 'search',
                        color: Colors.grey[500]!,
                        size: 18,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          'Search Bajaj Finance',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 13,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(width: 1, height: 20, color: Colors.grey[300]),
                      const SizedBox(width: 8),
                      CustomIconWidget(
                        iconName: 'camera_alt',
                        color: Colors.grey[600]!,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      CustomIconWidget(
                        iconName: 'mic',
                        color: Colors.grey[600]!,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const CustomIconWidget(
                    iconName: 'shopping_cart',
                    color: Colors.white,
                    size: 24,
                  ),
                  Positioned(
                    top: -6,
                    right: -6,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8521A),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '4',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
