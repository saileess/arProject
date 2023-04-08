import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:major_project/infrastructure/dtos/planet_dto/planet_dto.dart';
import 'package:dartz/dartz.dart';
import '../../domain/planet/planet_repository.dart';


class IPlanetRepository extends PlanetRepository{
  final _firestore = FirebaseFirestore.instance;



  @override
  Future<Either<String,List<PlanetDto>>> getPlanetData( ) async{

    List<PlanetDto> listOfPlanets = [];

    try{
  final QuerySnapshot<Map<String, dynamic>> res =  await _firestore.collection('planets').get();


      if (res.docs.isNotEmpty) {
        for (final planet in res.docs) {
          listOfPlanets.add(PlanetDto.fromJson(planet.data()));
          
        }
      }

    }catch (e) {
      return left('Failed to fetch Planets. Please try again!');
    }
    return right(listOfPlanets);

    
  }
  
  @override
  Future<Either<String, PlanetDto>> getPlanetDetailsByID({required String id}) async{
    PlanetDto? planetDto;

    try{
  final DocumentSnapshot res =  await _firestore.collection('planets').doc(id).get();

      if (res.exists) {
        planetDto = PlanetDto.fromJson(res.data() as Map<String, dynamic>);

      }

    }catch (e) {
      return left('Failed to fetch Planets. Please try again!');
    }
    return right(planetDto!);
  }
  



  @override
  Future<List<String>> addToBookmark({required String id}) async{
List<String> updatedBookmarkList =[];
    try{
      final uid = FirebaseAuth.instance.currentUser!.uid ;
  final  res =  await _firestore.collection('users').doc(uid).get();
  final listOfBookmarks = res.data()!['bookmarks'];
  List<String> updatedBookmarks = [];
  if(listOfBookmarks != null ){
    for (var bookmark in listOfBookmarks) {
      updatedBookmarks.add(bookmark);
    }
  }
  if(updatedBookmarks.contains(id)){
    updatedBookmarks.remove(id);
  }else{
  updatedBookmarks.add(id);

  }
await  _firestore.collection('users').doc(uid).update({'bookmarks': updatedBookmarks}).then((value) => updatedBookmarkList = updatedBookmarks);

    }catch (e) {
      return [];
    }
    return updatedBookmarkList;
  }
  


  @override
  Future<List<PlanetDto>> fetchListofBookmarks({required String uid}) async{
    List<PlanetDto> bookmarkList = [];
    try{
final  res =  await _firestore.collection('users').doc(uid).get();
  final listOfBookmarks = res.data()!['bookmarks'];
  List<String> updatedBookmarks = [];
  if(listOfBookmarks != null ){
    for (var bookmark in listOfBookmarks) {
      updatedBookmarks.add(bookmark);
    }
  }
  if(updatedBookmarks.isNotEmpty){
    for(var bookmarkID in updatedBookmarks){
      final res2 = await getPlanetDetailsByID(id: bookmarkID);
      res2.fold((l)  {

      }, (r) {
        bookmarkList.add(r);
      });
    }
  }

    }catch (e) {
      return bookmarkList;
    }
    return bookmarkList;
  }


}

