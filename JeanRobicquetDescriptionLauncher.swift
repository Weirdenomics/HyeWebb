import UIKit

class JeanRobicquetDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Ciroc, Master Distiller"),Setting(name: "Weirdenomics, CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Oenology Diploma"),Setting(name: "Masters in Law, Economics and Management of the Wine Industry")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    var homeController: JeanRobicquetViewController?
    
    
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
            
            if setting.name == "Ciroc, Master Distiller"{
                let url = URL(string: "https://www.ciroc.com/what-is-ciroc")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
