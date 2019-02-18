import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finatra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
  
      home: 
        MyHomePage(
          
          title: 'Finatra Home Page',
           )
         
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key) ;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  var now =  new DateTime.now();
  var berlinWallFell = new DateTime.utc(1989, 11, 9);
  var moonLanding = DateTime.parse("1969-07-20 20:18:04Z");
  
  final String title;
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
         
         leading: new IconButton(
           icon: new Icon(
             Icons.arrow_back_ios,
             
           ),
           onPressed: () {},
         ),
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
       
        // the App.build method, and use it to set our appbar title.
       
        title: Text(widget.title),
        
         
         actions: <Widget>[
          
           new IconButton(
            
             icon: new Icon(
               
               Icons.account_balance_wallet,
               
             ),
             
             
             onPressed: () {},
           ),
         new Text()
         ],
     
      ),
     body: Center(
       child: new Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Hello Me', textAlign: TextAlign.center,textScaleFactor: 2,),
            
            
          ],
          
          
        ),
       ),
     ),
      // body: Center(
        
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: new  Container(
      //     new Text('Spending Pie')
      //   //  crossAxisAlignment: CrossAxisAlignment.stretch,
          
      //   //   children: <Widget>[
      //   //  new   Container(
      //   //         new Text("Spending Pie Chart", textScaleFactor: 2,textAlign: TextAlign.center,),
               
             
      //   //       new Divider(color: Colors.deepOrange, indent: 10,) 
      //   //     ),
         
              
           
               
      //   //   ],
         
         
  
           
         
      //   ),
   
      // ),
   
    bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
        canvasColor: Colors.deepOrange,
        primaryColor: Colors.black,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.white))), // sets the inactive color of the `BottomNavigationBar`
    child: new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.calendar_today),
          title: new Text("Budget"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.credit_card),
          title: new Text("Bills")
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.notifications_active),
          title: new Text('Notifications')
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.save),
          title: new Text('Savings')
        )

      ],
    ),
  ),
       
    );
  }
}

