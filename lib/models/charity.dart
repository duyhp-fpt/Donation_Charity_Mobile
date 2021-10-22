class Charity {
  late final String name;
  late final String address;
  late final String imageUrl;

  Charity(this.name, this.address, this.imageUrl);

  static List<Charity> generateRecommended() {
    return [
      // Charity('Charity Activity in Atlanta', 'Atlanta, United State',
      //     'assets/images/charity_1.jpg'),
      Charity('Mặt trời cho em', 'Việt Nam', 'assets/images/charity_2.png'),
      Charity('The Moon House', 'Atlanta, United State',
          'assets/images/house01.jpeg'),
      Charity('The Moon House', 'Atlanta, United State',
          'assets/images/house02.jpeg'),
    ];
  }

  static List<Charity> generateBestOffer() {
    return [
      Charity('Mặt trời cho em', 'Atlanta, United State',
          'assets/images/charity_2.png'),
      // Charity('The Moon House', 'Atlanta, United State',
      //     'assets/images/offer02.jpeg'),
    ];
  }
}
