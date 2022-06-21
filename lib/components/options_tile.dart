import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state_manager.dart';

class OptionsTile extends StatefulWidget {
  final int label;
  
  bool clicked;
  final int parentLabel;
  OptionsTile({Key? key, required this.label, required this.parentLabel, required this.clicked})
      : super(key: key);
    
  @override
  State<OptionsTile> createState() => _OptionsTileState();

  
}

class _OptionsTileState extends State<OptionsTile> {
  
  bool changeTileColor() {
    if(!mounted){
      return mounted;
      
    }
    setState(() {
      widget.clicked = !widget.clicked;
    }
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var stateInstance = Provider.of<AppState>(context);
    return GestureDetector(
      onTap: () {
        //if(stateInstance.OptionsStateKeeper[widget.parentLabel]?[1])

        if (stateInstance.OptionsStateKeeper[widget.parentLabel]?[0][0] ==
                null ||
            stateInstance.OptionsStateKeeper[widget.parentLabel]?[0][1] ==
                null) {
          changeTileColor();
          //Set this question so that it is now known that an option has been picked for this question
          stateInstance.OptionsStateKeeper[widget.parentLabel]?[0][0] = 1;
          //Set the particular option chosen
          stateInstance.OptionsStateKeeper[widget.parentLabel]?[0][1] =
              widget.label;
          stateInstance.OptionsStateKeeper[widget.parentLabel]?[1][0] =
              changeTileColor;
        } else {
          if (stateInstance.OptionsStateKeeper[widget.parentLabel]?[0][1] !=
              widget.label) {
            stateInstance.OptionsStateKeeper[widget.parentLabel]?[0][1] =
                widget.label;
            var previousTileChosen =
                stateInstance.OptionsStateKeeper[widget.parentLabel]?[1][0];
            var result = previousTileChosen();
            if (!result){
              stateInstance.rebuildPageView();
            }
            stateInstance.OptionsStateKeeper[widget.parentLabel]?[1][0] =
                changeTileColor;
            setState(() {
              if (!widget.clicked) {
                widget.clicked= !widget.clicked;
              }
            });
          }
        }
      },
      child: widget.clicked? OptionTileChosen() : OptionTileNotChosen(),
    );
  }
}




class OptionTileNotChosen extends StatelessWidget {
  const OptionTileNotChosen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                color: Colors.black,
                blurRadius: 17,
                spreadRadius: -22,
              )
            ]),
        height: 30,
        child: Center(
          child: Text(
            'Option',
            style:Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
          ),
        ),
      );
  }
}

class OptionTileChosen extends StatelessWidget {
  const OptionTileChosen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                color: Colors.black,
                blurRadius: 17,
                spreadRadius: -22,
              )
            ]),
        height: 30,
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                'Option',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
      );
  }
}
/*
Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: _clicked ? Colors.red : Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                color: Colors.black,
                blurRadius: 17,
                spreadRadius: -22,
              )
            ]),
        height: 30,
        child: Center(
          child: Text(
            'Option',
            style: _clicked
                ? Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(fontSize: 20, color: Colors.white)
                : Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
          ),
        ),
      ),
*/