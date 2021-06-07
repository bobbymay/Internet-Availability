import UIKit

//	  IMPORTANT:
//	  Test on a device. The simulator does not always send notifications when there are changes in connectivity.

class ViewController: UIViewController {

	override func viewDidAppear(_ animated: Bool) {
		
		// monitor changes in the Internet
		Internet().startMonitoring()
		
	   	if Internet.available {
			print("Internet available")
		} else {
			print("Internet unavailable")
		}
		
	}

}

