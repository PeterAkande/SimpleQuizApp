import 'package:flutter/material.dart';

class TimeTile extends StatelessWidget {
  const TimeTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
      
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16),
          boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  color: Colors.black,
                  blurRadius: 17,
                  spreadRadius: -22,
                )
              ]),
      height: 50,
      child: Center(
        child: Text(
          'Time: 1:20',
          style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
        ),
      ),
    
    );
  }
}
