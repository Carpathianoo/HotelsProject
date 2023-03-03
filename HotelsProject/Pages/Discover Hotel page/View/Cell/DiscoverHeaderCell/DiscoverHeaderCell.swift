//
//  DiscoverHeaderCell.swift
//  HotelsProject
//
//  Created by Adlan Nourindiaz on 02/03/23.
//

import UIKit

class DiscoverHeaderCell: UITableViewCell {

    static let identifier = "DiscoverHeaderCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var searchBar: UITextField!
    
    private let searchIcon: UIImageView! = {
        let imageView = UIImageView();
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(systemName: "magnifyingglass");
        imageView.image = image;
        imageView.tintColor = .black
        return imageView
    }()
    
    private let settingContainer: UIView = {
       let vw = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 20))
        vw.backgroundColor = .white
        vw.layer.cornerRadius = 20
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOpacity = 0.2
        vw.layer.shadowRadius = 15
        vw.layer.shadowOffset = CGSize(width: 0, height: 2)
        return vw
    }()
    
    private let settingIcon: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "settingIcon")
        return img
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()

    }

    func setupCell() {
        subtitleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        searchBar.layer.cornerRadius = 15
        searchBar.clipsToBounds = true
        
       
        
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 20))
        let rightPaddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        searchBar.leftView = paddingView
        searchBar.rightView = rightPaddingView
    
        paddingView.addSubview(searchIcon)
        searchIcon.translatesAutoresizingMaskIntoConstraints = false
        searchIcon.centerYAnchor.constraint(equalTo: paddingView.centerYAnchor).isActive = true
        searchIcon.leadingAnchor.constraint(equalTo: paddingView.leadingAnchor, constant: 10).isActive = true
        searchIcon.trailingAnchor.constraint(equalTo: paddingView.trailingAnchor, constant: -5).isActive = true
        
        
        rightPaddingView.addSubview(settingContainer)
        settingContainer.addSubview(settingIcon)
        
        rightPaddingView.translatesAutoresizingMaskIntoConstraints = false
        rightPaddingView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        settingContainer.translatesAutoresizingMaskIntoConstraints = false
        settingContainer.topAnchor.constraint(equalTo: rightPaddingView.topAnchor).isActive = true
        settingContainer.bottomAnchor.constraint(equalTo: rightPaddingView.bottomAnchor).isActive = true
        settingContainer.centerXAnchor.constraint(equalTo: rightPaddingView.centerXAnchor).isActive = true
        settingContainer.widthAnchor.constraint(equalToConstant: 40).isActive = true
        settingContainer.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        settingIcon.translatesAutoresizingMaskIntoConstraints = false
        settingIcon.centerYAnchor.constraint(equalTo: settingContainer.centerYAnchor).isActive = true
        settingIcon.centerXAnchor.constraint(equalTo: settingContainer.centerXAnchor).isActive = true
        settingIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        settingIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true

        

        searchBar.leftViewMode = UITextField.ViewMode.always
        searchBar.leftViewMode = .always
        
        searchBar.rightViewMode = UITextField.ViewMode.always
        searchBar.rightViewMode = .always
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
