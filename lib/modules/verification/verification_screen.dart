import 'package:flutter/material.dart';
import 'package:groceries_app/shard/components/components.dart';

import '../../shard/styles/colors.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key}) : super(key: key);
  TextEditingController textFormFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27.58),
              Text(
                'Enter your 4-digit code',
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 26,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 27.58),
              Text(
                'Code',
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              defaultFormField(
                controller: textFormFieldController,
                type: TextInputType.phone,
                hintText: '- - - -',
                maxLength: 4,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend Code',
                    style: TextStyle(color: defaultColor),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward_ios),
        onPressed: () {},
      ),
    );
  }
}
