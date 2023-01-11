class Comic {
  String? id;
  String? title;
  String? description;
  String? category;
  String? createdAt;
  String? cover;
  String? rating;

  Comic({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.createdAt,
    required this.cover,
    required this.rating,
  });

  static List<Comic> comicList() {
    return [
      Comic(
        id: '01',
        title: 'Teknik Dasar Tackle yang Benar',
        description:
            'Teknik ini merupakan cara untuk menghentikan lawan yang sedang berlari dengan cara menghentikan bola',
        category: 'Midfielder & Defender',
        createdAt: "01 - 01 - 2022",
        cover: "https://source.unsplash.com/1600x900/?soccer-tackle",
        rating: "4.8",
      ),
      Comic(
          id: '02',
          title: 'Teknik Dasar Menangkap Bola',
          description: 'Goalkeeper',
          category: 'Goalkeeper',
          createdAt: "21 - 04 - 2022",
          cover: "https://source.unsplash.com/1600x900/?soccer-catching",
          rating: "4.6"),
      Comic(
          id: '03',
          title: 'Mengenal Peraturan Sepak Bola',
          description: 'Mengenal Peraturan Sepak Bola',
          category: 'Terms and conditions',
          createdAt: "20 - 06 - 2022",
          cover: "https://source.unsplash.com/1600x900/?soccer-term",
          rating: "4.7"),
      Comic(
          id: '04',
          title: 'Teknik Dasar Menendang Bola',
          description: 'Teknik Menendang Bola',
          category: 'Striker',
          createdAt: "20 - 06 - 2022",
          cover: "https://source.unsplash.com/1600x900/?soccer-kick",
          rating: "4.5"),
      Comic(
          id: '05',
          title: 'Teknik Dasar Bertahan',
          description: 'Teknik Bertahan',
          category: 'Center Back',
          createdAt: "20 - 06 - 2022",
          cover: "https://source.unsplash.com/1600x900/?soccer-defending",
          rating: "4.6"),
      Comic(
          id: '06',
          title: 'Teknik Dasar Free Kick',
          description: 'Teknik Free Kick',
          category: 'Striker, Midfielder, and Defender',
          createdAt: "20 - 06 - 2022",
          cover: "https://source.unsplash.com/1600x900/?soccer-kick",
          rating: "4.5")
    ];
  }
}
