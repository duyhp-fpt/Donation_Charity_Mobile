class Charity {
  String name;
  String address;
  String imageUrl;
  String nameOrganization;
  String totalPrice;
  String uom;
  String description;
  Charity(this.name, this.address, this.imageUrl, this.nameOrganization,
      this.totalPrice, this.uom, this.description);

  static List<Charity> generateRecommended() {
    return [
      // Charity('Charity Activity in Atlanta', 'Atlanta, United State',
      //     'assets/images/charity_1.jpg'),
      Charity(
        'Mặt trời cho em',
        'Việt Nam',
        'assets/images/charity_2.png',
        'Quỹ ủng hộ trẻ em',
        '200,000,000 ',
        'VND',
        'Chương trình “Mặt trời cho em” hướng tới thông điệp: "Làm từ thiện không phải chỉ đơn giản là cho đi, đây là hành động mang lại hy vọng sống, năng lượng tươi sáng hơn cho trẻ em".',
      ),
      Charity(
        'Vùng xanh hy vọng',
        'Việt Nam',
        'assets/images/image_2.jpg',
        'Vinamilk',
        '200,000,000 ',
        'VND',
        '- Tiếp nối hành trình lan tỏa lối sống khỏe mạnh và tích cực\n- Cùng góp điểm xanh cho Việt Nam khỏe mạnh\n- Các hoạt động của dự án “vùng xanh hy vọng” thuộc chiến dịch "Bạn khỏe mạnh, Việt Nam khỏe mạnh sẽ diễn ra từ ngày 23-8-2021. Theo dõi và đồng hành cùng chiến dịch tại Fanpage Vinamilk chung tay vì cộng đồng, Fanpage Trung tâm tin tức VTV24, ứng dụng truyền hình trực tuyến VTVGo, báo điện tử vtv.vn, Tiktok VTV24 và các kênh nội dung số khác của VTV Digital.',
      ),
      Charity(
          'Trái tim Momo',
          'Việt Nam',
          'assets/images/image_3.jpg',
          'Mo Mo',
          '200,000,000 ',
          'VND',
          'Trái Tim MoMo là nền tảng giúp bạn dễ dàng chung tay quyên góp tiền cùng hàng triệu người, giúp đỡ các hoàn cảnh khó khăn trên khắp cả nước.'),
    ];
  }

  static List<Charity> generateHistory() {
    return [
      Charity(
          'Mặt trời cho em',
          'Việt Nam',
          'assets/images/charity_2.png',
          'Hội đồng hương',
          '20000000',
          'VND',
          'Chương trình “Mặt trời cho em” hướng tới thông điệp: "Làm từ thiện không phải chỉ đơn giản là cho đi, đây là hành động mang lại hy vọng sống, năng lượng tươi sáng hơn cho trẻ em".'),
      Charity(
          'Trái tim Momo',
          'Việt Nam',
          'assets/images/image_3.jpg',
          'Mo Mo',
          '200,000,000 ',
          'VND',
          'Trái Tim MoMo là nền tảng giúp bạn dễ dàng chung tay quyên góp tiền cùng hàng triệu người, giúp đỡ các hoàn cảnh khó khăn trên khắp cả nước.'),
    ];
  }
}
