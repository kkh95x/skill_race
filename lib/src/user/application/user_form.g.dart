// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_form.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userFormHash() => r'508b25c3ab96308fa99e1edcb3fa4159ab167c53';

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

typedef UserFormRef = AutoDisposeProviderRef<FormGroup>;

/// See also [userForm].
@ProviderFor(userForm)
const userFormProvider = UserFormFamily();

/// See also [userForm].
class UserFormFamily extends Family<FormGroup> {
  /// See also [userForm].
  const UserFormFamily();

  /// See also [userForm].
  UserFormProvider call({
    AppUser? user,
  }) {
    return UserFormProvider(
      user: user,
    );
  }

  @override
  UserFormProvider getProviderOverride(
    covariant UserFormProvider provider,
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
  String? get name => r'userFormProvider';
}

/// See also [userForm].
class UserFormProvider extends AutoDisposeProvider<FormGroup> {
  /// See also [userForm].
  UserFormProvider({
    this.user,
  }) : super.internal(
          (ref) => userForm(
            ref,
            user: user,
          ),
          from: userFormProvider,
          name: r'userFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userFormHash,
          dependencies: UserFormFamily._dependencies,
          allTransitiveDependencies: UserFormFamily._allTransitiveDependencies,
        );

  final AppUser? user;

  @override
  bool operator ==(Object other) {
    return other is UserFormProvider && other.user == user;
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
