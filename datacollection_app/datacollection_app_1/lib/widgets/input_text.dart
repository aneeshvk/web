import 'package:datacollection_app_1/models/base_model.dart';
import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  String caption;
  double width;
  BaseModelClass modelObject;
  String fieldName;
  InputText(
      {super.key,
      required this.caption,
      this.width = 150,
      required this.modelObject,
      required this.fieldName});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String fieldValue = "";
    if (widget.modelObject.get(widget.fieldName) != null) {
      fieldValue = widget.modelObject.get(widget.fieldName).toString();
      if (mounted) {
        Future.delayed(Duration.zero, () {
          controller.text = fieldValue;
        });
      }
    } else {
      Future.delayed(Duration.zero, () {
        controller.text = "";
      });
    }
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: widget.width,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "${widget.caption} is required";
            }
            return null;
          },
          onChanged: (value) {
            widget.modelObject.set(widget.fieldName, value);
          },
          decoration: InputDecoration(labelText: widget.caption),
          controller: controller,
        ),
      ),
    );
  }
}
