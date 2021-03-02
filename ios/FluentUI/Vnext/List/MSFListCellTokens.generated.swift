// swiftlint:disable all
/// Autogenerated file
import UIKit

/// Entry point for the app stylesheet
extension FluentUIStyle {

	// MARK: - MSFListCellTokens
	open var MSFListCellTokens: MSFListCellTokensAppearanceProxy {
		return MSFListCellTokensAppearanceProxy(proxy: { return self })
	}
	open class MSFListCellTokensAppearanceProxy {
		public let mainProxy: () -> FluentUIStyle
		public init(proxy: @escaping () -> FluentUIStyle) {
			self.mainProxy = proxy
		}

		// MARK: - backgroundColor
		open var backgroundColor: backgroundColorAppearanceProxy {
			return backgroundColorAppearanceProxy(proxy: mainProxy)
		}
		open class backgroundColorAppearanceProxy {
			public let mainProxy: () -> FluentUIStyle
			public init(proxy: @escaping () -> FluentUIStyle) {
				self.mainProxy = proxy
			}

			// MARK: - pressed 
			open var pressed: UIColor {
				return mainProxy().Colors.Background.neutral5
			}

			// MARK: - rest 
			open var rest: UIColor {
				return mainProxy().Colors.Background.neutral1
			}
		}


		// MARK: - borderColor 
		open var borderColor: UIColor {
			return mainProxy().Colors.Stroke.neutral1
		}

		// MARK: - cellHeight
		open var cellHeight: cellHeightAppearanceProxy {
			return cellHeightAppearanceProxy(proxy: mainProxy)
		}
		open class cellHeightAppearanceProxy {
			public let mainProxy: () -> FluentUIStyle
			public init(proxy: @escaping () -> FluentUIStyle) {
				self.mainProxy = proxy
			}

			// MARK: - oneLine 
			open var oneLine: CGFloat {
				return CGFloat(48.0)
			}

			// MARK: - threeLines 
			open var threeLines: CGFloat {
				return CGFloat(84.0)
			}

			// MARK: - twoLines 
			open var twoLines: CGFloat {
				return CGFloat(64.0)
			}
		}


		// MARK: - disclosureIconForegroundColor 
		open var disclosureIconForegroundColor: UIColor {
			return mainProxy().Colors.Foreground.neutral3
		}

		// MARK: - disclosureInterspace 
		open var disclosureInterspace: CGFloat {
			return mainProxy().Spacing.xxSmall
		}

		// MARK: - disclosureSize 
		open var disclosureSize: CGFloat {
			return mainProxy().Icon.size.small
		}

		// MARK: - horizontalCellPadding 
		open var horizontalCellPadding: CGFloat {
			return mainProxy().Spacing.medium
		}

		// MARK: - iconInterspace 
		open var iconInterspace: CGFloat {
			return mainProxy().Spacing.medium
		}

		// MARK: - labelAccessoryInterspace 
		open var labelAccessoryInterspace: CGFloat {
			return mainProxy().Spacing.xSmall
		}

		// MARK: - labelAccessorySize 
		open var labelAccessorySize: CGFloat {
			return mainProxy().Icon.size.xxSmall
		}

		// MARK: - labelColor 
		open var labelColor: UIColor {
			return mainProxy().Colors.Foreground.neutral1
		}

		// MARK: - labelFont 
		open var labelFont: UIFont {
			return mainProxy().Typography.body
		}

		// MARK: - leadingViewColor 
		open var leadingViewColor: UIColor {
			return mainProxy().Colors.Foreground.neutral4
		}

		// MARK: - leadingViewSize
		open var leadingViewSize: leadingViewSizeAppearanceProxy {
			return leadingViewSizeAppearanceProxy(proxy: mainProxy)
		}
		open class leadingViewSizeAppearanceProxy {
			public let mainProxy: () -> FluentUIStyle
			public init(proxy: @escaping () -> FluentUIStyle) {
				self.mainProxy = proxy
			}

			// MARK: - large 
			open var large: CGFloat {
				return mainProxy().Icon.size.xxlarge
			}

			// MARK: - medium 
			open var medium: CGFloat {
				return mainProxy().Icon.size.medium
			}

			// MARK: - small 
			open var small: CGFloat {
				return mainProxy().Icon.size.xSmall
			}
		}


		// MARK: - sublabelColor 
		open var sublabelColor: UIColor {
			return mainProxy().Colors.Foreground.neutral3
		}

		// MARK: - sublabelFont 
		open var sublabelFont: UIFont {
			return mainProxy().Typography.caption1
		}

		// MARK: - trailingItemForegroundColor 
		open var trailingItemForegroundColor: UIColor {
			return mainProxy().Colors.Foreground.neutral3
		}

		// MARK: - trailingItemSize 
		open var trailingItemSize: CGFloat {
			return mainProxy().Icon.size.medium
		}
	}

}
fileprivate var __AppearanceProxyHandle: UInt8 = 0
fileprivate var __ThemeAwareHandle: UInt8 = 0
fileprivate var __ObservingDidChangeThemeHandle: UInt8 = 0

extension MSFListCellTokens: AppearaceProxyComponent {

	public typealias AppearanceProxyType = FluentUIStyle.MSFListCellTokensAppearanceProxy
	public var appearanceProxy: AppearanceProxyType {
		get {
			if let proxy = objc_getAssociatedObject(self, &__AppearanceProxyHandle) as? AppearanceProxyType {
				if !themeAware { return proxy }


				return proxy
			}

			return FluentUIThemeManager.stylesheet(FluentUIStyle.shared()).MSFListCellTokens
		}
		set {
			objc_setAssociatedObject(self, &__AppearanceProxyHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
			didChangeAppearanceProxy()
		}
	}

	public var themeAware: Bool {
		get {
			guard let proxy = objc_getAssociatedObject(self, &__ThemeAwareHandle) as? Bool else { return true }
			return proxy
		}
		set {
			objc_setAssociatedObject(self, &__ThemeAwareHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
			isObservingDidChangeTheme = newValue
		}
	}

	fileprivate var isObservingDidChangeTheme: Bool {
		get {
			guard let observing = objc_getAssociatedObject(self, &__ObservingDidChangeThemeHandle) as? Bool else { return false }
			return observing
		}
		set {
			if newValue == isObservingDidChangeTheme { return }
			if newValue {
				NotificationCenter.default.addObserver(self, selector: #selector(didChangeAppearanceProxy), name: Notification.Name.didChangeTheme, object: nil)
			} else {
				NotificationCenter.default.removeObserver(self, name: Notification.Name.didChangeTheme, object: nil)
			}
			objc_setAssociatedObject(self, &__ObservingDidChangeThemeHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
		}
	}
}
