//
//  ViewController.swift
//  interviewww
//
//  Created by Yashika Tonk on 17/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var vieww = UserView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(vieww)
        vieww.frame = CGRect(x: 0, y: 80, width: view.width, height: view.height)
        
        fetchData { result in
            DispatchQueue.main.async {
                switch result {
                    
                case .success(let result):
                    var viewModel = WeatherViewModel(description: "_", temp: "_", location: "_", timezone: "_")
                    
                    viewModel.description = result.list.first?.weather.first?.description ?? "_"
                    viewModel.location = result.city.name
                    viewModel.timezone = String(result.city.timezone)
                    viewModel.temp = String(result.list.first?.main.temp ?? 0)
                    
                    self.vieww.configure(with: viewModel)
                    break
                    
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
    }

}

