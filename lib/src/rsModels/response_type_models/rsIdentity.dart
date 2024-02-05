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
      [this.signed=true, name, avatar, this.isContact = false,String? this.pgpId='']) {
    this.name = name ?? mId;
    this._avatar = avatar;
  }
}
