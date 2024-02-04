import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/constance.dart';
import 'package:learn_with_me/features/to_do_feature/presentation/widgets/custom_text_form_field.dart';

class ShowModalButtomSheet extends StatefulWidget {
  const ShowModalButtomSheet({
    super.key,
  });

  @override
  State<ShowModalButtomSheet> createState() => _ShowModalButtomSheetState();
}

class _ShowModalButtomSheetState extends State<ShowModalButtomSheet> {
  final GlobalKey<FormState> FormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Form(
        key: FormKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: CustomTextFromField(
                hint: 'What to do ?',
                onSaved: (value) {
                  title = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                if (FormKey.currentState!.validate()) {
                  FormKey.currentState!.save();
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
