class Activity {
  int id;
  String product;
  String quantity;
  String price;
  String uom;
  String date;
  String image;
  Activity(this.id, this.product, this.quantity, this.price, this.uom,
      this.date, this.image);

  static List<Activity> generateListPayment() {
    return [
      Activity(1, 'Thực Phẩm', '100', '31,500,000', 'VND', '13-10-2021',
          'assets/images/image_4.jpg'),
      Activity(2, 'Nhu yếu phẩm', '100', '21,000,000', 'VND', '13-10-2021',
          'assets/images/image_5.jpg'),
      Activity(3, 'Khẩu trang', '3', '150,000 ', 'VND', '27-01-2021',
          'assets/images/khautrang.jpg'),
      Activity(4, 'Thực phẩm', '100', '31,500,000', 'VND', '13-10-2021',
          'assets/images/image_4.jpg'),
      Activity(5, 'Nhu yếu phẩm', '100', '31500000', 'VND', '13-10-2021',
          'assets/images/image_5.jpg'),
      Activity(6, 'Khẩu trang', '3', '150,000 ', 'VND', '27-01-2021',
          'assets/images/khautrang.jpg'),
    ];
  }
}
