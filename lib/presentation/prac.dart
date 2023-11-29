import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:major_project/application/dropdown/dropdown_bloc.dart';


class Dropdown extends StatelessWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropdownBloc(DropdownState.initial()),
      child: const DropdownConsumer(),
    );
  }
}

class DropdownConsumer extends StatelessWidget {
  const DropdownConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BlocConsumer<DropdownBloc, DropdownState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          body: Column(children: [
            Toggle(onClickButton: (){
              context.read<DropdownBloc>().add(const DropdownEvent.dropdown());

            },
            isSelected: state.expandDropdown,
            )
          ]),
        );
      },
    );
  }
}




// ignore: must_be_immutable
class Toggle extends StatelessWidget {
  bool isSelected;
final Function()? onClickButton;
  Toggle({Key? key,  this.isSelected = false, required this.onClickButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: onClickButton, child: Container(color: Colors.yellow,child: Text('button 1'))), 
        if(isSelected) const Para(),
      ],
    );
  }
}

class Para extends StatelessWidget {
  const Para({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text(
          'lorem Mihi duco adfero, puer pasco homo aduro missa. Tametsi esse pia illa, renuo uter. Premo picea. Loci letum demum abbas ceterum puteus suus metuo. Suus autus abeo queso > putus faenum. Corrigo lenio. Illa quris aurum sequi utrum taceo, pyropus quantum. Frequentatio immineo lacrima opportunitatus. Cum spes, fas vado ruris pudeo relictus > promulgatio scivi. Mane, senis illi sicut sano fleo formica.'),
    );
  }
}
