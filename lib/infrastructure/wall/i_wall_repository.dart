import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:major_project/domain/wall/wall_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:major_project/infrastructure/dtos/wall_dto/wall_dto.dart';

class IWallRepository extends WallRepository{
  final _firestore = FirebaseFirestore.instance;


  @override
  Future<Either<String, List<WallDto>>> getWallData() async{

    List<WallDto> listOfTopics  = []; 

    try{
      final QuerySnapshot<Map<String, dynamic>> res = await _firestore.collection('wall').get();
      print(res);

      if(res.docs.isNotEmpty){
        for(final wall in res.docs){
          listOfTopics.add(WallDto.fromJson(wall.data()));
        }
      }
    }catch(e){
      return left('Failed to fetch upcoming topics. Please try again!');

    }return right(listOfTopics);
  }

  @override
  Future<Either<String, WallDto>> getWallDetailsByID({required String id}) async{
    
    WallDto? wallDto;
    try{
      final DocumentSnapshot res = await _firestore.collection('wall').doc(id).get();
      if(res.exists){
        wallDto = WallDto.fromJson(res.data() as Map<String, dynamic>);
        print(wallDto);
      }
    }catch(e){
      return left('Failed to fetch upcoming topics detail. Please try again!');
    }
    return right(wallDto!);
  }

}
