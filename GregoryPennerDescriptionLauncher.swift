import UIKit

class GregoryPennerDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Walmart, Chairman of the Board of Directors")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Madrone Capital Partners, Founder and General Partner"),Setting(name: "Baidu, Inc., Founder and General Partner")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Stanford Graduate School of Business - MBA"),Setting(name: "Georgetown University - B.S. in International Economics")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2007 - 2014, Hyatt Hotels Corporation, Board of Directors"),Setting(name: "Walmart - Japan, Senior Vice President of Finance and CFO"),Setting(name: "Walmart, Strategic Planning & Finance Committee"),Setting(name: "Walmart, Senior Vice President of Finance and Stradegy for Walmart.com"),Setting(name: "Walmart, Chairman of the Technology & eCommerce Committee"),Setting(name: "Goldman Sachs Group, Inc."),Setting(name: "Peninsula Capital, General Partner")]
    }()
    
    var homeController: GregoryPennerViewController?
    
    
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
            
            if setting.name == "Walmart, Chairman of the Board of Directors"{
                let url = URL(string: "http://corporate.walmart.com/our-story")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Madrone Capital Partners, Founder and General Partner"{
                let url = URL(string: "https://www.google.com/search?q=Madrone+Capital+Partners&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Baidu, Inc., Founder and General Partner"{
                let url = URL(string: "http://ir.baidu.com/phoenix.zhtml?c=188488&p=irol-homeprofile")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Stanford Graduate School of Business - MBA"{
                let url = URL(string: "https://www.gsb.stanford.edu/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Georgetown University - B.S. in International Economics"{
                let url = URL(string: "https://www.georgetown.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2007 - 2014, Hyatt Hotels Corporation, Board of Directors"{
                let url = URL(string: "https://about.hyatt.com/en/hyatthistory.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Walmart - Japan, Senior Vice President of Finance and CFO"{
                let url = URL(string: "http://corporate.walmart.com/our-story")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Walmart, Strategic Planning & Finance Committee"{
                let url = URL(string: "http://corporate.walmart.com/our-story")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            
            if setting.name == "Walmart, Senior Vice President of Finance and Stradegy for Walmart.com"{
                let url = URL(string: "http://corporate.walmart.com/our-story")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Walmart, Chairman of the Technology & eCommerce Committee"{
                let url = URL(string: "http://corporate.walmart.com/our-story")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Goldman Sachs Group, Inc."{
                let url = URL(string: "http://www.goldmansachs.com/who-we-are/at-a-glance/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Peninsula Capital, General Partner"{
                let url = URL(string: "http://www.peninsulafunds.com/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
