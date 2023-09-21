// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_emp_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editEmpFormProfileHash() =>
    r'94158df348d1b112ab10e29ef427203b4dc2c24c';

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

typedef EditEmpFormProfileRef = AutoDisposeProviderRef<FormGroup>;

/// See also [editEmpFormProfile].
@ProviderFor(editEmpFormProfile)
const editEmpFormProfileProvider = EditEmpFormProfileFamily();

/// See also [editEmpFormProfile].
class EditEmpFormProfileFamily extends Family<FormGroup> {
  /// See also [editEmpFormProfile].
  const EditEmpFormProfileFamily();

  /// See also [editEmpFormProfile].
  EditEmpFormProfileProvider call({
    required AppUser user,
  }) {
    return EditEmpFormProfileProvider(
      user: user,
    );
  }

  @override
  EditEmpFormProfileProvider getProviderOverride(
    covariant EditEmpFormProfileProvider provider,
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
  String? get name => r'editEmpFormProfileProvider';
}

/// See also [editEmpFormProfile].
class EditEmpFormProfileProvider extends AutoDisposeProvider<FormGroup> {
  /// See also [editEmpFormProfile].
  EditEmpFormProfileProvider({
    required this.user,
  }) : super.internal(
          (ref) => editEmpFormProfile(
            ref,
            user: user,
          ),
          from: editEmpFormProfileProvider,
          name: r'editEmpFormProfileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editEmpFormProfileHash,
          dependencies: EditEmpFormProfileFamily._dependencies,
          allTransitiveDependencies:
              EditEmpFormProfileFamily._allTransitiveDependencies,
        );

  final AppUser user;

  @override
  bool operator ==(Object other) {
    return other is EditEmpFormProfileProvider && other.user == user;
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
