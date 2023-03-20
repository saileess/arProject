// import 'package:flutter/cupertino.dart' as yy;
// import 'package:googleapis/calendar/v3.dart' as v3;
// import 'package:flutter/material.dart';
// import 'package:major_project/domain/constants/string_constants.dart';
// import 'package:sizer/sizer.dart';
// import 'package:vector_math/vector_math_64.dart';

// import 'package:ar_flutter_plugin/datatypes/node_types.dart';
// import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
// import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
// import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
// import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
// import 'package:ar_flutter_plugin/models/ar_node.dart';
// import 'package:ar_flutter_plugin/widgets/ar_view.dart';

// class LocalObject extends StatefulWidget {
//   const LocalObject({Key? key}) : super(key: key);

//   @override
//   State<LocalObject> createState() => _LocalObjectState();
// }

// class _LocalObjectState extends State<LocalObject> {
//   late ARSessionManager arSessionManager;
//   late ARObjectManager arObjectManager;

//   //String localObjectReference;
//   ARNode? localObjectNode;

//   @override
//   void dispose() {
//     arSessionManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(ModelConstants.local),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 10.w),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .8,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(22),
//                   child: ARView(
//                     onARViewCreated: onARViewCreated,
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: yy.MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: yy.MainAxisAlignment.start,
//                     children: [
//                       ElevatedButton(
//                           onPressed: onAddRobotPressed,
//                           child: const Text('Add Model')),
//                       SizedBox(
//                         height: 2.h,
//                       ),
//                       // ElevatedButton(
//                       //     onPressed: onAddVirtualCityPressed,
//                       //     child: const Text('Add Virtual City')),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 5.w,
//                   ),
//                   ElevatedButton(
//                       onPressed: onRemovePressed,
//                       child: const Text('Remove Model'))
//                 ],
//               ),
//               SizedBox(
//                 height: 1.h,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void onARViewCreated(
//       ARSessionManager arSessionManager,
//       ARObjectManager arObjectManager,
//       ARAnchorManager arAnchorManager,
//       ARLocationManager arLocationManager) {
//     this.arSessionManager = arSessionManager;
//     this.arObjectManager = arObjectManager;

//     this.arSessionManager.onInitialize(
//           showFeaturePoints: false,
//           showPlanes: false,
//           showWorldOrigin: false,
//           handleTaps: false,
//         );
//   }

//   Future<void> onAddRobotPressed() async {
//     var newNode = ARNode(
//         type: NodeType.localGLTF2,
//         uri: "assets/virtualCity/VC.gltf",
//         scale: Vector3(0.2, 0.2, 0.2),
//         position: Vector3(0.0, 0.0, 0.0),
//         rotation: Vector4(1.0, 0.0, 0.0, 0.0));
//     bool? didAddLocalNode = await arObjectManager.addNode(newNode);
//     localObjectNode = (didAddLocalNode!) ? newNode : null;
//   }

//   Future<void> onAddVirtualCityPressed() async {
//     var newNode = ARNode(
//         type: NodeType.fileSystemAppFolderGLB,
//         uri: "Humanbrain.glb",
//         scale: Vector3(0.2, 0.2, 0.2),
//         position: Vector3(0.0, 0.0, 0.0),
//         rotation: Vector4(1.0, 0.0, 0.0, 0.0));
//     bool? didAddLocalNode = await arObjectManager.addNode(newNode);
//     localObjectNode = (didAddLocalNode!) ? newNode : null;
//   }

//   Future<void> onRemovePressed() async {
//     if (localObjectNode != null) {
//       arObjectManager.removeNode(localObjectNode!);
//       localObjectNode = null;
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//             content: Text('No object present to remove!'),
//             duration: Duration(seconds: 3)),
//       );
//     }
//   }
// }
