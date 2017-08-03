import UIKit

class JaySchottensteinDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "American Eagle Outfitters, Inc., Executive Chairman of the Board of Directors"),Setting(name: "American Eagle Outfitters, Inc., CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Schottenstein Stores Corporation, Inc., Chairman of Board of Directors"),Setting(name: "Schottenstein Stores Corporation, Inc., President"),Setting(name: "Schottenstein Stores Corporation, Inc., Director"),Setting(name: "DSW Inc, Executive Chairman"),Setting(name: "DSW Inc, Executive Director of the Board")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Indiana University")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2014 - 2015, American Eagle Outfitters, Interim CEO"),Setting(name: "1992 - 2002, American Eagle Outfitters, CEO"),Setting(name: "1986 - 1992, American Eagle Outfitters, CEO"),Setting(name: "2005 - 2009, DSW Inc., CEO")]
    }()
    
    var homeController: JaySchottensteinViewController?
    
    
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
            
            if setting.name == "American Eagle Outfitters, Inc., Executive Chairman of the Board of Directors"{
                let url = URL(string: "http://investors.ae.com/corporate-governance/board-of-directors/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "American Eagle Outfitters, Inc., CEO"{
                let url = URL(string: "http://investors.ae.com/overview/about-aeo/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Schottenstein Stores Corporation, Inc., Chairman of Board of Directors"{
                let url = URL(string: "http://www.sbcapitalgroup.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Schottenstein Stores Corporation, Inc., President"{
                let url = URL(string: "http://www.sbcapitalgroup.com/about/our-team/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Schottenstein Stores Corporation, Inc., Director"{
                let url = URL(string: "http://www.sbcapitalgroup.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "DSW Inc, Executive Chairman"{
                let url = URL(string: "http://investors.dswshoe.com/board-of-directors?item=1")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "DSW Inc, Executive Director of the Board"{
                let url = URL(string: "http://www.dswinc.com/about_dsw.jsp")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Indiana University"{
                let url = URL(string: "https://www.indiana.edu/about/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2014 - 2015, American Eagle Outfitters, Interim CEO"{
                let url = URL(string: "http://investors.ae.com/overview/about-aeo/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1992 - 2002, American Eagle Outfitters, CEO"{
                let url = URL(string: "http://investors.ae.com/overview/about-aeo/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1986 - 1992, American Eagle Outfitters, CEO"{
                let url = URL(string: "http://investors.ae.com/overview/about-aeo/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2009, DSW Inc., CEO"{
                let url = URL(string: "http://www.dswinc.com/about_dsw.jsp")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
