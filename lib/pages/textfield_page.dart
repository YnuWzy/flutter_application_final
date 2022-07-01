import 'package:flutter/material.dart';
import './icon_page.dart';
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      elevation: 3,
      margin: EdgeInsets.all(0.0),
      child: Container(
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextDemo(),
            TextDemo02(),
            IconDemo(),
          ],
        ),
      ),
    ));
  }
}
var _titleTxt = new TextEditingController();
class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height - 20,
        padding:
            EdgeInsets.only(left: 18.0, right: 18.0, bottom: 20.0, top: 2.0),
        child: TextField(
          controller: _titleTxt,
          decoration:
              InputDecoration(border: InputBorder.none, hintText: '点击输入文本'),
          style: TextStyle(color: Colors.black, fontSize: 25.0),
          maxLines: 999,
          cursorColor: Colors.blue[500],
          cursorWidth: 2.0,
        ),
      ),
    );
  }
}
TextEditingController _editingController = new TextEditingController();

var Content;

List english= [
  'esteem',
  'prosperity',
  'strong',
  'hardy',
  'robust',
  'conferred',
  'give'
];

List chinese=[
  '自尊',
  '繁荣, 富裕, 兴盛, 繁荣昌盛, 昌盛, 兴旺',
  '强, 强大, 强烈, 坚强, 较强, 强壮',
  '耐寒, 哈代, 哈迪, 哈, 强壮, 顽强',
  '鲁 棒, 稳健, 健壮, 强劲, 鲁棒性, 强大',
  '赋予, 授予, 赋, 商议, 授, 颁 授',
  '给, 让, 给予, 把, 提供, 赋予'
];

class TextContent{

  static String getText(){
    return _titleTxt.text;
  }

  static int search(){
    for(int i=0;i<english.length;i++){
      if(getText()==english[i]){
        return i;
      }
    }
    return 2147483647;
  }

  static void EnglishToChinese(){
    int i=search();
    if(i!=2147483647){
      setEditeInputTextFunction(chinese[i]);
    }else{
      clearEditeInputTextFunction();
    }
  }

  static void setEditeInputTextFunction(String flagText){
    _editingController.text = flagText;
  }

  static void clearEditeInputTextFunction(){
    _editingController.clear();
  }
}

class TextDemo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height - 20,
        padding:
            EdgeInsets.only(left: 18.0, right: 18.0, bottom: 20.0, top: 2.0),
        child: TextField(
          controller: _editingController,
          decoration:
              InputDecoration(border: InputBorder.none, hintText: '翻译'),
          style: TextStyle(color: Colors.black, fontSize: 25.0),
          maxLines: 999,
          cursorColor: Colors.blue[500],
          cursorWidth: 2.0,
          enabled: false,
        ),
      ),
    );
  }
}

