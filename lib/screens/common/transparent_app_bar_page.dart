import 'package:flutter/material.dart';

/// This is a common component that allows us to create
/// a re-usable transparent app bar page with certain reusable fields
/// We need to pass in the title (optional),
/// We do need to pass in a child body, which is required for this component
/// to correctly render the page.
///
class TransparentAppBarPage extends StatelessWidget {
  final String title;
  final Widget body;

  const TransparentAppBarPage({
    Key key,
    this.title,
    @required this.body,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title != null ? Text(title) : null,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          opacity: .90,
        ),
        automaticallyImplyLeading: true,
      ),
      body: body,
    );
  }
}
