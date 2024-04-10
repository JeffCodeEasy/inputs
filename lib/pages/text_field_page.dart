import 'package:flutter/material.dart';
import 'package:input/constants/countries.dart';
import 'package:input/models/country.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final List<Country> _countries;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _countries = countries.map((e) => Country.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    late final List<Country> filteredList;
    if (_query.isEmpty) {
      filteredList = _countries;
    } else {
      filteredList = _countries
          .where((element) =>
              element.name.toLowerCase().contains(_query.toLowerCase()))
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: TextField(
          // enabled: false,
          onChanged: (value) {
            _query = value;
            setState(() {});
          },
          decoration: const InputDecoration(
            // label: Text("Search"),
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.black26),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Color(0xff00c853),
            ),
            suffixIcon: Icon(
              Icons.close,
              color: Color(0xff00c853),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            // focusedBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Color(0xff00c853),
            //   ),
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderSide: BorderSide(color: Colors.black54),
            // ),
          ),
        ),
      ),
      body: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: filteredList.length,
        itemBuilder: (context, index) {
          final country = filteredList[index];
          return ListTile(
            title: Text(country.name),
          );
        },
      ),
    );
  }
}
