import 'package:cached_network_image/cached_network_image.dart';
import 'package:cy_assignment/data/fake_data.dart';
import 'package:cy_assignment/widgets/image_banner_card.dart';
import 'package:cy_assignment/widgets/labelled_image_card.dart';
import 'package:cy_assignment/widgets/primary_heading.dart';
import 'package:cy_assignment/widgets/secondary_tile.dart';
import 'package:cy_assignment/widgets/spaced_divider.dart';
import 'package:cy_assignment/widgets/touchable_opacity.dart';
import 'package:cy_assignment/widgets/v_space.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      interactive: true,
      thumbColor: Theme.of(context).colorScheme.secondary.withOpacity(.75),
      radius: const Radius.circular(12),
      child: ListView(
        // A temprorary fix so that carousel won't reload from start everytime when user scrolls somewhere else
        cacheExtent: 999999999999999,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const VSpace(),
          const ImageBannerCard(
            images: FakeData.carousel_images,
          ),
          const SpacedDivider(),
          const PrimaryHeading("Achievements"),
          const VSpace(),
          SecondaryTile(
            label: "Current League",
            trailing: CachedNetworkImage(
              imageUrl:
                  "https://camo.githubusercontent.com/aeb4e4d45a4ea1f28b8f4c2d3d7e099c2d9be46bbd5be58f5acdad50174f1a08/687474703a2f2f7777772e6d61796f6465762e636f6d2f696d616765732f6c6567656e642e706e67",
              width: 100,
              height: 100,
              alignment: Alignment.centerRight,
            ),
          ),
          const SecondaryTile(
            label: "League ranking",
            trailing: PrimaryHeading("11th"),
          ),
          const SecondaryTile(
            label: "Experience",
            trailing: PrimaryHeading("2000 xp"),
          ),
          const SecondaryTile(
            label: "# of Wins",
            trailing: PrimaryHeading("3"),
          ),
          const SpacedDivider(),
          const PrimaryHeading("Past featured performances"),
          const VSpace(),
          for (var performance in FakeData.past_performances) ...[
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: performance["image"],
                  width: 150,
                  height: 90,
                  fit: BoxFit.fill,
                ),
                const VSpace(isHorizontal: true, h: 15),
                Expanded(
                  child: SecondaryTile(
                    label: performance["title"],
                  ),
                ),
              ],
            ),
            const VSpace(),
          ],
          const VSpace(h: 5),
          const TouchableOpacity(
            child: Center(
              child: PrimaryHeading(
                "see more",
                fontSize: 15,
              ),
            ),
          ),
          const SpacedDivider(),
          const PrimaryHeading("Live clan activities on platform"),
          const VSpace(),
          for (var activity in FakeData.clan_activities) ...[
            LabelledImageCard(
              imageSrc: activity["image"],
              text: activity["title"],
            ),
            const VSpace(),
          ],
          const VSpace(h: 5),
          const TouchableOpacity(
            child: Center(
              child: PrimaryHeading(
                "see more",
                fontSize: 15,
              ),
            ),
          ),
          const SpacedDivider(),
          const PrimaryHeading("Clan discussions"),
          const VSpace(),
          for (Map<String, dynamic> discussion in FakeData.clan_discussions)
            SecondaryTile(
              restrictLabelOverflow: true,
              label: discussion['title'],
              subtitle: "${discussion['unread_msg_count']} unread messages",
            ),
          const VSpace(h: 15),
          const TouchableOpacity(
            child: Center(
              child: PrimaryHeading(
                "see more",
                fontSize: 15,
              ),
            ),
          ),
          const SpacedDivider(),
          const PrimaryHeading("Clan members"),
          const VSpace(),
          for (var member in FakeData.clan_members)
            SecondaryTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(member.avatar),
              ),
              label: member.name,
              subtitle: member.role,
            ),
        ],
      ),
    );
  }
}
