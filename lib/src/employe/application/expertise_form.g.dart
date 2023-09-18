// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expertise_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$expertiseFormHash() => r'c6bce867665ca218e2c6ec162b80f198f6749f95';

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

typedef ExpertiseFormRef = ProviderRef<FormGroup>;

/// See also [expertiseForm].
@ProviderFor(expertiseForm)
const expertiseFormProvider = ExpertiseFormFamily();

/// See also [expertiseForm].
class ExpertiseFormFamily extends Family<FormGroup> {
  /// See also [expertiseForm].
  const ExpertiseFormFamily();

  /// See also [expertiseForm].
  ExpertiseFormProvider call({
    Expertise? expertise,
  }) {
    return ExpertiseFormProvider(
      expertise: expertise,
    );
  }

  @override
  ExpertiseFormProvider getProviderOverride(
    covariant ExpertiseFormProvider provider,
  ) {
    return call(
      expertise: provider.expertise,
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
  String? get name => r'expertiseFormProvider';
}

/// See also [expertiseForm].
class ExpertiseFormProvider extends Provider<FormGroup> {
  /// See also [expertiseForm].
  ExpertiseFormProvider({
    this.expertise,
  }) : super.internal(
          (ref) => expertiseForm(
            ref,
            expertise: expertise,
          ),
          from: expertiseFormProvider,
          name: r'expertiseFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$expertiseFormHash,
          dependencies: ExpertiseFormFamily._dependencies,
          allTransitiveDependencies:
              ExpertiseFormFamily._allTransitiveDependencies,
        );

  final Expertise? expertise;

  @override
  bool operator ==(Object other) {
    return other is ExpertiseFormProvider && other.expertise == expertise;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, expertise.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
