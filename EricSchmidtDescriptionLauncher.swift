import UIKit

class EricSchmidtDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Alphabet, Executive Chairman of the Board of Directors"),Setting(name: "Alphabet, Director")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "University of California, Berkeley - Doctoral and Master of Science Degree in Computer Science"),Setting(name: "Princeton University - Bachelor of Science Degree in Electrical Engineering")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2001 - 2011, Google, Chief Executive Officer"),Setting(name: "2001 - 2004/2007 - 2011, Google, Chairman of Board of Directors"),Setting(name: "1997 - 2001, Novell, Inc., Chairman of Board of Directors"),Setting(name: "1997 - 2001, Novell Inc., Chief Executive Officer"),Setting(name: "1994 - 1997, Sun Microsystems, Inc., Chief Technology Officer"),Setting(name: "1991 - 1994, Sun Technology Enterprises, President") ]
    }()
    
    var homeController: EricSchmidtViewController?
    
    
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
            
            if setting.name == "Alphabet, Executive Chairman of the Board of Directors"{
                let url = URL(string: "https://abc.xyz/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Alphabet, Director"{
                let url = URL(string: "https://abc.xyz/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of California, Berkeley - Doctoral and Master of Science Degree in Computer Science"{
                let url = URL(string: "https://eecs.berkeley.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Princeton University - Bachelor of Science Degree in Electrical Engineering"{
                let url = URL(string: "http://www.princeton.edu/engineering/about/deans-note/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2001 - 2011, Google, Chief Executive Officer"{
                let url = URL(string: "https://www.google.com/intl/en/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2001 - 2004/2007 - 2011, Google, Chairman of Board of Directors"{
                let url = URL(string: "https://www.google.com/intl/en/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1997 - 2001, Novell, Inc., Chairman of Board of Directors"{
                let url = URL(string: "https://www.microfocus.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1997 - 2001, Novell Inc., Chief Executive Officer"{
                let url = URL(string: "https://www.microfocus.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1994 - 1997, Sun Microsystems, Inc., Chief Technology Officer"{
                let url = URL(string: "https://www.oracle.com/sun/index.html?PHPSESSID=8fd76773d26875481e097a4a27c7a6a1")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1991 - 1994, Sun Technology Enterprises, President"{
                let url = URL(string: "http://www.suntech-enterprises.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
