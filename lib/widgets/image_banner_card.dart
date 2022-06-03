import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cy_assignment/widgets/touchable_opacity.dart';
import 'package:cy_assignment/widgets/v_space.dart';
import 'package:flutter/material.dart';

class ImageBannerCard extends StatefulWidget {
  final List<String> images;
  const ImageBannerCard({Key? key, required this.images}) : super(key: key);

  @override
  State<ImageBannerCard> createState() => _ImageBannerCardState();
}

class _ImageBannerCardState extends State<ImageBannerCard> {
  Timer? timerRef;
  int currentImageIndex = 0;

  @override
  void initState() {
    timerRef = Timer.periodic(const Duration(seconds: 4), (timer) {
      runCarousel();
    });
    super.initState();
  }

  void runCarousel() {
    if (currentImageIndex == widget.images.length - 1) {
      currentImageIndex = 0;
    } else {
      currentImageIndex++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: widget.images[currentImageIndex],
                height: 300,
                width: MediaQuery.of(context).size.width,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: Transform.scale(
                    scale: .5,
                    child:
                        CircularProgressIndicator(value: downloadProgress.progress),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [.4, 1],
                      colors: [
                        Colors.transparent,
                        Colors.black87,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Clan Name: Phantom Troupe",
                          style: TextStyle(fontSize: 20),
                        ),
                        const VSpace(),
                        Row(
                          children: [
                            Text(
                              "28 members",
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 15),
                            ),
                            const VSpace(isHorizontal: true),
                            const OnlineBlinkingDot(),
                            const VSpace(
                              isHorizontal: true,
                              h: 5,
                            ),
                            Text(
                              "5 online",
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 15),
                            ),
                          ],
                        ),
                        const VSpace(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    timerRef?.cancel();
    super.dispose();
  }
}

class OnlineBlinkingDot extends StatefulWidget {
  const OnlineBlinkingDot({Key? key}) : super(key: key);

  @override
  State<OnlineBlinkingDot> createState() => _OnlineBlinkingDotState();
}

class _OnlineBlinkingDotState extends State<OnlineBlinkingDot> {
  bool opacity = false;
  final interval = const Duration(seconds: 1);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(interval).then((value) {
        setState(() {
          opacity = true;
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: interval,
      onEnd: () {
        if (mounted) {
          setState(() {
            opacity = !opacity;
          });
        }
      },
      height: 7.5,
      width: 7.5,
      decoration: BoxDecoration(
        color: opacity ? Colors.green : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
