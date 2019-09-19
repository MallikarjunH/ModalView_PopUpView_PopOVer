// Origional Example Found in https://github.com/aslanyanhaik/youtube-iOS?utm_source=mybridge&utm_medium=blog&utm_campaign=read_more



import UIKit

class SettingsView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backgroundView: UIButton!
    @IBOutlet weak var tableViewBottomConstraint: NSLayoutConstraint!
     let items = ["Settings", "Terms & privacy policy", "Send Feedback", "Help", "Switch Account", "Cancel"]

    //MARK: Methods
    func customization() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.backgroundView.alpha = 0
        self.tableViewBottomConstraint.constant = -self.tableView.bounds.height
        self.layoutIfNeeded()
    }
    
    @IBAction func hideSettingsView(_ sender: Any) {
        self.tableViewBottomConstraint.constant = -self.tableView.bounds.height
        UIView.animate(withDuration: 0.3, animations: { 
            self.backgroundView.alpha = 0
            self.layoutIfNeeded()
        }) { _ in
            self.isHidden = true
        }
    }
    
    //MARK: Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = self.items[indexPath.row]
        cell.imageView?.image = UIImage.init(named: self.items[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // self.hideSettingsView(self)
        
        if indexPath.row == 0{
            print("Clcked on Setting at index 0   :::: \(indexPath.row)")
        }else if indexPath.row==1{
            print("Clicked on Terms & Condtion at Index 1    ::::\(indexPath.row)")
        }
        else if indexPath.row==2{
            print("Clicked in Send Feedback index 2  ::::\(indexPath.row)")
        }
    }
    
    //MARK: View LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        self.customization()
    }
}
