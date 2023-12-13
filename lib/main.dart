import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 300.0,left: 8.0, right: 8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 3/1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            ElevatedButton(
              child: Text ("Yeni Sürüm"),
              style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              backgroundColor: Colors.orange),
              onPressed: (){
                ElegantNotification(
                  title: Text("Yeni Sürüm"),
                  description:  Text("Uygulamanız için yeni bir sürüm mevcut. Lütfen Güncelleyin!"),
                  icon: Icon(
                    Icons.access_alarm,
                    color: Colors.orange,
                  ),
                  progressIndicatorColor: Colors.orange,
                ).show(context);
              },
            ),
            ElevatedButton(
              child: Text ("Güncelle"),
              style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.green),
              onPressed: (){
                ElegantNotification.success(
                    title:  Text("Güncelleme"),
                    description:  Text("Uygulamanız Güncellendi!")
                ).show(context);

              },
            ),
            ElevatedButton(
              child: Text ("Bilgi"),
              style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.blueAccent),
              onPressed: (){
                  ElegantNotification.info(
                      title: Text("Bilgi"),
                      description: Text("Bu bir bilgilendirme uyarısıdır!")
                  ).show(context);
                },
            ),
            ElevatedButton(
              child: Text ("Hata"),
              style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.red),
              onPressed: (){
                ElegantNotification.error(
                    title:  Text("Hata"),
                    description:  Text("Lütfen kontrol ediniz!")
                ).show(context);

              },
            ),
          ],
        ),
      ),

    );
  }
}


