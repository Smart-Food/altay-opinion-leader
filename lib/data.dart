import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/post/comment.dart';
import 'package:opinionleader/user.dart';
import 'package:opinionleader/area/area.dart';

User u1 = User('Вениамин Манукян',  'https://clck.ru/N8Wo6', [], [], [], [], true);
User u2 = User('Вениамин Манукян',  'https://clck.ru/N8Wo6', [], [], [], [], true);
User u3 = User('Вениамин Манукян',  'https://clck.ru/N8Wo6', [], [], [], [], true);
Comment com = Comment(u1, "This was amazing!", DateTime.now(), false);
Post p1 = Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
    u1, 'Идея', DateTime.now(), [], [com],true, false, 2, 'Октябрьский район', 'Постройка нового детсада', Colors.orangeAccent, '#Новости');
Post p2 = Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
    u2, 'Замысел', DateTime.now(), [], [com],true, false, 1, 'Ленинский район', 'Облагораживание двора', Colors.orangeAccent, '#Новости');

List<Post> posts = [p1, p2];
List<Post> userPosts = [];

Area a1 = Area('Ленинский район', '75%', 'https://barnaul.org/upload/resize_cache/iblock/470/945_527_2/DSC_1520.jpg', Colors.green, 'Ленинский район');
Area a2 = Area('Октябрьский район', '50%', 'https://barnaul.org/upload/iblock/b62/dsc_0006.jpg', Colors.blue, 'Октябрьский район');
List<Area> areas = [a1,a2];
//Post('https://clck.ru/N8Wo6', u2, 'Замысел', DateTime.now(), [u1,u2,u3], [com],true, false );
//Post('https://clck.ru/N8Wo6', u3, 'хм', DateTime.now(), [u1,u2,u3], [com],true, false );
