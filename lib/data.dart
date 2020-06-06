import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/post/comment.dart';
import 'package:opinionleader/user.dart';


User u1 = User('Alexey Sennikov',  'https://clck.ru/N8Wo6', [], [], [], [], true);
User u2 = User('Alexey Sennikov',  'https://clck.ru/N8Wo6', [], [], [], [], true);
User u3 = User('Alexey Sennikov',  'https://clck.ru/N8Wo6', [], [], [], [], true);
Comment com = Comment(u1, "This was amazing!", DateTime.now(), false);
Post p1 = Post('https://clck.ru/N8Wo6', u1, 'Идея', DateTime.now(), [], [com],true, false );
Post p2 = Post('https://clck.ru/N8Wo6', u2, 'Замысел', DateTime.now(), [], [com],true, false );

List<Post> posts = [p1, p2];


//Post('https://clck.ru/N8Wo6', u2, 'Замысел', DateTime.now(), [u1,u2,u3], [com],true, false );
//Post('https://clck.ru/N8Wo6', u3, 'хм', DateTime.now(), [u1,u2,u3], [com],true, false );

