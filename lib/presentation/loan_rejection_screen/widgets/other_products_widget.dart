import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class _ProductData {
  final String imageUrl;
  final String semanticLabel;
  final String name;
  final String price;
  final String subtitle;
  final bool isRecommended;

  const _ProductData({
    required this.imageUrl,
    required this.semanticLabel,
    required this.name,
    required this.price,
    required this.subtitle,
    this.isRecommended = false,
  });
}

class OtherProductsWidget extends StatelessWidget {
  const OtherProductsWidget({super.key});

  static const List<_ProductData> _products = [
    _ProductData(
      imageUrl:
          'https://images.pexels.com/photos/6863183/pexels-photo-6863183.jpeg?w=300',
      semanticLabel:
          'Person holding financial report documents with charts on white paper',
      name: 'Banking Fitness\nReport',
      price: '₹599/ year',
      subtitle: '100% digital process',
    ),
    _ProductData(
      imageUrl:
          'https://images.pixabay.com/photo/2015/11/07/11/44/wallet-1030895_640.jpg',
      semanticLabel:
          'Brown leather wallet on white background with credit cards',
      name: 'Wallet Care',
      price: '₹699/ year',
      subtitle: 'Free Zee subscription',
      isRecommended: true,
    ),
    _ProductData(
      imageUrl:
          'https://images.pexels.com/photos/7991576/pexels-photo-7991576.jpeg?w=300',
      semanticLabel: 'Person reviewing insurance documents at a desk',
      name: 'Accidental\nInsurance',
      price: 'Lifetime',
      subtitle: 'Zero documentation',
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
              'Other products you can apply for',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1A1A1A),
              ),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: _products.length,
              itemBuilder: (context, i) => _ProductCard(product: _products[i]),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final _ProductData product;

  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE5E5E5), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: CustomImageWidget(
                  imageUrl: product.imageUrl,
                  width: 148,
                  height: 110,
                  fit: BoxFit.cover,
                  semanticLabel: product.semanticLabel,
                ),
              ),
              if (product.isRecommended)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFF2E7D32),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CustomIconWidget(
                          iconName: 'thumb_up',
                          color: Colors.white,
                          size: 10,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          'Recommended',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A1A1A),
                    height: 1.35,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  product.price,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1A1A1A),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  product.subtitle,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF777777),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
