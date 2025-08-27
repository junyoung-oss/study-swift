//
//  FiveDaysWeatherTableViewCell.swift
//  TodayWeather
//
//  Created by 예슬 on 5/21/24.
//

import SnapKit
import Then
import UIKit

class FiveDaysWeatherTableViewCell: UITableViewCell {
    
    static let identifier = String(describing: FiveDaysWeatherTableViewCell.self)
    
    private let squareView = UIView().then {
        $0.backgroundColor = .white.withAlphaComponent(0.4)
        $0.layer.cornerRadius = 16
        $0.clipsToBounds = true
    }
    
    private let temperatureDaysOfWeekStackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 12
    }
    
    private let temperatureLable = UILabel().then {
        $0.font = BagelFatOne.regular.of(size: 40)
        $0.text = "25°"
    }
    
    private let daysOfWeekLable = UILabel().then {
        $0.font = Gabarito.regular.of(size: 14)
        $0.textColor = .black.withAlphaComponent(0.6)
        $0.text = "Sunday"
    }
    
    private let weatherImage = UIImageView().then {
        $0.image = UIImage(named: "smallSunny")
    }
    
    // MARK: - init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func setConstraints() {
        contentView.backgroundColor = .rainyBackground
        contentView.addSubview(squareView)
        
        [temperatureDaysOfWeekStackView, weatherImage].forEach {
            squareView.addSubview($0)
        }
        
        [temperatureLable, daysOfWeekLable].forEach {
            temperatureDaysOfWeekStackView.addArrangedSubview($0)
        }
        
        squareView.snp.makeConstraints {
            $0.horizontalEdges.equalTo(contentView).inset(20)
            $0.verticalEdges.equalTo(contentView).inset(8)
            $0.height.equalTo(110)
        }
        
        temperatureDaysOfWeekStackView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(16)
            $0.leading.equalToSuperview().inset(20)
            $0.bottom.equalToSuperview().inset(28)
        }
        
        weatherImage.snp.makeConstraints {
            $0.top.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview().inset(20)
        }
    }
    
}
