import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class Expandedtile extends StatefulWidget {

  final String text;
  Expandedtile({required this.text});

  @override
  State<Expandedtile> createState() => _ExpandedtileState();
}

class _ExpandedtileState extends State<Expandedtile> {

  late String firstHalf;
  late String secondHalf;
  bool flag = true;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>160){
      firstHalf=widget.text.substring(0, 240);
      secondHalf=widget.text.substring(200, widget.text.length);
    } else {
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.length == ""  ? Text(
        widget.text
      ): Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            flag? firstHalf: widget.text, style: secondaryBlackStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
              height: 1.5
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: (){
              setState(() {
                flag = !flag;
              });
            },
            child: Row(
              children: [
                Text(
              flag? 'Show all' : 'Close Description',
              style: pinkOneStyle.copyWith(
                fontSize: 12,
                fontWeight: medium
              )
            ),
            Icon(flag? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_up_rounded, color: pinkOne,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}