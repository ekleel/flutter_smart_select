import 'package:flutter/widgets.dart';
import './modal_theme.dart';

/// Target to open choices list
enum SmartSelectModalType { fullPage, popupDialog, bottomSheet }

/// A builder for custom confirmation widget
typedef Widget SmartSelectModalConfirmationBuilder(BuildContext context, Function onConfirm);

/// Modal configuration
class SmartSelectModalConfig {
  /// Use different title with the trigger widget title
  final String title;

  /// Custom searchbar hint
  final String searchBarHint;

  /// A widget to display before the choices.
  final Widget leading;

  /// A widget to display after the choices.
  final Widget trailing;

  /// Whether the options list modal use header or not
  final bool useHeader;

  /// Whether the option list is filterable or not
  final bool useFilter;

  /// Whether the option list need to confirm
  /// to return the changed value
  final bool useConfirmation;

  /// Configure modal theme
  final SmartSelectModalStyle style;

  /// Configure modal header theme
  final SmartSelectModalHeaderStyle headerStyle;

  /// Builder for custom confirmation widget
  final SmartSelectModalConfirmationBuilder confirmationBuilder;

  final bool barrierDismissible;

  final BoxConstraints constraints;

  final BorderRadius borderRadius;

  /// Create modal configuration
  const SmartSelectModalConfig({
    this.title,
    this.searchBarHint,
    this.leading,
    this.trailing,
    this.useHeader = true,
    this.useFilter = false,
    this.useConfirmation = false,
    this.style = const SmartSelectModalStyle(),
    this.headerStyle = const SmartSelectModalHeaderStyle(),
    this.confirmationBuilder,
    this.barrierDismissible = true,
    this.constraints,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
    ),
  });
}
