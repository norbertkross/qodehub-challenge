import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qodehubchallenge/Details/NewsDetails.dart';
import 'package:qodehubchallenge/Loader/Loader.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
bool awaitingData = false;


// This Method Gets Data From The RES endpoint

Future<List>getdata()async{

String theUrl ="https://learnappmaking.com/ex/news/articles/Apple?secret=CHWGk3OTwgObtQxGqdLvVhwji6FsYm95oe87o3ju";
var res = await http.get(Uri.encodeFull(theUrl),
headers: {
"Accept":"application/json",
'Content-Type': 'application/x-www-form-urlencoded',
},

).catchError((onError){
  //print("THE PROBLEM: \n${onError.toString()}\n");
});

var responseBody = json.decode(res.body);

responseBody = responseBody["articles"];
print("results ::\n\n$responseBody\n\n");
 return responseBody;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20 ),),

      // ),
      body: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          transitionBetweenRoutes: true,
          leading: Text("News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20 ),),
        ),
        child: Stack(
        children: [
 FutureBuilder(
      future:getdata(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {

        ConnectionState  conn = snapshot.connectionState;

        if(conn == ConnectionState.none){
          return Container(color: Colors.blueGrey.withOpacity(.7),);
        }
        if(conn == ConnectionState.waiting){
            return Center(
                child:Center(child:GiveNewsLoader(),)
              ) ;
        }
        if(snapshot.hasError){
             return Center(child:Text('Could Not Connect ',style: TextStyle(color: Colors.green),) ,) ;
        }else{
          List snapData = snapshot.data;
         return snapData.length == 0?Center(
                 child: Text("Nothing To Show",style: TextStyle(color: Colors.green,fontSize: 18),),
               ): ListView.builder(
             itemCount: snapData.length,
             itemBuilder: (context,index){
               var title = snapData[index]["title"].toString();
               var id = snapData[index]["id"].toString();
               var text = snapData[index]["text"].toString();
               var image = snapData[index]["image"].toString();
               var publisher = snapData[index]["publisher"].toString();
              return  Hero(
                tag: id,
                child: Container(
                  child: Card(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(5),
                      onTap: (){
                           Navigator.of(context).push(
                             MaterialPageRoute(builder: (context)=>NewsDetail(
                               id: id,
                               title: title,
                               text: text,
                               image: image,
                               publisher: publisher,
                                    )
                                  )
                                );                        
                      },
                      title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("\n"+text,
                      overflow: TextOverflow.ellipsis,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.chevron_right),
                         onPressed: (){
                           Navigator.of(context).push(
                             MaterialPageRoute(builder: (context)=>NewsDetail(
                               id: id,
                               title: title,
                               text: text,
                               image: image,
                               publisher: publisher,
                                    )
                                  )
                                );
                         }),
                    ),
                  ),
                ),
              );    

             },
           );
        }
      },
    ),


          
        ],
      )
        ), 
    );
  }
}
