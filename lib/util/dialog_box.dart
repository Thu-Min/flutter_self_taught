import "package:flutter/material.dart";
import "package:flutter_counter/util/my_button.dart";

class DialogBox extends StatelessWidget {

  // final inputController;

  void onPressed() {

  }

  const DialogBox({super.key});
  // const DialogBox({super.key, required this.inputController});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigo[900],
      content: Container(
        height: 120,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              // controller: inputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add New Task',
                hintStyle: TextStyle(
                  color: Colors.white10,
                )
              ),
            ), 

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: "Cancel",
                  onPressed: onPressed
                ), 
                MyButton(
                  text: "Save",
                  onPressed: onPressed
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}