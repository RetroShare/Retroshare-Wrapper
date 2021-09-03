part of rsModels;

class Identity {
  String mId; //  RsGxsId
  String pgpId; //RspgpID
  String name;
  String _avatar;
  bool signed;
  bool isContact;

  set avatar(String avatar) {
    this._avatar = avatar;
  }

  String get avatar => this._avatar;

  Identity(String this.mId,
      [this.signed, name, avatar, this.isContact = false, this.pgpId]) {
    this.name = name ?? mId;
    this._avatar = avatar;
  }
}
