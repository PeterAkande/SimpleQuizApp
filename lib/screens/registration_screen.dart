import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../models/models.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 18),
                    color: Colors.black,
                    blurRadius: 40,
                    spreadRadius: -23,
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'Registrations Available',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Note: Some would require personal meetups.',
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListView.separated(
              itemCount: Registrations.length,
              itemBuilder: (context, value) {
                final tokenType = Registrations[value].registrationType;
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  height: 100,
                  width: 50,
                  child: Center(
                    child: Text(
                      tokenType,
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(fontSize: 20),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, value) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
