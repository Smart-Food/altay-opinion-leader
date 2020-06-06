import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/post/comment.dart';
import 'package:opinionleader/user.dart';

const Color kBackGroundColor = Color(0xff272936);
const Color kForGroundColor = Color(0xff3d3f50);
Comment comment = Comment(u1, "This was amazing!", DateTime.now(), false);
User u1 = User('Alexey Sennikov',  'https://clck.ru/N8Wo6', [u1,u2,u3], [u1,u2,u3], posts, [], true);
User u2 = User('Alexey Sennikov',  'https://clck.ru/N8Wo6', [u1,u2,u3], [u1,u2,u3], posts, [], true);
User u3 = User('Alexey Sennikov',  'https://clck.ru/N8Wo6', [u1,u2,u3], [u1,u2,u3], posts, [], true);
Comment com = Comment(u1, "This was amazing!", DateTime.now(), false);
List<Post> posts = [];
/*[
  Post('https://clck.ru/N8Wo6', u1, 'Идея', DateTime.now(), [u1,u2,u3], [com],true, false ),
  Post('https://clck.ru/N8Wo6', u2, 'Замысел', DateTime.now(), [u1,u2,u3], [com],true, false ),
  Post('https://clck.ru/N8Wo6', u3, 'хм', DateTime.now(), [u1,u2,u3], [com],true, false ),

];*/