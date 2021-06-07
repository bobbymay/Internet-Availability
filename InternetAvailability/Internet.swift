import Network


struct Internet {
 
 private static let monitor = NWPathMonitor()
 
 static var available = false
 static var expensive = false
 
 /// Monitors internet connectivity changes. Updates with every change in connectivity.
 /// Updates variables for availability and if it's expensive (cellular).
 static func startMonitoring() {
  guard monitor.pathUpdateHandler == nil else { return }
  
  monitor.pathUpdateHandler = { update in
   Internet.available = update.status == .satisfied ? true : false
   Internet.expensive = update.isExpensive ? true : false
  }
  
  monitor.start(queue: DispatchQueue(label: "InternetMonitor"))
 }
 
}
