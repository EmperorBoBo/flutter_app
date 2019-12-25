import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfiniteListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfiniteListViewState();
  }
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "#+ABCDEFG+#";
  Widget divider1 = Divider(
    height: 1,
    color: Colors.green,
    indent: 16,
    endIndent: 16,
  );
  var _word = <String>[loadingTag];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          if (_word[index] == loadingTag) {
            // 标识
            if (_word.length - 1 < 100) {
              _retrieveData();
              return Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ));
            } else {
              return Container(
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: Text(
                    "--没有更多了--",
                    style: TextStyle(color: Colors.grey),
                  ));
            }
          }
          return ListTile(title: Text(_word[index]));
        },
        itemCount: _word.length,
        separatorBuilder: (BuildContext context, int index) {
          return divider1;
        },
      ),
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 1)).then((e) {
      _word.insertAll(_word.length - 1,
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {
        // 重构列表
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }
}
