import UIKit

class JohnMackeyDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Whole Foods Market, Co-Founder, CEO and Director")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Gaia, Inc., Director"),Setting(name: "Satori Capital LLC, Advisory Board Member"),Setting(name: "The Motley Fool, Director")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Bentley College")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2010 - 2016, Whole Foods Market, Co-Chief Executive Officer"),Setting(name: "1978 - 2010, Whole Foods Market, Chief Executive Officer"),Setting(name: "2001 - 2004, Whole Foods Market, President"),Setting(name: "1978 - 2009, Whole Foods Market, Chairman of the Board")]
    }()
    var homeController: JohnMackeyViewController?
    
    
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
            
            if setting.name == "Whole Foods Market, Co-Founder, CEO and Director"{
                let url = URL(string: "http://www.wholefoodsmarket.com/company-info")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Gaia, Inc., Director"{
                let url = URL(string: "https://www.google.com/search?q=gaia+inc.&ie=utf-8&oe=utf-8#q=Gaia+inc")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Satori Capital LLC, Advisory Board Member"{
                let url = URL(string: "http://www.satoricapital.com/who_we_are")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Motley Fool, Director"{
                let url = URL(string: "https://www.fool.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bentley College"{
                let url = URL(string: "http://www.bentley.edu/about/bentley")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2010 - 2016, Whole Foods Market, Co-Chief Executive Officer"{
                let url = URL(string: "http://www.wholefoodsmarket.com/company-info")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1978 - 2010, Whole Foods Market, Chief Executive Officer"{
                let url = URL(string: "http://www.wholefoodsmarket.com/company-info")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2001 - 2004, Whole Foods Market, President"{
                let url = URL(string: "http://www.wholefoodsmarket.com/company-info")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1978 - 2009, Whole Foods Market, Chairman of the Board"{
                let url = URL(string: "http://www.wholefoodsmarket.com/company-info")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
