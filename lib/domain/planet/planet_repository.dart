

import 'package:dartz/dartz.dart';
import 'package:major_project/infrastructure/dtos/planet_dto/planet_dto.dart';


abstract class PlanetRepository {
  Future<Either<String,List<PlanetDto>>> getPlanetData(
      );

  Future<Either<String, PlanetDto>> getPlanetDetailsByID(
    { required String id,
    }
      );

  Future<List<String>> addToBookmark(
    { required String id,
    }
      );

}
