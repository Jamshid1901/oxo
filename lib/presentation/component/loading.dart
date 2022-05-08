import 'package:flutter/material.dart';
import 'package:oxo/presentation/styles/style.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  //TODO: throwing infinity size error when using loading widget

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Style.primary),
        ),
      ),
    );
  }
}
showLoaderDialog(BuildContext context){
  AlertDialog alert= AlertDialog(
    elevation: 0,
    backgroundColor: Style.black45.withOpacity(0.2),

    content: const Center(child: CircularProgressIndicator(color: Style.primary,)),
  );
  showDialog(barrierDismissible: false,
    context:context,
    builder:(BuildContext context){
      return alert;
    },
  );
}