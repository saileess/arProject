import 'package:dartz/dartz.dart';
import '../../infrastructure/dtos/wall_dto/wall_dto.dart';

abstract class WallRepository {
  Future<Either<String, List<WallDto>>> getWallData();

  Future<Either<String, WallDto>> getWallDetailsByID({
    required String id,
  });
}
