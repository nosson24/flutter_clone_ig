class ImagePostModel {
  final String image;
  ImagePostModel({required this.image});

  factory ImagePostModel.fromJson(Map<String, dynamic> json) {
    return ImagePostModel(
      image: json['image'],
    );
  }
  // Map<String, dynamic> toMap() {
  //   return {
  //     'image': image,
  //   };
  // }

  // factory ImagePostModel.fromMap(Map<String, dynamic> map) {
  //   return ImagePostModel(
  //     image: map['image'] ?? '',
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory ImagePostModel.fromJson(String source) => ImagePostModel.fromMap(json.decode(source));

}
