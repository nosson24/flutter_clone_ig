import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_ig/pages/profile_page/model/image_ispost_model.dart';
import 'package:flutter_application_ig/pages/profile_page/model/product_model.dart';

class ProductRepositoy {
  final _fireCloud = FirebaseFirestore.instance.collection('ProfileUsers');
  final _imageCloud = FirebaseFirestore.instance.collection('ListImage');

  Future<void> create({
    required String name,
    required String userName,
    required String detail,
  }) async {
    try {
      await _fireCloud
          .add({'name': name, 'userName': userName, 'detail': detail});
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Feiled with error '${e.code}': ${e.message}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<ProductModel>> get() async {
    List<ProductModel> proList = [];

    try {
      final pro = await _fireCloud.get();

      pro.docs.forEach((element) {
        return proList.add(ProductModel.fromJson(element.data().toString()));
      });

      return proList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Feiled with error '${e.code}': ${e.message}");
      }
      return proList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<ImagePostModel>> getImage() async {
    List<ImagePostModel> proList = [];

    try {
      final pro = await _imageCloud.get();

      pro.docs.forEach((element) {
        return proList.add(ImagePostModel.fromJson(element.data()));
      });

      return proList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Feiled with error '${e.code}': ${e.message}");
      }
      return proList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
