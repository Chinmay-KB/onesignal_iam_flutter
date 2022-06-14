void main() {
 runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);
 
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return const MaterialApp(
     home: MyHomePage(),
   );
 }
}
 
class MyHomePage extends StatefulWidget {
 const MyHomePage({Key? key}) : super(key: key);
 
 @override
 State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 int taps = 0;
 
 @override
 void initState() {
   super.initState();
   initMessaging();
 }
 
 Future<void> initMessaging() async {
    await OneSignal.shared.setAppId("YOUR APP ID HERE");
    OneSignal.shared.setInAppMessageClickedHandler((action) {
      if (action.clickName == 'successPage') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const SuccessScreen()));
      }
    });
  }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('OneSignal IAM'),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         setState(() {
           taps = taps + 1;
         });
         OneSignal.shared.addTrigger('taps', taps);
       },
       child: const Icon(Icons.add),
     ),
     body: const Center(child: Text('IAM')),
   );
 }
