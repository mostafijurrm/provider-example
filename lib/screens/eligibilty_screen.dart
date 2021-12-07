import 'package:flutter/material.dart';
import 'package:provide_example/provider/eligibility_provider.dart';
import 'package:provider/provider.dart';

class EligibilityScreen extends StatelessWidget {

  EligibilityScreen({Key? key}) : super(key: key);

  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibilityProvider>(
        create: (context) => EligibilityProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Provider Demo'),
            ),
            body: Consumer<EligibilityProvider>(
              builder: (context, provider, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: ageController,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        int age = int.parse(ageController.text);
                        provider.checkEligibility(age);
                      },
                      child: const Text(
                          'Check Marriage Status'
                      ),

                    ),
                    Text(
                        provider.message
                    )
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
