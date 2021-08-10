
part of rsModels;

enum RsGxsCircleType {
  /// Used to detect uninizialized values.
  UNKNOWN,

  /// Public distribution, based on GxsIds
  PUBLIC,

  /// Restricted to an external circle, based on GxsIds
  EXTERNAL,

  /// Restricted to a group of friend nodes, the administrator of the circle
  /// behave as a hub for them Based on PGP nodes ids.
  NODES_GROUP,

  /// not distributed at all
  LOCAL,

  /// Self-restricted. Used only at creation time of self-restricted circles
  ///  when the circle id isn't known yet. Once the circle id is known the type
  ///  is set to EXTERNAL, and the external circle id is set to the id of the
  ///  circle itself. Based on GxsIds.
  EXT_SELF,

  /// distributed to nodes signed by your own PGP key only.
  YOUR_EYES_ONLY
}

/// Subscription flags for circle details
///
/// When you receive a circle detail, one of the attributes is called
/// `mSubscriptionFlags`. To know if one of the flags below is contained by the
/// circle `mSubscriptionFlags` you have to do a BitWise AND operator. Example:
///
/// ```
/// mSubscriptionFlags = 5;
/// mSubscriptionFlags & RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_IN_ADMIN_LIST
///   == RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_IN_ADMIN_LIST // true
/// mSubscriptionFlags & RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_SUBSCRIBED
///   == RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_SUBSCRIBED // false
/// mSubscriptionFlags & RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_KEY_AVAILABLE
///   == RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_KEY_AVAILABLE // true
/// mSubscriptionFlags & RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_ALLOWED
///   == RsGxsCircleSubscriptionFlags.GXS_EXTERNAL_CIRCLE_FLAGS_ALLOWED // false
/// ```
class RsGxsCircleSubscriptionFlags {
  /// User is validated by circle admin. (Admin invited to the circle)
  static const int IN_ADMIN_LIST = 0x0001;

  /// User has subscribed the group. (Has requested circle membership)
  static const int FLAGS_SUBSCRIBED = 0x0002;

  /// key is available, so we can encrypt for this circle
  static const int KEY_AVAILABLE = 0x0004;

  /// user is allowed. Combines all flags above. (Belongs the circle)
  static const int FLAGS_ALLOWED = 0x0007;
}

// This below is an experiment trying to serialize a recieved json object, do it
// by hand is to expensive in time. Probably is better to authomitze the process,
// because you have to check to many data types...
// For more info check https://gitlab.com/jpascualsana/retroshare-api-wrapper-generator
// class RsGxsCircleDetails {
//
//   String mCircleId;
//   String mCircleName;
//   RsGxsCircleType mCircleType;
//   String mRestrictedCircleId;
//   /// true when one of load GXS ids belong to the circle allowed list (admin
//   /// list & subscribed list). */
//   bool mAmIAllowed;
//   /// true when we're an administrator of the circle group, meaning that we can add/remove members from the invitee list.
//   bool mAmIAdmin;
//   /// This crosses admin list and subscribed list
//   List<String> mAllowedGxsIds;
//   List<String> mAllowedNodes;
//   /// subscription flags for all ids
//   Map<String,int> mSubscriptionFlags;
//
//   RsGxsCircleDetails.fromJson(Map<String, dynamic> json){
//     if (json == null) return;
//     mCircleId = json['mCircleId'];
//     mCircleName = json['mCircleName'];
//     mCircleType = RsGxsCircleType.values[json['mCircleType']];
//     mRestrictedCircleId = json['mRestrictedCircleId'];
//     mAmIAllowed = json['mAmIAllowed'];
//     mAmIAdmin = json['mAmIAdmin'];
//     mAllowedGxsIds = List<String>.from(json['mAllowedGxsIds']);
//     mAllowedNodes = List<String>.from(json['mAllowedNodes']);
//     mSubscriptionFlags = json['mSubscriptionFlags'];
//   }
// }
