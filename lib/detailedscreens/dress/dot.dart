import 'package:alan/color_dot.dart';
import 'package:alan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: unused_import
import 'package:razorpay_flutter/razorpay_flutter.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class dot extends StatefulWidget {
  @override
  State<dot> createState() => _dotState();
}

// ignore: camel_case_types
class _dotState extends State<dot> {
  // ignore: prefer_final_fields, unused_field
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
      'amount': 45000,
      'name': "Dot Short Dress V-neck",
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/1.png",
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding * 1.5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Dot Short Dress V-neck",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        "\₹" + "450",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  Text(
                    "Colors",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    children: const [
                      ColorDot(
                        color: Color(0xFFBEE8EA),
                        isActive: false,
                      ),
                      ColorDot(
                        color: Color(0xFF141B4A),
                        isActive: true,
                      ),
                      ColorDot(
                        color: Color(0xFFF4E5C3),
                        isActive: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          openCheckout();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: const StadiumBorder()),
                        child: const Text("BUY NOW"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
