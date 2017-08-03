import Foundation
import UIKit

class JohnALukeJrDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Virginia Commonwealth University, Rector")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "WestRock, Chairman of the Board of Directors"),Setting(name: "The Bank of New York Mellon, Board Member"),Setting(name: "The Timken Company, Board Member"),Setting(name: "FM Global, Board Member"),Setting(name: "American Enterprise Institute, Board Member"),Setting(name: "Virginia Commonwealth University, Trustee"),Setting(name: "Virginia Museum of Fine Arts, Trustee"),Setting(name: "Colonial Williamsburg Foundation, Trustee"),Setting(name: "The Community Foundation, Trustee")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Wharton School at the University of Pennsylvania - M.B.A."),Setting(name: "Lawrence University")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "MeadWestvaco, Chairman and CEO"),Setting(name: "Proctor & Gamble Company"),Setting(name: "U.S. Air Force, Officer")]
    }()
    
    var homeController: JohnALukeJrViewController?
    
    
    override func handleDismiss(setting: Setting){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.blackView.alpha = 0
            
            if let window = UIApplication.shared.keyWindow{
                self.collectionView.frame = CGRect(x: 0, y: window.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
            }
            
        }) { (completed: Bool) in
            
            if setting.name == "Positions"{
                self.settings = self.positions
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Affiliations"{
                self.settings = self.affiliations
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Education"{
                self.settings = self.education
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "History"{
                self.settings = self.history
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "References"{
                self.settings = self.positions
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Virginia Commonwealth University, Rector"{
                let url = URL(string: "http://www.vcu.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "WestRock, Chairman of the Board of Directors"{
                let url = URL(string: "https://www.westrock.com/en/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Bank of New York Mellon, Board Member"{
                let url = URL(string: "https://www.bnymellon.com/us/en/who-we-are/index.jsp")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Timken Company, Board Member"{
                let url = URL(string: "https://www.timken.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "FM Global, Board Member"{
                let url = URL(string: "https://www.fmglobal.com/about-us/why-fm-global")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "American Enterprise Institute, Board Member"{
                let url = URL(string: "http://www.aei.org/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Virginia Commonwealth University, Trustee"{
                let url = URL(string: "http://www.vcu.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Virginia Museum of Fine Arts, Trustee"{
                let url = URL(string: "https://vmfa.museum/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Colonial Williamsburg Foundation, Trustee"{
                let url = URL(string: "http://www.history.org/foundation/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Community Foundation, Trustee"{
                let url = URL(string: "https://www.thecommunityfoundation.net/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Wharton School at the University of Pennsylvania - M.B.A."{
                let url = URL(string: "https://www.wharton.upenn.edu/about-wharton/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Lawrence University"{
                let url = URL(string: "http://www.lawrence.edu/admissions/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "MeadWestvaco, Chairman and CEO"{
                let url = URL(string: "https://www.westrock.com/en/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Proctor & Gamble Company"{
                let url = URL(string: "http://us.pg.com/who-we-are")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "U.S. Air Force, Officer"{
                let url = URL(string: "https://www.airforce.com/mission")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
