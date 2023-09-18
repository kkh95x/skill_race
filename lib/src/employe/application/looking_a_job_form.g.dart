// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'looking_a_job_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lookingForAJobFormHash() =>
    r'16f0b29d246576f1be8ed9ed9ef1769cca3dce4c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef LookingForAJobFormRef = ProviderRef<FormGroup>;

/// See also [lookingForAJobForm].
@ProviderFor(lookingForAJobForm)
const lookingForAJobFormProvider = LookingForAJobFormFamily();

/// See also [lookingForAJobForm].
class LookingForAJobFormFamily extends Family<FormGroup> {
  /// See also [lookingForAJobForm].
  const LookingForAJobFormFamily();

  /// See also [lookingForAJobForm].
  LookingForAJobFormProvider call({
    LookingForAJob? lookingForAJob,
  }) {
    return LookingForAJobFormProvider(
      lookingForAJob: lookingForAJob,
    );
  }

  @override
  LookingForAJobFormProvider getProviderOverride(
    covariant LookingForAJobFormProvider provider,
  ) {
    return call(
      lookingForAJob: provider.lookingForAJob,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'lookingForAJobFormProvider';
}

/// See also [lookingForAJobForm].
class LookingForAJobFormProvider extends Provider<FormGroup> {
  /// See also [lookingForAJobForm].
  LookingForAJobFormProvider({
    this.lookingForAJob,
  }) : super.internal(
          (ref) => lookingForAJobForm(
            ref,
            lookingForAJob: lookingForAJob,
          ),
          from: lookingForAJobFormProvider,
          name: r'lookingForAJobFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lookingForAJobFormHash,
          dependencies: LookingForAJobFormFamily._dependencies,
          allTransitiveDependencies:
              LookingForAJobFormFamily._allTransitiveDependencies,
        );

  final LookingForAJob? lookingForAJob;

  @override
  bool operator ==(Object other) {
    return other is LookingForAJobFormProvider &&
        other.lookingForAJob == lookingForAJob;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lookingForAJob.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
