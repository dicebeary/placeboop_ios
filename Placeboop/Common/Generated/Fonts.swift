// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "FontConvertible.Font", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias Font = FontConvertible.Font

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
internal enum FontFamily {
  internal enum LibreFranklin {
    internal static let black = FontConvertible(name: "LibreFranklin-Black", family: "Libre Franklin", path: "LibreFranklin-Black.ttf")
    internal static let blackItalic = FontConvertible(name: "LibreFranklin-BlackItalic", family: "Libre Franklin", path: "LibreFranklin-BlackItalic.ttf")
    internal static let bold = FontConvertible(name: "LibreFranklin-Bold", family: "Libre Franklin", path: "LibreFranklin-Bold.ttf")
    internal static let boldItalic = FontConvertible(name: "LibreFranklin-BoldItalic", family: "Libre Franklin", path: "LibreFranklin-BoldItalic.ttf")
    internal static let extraBold = FontConvertible(name: "LibreFranklin-ExtraBold", family: "Libre Franklin", path: "LibreFranklin-ExtraBold.ttf")
    internal static let extraBoldItalic = FontConvertible(name: "LibreFranklin-ExtraBoldItalic", family: "Libre Franklin", path: "LibreFranklin-ExtraBoldItalic.ttf")
    internal static let extraLight = FontConvertible(name: "LibreFranklin-ExtraLight", family: "Libre Franklin", path: "LibreFranklin-ExtraLight.ttf")
    internal static let extraLightItalic = FontConvertible(name: "LibreFranklin-ExtraLightItalic", family: "Libre Franklin", path: "LibreFranklin-ExtraLightItalic.ttf")
    internal static let italic = FontConvertible(name: "LibreFranklin-Italic", family: "Libre Franklin", path: "LibreFranklin-Italic.ttf")
    internal static let light = FontConvertible(name: "LibreFranklin-Light", family: "Libre Franklin", path: "LibreFranklin-Light.ttf")
    internal static let lightItalic = FontConvertible(name: "LibreFranklin-LightItalic", family: "Libre Franklin", path: "LibreFranklin-LightItalic.ttf")
    internal static let medium = FontConvertible(name: "LibreFranklin-Medium", family: "Libre Franklin", path: "LibreFranklin-Medium.ttf")
    internal static let mediumItalic = FontConvertible(name: "LibreFranklin-MediumItalic", family: "Libre Franklin", path: "LibreFranklin-MediumItalic.ttf")
    internal static let regular = FontConvertible(name: "LibreFranklin-Regular", family: "Libre Franklin", path: "LibreFranklin-Regular.ttf")
    internal static let semiBold = FontConvertible(name: "LibreFranklin-SemiBold", family: "Libre Franklin", path: "LibreFranklin-SemiBold.ttf")
    internal static let semiBoldItalic = FontConvertible(name: "LibreFranklin-SemiBoldItalic", family: "Libre Franklin", path: "LibreFranklin-SemiBoldItalic.ttf")
    internal static let thin = FontConvertible(name: "LibreFranklin-Thin", family: "Libre Franklin", path: "LibreFranklin-Thin.ttf")
    internal static let thinItalic = FontConvertible(name: "LibreFranklin-ThinItalic", family: "Libre Franklin", path: "LibreFranklin-ThinItalic.ttf")
    internal static let all: [FontConvertible] = [black, blackItalic, bold, boldItalic, extraBold, extraBoldItalic, extraLight, extraLightItalic, italic, light, lightItalic, medium, mediumItalic, regular, semiBold, semiBoldItalic, thin, thinItalic]
  }
  internal enum Merriweather {
    internal static let black = FontConvertible(name: "Merriweather-Black", family: "Merriweather", path: "Merriweather-Black.ttf")
    internal static let blackItalic = FontConvertible(name: "Merriweather-BlackItalic", family: "Merriweather", path: "Merriweather-BlackItalic.ttf")
    internal static let bold = FontConvertible(name: "Merriweather-Bold", family: "Merriweather", path: "Merriweather-Bold.ttf")
    internal static let boldItalic = FontConvertible(name: "Merriweather-BoldItalic", family: "Merriweather", path: "Merriweather-BoldItalic.ttf")
    internal static let italic = FontConvertible(name: "Merriweather-Italic", family: "Merriweather", path: "Merriweather-Italic.ttf")
    internal static let light = FontConvertible(name: "Merriweather-Light", family: "Merriweather", path: "Merriweather-Light.ttf")
    internal static let lightItalic = FontConvertible(name: "Merriweather-LightItalic", family: "Merriweather", path: "Merriweather-LightItalic.ttf")
    internal static let regular = FontConvertible(name: "Merriweather-Regular", family: "Merriweather", path: "Merriweather-Regular.ttf")
    internal static let all: [FontConvertible] = [black, blackItalic, bold, boldItalic, italic, light, lightItalic, regular]
  }
  internal static let allCustomFonts: [FontConvertible] = [LibreFranklin.all, Merriweather.all].flatMap { $0 }
  internal static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal struct FontConvertible {
  internal let name: String
  internal let family: String
  internal let path: String

  #if os(OSX)
  internal typealias Font = NSFont
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Font = UIFont
  #endif

  internal func font(size: CGFloat) -> Font {
    guard let font = Font(font: self, size: size) else {
      fatalError("Unable to initialize font '\(name)' (\(family))")
    }
    return font
  }

  internal func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate var url: URL? {
    // swiftlint:disable:next implicit_return
    return BundleToken.bundle.url(forResource: path, withExtension: nil)
  }
}

internal extension FontConvertible.Font {
  convenience init?(font: FontConvertible, size: CGFloat) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    #elseif os(OSX)
    if let url = font.url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      font.register()
    }
    #endif

    self.init(name: font.name, size: size)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
