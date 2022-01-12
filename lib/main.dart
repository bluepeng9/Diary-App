import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(child: getPage()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.today), label: "오늘"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_rounded), label: "기록"),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart), label: "기록"),
          ],
          onTap: (idx) {
            setState(() {
              selectIndex = idx;
            });
          }),
    );
  }

  Widget getPage(){
    if (selectIndex==0){
      return getTodayPage();
    }else if(selectIndex==1){
      return getHistoryPage();
    }else if(selectIndex==2) {
      return getChartPage();
    }
    return Container();
  }
  Widget getTodayPage(){
    return Container();
  }
  Widget getHistoryPage(){
    return Container();
  }
  Widget getChartPage(){
    return Container();
  }
}