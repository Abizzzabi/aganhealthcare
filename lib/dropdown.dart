import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final VoidCallback Onpressed;
  final String? dropDownValue;
  final List<String> listValue;
  
  const DropDown(
      {Key? key,
      required this.Onpressed,
      this.dropDownValue,
      required this.listValue,
      })
      : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    String? dropdownvalue = widget.dropDownValue;
    
    return Expanded(
      flex: 1,
      child: Container(
        // width: 194,
        height: 56,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: DropdownButtonFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                    width: 1, color: Color.fromRGBO(28, 107, 164, 1)),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                      width: 1, color: Color.fromRGBO(28, 107, 164, 1))),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      const BorderSide(width: 1, color: Colors.black)),
              
            
            ),
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: widget.listValue.map((String items) {
              return DropdownMenuItem<String>(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }
}
