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
        vw.layer.shadowOpacity = 0.1
        vw.layer.shadowRadius = 15
        vw.layer.shadowOffset = CGSize(width: 0, height: 2)
        return vw
    }()
    
    private let settingIcon: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "settingIcon")
        return img
    }()
    
    private let paddingView: UIView = {
        let vw = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 20))
        return vw
    }()
    
    private let rightPaddingView: UIView = {
        let vw = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        return vw
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()

    }

    func setupCell() {
        subtitleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        paddingView.addSubview(searchIcon)
        rightPaddingView.addSubview(settingContainer)
        settingContainer.addSubview(settingIcon)
        
        rightPaddingViewSetup()
        searchIconSetup()
        settingIconSetup()
        settingContainerSetup()
        searchBarSetup()
    }
    
    func rightPaddingViewSetup() {
        rightPaddingView.translatesAutoresizingMaskIntoConstraints = false
        rightPaddingView.widthAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func searchIconSetup() {
        searchIcon.translatesAutoresizingMaskIntoConstraints = false
        searchIcon.centerYAnchor.constraint(equalTo: paddingView.centerYAnchor).isActive = true
        searchIcon.leadingAnchor.constraint(equalTo: paddingView.leadingAnchor, constant: 10).isActive = true
        searchIcon.trailingAnchor.constraint(equalTo: paddingView.trailingAnchor, constant: -5).isActive = true

    }
    
    func settingIconSetup() {
        settingIcon.translatesAutoresizingMaskIntoConstraints = false
        settingIcon.centerYAnchor.constraint(equalTo: settingContainer.centerYAnchor).isActive = true
        settingIcon.centerXAnchor.constraint(equalTo: settingContainer.centerXAnchor).isActive = true
        settingIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        settingIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func settingContainerSetup() {
        
        settingContainer.translatesAutoresizingMaskIntoConstraints = false
        settingContainer.topAnchor.constraint(equalTo: rightPaddingView.topAnchor).isActive = true
        settingContainer.bottomAnchor.constraint(equalTo: rightPaddingView.bottomAnchor).isActive = true
        settingContainer.centerXAnchor.constraint(equalTo: rightPaddingView.centerXAnchor).isActive = true
        settingContainer.widthAnchor.constraint(equalToConstant: 40).isActive = true
        settingContainer.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func searchBarSetup() {
        searchBar.layer.cornerRadius = 25
        searchBar.clipsToBounds = true
        searchBar.font = UIFont.systemFont(ofSize: 16, weight: .light)
       
        searchBar.leftView = paddingView
        searchBar.leftViewMode = UITextField.ViewMode.always
        searchBar.leftViewMode = .always
        
        searchBar.rightView = rightPaddingView
        searchBar.rightViewMode = UITextField.ViewMode.always
        searchBar.rightViewMode = .always
    }
    
}
