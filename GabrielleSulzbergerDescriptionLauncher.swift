import UIKit

class GabrielleSulzbergerDescriptionLauncher: ExecutiveBaseDescriptionLauncher {
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Whole Foods Market, Chairman of the Board")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Principal, Rustic Canyon/Fontis Partners, LP"),Setting(name: "Teva Pharmaceutical Industries Ltd., Director"),Setting(name: "Whole Foods Market, Director")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard Law School - JD"),Setting(name: "Harvard Business School - MBA"),Setting(name: "Princeton University")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2002 - 2005, Villanueva Companies, CFO"),Setting(name: "Crown Services, CFO"),Setting(name: "Stage Stores,Inc, Director"),Setting(name: "Brixmor Property Group Inc., Director"),Setting(name: "Ford Foundation, Trustee"),Setting(name: "Chela Financial Services, Advisory Board")]
    }()
    
    var homeController: GabrielleSulzbergerViewController?
    
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
            
            if setting.name == "Whole Foods Market, Chairman of the Board"{
                let url = URL(string: "http://www.wholefoodsmarket.com/our-mission-values")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Principal, Rustic Canyon/Fontis Partners, LP"{
                let url = URL(string: "http://www.rcfontis.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Teva Pharmaceutical Industries Ltd., Director"{
                let url = URL(string: "http://www.tevapharm.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Whole Foods Market, Director"{
                let url = URL(string: "http://www.wholefoodsmarket.com/our-mission-values")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard Law School - JD"{
                let url = URL(string: "http://hls.harvard.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard Business School - MBA"{
                let url = URL(string: "http://www.hbs.edu/about/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Princeton University"{
                let url = URL(string: "https://www.princeton.edu/meet-princeton")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2002 - 2005, Villanueva Companies, CFO"{
                let url = URL(string: "http://www.rcfontis.com/daniel-villanueva.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Crown Services, CFO"{
                let url = URL(string: "http://crownservices.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Stage Stores,Inc, Director"{
                let url = URL(string: "http://corporate.stage.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Brixmor Property Group Inc., Director"{
                let url = URL(string: "http://www.brixmor.com/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ford Foundation, Trustee"{
                let url = URL(string: "https://www.fordfoundation.org/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Chela Financial Services, Advisory Board"{
                let url = URL(string: "http://www.collegescholarships.org/loans/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
