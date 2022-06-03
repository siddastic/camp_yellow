// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:cy_assignment/models/clan_member.dart';
import 'package:flutter/material.dart';

class FakeData {
  static List<Widget> tab_icons = [
    ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      child: Image.network(
        "https://cdn-icons-png.flaticon.com/512/25/25694.png",
        height: 30,
        width: 30,
      ),
    ),
    ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      child: Image.network(
        "https://cdn-icons-png.flaticon.com/512/2755/2755576.png",
        height: 30,
        width: 30,
      ),
    ),
    ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      child: Image.network(
        "https://uxwing.com/wp-content/themes/uxwing/download/24-sport-and-awards/leaderboard.png",
        height: 30,
        width: 30,
      ),
    ),
    ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      child: Image.network(
        "https://i.ibb.co/82YmPNj/istockphoto-485145906-612x612-removebg-preview.png",
        height: 30,
        width: 30,
      ),
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
      ),
    ),
  ];
  static const List<String> carousel_images = [
    "https://preview.redd.it/oyfoanlafov81.png?width=640&crop=smart&auto=webp&s=949228dbf839b594cc56e4c026fd70e28a34e5b9",
    "https://www.myfreewalls.com/public/uploads/preview/one-piece-anime-artwork-4k-wallpaper-11624131546gnchumdf0i.jpg",
    "https://wallpapercave.com/wp/wp6918303.jpg",
    "https://i.ytimg.com/vi/-nn4yieyALY/maxresdefault.jpg",
    "https://wallpapercave.com/wp/wp1809267.jpg",
    "https://c4.wallpaperflare.com/wallpaper/151/244/848/anime-tokyo-ghoul-re-ken-kaneki-wallpaper-preview.jpg",
    "https://www.nawpic.com/media/2020/jujutsu-kaisen-nawpic-14-e1605473161879.jpg",
  ];

  static const List<Map<String, dynamic>> past_performances = [
    {
      "title": "Priya in International Debating League",
      "image":
          "https://media.istockphoto.com/photos/young-girl-playing-a-computer-game-on-professional-armchair-against-picture-id1299922346?b=1&k=20&m=1299922346&s=170667a&w=0&h=Q8xucHvHUXfzwsBJ9nx8irrU7uUzTjSe-U8wJdTTbqM=",
    },
    {
      "title": "Akshay in Global Quizzing Finals",
      "image":
          "https://im.indiatimes.in/media/content/2019/Jul/fortnite_1564406023_725x725.jpg",
    },
  ];
  static const List<Map<String, dynamic>> clan_activities = [
    {
      "title": "Live trading\nchampionship",
      "image":
          "https://media.istockphoto.com/photos/3d-abstract-background-with-ultraviolet-neon-lights-empty-frame-picture-id1191719793?k=20&m=1191719793&s=612x612&w=0&h=r7_rQn1XQKoNFRzYbxIB5ZEShFW1cEqkgsoa_xlCD7o=",
    },
    {
      "title": "Treasure hunt",
      "image":
          "https://media.istockphoto.com/photos/3d-abstract-background-with-ultraviolet-neon-lights-empty-frame-picture-id1191719793?k=20&m=1191719793&s=612x612&w=0&h=r7_rQn1XQKoNFRzYbxIB5ZEShFW1cEqkgsoa_xlCD7o=",
    },
  ];

  static const List<Map<String, dynamic>> clan_discussions = [
    {
      'title': "General thread:",
      "unread_msg_count": 15,
    },
    {
      'title': "(live) Anyone enthu for trading league tokens",
      "unread_msg_count": 10,
    },
    {
      'title': "(live) Anyone enthu for trading league tokens",
      "unread_msg_count": 10,
    }
  ];

  static const List<ClanMember> clan_members = [
    ClanMember(
      name: "Sarah",
      avatar:
          "https://www.whatsappimages.in/wp-content/uploads/2021/12/girl-New-Superb-Whatsapp-Dp-Profile-Images-photo.jpg",
      role: MemberRole.leader,
    ),
    ClanMember(
      name: "Noah",
      avatar:
          "https://images.unsplash.com/photo-1594751543129-6701ad444259?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFyayUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
      role: MemberRole.coLeader,
    ),
    ClanMember(
      name: "XLR8",
      avatar:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
      role: MemberRole.coLeader,
    ),
    ClanMember(
      name: "Nova",
      avatar:
          "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
      role: MemberRole.elder,
    ),
    ClanMember(
      name: "Gear",
      avatar:
          "https://i.pinimg.com/736x/25/78/61/25786134576ce0344893b33a051160b1.jpg",
      role: MemberRole.member,
    ),
  ];
}
