class ClanMember {
  final String name;
  final String role;
  final String avatar;

  const ClanMember({
    required this.name,
    required this.role,
    required this.avatar,
  });
}


class MemberRole{
  static const String member = "Member";
  static const String elder = "Elder";
  static const String leader = "Leader";
  static const String coLeader = "Co-Leader";
}