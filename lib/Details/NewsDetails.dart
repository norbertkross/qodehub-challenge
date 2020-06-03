import 'package:flutter/material.dart';

class NewsDetail extends StatefulWidget {
final String title;
final String text;
final String image;
final String publisher;
final String id;

NewsDetail({
this.title,
this.text,
this.image,
this.id,
this.publisher
});

  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    double mheight = MediaQuery.of(context).size.height;
    double mwidth = MediaQuery.of(context).size.width;    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.chevron_left,color: Colors.black,),
         onPressed: (){
           Navigator.pop(context);
         }),
        title: Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Hero(
            tag: widget.id,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).orientation == Orientation.landscape? mheight*.7:mheight*.4,
                    width: mwidth > 600?550:mwidth,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.image))
                    ),
                  ),
                ),

            ListView(
              padding: EdgeInsets.all(0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                SizedBox(height: MediaQuery.of(context).orientation == Orientation.landscape? mheight*.7:mheight*.4,),
                        Material(
                          child: Container(
                              width: mwidth,
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(widget.title,style: TextStyle(color: Colors.black,fontSize: 18),),
                                          ),
                                        ],
                                      ),

                      Wrap(
                        verticalDirection: VerticalDirection.up,
                        runAlignment: WrapAlignment.start,
                        // alignment: WrapAlignment.start,
                        children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(widget.publisher,style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.bold),),
                                  ),                                  
                        ],
                      ),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Text(widget.text),
                                ),
                              ),

                                      SizedBox(height: 30,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                        ),                

              ],
            ),

              ],
            ),
          )
        ],
      ),
    );
  }
}