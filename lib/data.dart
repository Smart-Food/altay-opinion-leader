import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/post/comment.dart';
import 'package:opinionleader/user.dart';
import 'package:opinionleader/area/area.dart';

User u1 = User('Вениамин Манукян',  'https://clck.ru/NrkhN', [], [], [], [], true);
User u2 = User('Вениамин Манукян',  'https://clck.ru/NrkhN', [], [], [], [], true);
User u3 = User('Алексей Сенников',  'https://clck.ru/Nrkhg', [], [], [], [], true);
User u4 = User('Павел Ивин',  'https://clck.ru/Nrki3', [], [], [], [], true);
User u5 = User('Дык Фам',  'https://clck.ru/NrkiH', [], [], [], [], true);
Comment com = Comment(u1, "Это прекрасно!", DateTime.now(), false);
Post p1 = Post('https://clck.ru/Nrkgm',
    u1, 'Идея', DateTime.now(), [], [com],false, false, 2, 'Октябрьский район', 'Постройка нового детсада', Colors.orangeAccent, '#Новости');
Post p2 = Post('https://clck.ru/Nrkgm',
    u2, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Ленинский район', 'Облагораживание двора', Colors.orangeAccent, '#Предложение');
Post p3 = Post('https://clck.ru/Nrkgm',
    u3, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Индустриальный район', 'Очистка пляжей', Colors.orangeAccent, '#Новости');
Post p4 = Post('https://clck.ru/Nrkgm',
    u4, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Железнодорожный район', 'Уборка несанционированных свалок', Colors.orangeAccent, '#Новости');
Post p5 = Post('https://clck.ru/Nrkgm',
    u5, 'Замысел', DateTime.now(), [], [com],false, false, 1, 'Центральный район', 'Посадка цветов', Colors.orangeAccent, '#Новости');


List<Post> posts = [p1, p2, p3, p4, p5];
List<Post> userPosts = [p1, p2];

Area a1 = Area('Ленинский район', '77%', 'https://clck.ru/NrkgD', Colors.green, 'Ленинский район');
Area a2 = Area('Октябрьский район', '65%', 'https://clck.ru/NrkgR', Colors.blue, 'Октябрьский район');
Area a3 = Area('Индустриальный район', '62%', 'https://clck.ru/Nrkjc', Colors.green, 'Индустриальный район');
Area a4 = Area('Центральный район', '42%', 'https://clck.ru/NrkpZ', Colors.blue, 'Центральный район');
List<Area> areas = [a1,a2, a3, a4];
//Post('https://clck.ru/N8Wo6', u2, 'Замысел', DateTime.now(), [u1,u2,u3], [com],true, false );
//Post('https://clck.ru/N8Wo6', u3, 'хм', DateTime.now(), [u1,u2,u3], [com],true, false );
