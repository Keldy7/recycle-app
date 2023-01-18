import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController myController;
  final String? labelTexte;
  final String? placeholderTexte;
  final bool? password;
  const Input(
      {Key? key, required this.myController,this.labelTexte, this.placeholderTexte, this.password, required void Function(dynamic name) onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelTexte!),
          const SizedBox(height: 5),
          TextField(
        keyboardType: password!
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        enableSuggestions: password! ? false : true,
        autocorrect: password! ? false : true,
        obscureText: password ?? true,
        controller: myController,
        decoration: InputDecoration(
          // suffixIcon: isPassword!
          //     ? IconButton(
          //         icon: const Icon(Icons.remove_red_eye, color: Colors.grey),
          //         onPressed: () {},
          //       )
          //     : null,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff1a7205), width: 1),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff1a7205), width: 1),
              borderRadius: BorderRadius.circular(10)),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
          hintText: placeholderTexte,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
        ],
      )
    );
  }
}