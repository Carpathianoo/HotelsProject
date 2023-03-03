//
//  HotelsNearbyListCell.swift
//  HotelsProject
//
//  Created by Adlan Nourindiaz on 02/03/23.
//

import UIKit

class HotelsNearbyListCell: UITableViewCell {

    static let identifier = "HotelsNearbyListCell"
    
    @IBOutlet weak var hotelImage: UIImageView!
    @IBOutlet weak var hotelName: UILabel!
    @IBOutlet weak var hotelAddress: UILabel!
    @IBOutlet weak var hotelPrice: UILabel!
    @IBOutlet weak var hotelRating: UILabel!
    @IBOutlet weak var ratingIcon: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }

    func setupCell() {
        hotelName.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        hotelAddress.font = UIFont.systemFont(ofSize: 16, weight: .light)
        hotelAddress.textColor = .gray
        
        hotelPrice.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        hotelRating.font = UIFont.systemFont(ofSize: 16, weight: .light)
        
        hotelImage.layer.cornerRadius = 15
        
    }
    
    func configure(model: HotelModel) {
        
        hotelName.text = model.name
        hotelAddress.text = model.address
        hotelPrice.text = "$\(model.price)"
        hotelRating.text = "\(model.rating)"
        hotelImage.image = UIImage(named: model.image)
    }
}
