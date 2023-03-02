import 'package:flutter/material.dart';
import 'package:flutter_week5_dialog_bottomsheets/widget/alta_elevated_button.dart';

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Task'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Form(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Task Title",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.grey.shade500))),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: AltaElevatedButton(
                          buttonTitle: 'Create Task',
                          onPressed: () {
                            _showConfirmationDialog(context);
                            // _showConfirmationDialogCustom(context);
                            // _showConfirmationBottomSheets(context);
                          },
                        )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  /// Alert Dialog
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const Text(
              "Pastikan data sudah benar",
            ),
            actions: [
              AltaElevatedButton(
                buttonTitle: 'YA',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              AltaElevatedButton(
                buttonTitle: 'TIDAK',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  /// Alert Dialog Custom
  void _showConfirmationDialogCustom(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Stack(
            alignment: Alignment.center,
            children: const [
              Material(
                child: SizedBox(
                  width: 500,
                  height: 600,
                  child: Text("Hello Custom Dialog"),
                ),
              ),
            ],
          );
        });
  }

  /// Bottom Sheets
  void _showConfirmationBottomSheets(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
              height: 200,
              child: Column(
                children: [
                  const Text("Bottom Sheets"),
                  TextFormField(),
                  AltaElevatedButton(
                    buttonTitle: 'TEST',
                    onPressed: () {},
                  )
                ],
              ));
        });
  }
}
