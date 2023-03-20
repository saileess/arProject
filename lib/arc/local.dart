import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/cupertino.dart' as yy;
import 'package:googleapis/calendar/v3.dart' as v3;
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class LocalObjectsView extends StatefulWidget {
  const LocalObjectsView({Key? key}) : super(key: key);

  @override
  State<LocalObjectsView> createState() => _LocalObjectsViewState();
}

class _LocalObjectsViewState extends State<LocalObjectsView> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;

  //String localObjectReference;
  ARNode? localObjectNode;

  @override
  void dispose() {
    arSessionManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Objects'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child:
                  ARView(
                    onARViewCreated: onARViewCreated,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: yy.MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: yy.MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          onPressed: onAddRobotPressed,
                          child: const Text('Add Robot')),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                          onPressed: onAddVirtualCityPressed,
                          child: const Text('Add Virtual City')),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: onRemovePressed,
                      child: const Text('Remove Object'))
                ],
              ),
              const SizedBox(
                        height: 10,
                      ),
            ],
          ),
        ),
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

  Future<void> onAddRobotPressed() async {
    var newNode = ARNode(
        type: NodeType.fileSystemAppFolderGLB,
        uri: "assets/human_skeleton.glb",
        scale: Vector3(0.2, 0.2, 0.2),
        position: Vector3(0.0, 0.0, 0.0),
        rotation: Vector4(1.0, 0.0, 0.0, 0.0));
    bool? didAddLocalNode = await arObjectManager.addNode(newNode);
    localObjectNode = (didAddLocalNode!) ? newNode : null;
  }

  Future<void> onAddVirtualCityPressed() async {
    var newNode = ARNode(
        type: NodeType.fileSystemAppFolderGLB,
        uri: "assets/psearth/Alien.glb",
        scale: Vector3(0.2, 0.2, 0.2), 
        position: Vector3(0.0, 0.0, 0.0),
        rotation: Vector4(1.0, 0.0, 0.0, 0.0));
    bool? didAddLocalNode = await arObjectManager.addNode(newNode);
    localObjectNode = (didAddLocalNode!) ? newNode : null;
  }

  Future<void> onRemovePressed() async {
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
