import UIKit

class JamesLChapmanIVDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Virginia Tech, Rector")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Crenshaw, Ware & Martin, Senior Partner"),Setting(name: "Regent University School of Law, Adjunct Professor")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Washington and Lee University Law School"),Setting(name: "Virginia Tech")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Rotary, Director"),Setting(name: "Navy League of the United States, Director"),Setting(name: "Southeastern Admiralty Law Institute, Director"),Setting(name: "Future of Hampton Roads, Director"),Setting(name: "Sorenson Institute for Political Leadership, Director")]
    }()
    
    var homeController: JamesLChapmanIVViewController?
    
    
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
            
            if setting.name == "Virginia Tech, Rector"{
                let url = URL(string: "http://www.vt.edu/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Crenshaw, Ware & Martin, Senior Partner"{
                let url = URL(string: "http://www.cwm-law.com/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Regent University School of Law, Adjunct Professor"{
                let url = URL(string: "http://www.regent.edu/law/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Washington and Lee University Law School"{
                let url = URL(string: "https://law.wlu.edu/about-wandl-law")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Virginia Tech"{
                let url = URL(string: "http://www.vt.edu/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Rotary, Director"{
                let url = URL(string: "https://www.rotary.org/en/about-rotary")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Navy League of the United States, Director"{
                let url = URL(string: "http://www.navyleague.org/aboutus/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Southeastern Admiralty Law Institute, Director"{
                let url = URL(string: "http://www.seali.com/page-1084221")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Future of Hampton Roads, Director"{
                let url = URL(string: "http://fhrinc.org/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Sorenson Institute for Political Leadership, Director"{
                let url = URL(string: "https://www.sorenseninstitute.org/content/about-sorensen-institute")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
        }
    }
}
