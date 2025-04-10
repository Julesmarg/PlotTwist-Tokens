import UIKit

struct DesignTokens {
    // MARK: - Colors
    struct Colors {
        // Primary Colors
        static let babyPink = UIColor(red: 255/255, green: 136/255, blue: 177/255, alpha: 1.0) // #ff88b1
        static let watermelon = UIColor(red: 244/255, green: 91/255, blue: 140/255, alpha: 1.0) // #f45b8c
        static let hotPink = UIColor(red: 220/255, green: 15/255, blue: 118/255, alpha: 1.0) // #dc0f76
        static let raspberry = UIColor(red: 135/255, green: 16/255, blue: 52/255, alpha: 1.0) // #871034
        
        // Secondary Colors
        static let graphite = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1.0) // #333333
        static let black = UIColor.black // #000000
        static let white = UIColor.white // #ffffff
    }
    
    // MARK: - Radius
    struct Radius {
        static let rounded: CGFloat = 12.0
    }
    
    // MARK: - Typography
    struct Typography {
        // Font Families
        static let primaryFont = "ArchivoBlack-Regular"
        static let secondaryFont = "BeVietnamPro-Regular"
        
        // Helper methods to get fonts with specific sizes
        static func primaryFont(ofSize size: CGFloat) -> UIFont {
            return UIFont(name: primaryFont, size: size) ?? UIFont.systemFont(ofSize: size, weight: .bold)
        }
        
        static func secondaryFont(ofSize size: CGFloat) -> UIFont {
            return UIFont(name: secondaryFont, size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
    
    // MARK: - Shadows
    struct Shadows {
        static func applyDropShadow(to view: UIView) {
            view.layer.shadowColor = UIColor.black.cgColor
            view.layer.shadowOpacity = 0.2
            view.layer.shadowOffset = CGSize(width: 0, height: 4)
            view.layer.shadowRadius = 8
        }
    }
}

// MARK: - Color Extensions for SwiftUI
extension Color {
    // Primary Colors
    static let babyPink = Color(DesignTokens.Colors.babyPink)
    static let watermelon = Color(DesignTokens.Colors.watermelon)
    static let hotPink = Color(DesignTokens.Colors.hotPink)
    static let raspberry = Color(DesignTokens.Colors.raspberry)
    
    // Secondary Colors
    static let graphite = Color(DesignTokens.Colors.graphite)
}
