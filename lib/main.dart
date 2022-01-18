import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
  
void main() {runApp(MyApp());}  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
        home: Scaffold(appBar: AppBar(  
          backgroundColor: Colors.redAccent ,
          title: Text("Result Nepal"),  
        ),  
            body: GridView.count(  
                crossAxisCount: 3,  
                crossAxisSpacing: 4.0,  
                mainAxisSpacing: 8.0,  
                children: List.generate(choices.length, (index) {  
                  return Center(  
                    child: SelectCard(choice: choices[index]),  
                  );  
                }  
                )  
            )  
        )  
    );  
  }  
}  
  
class Choice {  
  const Choice({this.title, this.path, this.url});  
  final String title;  
  final String path;
  final String url;  
}  
  
const List<Choice> choices = const <Choice>[  
  const Choice(title: 'Result', path: "see.png",url: "https://see.ntc.net.np/"),  
  const Choice(title: 'Result', path: "neb.png",url: "https://neb.ntc.net.np/"),  
  const Choice(title: 'Result', path: "tu.png",url: "https://tuexam.edu.np//"),
  const Choice(title: 'Result', path: "ipo.png",url: "https://iporesult.cdsc.com.np/"), 
  const Choice(title: 'Result', path: "edv.png",url: "https://dvprogram.state.gov/"),  
  const Choice(title: 'Result', path: "psc.png",url: "https://psc.gov.np/category/result/all.html"),  
];  
  
class SelectCard extends StatelessWidget {  
  const SelectCard({Key key, this.choice}) : super(key: key);  
  final Choice choice;  
  
  @override  
  Widget build(BuildContext context) {  
    return GestureDetector(
      onTap: (){
        launch(choice.url);
      },
      child: Card(  
          child: Center(child: Column(  
              crossAxisAlignment: CrossAxisAlignment.center,  
              children: <Widget>[  
                Expanded(child: Image.asset("img/${choice.path}")),  
                Text(choice.title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),  
                SizedBox(height: 2,)
              ]  
          ),  
          )  
      ),
    );  
  }  
}  