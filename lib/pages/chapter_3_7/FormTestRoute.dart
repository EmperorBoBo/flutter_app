import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormTestRouteState();
  }
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fomr Test")),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Form(
              key: _formKey,
              autovalidate: true,
              child: Column(children: <Widget>[
                TextFormField(
                    autofocus: true,
                    controller: _unameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.details),
                      labelText: '用户：',
                      hintText: '用户名或者邮箱',
                    ),
                    validator: (v) {
                      return v.trim().length > 0 ? null : '用户名不能为空';
                    }),
                TextFormField(
                    autofocus: true,
                    controller: _pwdController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_balance),
                        labelText: '密码：',
                        hintText: '输入登陆密码'),
                    obscureText: true,
                    validator: (v) {
                      return v.trim().length > 6 ? null : '密码不能少于6位';
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(children: <Widget>[
                    Expanded(
                        child: RaisedButton(
                      padding: EdgeInsets.all(16),
                      child: Text('登陆'),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        if ((_formKey.currentState as FormState).validate()) {
                          //验证通过提交数据
                        }
                      },
                    ))
                  ]),
                )
              ]))),
    );
  }
}
