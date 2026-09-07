part of 'packages_cubit.dart';

/// The two segments of the plans screen.
enum PackagesTab { all, current }

@freezed
sealed class PackagesState with _$PackagesState {
  const factory PackagesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<PackageEntity>[]) List<PackageEntity> packages,
    @Default(PackagesTab.all) PackagesTab tab,
  }) = _PackagesState;

  const PackagesState._();

  bool get showAll => tab == PackagesTab.all;
}
