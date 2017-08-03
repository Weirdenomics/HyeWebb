import UIKit

class CharlieMungerDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Berkshire Hathaway Inc., Director"),Setting(name: "Berkshire Hathaway Inc., Vice Chairman")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Daily Journal Corpporation, Chairman of the Board of Directors"),Setting(name: "Costco Wholesale Corporation, Director"),Setting(name: "Good Samaritan Hospital, Board of Trustees")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: ""),Setting(name: "")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "1984 - 2011, Wesco Financial Corporation, Chairman of the Board of Directors and CEO"),Setting(name: "2005 - 2011, Wesco Financial Corporation, President")]
    }()
    
    var homeController: CharlieMungerViewController?
    
    
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
            
            if setting.name == "Berkshire Hathaway Inc., Director"{
                let url = URL(string: "http://www.berkshirehathaway.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Berkshire Hathaway Inc., Vice Chairman"{
                let url = URL(string: "http://www.berkshirehathaway.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Daily Journal Corpporation, Chairman of the Board of Directors"{
                let url = URL(string: "https://www.dailyjournal.com/public/pubmain.cfm?logout=&seloption=&eid=&vid=&CFID=6736139&CFTOKEN=42672649")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Costco Wholesale Corporation, Director"{
                let url = URL(string: "https://www.costco.com/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Good Samaritan Hospital, Board of Trustees"{
                let url = URL(string: "http://www.goodsam.org/About-Us.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1984 - 2011, Wesco Financial Corporation, Chairman of the Board of Directors and CEO"{
                let url = URL(string: "http://www.wescofinancial.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2011, Wesco Financial Corporation, President"{
                let url = URL(string: "http://www.wescofinancial.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
