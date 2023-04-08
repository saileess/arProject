import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:major_project/presentation/core/widgets/primary_button.dart';
import 'package:sizer/sizer.dart';
import 'package:vector_math/vector_math_64.dart';

class ArObjectScreen extends StatefulWidget {
  final String name;

  ArObjectScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<ArObjectScreen> createState() => _ArObjectScreenState();
}

class _ArObjectScreenState extends State<ArObjectScreen> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;

  ARNode? localObjectNode;

  @override
  void dispose() {
    arSessionManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80.h,
            child: ARView(onARViewCreated: onARViewCreated),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryButton(
                    text: 'Add Object',
                    onPressed: () {
                      onAddObjectPressed();
                    },
                    height: 5.h,
                    width: 15.w,
                    textColor: Theme.of(context).colorScheme.onTertiary,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    borderColor: Theme.of(context).colorScheme.primary,
                    ),

                PrimaryButton(
                    text: 'Remove Object',
                    onPressed: () {
                      onRemoveObjectPressed();
                    },
                    height: 5.h,
                    width: 15.w,
                    textColor: Theme.of(context).colorScheme.onTertiary,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    borderColor: Theme.of(context).colorScheme.primary,
                    )
              ],
            ),
          )
        ],
      ),
    );
  }

  void onARViewCreated(
      ARSessionManager arSessionManager,
      ARObjectManager arObjectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;

    this.arSessionManager.onInitialize(
          showFeaturePoints: false,
          showPlanes: false,
          showWorldOrigin: false,
          handleTaps: false,
        );
  }

  Future<void> onAddObjectPressed() async {
    var newNode = ARNode(
        type: NodeType.localGLTF2,
        uri: "assets/models/${widget.name.toLowerCase()}/${widget.name.toLowerCase()}.gltf",
        scale: Vector3(0.2, 0.2, 0.2),
        position: Vector3(0.0, 0.0, 0.0),
        rotation: Vector4(1.0, 0.0, 0.0, 0.0));
    bool? didAddLocalNode = await arObjectManager.addNode(newNode);
    localObjectNode = (didAddLocalNode!) ? newNode : null;
  }



    Future<void> onRemoveObjectPressed() async {
    if (localObjectNode != null) {
      arObjectManager.removeNode(localObjectNode!);
      localObjectNode = null;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('No object present to remove!'),
            duration: Duration(seconds: 3)),
      );
    }
  }
}
