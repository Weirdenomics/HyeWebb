import UIKit

class JonathanKraftDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "New England Patriots, President")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Williams College, Trustee Emeritus and Investment Committee Chair"),Setting(name: "Harvard Business School, Dean's Board of Advisors"),Setting(name: "Belmont Hill School, Board of Trustees"),Setting(name: "Dexter Southfield and Massachusetts General Hospital, Board of Trustees and Chair of Finance Committee"),Setting(name: "National Board of Directors for Pop Warner Little Scholars, Inc, Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard Business School - MBA"),Setting(name: "Williams College")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    var homeController: JonathanKraftViewController?
    
    
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
            
            if setting.name == "New England Patriots, President"{
                let url = URL(string: "http://www.patriots.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Williams College, Trustee Emeritus and Investment Committee Chair"{
                let url = URL(string: "https://www.williams.edu/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard Business School, Dean's Board of Advisors"{
                let url = URL(string: "http://www.hbs.edu/about/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Belmont Hill School, Board of Trustees"{
                let url = URL(string: "https://www.belmonthill.org/page/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Dexter Southfield General Hospital, Board of Trustees and Chair of Finance Committee"{
                let url = URL(string: "http://www.dextersouthfield.org/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Massachusetts General Hospital, Board of Trustees and Chair of Finance Committee"{
                let url = URL(string: "http://www.massgeneral.org/about/overview.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            
            if setting.name == "National Board of Directors for Pop Warner Little Scholars, Inc, Member"{
                let url = URL(string: "https://tshq.bluesombrero.com/Default.aspx?tabid=1403206")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard Business School - MBA"{
                let url = URL(string: "http://www.hbs.edu/about/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Williams College"{
                let url = URL(string: "https://www.williams.edu/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
