import 'package:flutter/material.dart';

import '../../shard/styles/colors.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  final _zoneList = ['Banasree', 'Ukrania', 'Syria', 'Turkia'];
  final _areaList = ['aleppo', 'aas', 'Syria', 'Turkia'];
  String? _SelctedValue1 = 'Ukrania';
  String? _SelctedValue2 = 'Types of your area';
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    print(widthScreen * 222 / 411.428);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/location.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(24.53),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Select Your Location",
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 26,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Swithch on your location to stay in tune with \n what’s happening in your area",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: grey,
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 89.35,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Your Zone',
                      style: TextStyle(
                          color: grey,
                          fontFamily: 'Gilro',
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  DropdownButtonFormField(
                      value: _SelctedValue1,
                      items: _zoneList
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          print(_SelctedValue1);
                          _SelctedValue1 = val as String;
                        });
                      },
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: grey)))),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Your Area',
                      style: TextStyle(
                          color: grey,
                          fontFamily: 'Gilro',
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  DropdownButtonFormField(
                      value: _SelctedValue1,
                      items: _zoneList
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          print(_SelctedValue1);
                          _SelctedValue1 = val as String;
                        });
                      },
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: grey)))),
                  SizedBox(
                    height: 40.35,
                  ),
                  Container(
                    width: double.infinity,
                    height: heightScreen * 67 / 797.714,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(defaultColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.0),
                          ))),
                      onPressed: () {},
                      child: Text(
                        'Submit',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
