import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'color_dot.dart';
import 'constants.dart';
import 'dess_product.dart';

class DressDetailsScreen extends StatefulWidget {
  const DressDetailsScreen({Key? key, required this.product}) : super(key: key);

  final Dress_Product product;

  @override
  State<DressDetailsScreen> createState() => _DressDetailsScreenState();
}

class _DressDetailsScreenState extends State<DressDetailsScreen> {
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
      'amount': widget.product.price,
      'name': widget.product.title,
      'description': 'Payment',
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {}

  void _handlePaymentError(PaymentFailureResponse response) {}

  void _handleExternalWallet(ExternalWalletResponse response) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.bgColor,
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
            widget.product.image,
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
                          widget.product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        "\₹" + widget.product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                    ),
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
