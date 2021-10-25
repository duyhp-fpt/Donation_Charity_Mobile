class Profile {
  int id;
  String name;
  String password;
  String address;
  String identityCard;
  String image;

  Profile(this.id, this.name, this.password, this.address, this.identityCard,
      this.image);

  static List<Profile> generateProfile() {
    return [
      Profile(1, 'Huynh Duy', '123456', 'HCM city', '3123123232',
          'assets/images/avatar.jpg'),
    ];
  }
}
