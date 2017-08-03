import UIKit

class IgorLandauDescriptionLauncher: ExecutiveBaseDescriptionLauncher{

    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "adidas Group, Chairman of Supervisory Board"),Setting(name: "adidas Group, Chairman of General Committee"),Setting(name: "adidas Group, Chairman of Finance and Investment Committee")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "1986 - Present, Rhone-Poulenc S.A., Member of Executive Committee")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "INSEAD Fontainebleau - Diploma MBA"),Setting(name: "École des Hautes Études Commerciales")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2004 - 2015, Sanofi-Aventis S.A., Board of Directors"),Setting(name: "2002 - 2004, Aventis S.A., CEO"),Setting(name: "2000 - 2002, Aventis S.A., Deputy CEO"),Setting(name: "1981 - 1992, Rhone-Poulenc S.A., Head of Health Department"),Setting(name: "1975 - 1981, Rhone-Poulenc S.A., Deputy Head of Health Department"),Setting(name: "1971 - 1975, McKinsey & Co, Consultant"),Setting(name: "1968 - 1970, Roneo GmbH, Managing Director")]
    }()
    
    var homeController: IgorLandauViewController?

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
            
            if setting.name == "adidas Group, Chairman of Supervisory Board"{
                let url = URL(string: "http://www.adidas-group.com/en/group/supervisory-board/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "adidas Group, Chairman of General Committee"{
                let url = URL(string: "http://www.adidas-group.com/en/investors/corporate-governance/supervisory-board-committees/#/prasidialausschuss/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "adidas Group, Chairman of Finance and Investment Committee"{
                let url = URL(string: "http://www.adidas-group.com/en/investors/corporate-governance/supervisory-board-committees/#/prasidialausschuss/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1986 - Present, Rhone-Poulenc S.A., Member of Executive Committee"{
                let url = URL(string: "http://en.sanofi.com/company/company.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2004 - 2015, Sanofi-Aventis S.A., Board of Directors"{
                let url = URL(string: "http://en.sanofi.com/company/company.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2002 - 2004, Aventis S.A., CEO"{
                let url = URL(string: "http://en.sanofi.com/company/company.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2000 - 2002, Aventis S.A., Deputy CEO"{
                let url = URL(string: "http://en.sanofi.com/company/company.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1981 - 1992, Rhone-Poulenc S.A., Head of Health Department"{
                let url = URL(string: "http://en.sanofi.com/company/company.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1975 - 1981, Rhone-Poulenc S.A., Deputy Head of Health Department"{
                let url = URL(string: "http://en.sanofi.com/company/company.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1971 - 1975, McKinsey & Co, Consultant"{
                let url = URL(string: "http://www.mckinsey.com/about-us/overview")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1968 - 1970, Roneo GmbH, Managing Director (No Site)"{
                let url = URL(string: "https://www.google.com/search?q=Roneo+GmbH+Frankfurt&ie=utf-8&oe=utf-8#q=Roneo+GmbH+Frankfurt+1970")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "INSEAD Fontainebleau - Diploma MBA"{
                let url = URL(string: "https://www.insead.edu/about/who-we-are")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "École des Hautes Études Commerciales"{
                let url = URL(string: "http://www.hec.edu/About-HEC/About-HEC-Paris")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        }
    }
}
