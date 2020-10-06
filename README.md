# TKTLibrary
A Native IOS module that allows module allows to capture faces or upload face images from the gallery and analyze data, 
give advice and treatment of aging problems, facial acne.

🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

🚧🚧🚧🚧[Help & Input Wanted](https://github.com/boyvui821/TKTLibrary/issues) 🚧🚧🚧🚧

🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

# Compatibility
To use this library you need to ensure you match up with the correct version of IOS Swift language (4.0 and above) and using Xcode 10.0 and above

## Getting Started
1. Open your terminal and move to your folder source
2. Create pod file using: pod init
3. Open your pod file and input that line under use_framework

    pod 'TKTLibrary', :git => 'https://github.com/boyvui821/TKTLibrary.git'
    
4. Return your terminal and run that line:

    pod install

5. Open file .xcworkspace at source folder 

## Usage
```swift
import UIKit
import TKTLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let config = TKTConfiguration(domain: domain,
                                      apiKey: key,
                                      email: email,
                                      language: TKTLanguage.VI)
        TKTCLoud.shared.setConfigure(configure: config)
    }
    
    @IBAction func onShowDemo(_ sender: Any) {
        TKTCLoud.shared.start(fromViewController: self)
    }
}
```

## License

[MIT](LICENSE.md)# TKTLibrary
  
    
