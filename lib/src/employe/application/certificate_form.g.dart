// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ceritificateFormHash() => r'04209ec3c585341bf4f6582c4e4736143fd28b24';

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

typedef CeritificateFormRef = ProviderRef<FormGroup>;

/// See also [ceritificateForm].
@ProviderFor(ceritificateForm)
const ceritificateFormProvider = CeritificateFormFamily();

/// See also [ceritificateForm].
class CeritificateFormFamily extends Family<FormGroup> {
  /// See also [ceritificateForm].
  const CeritificateFormFamily();

  /// See also [ceritificateForm].
  CeritificateFormProvider call({
    CeritificateInfo? ceritificateInfo,
  }) {
    return CeritificateFormProvider(
      ceritificateInfo: ceritificateInfo,
    );
  }

  @override
  CeritificateFormProvider getProviderOverride(
    covariant CeritificateFormProvider provider,
  ) {
    return call(
      ceritificateInfo: provider.ceritificateInfo,
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
  String? get name => r'ceritificateFormProvider';
}

/// See also [ceritificateForm].
class CeritificateFormProvider extends Provider<FormGroup> {
  /// See also [ceritificateForm].
  CeritificateFormProvider({
    this.ceritificateInfo,
  }) : super.internal(
          (ref) => ceritificateForm(
            ref,
            ceritificateInfo: ceritificateInfo,
          ),
          from: ceritificateFormProvider,
          name: r'ceritificateFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ceritificateFormHash,
          dependencies: CeritificateFormFamily._dependencies,
          allTransitiveDependencies:
              CeritificateFormFamily._allTransitiveDependencies,
        );

  final CeritificateInfo? ceritificateInfo;

  @override
  bool operator ==(Object other) {
    return other is CeritificateFormProvider &&
        other.ceritificateInfo == ceritificateInfo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ceritificateInfo.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
