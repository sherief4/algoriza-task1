import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberPicker extends StatefulWidget {
  const PhoneNumberPicker({Key? key, required this.pickerController})
      : super(key: key);
  final TextEditingController pickerController;

  @override
  State<PhoneNumberPicker> createState() => _PhoneNumberPickerState();
}

class _PhoneNumberPickerState extends State<PhoneNumberPicker> {
  String code = '+20';

  void changeCode(String value) {
    setState(() {
      code = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Phone Number',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
          child: Row(
            children: [
              Text(
                code,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
              ),
              CountryCodePicker(
                padding: EdgeInsets.zero,
                onChanged: (value) {
                  changeCode(value.toString());
                },
                hideMainText: true,
                showFlagMain: false,
                showFlag: false,
                showDropDownButton: true,
                showFlagDialog: true,
                initialSelection: 'EG',
                favorite: const ['+20', 'EG'],
                hideSearch: true,
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                alignLeft: true,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value){
                    if(value!.isNotEmpty){return null ;}
                    else{
                      return  'Enter a valid phoneNumber';
                    }
                  },
                  controller: widget.pickerController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Eg. 1234567890',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
