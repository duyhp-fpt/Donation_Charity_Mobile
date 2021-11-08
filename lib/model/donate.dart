class Donate {
  int id;
  String name;
  String address;
  String price;
  String uom;
  String date;

  Donate(this.id, this.name, this.address, this.price, this.uom, this.date);

  static List<Donate> generateListDonate() {
    return [
      Donate(1, 'Huỳnh Phúc Duy', 'Vĩnh Long', '200000', 'VND', '13-10-2021'),
      Donate(2, 'Huỳnh Anh Vũ', 'Lâm Đồng', '150000', 'VND', '13-10-2021'),
      Donate(3, 'Huỳnh Tuấn Vũ', 'Lâm Đồng', '150000', 'VND', '13-10-2021'),
      Donate(4, 'Nguyễn Tấn Vỹ', 'Đắk Lắk', '200000', 'VND', '13-10-2021'),
      Donate(5, 'Võ Tấn Đạt', 'Đà Lạt', '200000', 'VND', '13-10-2021'),
      Donate(6, 'Nguyễn Phùng Phương An', '...', '200000', 'VND', '13-10-2021'),
      // Donate(7, 'Huỳnh Phúc Duy', 'Vĩnh Long', '200000', 'VND'),
      // Donate(8, 'Huỳnh Anh Vũ', 'Lâm Đồng', '150000', 'VND'),
      // Donate(9, 'Huỳnh Tuấn Vũ', 'Lâm Đồng', '150000', 'VND'),
      // Donate(10, 'Nguyễn Tấn Vỹ', 'Đắk Lắk', '200000', 'VND'),
      // Donate(11, 'Võ Tấn Đạt', 'Đà Lạt', '200000', 'VND'),
      // Donate(12, 'Nguyễn Phùng Phương An', '...', '200000', 'VND'),
      // Donate(13, 'Huỳnh Phúc Duy', 'Vĩnh Long', '200000', 'VND'),
      // Donate(14, 'Huỳnh Anh Vũ', 'Lâm Đồng', '150000', 'VND'),
      // Donate(15, 'Huỳnh Tuấn Vũ', 'Lâm Đồng', '150000', 'VND'),
      // Donate(16, 'Nguyễn Tấn Vỹ', 'Đắk Lắk', '200000', 'VND'),
      // Donate(17, 'Võ Tấn Đạt', 'Đà Lạt', '200000', 'VND'),
      // Donate(18, 'Nguyễn Phùng Phương An', '...', '200000', 'VND'),
    ];
  }
}
