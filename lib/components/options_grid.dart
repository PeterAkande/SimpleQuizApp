import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'options_tile.dart';
import '../app_state_manager.dart';

class OptionsGrid extends StatefulWidget {
  int label;
  int itemCount;
  OptionsGrid({Key? key, required this.itemCount, required this.label})
      : super(key: key);

  @override
  State<OptionsGrid> createState() => _OptionsGridState();
}

class _OptionsGridState extends State<OptionsGrid> {
  @override
  Widget build(BuildContext context) {
    var stateInstance = Provider.of<AppState>(context);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      itemCount: widget.itemCount,
      itemBuilder: (context, value) {
        Map OptionState = stateInstance.OptionsStateKeeper;
        bool _isThisTileChosen = false;
        List gridInfo = OptionState[widget.label];

        if (gridInfo[0][0] != null) {
          int chosenOption = gridInfo[0][1];

          if (value == chosenOption) {
            _isThisTileChosen = true;
          }
        }
        Widget tile = OptionsTile(
          clicked: _isThisTileChosen,
          parentLabel: widget.label,
          label: value,
        );

        return tile;
      },
    );
  }
}
