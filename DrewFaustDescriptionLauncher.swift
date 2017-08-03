import UIKit

class DrewFaustDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard University, President")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard's Faculty of Arts and Sciences, Lincoln Professor")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "University of Pennsylvania - Doctoral and Master's Degree in American Civilization"),Setting(name: "Bryn Mawr College - Bachelor's Degree with honors in History")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Radcliffe Institute for Advanced Study, Founding Dean"),Setting(name: "University of Pennsylvania, Annenberg Professor of History")]
    }()
    var homeController: DrewFaustViewController?
    
    
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
            
            if setting.name == "Harvard University, President"{
                let url = URL(string: "http://www.harvard.edu/about-harvard")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard's Faculty of Arts and Sciences, Lincoln Professor"{
                let url = URL(string: "https://www.fas.harvard.edu/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bryn Mawr College - Bachelor's Degree with honors in History"{
                let url = URL(string: "https://www.brynmawr.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Radcliffe Institute for Advanced Study, Founding Dean"{
                let url = URL(string: "https://www.radcliffe.harvard.edu/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Pennsylvania, Annenberg Professor of History"{
                let url = URL(string: "http://www.upenn.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
