import UIKit

class FacundoBacardiDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Bacardi Limited, Chairman of the Board"),Setting(name: "Bacardi Limited, Director")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Apache Capital LLC, Managing Director"),Setting(name: "Northwestern Mutual Insurance Company, Board of Trustees"),Setting(name: "Federal Reserve Bank of Atlanta's Miami Branch, Board of Directors"),Setting(name: "Emory University, Board of Trustees"),Setting(name: "Noro-Moseley Partners, Advisory Board"),Setting(name: "Facundo and Amalia Bacardi Foundation, Executive Director"),Setting(name: "Georgia Bar Association, Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "American University, B.S.B.A in Finance"),Setting(name: "Emory University Law School, J.D. Degree")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "None")]
    }()
    
    var homeController: FacundoBacardiViewController?
    
    
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
            
            if setting.name == "Bacardi Limited, Chairman of the Board"{
                let url = URL(string: "https://www.bacardilimited.com/our-company/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bacardi Limited, Director"{
                let url = URL(string: "https://www.bacardilimited.com/our-company/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Apache Capital LLC, Managing Director"{
                let url = URL(string: "http://www.apachecapital.com/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Northwestern Mutual Insurance Company, Board of Trustees"{
                let url = URL(string: "https://www.northwesternmutual.com/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Federal Reserve Bank of Atlanta's Miami Branch, Board of Directors"{
                let url = URL(string: "https://www.frbatlanta.org/about/atlantafed.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Emory University, Board of Trustees"{
                let url = URL(string: "http://www.emory.edu/home/about/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Noro-Moseley Partners, Advisory Board"{
                let url = URL(string: "http://www.noromoseley.com/our-approach/our-philosophy/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Facundo and Amalia Bacardi Foundation, Executive Director"{
                let url = URL(string: "http://bacardifoundation.com/mission.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Georgia Bar Association, Member"{
                let url = URL(string: "https://www.gabar.org/aboutthebar/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "American University, B.S.B.A in Finance"{
                let url = URL(string: "http://www.american.edu/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Emory University Law School, J.D. Degree"{
                let url = URL(string: "http://www.emory.edu/home/about/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
