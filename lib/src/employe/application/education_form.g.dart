// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$eduicationFormHash() => r'1862e106f63726b572155d8348f63f8306c76faa';

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

typedef EduicationFormRef = ProviderRef<FormGroup>;

/// See also [eduicationForm].
@ProviderFor(eduicationForm)
const eduicationFormProvider = EduicationFormFamily();

/// See also [eduicationForm].
class EduicationFormFamily extends Family<FormGroup> {
  /// See also [eduicationForm].
  const EduicationFormFamily();

  /// See also [eduicationForm].
  EduicationFormProvider call({
    Education? education,
  }) {
    return EduicationFormProvider(
      education: education,
    );
  }

  @override
  EduicationFormProvider getProviderOverride(
    covariant EduicationFormProvider provider,
  ) {
    return call(
      education: provider.education,
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
  String? get name => r'eduicationFormProvider';
}

/// See also [eduicationForm].
class EduicationFormProvider extends Provider<FormGroup> {
  /// See also [eduicationForm].
  EduicationFormProvider({
    this.education,
  }) : super.internal(
          (ref) => eduicationForm(
            ref,
            education: education,
          ),
          from: eduicationFormProvider,
          name: r'eduicationFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$eduicationFormHash,
          dependencies: EduicationFormFamily._dependencies,
          allTransitiveDependencies:
              EduicationFormFamily._allTransitiveDependencies,
        );

  final Education? education;

  @override
  bool operator ==(Object other) {
    return other is EduicationFormProvider && other.education == education;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, education.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
