//
//  UIView.swift
//  interviewww
//
//  Created by Yashika Tonk on 24/07/23.
//

import UIKit

class UserView: UIView {

    private let descriptionLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 32, weight: .light)
        label.textAlignment = .center
        return label
    }()
    
    private let tempLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 44, weight: .heavy)
        label.textAlignment = .center
        return label
    }()
    
    private let timezoneLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .regular)
        label.textAlignment = .center
        return label
    }()
    
    private let locationLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .regular)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        addSubview(descriptionLabel)
        addSubview(tempLabel)
        addSubview(locationLabel)
        addSubview(timezoneLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        descriptionLabel.frame = CGRect(x: 10, y: 5, width: width - 20, height: 50)
        tempLabel.frame = CGRect(x: 10, y: descriptionLabel.bottom + 5, width: width - 20, height: 50)
        locationLabel.frame = CGRect(x: 10, y: tempLabel.bottom + 5, width: width - 20, height: 50)
        timezoneLabel.frame = CGRect(x: 10, y: locationLabel.bottom + 5, width: width - 20, height: 50)
    }
    
    func configure(with viewModel: WeatherViewModel) {
        descriptionLabel.text = viewModel.description
        tempLabel.text = viewModel.temp
        locationLabel.text = viewModel.location
        timezoneLabel.text = viewModel.timezone
    }

}

extension UIView {
    
    var width: CGFloat {
        return frame.size.width
    }
    
    var height: CGFloat {
        return frame.size.height
    }
    
    var left: CGFloat {
        return frame.origin.x
    }
    
    var right: CGFloat {
        return left + width
    }
    
    var top: CGFloat {
        return frame.origin.y
    }
    
    var bottom: CGFloat {
        return top + height
    }
    
}
