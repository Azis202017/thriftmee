import 'package:flutter/material.dart';

import '../../constant/image_collection.dart';
import '../theme/color.dart';
import '../theme/font.dart';

class CardFeed extends StatelessWidget {
  final String imageToko;
  final String namaToko;
  final String icon1;
  final String icon2;
  final String icon3;
  final String feed;
  final String tanggalUpload;
  final String imageFeed;
  final void Function()? onTapIcon1;
  final void Function()? onTapIcon2;
  final void Function()? onTapIcon3;
  final void Function()? onTapCart;
  final bool? activeStateIcon1;
  final String iconActive1;

  const CardFeed({
    super.key,
    required this.imageToko,
    required this.namaToko,
    required this.imageFeed,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.feed,
    required this.tanggalUpload,
    this.onTapIcon1,
    this.onTapIcon2,
    this.onTapIcon3,
    this.onTapCart,
    this.activeStateIcon1 = false,
    required this.iconActive1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(
                53,
              ),
              child: Image.network(
                imageToko,
                width: 53,
                height: 52,
              ),
            ),
            title: Text(
              namaToko,
              style: h4SemiBold,
            ),
            subtitle: Text(
              'Rekomendasi',
              style: h5Regular,
            ),
          ),
        ),
        SizedBox(
          height: 401,
          width: double.infinity,
          child: Stack(
            children: [
              Image.network(
                imageFeed,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 21.0,
                    bottom: 8,
                  ),
                  child: CircleAvatar(
                    backgroundColor: primary,
                    child: Image.network(
                      cartFeed,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(
            bottom: 8,
            right: 17,
            left: 17,
            top: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    GestureDetector(
                      onTap: onTapIcon1,
                      child: ImageIcon(
                        NetworkImage(
                          activeStateIcon1 == false ? icon1 : iconActive1,
                        ),
                        size: 24,
                        color:
                            activeStateIcon1 == false ? Colors.black : primary,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    ImageIcon(
                      NetworkImage(
                        icon2,
                      ),
                      size: 24,
                    ),
                  ]),
                  GestureDetector(
                    onTap: onTapIcon3,
                    child: ImageIcon(
                      NetworkImage(
                        icon3,
                      ),
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  text: namaToko,
                  style: textDescriptionSemiBold,
                  children: [
                    TextSpan(
                      text: feed,
                      style: textDescription,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                tanggalUpload,
                style: h5Regular,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
