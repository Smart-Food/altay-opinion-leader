import 'package:flutter/material.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/user.dart';
import 'package:opinionleader/post/comment.dart';
//showSearch(context: context, delegate: SearchPage(posts));
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opinion leader'),
      ),
      body: Material(
          //animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: Colors.white,
          child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: GestureDetector(
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Text("Search here", style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'OpenSans'
                            ),),
                            Spacer(),
                            Icon(Icons.search, color: Colors.black, size: 20,)
                          ],
                        ),
                      ),
                    ),
                      onTap: () {showSearch(context: context, delegate: SearchPage(posts));},
                    ),
                  ),

                ],

            )

          ),

    );

  }
}

class SearchPage extends SearchDelegate<Post>{
  final List<Post> data;
  SearchPage(this.data);
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
      //NavBar(),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ? data
        : data.where((p) => p.description.contains(RegExp(query, caseSensitive: false))).toList();

    return ListView.separated(
      controller: ScrollController(),
      itemBuilder: (context, index){
        return ListTile(
          title: Text(suggestionList[index].user.username.toString()),
          subtitle: Text(suggestionList[index].date.toString()),
          trailing: Text("\$${suggestionList[index].likes.length}",
            style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
          leading: Image.network(suggestionList[index].image),
          /*onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductInfo(product: Product(
                  name: suggestionList[index].name,
                  id:suggestionList[index].id,
                  picture: suggestionList[index].picture,
                  value: suggestionList[index].value,
                  brand: suggestionList[index].brand,
                  oldPrice: suggestionList[index].oldPrice,
                  price: suggestionList[index].price,)),
              ),
            );
          },*/
        );
        //);
      },
      itemCount: suggestionList.length,
      separatorBuilder: (context, index){
        return Divider();
      },
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? data
        : data.where((p) => p.description.contains(RegExp(query, caseSensitive: false))).toList();

    return ListView.separated(
      controller: ScrollController(),
      separatorBuilder: (context, index){
        return Divider();
      },
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index){
        return ListTile(
          /*onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductInfo(product: Product(name: suggestionList[index].name, id:suggestionList[index].id, picture: suggestionList[index].picture,
                  value: suggestionList[index].value, brand: suggestionList[index].brand,
                  oldPrice: suggestionList[index].oldPrice, price: suggestionList[index].price,)),
              ),
            );
          },*/
          trailing: Text(suggestionList[index].likes.length.toString() ,
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
          title: RichText(
            text: TextSpan(
                text: suggestionList[index].user.username.toString(),
                style: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold),
                ),
          ),
          subtitle: Text(suggestionList[index].date.toString()),
          leading: Image.network(suggestionList[index].image),
        );},

      itemCount: suggestionList.length,
    );
  }

}