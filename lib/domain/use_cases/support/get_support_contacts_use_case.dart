import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/support/support_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetSupportContactsUseCase with BaseUseCase<List<SupportContactEntity>> {
  GetSupportContactsUseCase(this._supportRepository);

  final SupportRepository _supportRepository;

  @override
  Future<List<SupportContactEntity>> execute() =>
      _supportRepository.getContacts();
}
