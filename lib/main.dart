import 'package:alan/Dress.dart';
import 'package:alan/categories.dart';
import 'package:alan/constants.dart';
import 'package:alan/detailedscreens/dress/casual.dart';
import 'package:alan/detailedscreens/dress/dot.dart';
import 'package:alan/detailedscreens/dress/oneck.dart';
import 'package:alan/detailedscreens/dress/sleeve.dart';
import 'package:alan/detailedscreens/pants/cargo.dart';
import 'package:alan/detailedscreens/pants/casualjeen.dart';
import 'package:alan/detailedscreens/pants/casualpant.dart';
import 'package:alan/detailedscreens/shirts/casual.dart';
import 'package:alan/detailedscreens/shirts/curved.dart';
import 'package:alan/detailedscreens/shirts/nolin.dart';
import 'package:alan/new_arrival_products.dart';
import 'package:alan/newarival.dart';
import 'package:alan/newarivaldress.dart';
import 'package:alan/newarrivalpants.dart';
import 'package:alan/shirt.dart';
import 'package:alan/tshirt%20copy.dart';
import 'package:flutter/material.dart';

import 'package:alan_voice/alan_voice.dart';
import 'package:flutter_svg/svg.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'detailedscreens/pants/taperedpant.dart';
import 'detailedscreens/shirts/longsleeve.dart';
import 'detailedscreens/tshirt/core.dart';
import 'detailedscreens/tshirt/fastdry.dart';
import 'detailedscreens/tshirt/heatheared.dart';
import 'detailedscreens/tshirt/panelled.dart';
import 'pants.dart';
import 'shirts.dart';
import 'tshirt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    AlanVoice.addButton(
        "43da6a5d23dd96b7518a830c6929f89a2e956eca572e1d8b807a3e2338fdd0dc/stage");

    AlanVoice.onCommand.add((command) => _handleCommand(command.data));
  }
  void _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "newarival":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const newArival(),
            ));
        break;
      case "homescreen":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHomePage(
                title: 'Flutter Demo Home Pag',
              ),
            ));
        break;
      case "newshirts":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const newArivalshirts(),
            ));
        break;
      case "pants":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const newArivalpants(),
            ));
        break;
      case "T-shirts":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const newArivaltshirt(),
            ));
        break;
      case "newdress":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const newArivalDress(),
            ));
        break;

      case "dress1":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => dot(),
            ));
        break;
      case "dress2":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => oneck(),
            ));
        break;
      case "dress3":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => sleeve(),
            ));
        break;
      case "dress4":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => casualdress(),
            ));
        break;
      case "shirt1":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => casual(),
            ));
        break;
      case "shirt2":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => curved(),
            ));
        break;
      case "shirt3":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => longsleeve(),
            ));
        break;
      case "shirt4":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => nolin(),
            ));
        break;
      case "pant1":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => cargopant(),
            ));
        break;
      case "pant2":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => casualjeen(),
            ));
        break;
      case "pant3":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => casualpant(),
            ));
        break;
      case "pant4":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => taperedpant(),
            ));
        break;
      case "T-shirt1":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => coretshirt(),
            ));
        break;
      case "T-shirt2":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => fastdryshirt(),
            ));
        break;
      case "T-shirt3":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => heatshirt(),
            ));
        break;
      case "T-shirt4":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => panelledshirt(),
            ));
        break;
      case "buynow":
        openCheckout();
        break;

      case "back":
        Navigator.pop(context);
        break;
      default:
        debugPrint("Unknown command");
    }
  }

  // ignore: prefer_final_fields
  Razorpay _razorpay = Razorpay();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_ZHUQ6rGQcWN2rf',
      'amount': 26500,
      'name': "Long Sleeve Shirts",
      'description': 'Payment',
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {}

  void _handlePaymentError(PaymentFailureResponse response) {}

  void _handleExternalWallet(ExternalWalletResponse response) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Categories(),
            const NewArrivalProducts(),
            const Dress_products(),
            const pants_product(),
            const shirt_product(),
            const tshirt_dart()
          ],
        ),
      ),
    );
  }
}

class newpage extends StatefulWidget {
  const newpage({Key? key}) : super(key: key);

  @override
  State<newpage> createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
