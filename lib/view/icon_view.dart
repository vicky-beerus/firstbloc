import 'dart:math';

import 'package:firstbloc/block_icon/icons_bloc.dart';
import 'package:firstbloc/modal/icon_modals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IconView extends StatefulWidget {
  const IconView({Key? key}) : super(key: key);

  @override
  _IconViewState createState() => _IconViewState();
}

class _IconViewState extends State<IconView> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("First Bloc"),
      ),
      body: Center(
        child: Container(
          height: h * 0.8,
          width: w,
          color: Colors.blue,
          child: Container(
            child: BlocBuilder<IconsBloc, IconsState>(
                builder: (context, state) =>
                    genrateBody(state: state, h: h, w: w)),
          ),
        ),
      ),
      bottomSheet: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  context
                      .read<IconsBloc>()
                      .add(AddIcon(iconModal: IconModal.iconModal[0]));
                },
                icon: Icon(
                  Icons.add_circle_rounded,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {
                  context
                      .read<IconsBloc>()
                      .add(RemoveIcon(removeIconModal: IconModal.iconModal[0]));
                },
                icon: Icon(
                  Icons.remove_circle,
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }

  genrateBody({state, h, w}) {
    if (state is IconInitial) {
      return CircularProgressIndicator(
        color: Colors.red,
      );
    }
    if (state is IconLoaded) {
      return Column(
        children: [
          Text("${state.listIcon.length}"),
          SizedBox(
            height: h * 0.05,
          ),
          Container(
            height: h * 0.7,
            width: w,
            color: Colors.green,
            child: Stack(
              children: [
                for (var i = 0; i < state.listIcon.length; i++)
                  Positioned(
                    left: Random().nextInt(250).toDouble(),
                    top: Random().nextInt(400).toDouble(),
                    child: (Container(
                      height: h * 0.1,
                      width: w * 0.1,
                      color: Colors.amber,
                      child: state.listIcon[i].icon,
                    )),
                  )
              ],
            ),
          ),
        ],
      );
    } else {
      Text("somethimg wnt rong");
    }
  }
}
