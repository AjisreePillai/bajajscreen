import 'package:flutter/material.dart';

import './widgets/app_bar_widget.dart';
import './widgets/application_details_widget.dart';
import './widgets/next_steps_card_widget.dart';
import './widgets/other_products_widget.dart';
import './widgets/rejection_banner_widget.dart';
import './widgets/related_videos_widget.dart';

class LoanRejectionScreen extends StatelessWidget {
  const LoanRejectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width >= 600;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        top: false,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: isTablet ? 600 : double.infinity,
            ),
            child: Column(
              children: [
                const LoanRejectionAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RejectionBannerWidget(),
                        const SizedBox(height: 8),
                        const NextStepsCardWidget(),
                        const SizedBox(height: 8),
                        const ApplicationDetailsWidget(),
                        const SizedBox(height: 8),
                        const OtherProductsWidget(),
                        const SizedBox(height: 8),
                        const RelatedVideosWidget(),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
