

import UIKit

class ColorVC: UIViewController {
 
    var colors : [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
      
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor{
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)//Görünürlük.
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorDetailsViewController
        destinationVC.color = sender as? UIColor
    }
}

extension ColorVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: color)
    }
}
