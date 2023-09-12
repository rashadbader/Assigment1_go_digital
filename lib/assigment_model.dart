
import 'package:flutter/material.dart';


class AssigmentModel {
  String ?name;
  String ?image_url;
  String ?details;
  String ?photo;
  List<Content> ? content;

  AssigmentModel(Map map) {
    name = map["name"];
    image_url = map ["image_url"];
    details = map["details"];
    photo = map ["photo"];
    List<Map> ?data = map["content"];
    content = data?.map((e) => Content(e)).toList();
  }
}




  class Content {
  String? image;

  Content(Map map) {
    image = map["image"];

  }



}