import 'package:flutter/material.dart';
import '../models/models.dart';

class TokensPurchaseScreen extends StatelessWidget {
  const TokensPurchaseScreen({Key? key}) : super(key: key);

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
                  'Tokens Available',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ListView.separated(
              itemCount: Tokens.length,
              itemBuilder: (context, value) {
                final tokenType = Tokens[value].tokenType;
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
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
