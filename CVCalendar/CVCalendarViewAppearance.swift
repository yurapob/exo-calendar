//
//  CVCalendarViewAppearance.swift
//  CVCalendar
//
//  Created by E. Mozharovsky on 12/26/14.
//  Copyright (c) 2014 GameApp. All rights reserved.
//

import UIKit

public final class CVCalendarViewAppearance: NSObject {

    public override init() {
        super.init()
    }

    /// Default rendering options.
    public var spaceBetweenWeekViews: CGFloat? = 0
    public var spaceBetweenDayViews: CGFloat? = 0

    /// Default text options.
    public var dayLabelPresentWeekdayInitallyBold: Bool? = true
    public var dayLabelWeekdayFont: UIFont? = .systemFont(ofSize: 18)
    public var dayLabelPresentWeekdayFont: UIFont? = .systemFont(ofSize: 18)
    public var dayLabelPresentWeekdayBoldFont: UIFont? = .systemFont(ofSize: 18, weight: .heavy)
    public var dayLabelPresentWeekdayHighlightedFont: UIFont? = .systemFont(ofSize: 18, weight: .heavy)
    public var dayLabelPresentWeekdaySelectedFont: UIFont? = .systemFont(ofSize: 18, weight: .heavy)
    public var dayLabelWeekdayHighlightedFont: UIFont? = .systemFont(ofSize: 18, weight: .heavy)
    public var dayLabelWeekdaySelectedFont: UIFont? = .systemFont(ofSize: 18, weight: .heavy)

    /// Default text color.
    public var dayLabelWeekdayDisabledColor: UIColor? = .secondaryText
    public var dayLabelWeekdayInTextColor: UIColor? = .primaryText
    public var dayLabelWeekdayOutTextColor: UIColor? = .secondaryText
    public var dayLabelWeekdayHighlightedTextColor: UIColor? = .white
    public var dayLabelWeekdaySelectedTextColor: UIColor? = .white
    public var dayLabelPresentWeekdayTextColor: UIColor? = .red
    public var dayLabelPresentWeekdayHighlightedTextColor: UIColor? = .white
    public var dayLabelPresentWeekdaySelectedTextColor: UIColor? = .white

    /// Default text size.
    public var dayLabelWeekdayTextSize: CGFloat? = 18
    public var dayLabelWeekdayHighlightedTextSize: CGFloat? = 20
    public var dayLabelWeekdaySelectedTextSize: CGFloat? = 20
    public var dayLabelPresentWeekdayTextSize: CGFloat? = 18
    public var dayLabelPresentWeekdayHighlightedTextSize: CGFloat? = 20
    public var dayLabelPresentWeekdaySelectedTextSize: CGFloat? = 20

    /// Default highlighted state background & alpha.
    public var dayLabelWeekdayHighlightedBackgroundColor: UIColor? = .colorFromCode(0x34AADC)
    public var dayLabelWeekdayHighlightedBackgroundAlpha: CGFloat? = 0.8
    public var dayLabelPresentWeekdayHighlightedBackgroundColor: UIColor? = .colorFromCode(0xFF5E3A)
    public var dayLabelPresentWeekdayHighlightedBackgroundAlpha: CGFloat? = 0.8

    /// Default selected state background & alpha.
    public var dayLabelWeekdaySelectedBackgroundColor: UIColor? = .colorFromCode(0x1D62F0)
    public var dayLabelWeekdaySelectedBackgroundAlpha: CGFloat? = 0.8
    public var dayLabelPresentWeekdaySelectedBackgroundColor: UIColor? = .colorFromCode(0xFF3B30)
    public var dayLabelPresentWeekdaySelectedBackgroundAlpha: CGFloat? = 0.8

    // Default dot marker color.
    public var dotMarkerColor: UIColor? = .white

    public weak var delegate: CVCalendarViewAppearanceDelegate?
 {
        didSet {
            self.setupAppearance()
        }
    }

    public func setupAppearance() {
        if let delegate = delegate {
            spaceBetweenWeekViews ~> delegate.spaceBetweenWeekViews?()
            spaceBetweenDayViews ~> delegate.spaceBetweenDayViews?()

            dayLabelPresentWeekdayInitallyBold ~> delegate.dayLabelPresentWeekdayInitallyBold?()
            dayLabelWeekdayFont ~> delegate.dayLabelWeekdayFont?()
            dayLabelPresentWeekdayFont ~> delegate.dayLabelPresentWeekdayFont?()
            dayLabelPresentWeekdayBoldFont ~> delegate.dayLabelPresentWeekdayBoldFont?()
            dayLabelPresentWeekdayHighlightedFont ~>
                delegate.dayLabelPresentWeekdayHighlightedFont?()
            dayLabelPresentWeekdaySelectedFont ~> delegate.dayLabelPresentWeekdaySelectedFont?()
            dayLabelWeekdayHighlightedFont ~> delegate.dayLabelWeekdayHighlightedFont?()
            dayLabelWeekdaySelectedFont ~> delegate.dayLabelWeekdaySelectedFont?()

            dayLabelWeekdayDisabledColor ~> delegate.dayLabelWeekdayDisabledColor?()
            dayLabelWeekdayInTextColor ~> delegate.dayLabelWeekdayInTextColor?()
            dayLabelWeekdayOutTextColor ~> delegate.dayLabelWeekdayOutTextColor?()
            dayLabelWeekdayHighlightedTextColor ~> delegate.dayLabelWeekdayHighlightedTextColor?()
            dayLabelWeekdaySelectedTextColor ~> delegate.dayLabelWeekdaySelectedTextColor?()
            dayLabelPresentWeekdayTextColor ~> delegate.dayLabelPresentWeekdayTextColor?()
            dayLabelPresentWeekdayHighlightedTextColor ~>
                delegate.dayLabelPresentWeekdayHighlightedTextColor?()
            dayLabelPresentWeekdaySelectedTextColor ~>
                delegate.dayLabelPresentWeekdaySelectedTextColor?()

            dayLabelWeekdayTextSize ~> delegate.dayLabelWeekdayTextSize?()
            dayLabelWeekdayHighlightedTextSize ~> delegate.dayLabelWeekdayHighlightedTextSize?()
            dayLabelWeekdaySelectedTextSize ~> delegate.dayLabelWeekdaySelectedTextSize?()
            dayLabelPresentWeekdayTextSize ~> delegate.dayLabelPresentWeekdayTextSize?()
            dayLabelPresentWeekdayHighlightedTextSize ~>
                delegate.dayLabelPresentWeekdayHighlightedTextSize?()
            dayLabelPresentWeekdaySelectedTextSize ~>
                delegate.dayLabelPresentWeekdaySelectedTextSize?()

            dayLabelWeekdayHighlightedBackgroundColor ~>
                delegate.dayLabelWeekdayHighlightedBackgroundColor?()
            dayLabelWeekdayHighlightedBackgroundAlpha ~>
                delegate.dayLabelWeekdayHighlightedBackgroundAlpha?()
            dayLabelPresentWeekdayHighlightedBackgroundColor ~>
                delegate.dayLabelPresentWeekdayHighlightedBackgroundColor?()
            dayLabelPresentWeekdayHighlightedBackgroundAlpha ~>
                delegate.dayLabelPresentWeekdayHighlightedBackgroundAlpha?()

            dayLabelWeekdaySelectedBackgroundColor ~>
                delegate.dayLabelWeekdaySelectedBackgroundColor?()
            dayLabelWeekdaySelectedBackgroundAlpha ~>
                delegate.dayLabelWeekdaySelectedBackgroundAlpha?()
            dayLabelPresentWeekdaySelectedBackgroundColor ~>
                delegate.dayLabelPresentWeekdaySelectedBackgroundColor?()
            dayLabelPresentWeekdaySelectedBackgroundAlpha ~>
                delegate.dayLabelPresentWeekdaySelectedBackgroundAlpha?()
            dotMarkerColor ~> delegate.dotMarkerColor?()
        }
    }}


infix operator ~>
@discardableResult
public func ~> <T: Any>(lhs: inout T?, rhs: T?) -> T? {
    if lhs != nil && rhs != nil {
        lhs = rhs
    }

    return lhs
}

extension UIColor {
     static var primaryText: UIColor {
        if #available(iOS 13, *) {
            return .label
        } else {
            return .black
        }
    }
    
    static var secondaryText: UIColor {
        if #available(iOS 13, *) {
            return .secondaryLabel
        } else {
            return .gray
        }
    }
    
    public static func colorFromCode(_ code: Int) -> UIColor {
        let red = CGFloat(((code & 0xFF0000) >> 16)) / 255
        let green = CGFloat(((code & 0xFF00) >> 8)) / 255
        let blue = CGFloat((code & 0xFF)) / 255

        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
