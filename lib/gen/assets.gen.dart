/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsHomeIconGen {
  const $AssetsHomeIconGen();

  /// File path: assets/home_icon/home.svg
  SvgGenImage get home => const SvgGenImage('assets/home_icon/home.svg');

  /// File path: assets/home_icon/massenger.svg
  SvgGenImage get massenger =>
      const SvgGenImage('assets/home_icon/massenger.svg');

  /// File path: assets/home_icon/more.svg
  SvgGenImage get more => const SvgGenImage('assets/home_icon/more.svg');

  /// File path: assets/home_icon/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/home_icon/profile.svg');

  /// File path: assets/home_icon/realls.svg
  SvgGenImage get realls => const SvgGenImage('assets/home_icon/realls.svg');

  /// File path: assets/home_icon/saved.svg
  SvgGenImage get saved => const SvgGenImage('assets/home_icon/saved.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [home, massenger, more, profile, realls, saved];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsPngGen get png => const $AssetsIconsPngGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsIconsPngGen {
  const $AssetsIconsPngGen();

  /// File path: assets/icons/png/Plus.png
  AssetGenImage get plus => const AssetGenImage('assets/icons/png/Plus.png');

  /// File path: assets/icons/png/ai.png
  AssetGenImage get ai => const AssetGenImage('assets/icons/png/ai.png');

  /// File path: assets/icons/png/comint.png
  AssetGenImage get comint =>
      const AssetGenImage('assets/icons/png/comint.png');

  /// File path: assets/icons/png/job.png
  AssetGenImage get job => const AssetGenImage('assets/icons/png/job.png');

  /// File path: assets/icons/png/job_me.png
  AssetGenImage get jobMe => const AssetGenImage('assets/icons/png/job_me.png');

  /// File path: assets/icons/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/icons/png/logo.png');

  /// File path: assets/icons/png/logo_white.png
  AssetGenImage get logoWhite =>
      const AssetGenImage('assets/icons/png/logo_white.png');

  /// File path: assets/icons/png/love_red.png
  AssetGenImage get loveRed =>
      const AssetGenImage('assets/icons/png/love_red.png');

  /// File path: assets/icons/png/love_white.png
  AssetGenImage get loveWhite =>
      const AssetGenImage('assets/icons/png/love_white.png');

  /// File path: assets/icons/png/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/png/notification.png');

  /// File path: assets/icons/png/saved.png
  AssetGenImage get saved => const AssetGenImage('assets/icons/png/saved.png');

  /// File path: assets/icons/png/send.png
  AssetGenImage get send => const AssetGenImage('assets/icons/png/send.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        plus,
        ai,
        comint,
        job,
        jobMe,
        logo,
        logoWhite,
        loveRed,
        loveWhite,
        notification,
        saved,
        send
      ];
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/pae_tow.png
  AssetGenImage get paeTow =>
      const AssetGenImage('assets/images/png/pae_tow.png');

  /// File path: assets/images/png/pag_one.png
  AssetGenImage get pagOne =>
      const AssetGenImage('assets/images/png/pag_one.png');

  /// File path: assets/images/png/page_three.png
  AssetGenImage get pageThree =>
      const AssetGenImage('assets/images/png/page_three.png');

  /// List of all assets
  List<AssetGenImage> get values => [paeTow, pagOne, pageThree];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  $AssetsImagesSvgOnboardingGen get onboarding =>
      const $AssetsImagesSvgOnboardingGen();
}

class $AssetsImagesSvgOnboardingGen {
  const $AssetsImagesSvgOnboardingGen();

  /// File path: assets/images/svg/onboarding/page_one.svg
  SvgGenImage get pageOne =>
      const SvgGenImage('assets/images/svg/onboarding/page_one.svg');

  /// File path: assets/images/svg/onboarding/page_three.svg
  SvgGenImage get pageThree =>
      const SvgGenImage('assets/images/svg/onboarding/page_three.svg');

  /// File path: assets/images/svg/onboarding/page_tow.svg
  SvgGenImage get pageTow =>
      const SvgGenImage('assets/images/svg/onboarding/page_tow.svg');

  /// List of all assets
  List<SvgGenImage> get values => [pageOne, pageThree, pageTow];
}

class Assets {
  Assets._();

  static const String countries = 'assets/countries.json';
  static const $AssetsHomeIconGen homeIcon = $AssetsHomeIconGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  List<String> get values => [countries];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
