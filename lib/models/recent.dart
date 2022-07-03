class Recent {
  final String title, image, page;
  final int percent;

  Recent({
    required this.title,
    required this.image,
    required this.percent,
    required this.page,
  });
}

List<Recent> recents = [
  Recent(
      image: "assets/images/buku2.jpg",
      title: "Dilan",
      percent: 75,
      page: "279 / 333 Halaman"),
  Recent(
<<<<<<< HEAD
      image: "assets/images/buku9.jpg",
      title: "Dasar Logika ....",
      percent: 5,
      page: "15 / 344 Halaman"),
=======
      image: "assets/images/buku8.jpg",
      title: "Buku Sakti",
      percent: 20,
      page: "25 / 216 Halaman"),
>>>>>>> 05446248c2f23320139f8ccc5a201fdf05fcd68f
];
