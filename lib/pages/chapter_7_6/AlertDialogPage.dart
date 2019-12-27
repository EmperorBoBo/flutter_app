import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlertDialogPageState();
  }
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print("--->");
              showNormalDialog();
            },
            child: Text("普通对话框"),
          ),
          RaisedButton(
            child: Text('返回值对话框'),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  AlertDialog showNormalDialog() {
    return AlertDialog(
      title: Text("普通Dialog"),
      content: Text("看下效果内容如何..."),
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("取消"),
        ),
        FlatButton(
          onPressed: () async {
            bool delete = await showDeleteConfirmDialog();
            if(delete){
              print("取消删除");
            }else{
              print('确认删除');
            }
          },
          child: Text("确定"),
        ),
      ],
    );
  }

  Future<bool> showDeleteConfirmDialog() {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text("您确定要删除当前文件夹吗？"),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("确定"),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              )
            ],
          );
        });
  }
}
