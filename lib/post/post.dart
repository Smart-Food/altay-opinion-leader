import 'package:flutter/material.dart';
import 'comment.dart';
import 'package:opinionleader/user.dart';

class Post {
  String image;
  String description;
  User user;
  List<User> likes;
  List<Comment> comments;
  DateTime date;
  bool isLiked;
  bool isSaved;
  int rating;
  String area;
  String heading;
  Color postColor;
  String topic;

  Post(this.image, this.user, this.description,
      this.date, this.likes, this.comments,
      this.isLiked, this.isSaved, this.rating, this.area, this.heading, this.postColor, this.topic);
}

