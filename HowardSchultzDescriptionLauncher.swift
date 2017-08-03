import UIKit

class HowardSchultzDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Starbucks Corporation, Executive Chairman")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Schultz Family Foundation, co-Founder"),Setting(name: "Maveron LLC, co-Founder")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Northern Michigan University - Bachelor of Arts Degree")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Starbucks, Director of Operations and Marketing"),Setting(name: "Starbucks, CEO"),Setting(name: "Xerox Corporation"),Setting(name: "Hammarplast U.S.A, Vice President and General Manager")]
    }()
    
    var homeController: HowardSchultzViewController?
    
    
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
            
            if setting.name == "Starbucks Corporation, Executive Chairman"{
                let url = URL(string: "https://www.starbucks.com/about-us/company-information")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Schultz Family Foundation, co-Founder"{
                let url = URL(string: "https://schultzfamilyfoundation.org/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Maveron LLC, co-Founder"{
                let url = URL(string: "http://www.maveron.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Northern Michigan University - Bachelor of Arts Degree"{
                let url = URL(string: "http://www.nmu.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Starbucks, Director of Operations and Marketing"{
                let url = URL(string: "https://www.starbucks.com/about-us/company-information")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Starbucks, CEO"{
                let url = URL(string: "https://www.starbucks.com/about-us/company-information")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Xerox Corporation"{
                let url = URL(string: "https://www.xerox.com/en-us/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Hammarplast U.S.A, Vice President and General Manager"{
                let url = URL(string: "https://www.google.com/search?q=Hammarplast+U.S.A&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
