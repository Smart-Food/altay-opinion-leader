import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/post/comment.dart';
import 'package:opinionleader/user.dart';
import 'package:opinionleader/area/area.dart';

User u1 = User('Вениамин Манукян',  'https://sun9-40.userapi.com/c857424/v857424894/dfe29/l2B0jorKZwE.jpg', [], [], [], [], true);
User u2 = User('Вениамин Манукян',  'https://sun9-40.userapi.com/c857424/v857424894/dfe29/l2B0jorKZwE.jpg', [], [], [], [], true);
User u3 = User('Алексей Сенников',  'https://sun1-47.userapi.com/TBbpGY77mvjvPq72Eq93P3QxzjDGwqDwUTVAuA/kzJFfZQqfG0.jpg', [], [], [], [], true);
User u4 = User('Павел Ивин',  'https://sun9-23.userapi.com/c856128/v856128227/10f6e8/Uxh_Bx12Gmc.jpg', [], [], [], [], true);
User u5 = User('Дык Фам',  'https://sun9-39.userapi.com/c855016/v855016549/15211c/MaKaeM0c2-k.jpg', [], [], [], [], true);
Comment com = Comment(u1, "This was amazing!", DateTime.now(), false);
Post p1 = Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
    u1, 'Идея', DateTime.now(), [], [com],false, false, 2, 'Октябрьский район', 'Постройка нового детсада', Colors.orangeAccent, '#Новости');
Post p2 = Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
    u2, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Ленинский район', 'Облагораживание двора', Colors.orangeAccent, '#Предложение');
Post p3 = Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
    u3, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Ленинский район', 'Облагораживание двора', Colors.orangeAccent, '#Новости');
Post p4 = Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
    u4, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Ленинский район', 'Облагораживание двора', Colors.orangeAccent, '#Новости');
Post p5 = Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
    u5, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Ленинский район', 'Облагораживание двора', Colors.orangeAccent, '#Новости');


List<Post> posts = [p1, p2, p3, p4, p5];
List<Post> userPosts = [p1, p2];

Area a1 = Area('Ленинский район', '75%', 'https://barnaul.org/upload/resize_cache/iblock/470/945_527_2/DSC_1520.jpg', Colors.green, 'Ленинский район');
Area a2 = Area('Октябрьский район', '50%', 'https://barnaul.org/upload/iblock/b62/dsc_0006.jpg', Colors.blue, 'Октябрьский район');
List<Area> areas = [a1,a2];
//Post('https://clck.ru/N8Wo6', u2, 'Замысел', DateTime.now(), [u1,u2,u3], [com],true, false );
//Post('https://clck.ru/N8Wo6', u3, 'хм', DateTime.now(), [u1,u2,u3], [com],true, false );
