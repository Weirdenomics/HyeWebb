import UIKit

class EnriqueHernandezJrDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "McDonalds, Chairman")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Inter-Con Security Systems, Inc, President and Chief Executive Officer"),Setting(name: "Chevron Corporation, Director"),Setting(name: "Wells Fargo & Company, Director"),Setting(name: "University of Notre Dame, Board of Trustees"),Setting(name: "Harvard College Visiting, Committee Member"),Setting(name: "Harvard University Resources, Committee Member"),Setting(name: "The John Randolph Haynes and Dora Haynes Foundation, Committee Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard University - Bachelor's Degree in Government and Economics"),Setting(name: "Harvard Law School - Law Degree")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "1996 - 2016, McDonalds, Independent Director"),Setting(name: "McDonalds, Chair of Audit Committee")]
    }()
    var homeController: EnriqueHernandezJrViewController?
    
    
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
            
            if setting.name == "McDonalds, Chairman"{
                let url = URL(string: "https://www.mcdonalds.com/us/en-us/about-us.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Inter-Con Security Systems, Inc, President and Chief Executive Officer"{
                let url = URL(string: "http://www.icsecurity.com/profile/vision")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Chevron Corporation, Director"{
                let url = URL(string: "https://www.chevron.com/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Wells Fargo & Company, Director"{
                let url = URL(string: "https://www.wellsfargo.com/about/corporate/vision-and-values/index")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Notre Dame, Board of Trustees"{
                let url = URL(string: "https://www.nd.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard College Visiting, Committee Member"{
                let url = URL(string: "https://college.harvard.edu/admissions/visit")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard University Resources, Committee Member"{
                let url = URL(string: "http://www.harvard.edu/on-campus/visit-harvard/resources")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The John Randolph Haynes and Dora Haynes Foundation, Committee Member"{
                let url = URL(string: "http://www.haynesfoundation.org/about/index.asp")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard University - Bachelor's Degree in Government and Economics"{
                let url = URL(string: "http://www.harvard.edu/about-harvard")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard Law School - Law Degree"{
                let url = URL(string: "http://hls.harvard.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1996 - 2016, McDonalds, Independent Director"{
                let url = URL(string: "https://www.mcdonalds.com/us/en-us/about-us.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "McDonalds, Chair of Audit Committee"{
                let url = URL(string: "https://www.mcdonalds.com/us/en-us/about-us.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            
        }
    }
}
