//
//  ViewController.swift
//  HotelsProject
//
//  Created by Adlan Nourindiaz on 02/03/23.
//

import UIKit

protocol DiscoverHotelProtocol {
    func seeder()
}

enum Sections: Int {
    
    case header = 0
    case topHotels = 1
    case hotelsNearbyHeader = 2
    case hotelsNearbyList = 3
}

class DiscoverHotelController: UIViewController, HotelsNearbyDelegate, moveToDetailPageDelegate {

    @IBOutlet weak var discoverTable: UITableView!

    var hotelData: [HotelModel] = []
    var sortedTopHotels: [HotelModel] = []
    
    var delegate: HotelsNearbyDelegate?
    var nearbyPageDelegate: moveToDetailPageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        delegate = self
        nearbyPageDelegate = self
    }
    
    func setupTable() {
        
        discoverTable.register(UINib(nibName: "DiscoverHeaderCell", bundle: nil), forCellReuseIdentifier: DiscoverHeaderCell.identifier)
        discoverTable.register(TopHotelTableCell.self, forCellReuseIdentifier: TopHotelTableCell.identifier)
        discoverTable.register(UINib(nibName: "HotelsNearbyHeaderCell", bundle: nil), forCellReuseIdentifier: HotelsNearbyHeaderCell.identifier)
        discoverTable.register(UINib(nibName: "HotelsNearbyListCell", bundle: nil), forCellReuseIdentifier: HotelsNearbyListCell.identifier)


        discoverTable.delegate = self
        discoverTable.dataSource = self
    
        seeder()
        sortTopHotel()
    }
    
    func sortTopHotel() {
        sortedTopHotels = hotelData.sorted {$0.rating > $1.rating}
    }
    
    func moveToHotelsNearbyPage() {
        let vc = HotelsNearbyController()
        vc.dataHotel = self.hotelData
        vc.delegate = self.delegate as? any moveToDetailPageDelegate
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func moveToHotelDetailPage(model: HotelModel) {
        let vc = HotelDetailController()
        vc.hotelDetail = model
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}

extension DiscoverHotelController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 3:
            return hotelData.count - 2
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return discoverTable.rowHeight
        case 1:
            return 210
        case 2:
            return discoverTable.rowHeight
        case 3:
            return discoverTable.rowHeight
        default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = Sections(rawValue: indexPath.section)
        
        switch section {
        case .header:
            guard let cell = discoverTable.dequeueReusableCell(withIdentifier: DiscoverHeaderCell.identifier) as? DiscoverHeaderCell else { return UITableViewCell() }
            
            return cell
            
        case .topHotels:
            guard let cell = discoverTable.dequeueReusableCell(withIdentifier: TopHotelTableCell.identifier) as? TopHotelTableCell else { return UITableViewCell() }
            cell.dataTopHotel = sortedTopHotels
            cell.moveToDetailPageDelegate = self.delegate as? any moveToDetailPageDelegate
            cell.setupTableCell()
            
            return cell
            
        case .hotelsNearbyHeader:
            guard let cell = discoverTable.dequeueReusableCell(withIdentifier: HotelsNearbyHeaderCell.identifier) as? HotelsNearbyHeaderCell else { return UITableViewCell() }
            
            cell.delegate = self.delegate
            
            return cell
            
        case .hotelsNearbyList:
            guard let cell = discoverTable.dequeueReusableCell(withIdentifier: HotelsNearbyListCell.identifier) as?
                    HotelsNearbyListCell else { return UITableViewCell() }
            
            cell.configure(model: hotelData[indexPath.row])
            
            return cell
            
        default:
            return UITableViewCell()
            
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 3 {
            moveToHotelDetailPage(model: hotelData[indexPath.row])
        }
    }
}

