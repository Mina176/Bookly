import 'package:bookly/Features/Search/Presentation/manager/search_books/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value) {
        BlocProvider.of<SearchBooksCubit>(context)
            .fetchSearchedBooks(query: value);
      },
      cursorColor: Colors.grey.shade400,
      decoration: InputDecoration(
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        hintText: 'Search for books, authors, or keywords',
        suffixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 4,
          color: Colors.grey.shade400,
        ));
  }
}
