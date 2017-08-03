import UIKit

class BernardArnaultDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "LVMH Moët Hennessy – Louis Vuitton, Chairman and CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Groupe Arnault S.E., President of the Board of Directors")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Ecole Polytechnique")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Ferret-Savinel, Engineer and Chairman"),Setting(name: "Financière Agache")]
    }()
    
    var homeController: BernardArnaultViewController?
    
    
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
            
            if setting.name == "LVMH Moët Hennessy – Louis Vuitton, Chairman and CEO"{
                let url = URL(string: "https://www.lvmh.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Groupe Arnault S.E., President of the Board of Directors"{
                let url = URL(string: "https://www.google.com/search?q=Groupe+Arnault+S.E.&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ecole Polytechnique"{
                let url = URL(string: "https://www.polytechnique.edu/en/about-ecole-polytechnique")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ferret-Savinel, Engineer and Chairman"{
                let url = URL(string: "https://www.nexity.fr/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Financière Agache"{
                let url = URL(string: "http://www.financiereagache-finance.com/en/presentation.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
