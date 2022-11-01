import 'package:flutter/material.dart';
import 'package:news_app/services/api_service.dart';
import 'package:news_app/services/global.dart';
import 'components/customListTile.dart';
import 'model/article_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _content();
  }

  _content() {
    return client.getArticle();
  }

  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          width: 180,
          child: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text("Hot Topics",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700)),
                  ),
                  for (int i = 0; i < catlist.length; i++)
                    TextButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = i;
                          });
                        },
                        child: Text(
                          catlist[i],
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Center(child: Image.asset('assets/logo.png', height: 128)),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black, // Change Custom Drawer Icon Color
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          // Text(
          //   "News Flash",
          //   style: TextStyle(color: Colors.black),
          // ),
          backgroundColor: Colors.white,
        ),
        //Now let's call the APi services with futurebuilder wiget
        body: FutureBuilder(
          future: _content(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
            //let's check if we got a response or not
            if (snapshot.hasData) {
              //Now let's make a list of articles
              List<Article>? articles = snapshot.data;
              return ListView.builder(
                //Now let's create our custom List tile
                itemCount: articles!.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
