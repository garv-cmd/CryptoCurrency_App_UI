import 'package:cryptocurrencyappui/midcontainers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto App UI',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

Color topcolor = Color.fromRGBO(123, 136, 145, 1);
Color boxcolor = Color.fromRGBO(41, 50, 55, 1);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Material(
              color: topcolor.withOpacity(0.6),
              elevation: 20,
              borderRadius: BorderRadius.circular(30),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.menu,
                              size: 29,
                            ),
                            Text(
                              'WALLET',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.notifications_active,
                              size: 29,
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      '\$111,020.00',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(fontSize: 35),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: width - 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  Icon(
                    Icons.graphic_eq,
                    color: Colors.white70,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MidContainer(
                img: 'https://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png',
                name: 'BTC',
                fullname: 'Bitcoin',
                code: '*********0912',
                cost: '\$1845',
                pl: '+36%',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MidContainer(
                img: 'https://cryptologos.cc/logos/ethereum-eth-logo.png',
                name: 'ETH',
                fullname: 'Etherium',
                code: '*********0691',
                cost: '\$3545',
                pl: '-26%',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MidContainer(
                img:
                    'https://paymentweek.com/wp-content/uploads/2018/07/dashsss.png',
                name: 'DASH',
                fullname: 'Digital Cash',
                code: '*********0882',
                cost: '\$1125',
                pl: '+16%',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 10),
              child: Container(
                width: width - 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(60)),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          Text('ADD FUNDS')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Icon(
                                  Icons.stop,
                                  color: Colors.black87,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          Text('FREEZE')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(60)),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Icon(
                                  Icons.security,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          Text('SECURITY')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: topcolor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 10.0,
                          color: Colors.black87.withOpacity(0.3)),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'PRICE GRAPH',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('DAY'),
                            Text('WEEK'),
                            Text(
                              'MONTH',
                              style: TextStyle(color: Colors.green),
                            ),
                            Text('YEAR'),
                            Text('RANGE'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
