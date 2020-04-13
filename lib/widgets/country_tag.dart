import 'package:flutter/material.dart';

class CountryTag extends StatelessWidget {
  const CountryTag({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xffFF715B)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 8, 0),
        child: Text(
          'NG',
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height / 18),
        ),
      ),
    );
  }
}
