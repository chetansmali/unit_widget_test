
// import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:unit_test/counter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // var _razorpay = Razorpay();

  Counter counter = Counter();
  void _incrementCounter() {
    setState(() {
      counter.incrementCounter();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  // void _handlePaymentSuccess(PaymentSuccessResponse response){}
  // void _handlePaymentError(PaymentSuccessResponse response){}
  // void _handleExternalWallet(PaymentSuccessResponse response){}
  //
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _razorpay.clear();
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Payment"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Make the payment',
            ),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              // var options = {
              //   'key': '',
              //   'amount': 1 * 100, //in the smallest currency sub-unit.
              //   'name': 'UniversalBoos',
              //   'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
              //   'description': 'Unit test payments',
              //   'timeout': 60, // in seconds
              // };
              // _razorpay.open(options);
            }, child: Text('Make payment')),
            const SizedBox(height: 30,),
           FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('incrementKey'),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
