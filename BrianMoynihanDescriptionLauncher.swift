import UIKit

class BrianMoynihanDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Bank of America, Chairman"),Setting(name: "Bank of America, CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "World Economic Forum International Business Council"),Setting(name: "The Clearing House Association L.L.C, Supervisory Board"),Setting(name: "Financial Services Forum, Chairman"),Setting(name: "Financial Services Roundtable, Chairman"),Setting(name: "Business Roundtable"),Setting(name: "Bi-Partisan Policy Center CEO Council on Health and Innovation"),Setting(name: "Federal Reserve Bank, Federal Advisory Council"),Setting(name: "Smithsonian’s National Museum of African American History and Culture, Museum Council"),Setting(name: "Brown University Corporation's Board of Fellows, Member"),Setting(name: "Congressional Medal of Honor Foundation Board, Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Merrill Lynch & Co., Inc., Director")]
    }()
    
    var homeController: BrianMoynihanViewController?
    
    
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
            
            if setting.name == "Bank of America, Chairman"{
                let url = URL(string: "http://about.bankofamerica.com/en-us/who-we-are.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bank of America, CEO"{
                let url = URL(string: "http://about.bankofamerica.com/en-us/who-we-are.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "World Economic Forum International Business Council"{
                let url = URL(string: "https://www.weforum.org/about/world-economic-forum")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Clearing House Association L.L.C, Supervisory Board"{
                let url = URL(string: "https://www.theclearinghouse.org/about-tch")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Financial Services Forum, Chairman"{
                let url = URL(string: "http://financialservicesforum.org/about-the-forum/forum-mission/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Financial Services Roundtable, Chairman"{
                let url = URL(string: "http://www.fsroundtable.org/about-fsr/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Business Roundtable"{
                let url = URL(string: "http://businessroundtable.org/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bi-Partisan Policy Center CEO Council on Health and Innovation"{
                let url = URL(string: "http://www.healthinnovationcouncil.org/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Federal Reserve Bank, Federal Advisory Council"{
                let url = URL(string: "https://www.federalreserve.gov/aboutthefed.htm")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Smithsonian’s National Museum of African American History and Culture, Museum Council"{
                let url = URL(string: "https://nmaahc.si.edu/about/museum")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Brown University Corporation's Board of Fellows, Member"{
                let url = URL(string: "https://www.brown.edu/about/administration/corporation/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Congressional Medal of Honor Foundation Board, Member"{
                let url = URL(string: "http://themedalofhonor.com/cmoh-foundation")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Merrill Lynch & Co., Inc., Director"{
                let url = URL(string: "https://www.ml.com/about-merrill-lynch.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
