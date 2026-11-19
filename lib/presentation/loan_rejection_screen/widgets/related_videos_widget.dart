import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class _VideoData {
  final String thumbnailUrl;
  final String semanticLabel;
  final String title;

  const _VideoData({
    required this.thumbnailUrl,
    required this.semanticLabel,
    required this.title,
  });
}

class RelatedVideosWidget extends StatelessWidget {
  const RelatedVideosWidget({super.key});

  static const List<_VideoData> _videos = [
    _VideoData(
      thumbnailUrl:
          'https://images.pexels.com/photos/6801648/pexels-photo-6801648.jpeg?w=300',
      semanticLabel:
          'Blue Bajaj Finance logo on dark background with financial charts',
      title: 'How to track your Bajaj Finance FD?',
    ),
    _VideoData(
      thumbnailUrl:
          'https://images.pixabay.com/photo/2017/09/07/08/54/money-2724241_640.jpg',
      semanticLabel:
          'Glowing text Health Wealth Success on warm gradient background at sunset',
      title: 'Health, Wealth & Success',
    ),
    _VideoData(
      thumbnailUrl:
          'https://images.pexels.com/photos/3943716/pexels-photo-3943716.jpeg?w=300',
      semanticLabel:
          'Man in yellow suspenders tossing money bills in the air with pink background',
      title: 'Why is diversification im...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Watch related videos',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1A1A1A),
              ),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: _videos.length,
              itemBuilder: (context, i) => _VideoCard(video: _videos[i]),
            ),
          ),
        ],
      ),
    );
  }
}

class _VideoCard extends StatefulWidget {
  final _VideoData video;

  const _VideoCard({required this.video});

  @override
  State<_VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<_VideoCard> {
  // TODO: Replace with [Riverpod/Bloc] for production
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTapCancel: () => setState(() => _pressed = false),
      onTap: () {},
      child: AnimatedScale(
        scale: _pressed ? 0.96 : 1.0,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOutCubic,
        child: Container(
          width: 148,
          margin: const EdgeInsets.only(right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CustomImageWidget(
                      imageUrl: widget.video.thumbnailUrl,
                      width: 148,
                      height: 100,
                      fit: BoxFit.cover,
                      semanticLabel: widget.video.semanticLabel,
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(153),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: CustomIconWidget(
                        iconName: 'play_arrow',
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                widget.video.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF1A1A1A),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
