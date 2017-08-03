import UIKit

class AndrewMcKennaDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "McDonald's Corporation, Chairman Emeritus")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Schwarz Supply Source, Chairman Emeritus"),Setting(name: "Ryan Specialty Group, Director"),Setting(name: "Ronald McDonald House Charities, Trustee"),Setting(name: "Museum of Science and Industry, Chairman Emeritus"),Setting(name: "University of Notre Dame, Chairman Emeritus"),Setting(name: "Big Shoulders Fund of the Archdiocese of Chicago, Director"),Setting(name: "Ann and Robert H. Lurie Children’s Hospital of Chicago, Director"),Setting(name: "Ireland Economic Advisory Board, Director"),Setting(name: "Lyric Opera of Chicago, Director"),Setting(name: "United Way of Metropolitan Chicago, Director"),Setting(name: "Metropolis Strategies, Founding Chairman")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "1991 - 2016, Metropolis Strategies, Director")]
    }()
    
    var homeController: AndrewMcKennaViewController?
    
    
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
            
            if setting.name == "McDonald's Corporation, Chairman Emeritus"{
                let url = URL(string: "https://www.mcdonalds.com/us/en-us/about-us.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Schwarz Supply Source, Chairman Emeritus"{
                let url = URL(string: "http://www.schwarz.com/pages/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ryan Specialty Group, Director"{
                let url = URL(string: "https://ryansg.com/who-we-are/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ronald McDonald House Charities, Trustee"{
                let url = URL(string: "https://www.rmhc.org/what-we-do/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Museum of Science and Industry, Chairman Emeritus"{
                let url = URL(string: "https://www.msichicago.org/explore/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Notre Dame, Chairman Emeritus"{
                let url = URL(string: "https://www.nd.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Big Shoulders Fund of the Archdiocese of Chicago, Director"{
                let url = URL(string: "http://www.bigshouldersfund.org/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ann and Robert H. Lurie Children’s Hospital of Chicago, Director"{
                let url = URL(string: "https://www.luriechildrens.org/en-us/about-us/Pages/index.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ireland Economic Advisory Board, Director"{
                let url = URL(string: "http://www.fiscalcouncil.ie/about-the-council/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Lyric Opera of Chicago, Director"{
                let url = URL(string: "https://www.lyricopera.org/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "United Way of Metropolitan Chicago, Director"{
                let url = URL(string: "https://uw-mc.org/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1991 - 2016, Metropolis Strategies, Director"{
                let url = URL(string: "https://www.macfound.org/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
