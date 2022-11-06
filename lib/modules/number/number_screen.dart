import 'package:flutter/material.dart';
import 'package:groceries_app/shard/components/components.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27.58),
              Text(
                'Enter your mobile number',
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
                'Mobile Number',
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.0),
              defaultFormField(
                  controller: textFormFieldController,
                  type: TextInputType.phone,
                  prefix: Icons.flag)
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
