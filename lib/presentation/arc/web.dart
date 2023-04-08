import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class WebObjectsView extends StatefulWidget {
  const WebObjectsView({Key? key}) : super(key: key);

  @override
  State<WebObjectsView> createState() => _WebObjectsViewState();
}

class _WebObjectsViewState extends State<WebObjectsView> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;


  //String webObjectReference;
  ARNode? webObjectNode;

  @override
  void dispose() {
    arSessionManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Objects'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: ARView(
                  onARViewCreated: onARViewCreated,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: onAddWebObjectPressed,
                      child: const Text('Add Web Object')),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: onRemoveWebObjectPressed,
                      child: const Text('Remove Web Object')),
                )
              ],
            ),
          ],
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
          // customPlaneTexturePath: "assets/triangle.png",
          showWorldOrigin: false,
          handleTaps: false,
        );
    this.arObjectManager.onInitialize();
  }


  Future<void> onAddWebObjectPressed() async {
      var newNode = ARNode(
          type: NodeType.webGLB,
          uri: "https://firebasestorage.googleapis.com/v0/b/stridenseek.appspot.com/o/files%2FAR_Models%2FAlien.glb?alt=media&token=fffd9db1-dcc5-4dae-bb1f-95d7ea867817",
          scale: Vector3(0.2, 0.2, 0.2));
      bool? didAddWebNode = await arObjectManager.addNode(newNode);
      webObjectNode = (didAddWebNode!) ? newNode : null;
    
  }

  Future<void> onRemoveWebObjectPressed() async {
    if (webObjectNode != null) {
      arObjectManager.removeNode(webObjectNode!);
      webObjectNode = null;
    } else {
    ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('No object present to remove!'),
                  duration: Duration(seconds: 3)),
            ); 
    }
  }
}
