
part of rsModels;

class Identity {
  String mId; //  RsGxsId
  String pgpId; //RspgpID
  String name;
  String _avatar;
  bool signed;
  bool isContact;

  void set avatar(String avatar) {
    this.avatar = avatar;
  }

  String get avatar => this.avatar;

  Identity(String this.mId,
      [this.signed, name, avatar, this.isContact = false, this.pgpId]) {
    this.name = name ?? mId;
    this._avatar = avatar;
  }
}
