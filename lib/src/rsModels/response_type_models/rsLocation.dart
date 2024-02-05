
part of rsModels;

class Location {
  String rsPeerId;
  String rsGpgId;
  String accountName;
  String locationName;
  bool isOnline;

  Location([
    required this.rsPeerId,
    required this.rsGpgId,
    required this.accountName,
    required this.locationName,
    required this.isOnline = false,
  ]);
}
