// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_hiring_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editHiringFormProfileHash() =>
    r'b50368cdffa6b4105e1916d8132f66b91f0739f4';

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

typedef EditHiringFormProfileRef = AutoDisposeProviderRef<FormGroup>;

/// See also [editHiringFormProfile].
@ProviderFor(editHiringFormProfile)
const editHiringFormProfileProvider = EditHiringFormProfileFamily();

/// See also [editHiringFormProfile].
class EditHiringFormProfileFamily extends Family<FormGroup> {
  /// See also [editHiringFormProfile].
  const EditHiringFormProfileFamily();

  /// See also [editHiringFormProfile].
  EditHiringFormProfileProvider call({
    required AppUser user,
  }) {
    return EditHiringFormProfileProvider(
      user: user,
    );
  }

  @override
  EditHiringFormProfileProvider getProviderOverride(
    covariant EditHiringFormProfileProvider provider,
  ) {
    return call(
      user: provider.user,
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
  String? get name => r'editHiringFormProfileProvider';
}

/// See also [editHiringFormProfile].
class EditHiringFormProfileProvider extends AutoDisposeProvider<FormGroup> {
  /// See also [editHiringFormProfile].
  EditHiringFormProfileProvider({
    required this.user,
  }) : super.internal(
          (ref) => editHiringFormProfile(
            ref,
            user: user,
          ),
          from: editHiringFormProfileProvider,
          name: r'editHiringFormProfileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editHiringFormProfileHash,
          dependencies: EditHiringFormProfileFamily._dependencies,
          allTransitiveDependencies:
              EditHiringFormProfileFamily._allTransitiveDependencies,
        );

  final AppUser user;

  @override
  bool operator ==(Object other) {
    return other is EditHiringFormProfileProvider && other.user == user;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, user.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
