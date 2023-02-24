import 'package:flutter/material.dart';

class LocationErrorWidget extends StatelessWidget {
  final String? error;
  final Function? callback;
  const LocationErrorWidget({Key? key, this.error, this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffb00020);
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  Color(0xff65b0bb),
                  Color(0xff5a9ea8),
                  Color(0xff508c95),
                  Color(0xff467b82),
                  Color(0xff3c6970),
                  Color(0xff32585d),
                  Color(0xff28464a),
                ]
            )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Icon(
              Icons.location_off,
              size: 150,
              color: errorColor,
            ),
            const SizedBox(height: 32),
            Text(
              error!,
              style: const TextStyle(color: errorColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              child: const Text("Retry"),
              onPressed: () {
                if (callback != null) callback!();
              },
            )
          ],
        ),
      ),
    );
  }
}