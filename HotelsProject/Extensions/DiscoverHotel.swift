//
//  DiscoverHotel.swift
//  HotelsProject
//
//  Created by Adlan Nourindiaz on 03/03/23.
//

import Foundation
import UIKit

extension DiscoverHotelController: DiscoverHotelProtocol {
    
    
    func seeder() {
        let data1 = HotelModel(image: "hotel1", name: "Shang Hotel", address: "Street 12321", price: 300, rating: 4.3, desc: "Our hotel offers a unique blend of modern amenities and classic charm, ensuring that each and every guest enjoys an unforgettable stay. With beautifully appointed rooms, all featuring plush bedding, luxurious linens, and state-of-the-art technology, you'll feel right at home from the moment you arrive. Whether you're here for business or pleasure, our friendly and attentive staff is always on hand to ensure that your needs are met. And when it's time to unwind, head to our on-site restaurant and lounge, where you can savor delicious cuisine and signature cocktails. We also offer a range of meeting and event spaces, making us the ideal choice for everything from intimate gatherings to large-scale conferences.", room: [
            Room(roomImg: "room1", roomTitle: "Main bedroom", roomClass: "Presidential Deluxe"),
            Room(roomImg: "room2", roomTitle: "Lesehan room", roomClass: "kamarnya bikin sakit pinggang"),
            Room(roomImg: "room3", roomTitle: "Gelar tiker room", roomClass: "Kasur pake tiker"),
            Room(roomImg: "room4", roomTitle: "Platinum Room", roomClass: "Nyaman bangetttttt"),
            
            ])
        
        let data2 = HotelModel(image: "hotel2", name: "Shangrila Hotel", address: "Street 12321", price: 300, rating: 4.0, desc: "Our hotel offers a unique blend of modern amenities and classic charm, ensuring that each and every guest enjoys an unforgettable stay. With beautifully appointed rooms, all featuring plush bedding, luxurious linens, and state-of-the-art technology, you'll feel right at home from the moment you arrive. Whether you're here for business or pleasure, our friendly and attentive staff is always on hand to ensure that your needs are met. And when it's time to unwind, head to our on-site restaurant and lounge, where you can savor delicious cuisine and signature cocktails. We also offer a range of meeting and event spaces, making us the ideal choice for everything from intimate gatherings to large-scale conferences.", room: [
            Room(roomImg: "room1", roomTitle: "Main bedroom2", roomClass: "Presidential Deluxe"),
            Room(roomImg: "room2", roomTitle: "Lesehan room2", roomClass: "kamarnya bikin sakit pinggang"),
            Room(roomImg: "room3", roomTitle: "Gelar tiker room2", roomClass: "Kasur pake tiker"),
            Room(roomImg: "room4", roomTitle: "Platinum Room2", roomClass: "Nyaman bangetttttt"),
            
            ])

        let data3 = HotelModel(image: "hotel3", name: "Sheraton Hotel", address: "Street 12321", price: 330, rating: 4.5, desc: "Our hotel offers a unique blend of modern amenities and classic charm, ensuring that each and every guest enjoys an unforgettable stay. With beautifully appointed rooms, all featuring plush bedding, luxurious linens, and state-of-the-art technology, you'll feel right at home from the moment you arrive. Whether you're here for business or pleasure, our friendly and attentive staff is always on hand to ensure that your needs are met. And when it's time to unwind, head to our on-site restaurant and lounge, where you can savor delicious cuisine and signature cocktails. We also offer a range of meeting and event spaces, making us the ideal choice for everything from intimate gatherings to large-scale conferences.", room: [
            Room(roomImg: "room1", roomTitle: "Main bedroom3", roomClass: "Presidential Deluxe"),
            Room(roomImg: "room2", roomTitle: "Lesehan room3", roomClass: "kamarnya bikin sakit pinggang"),
            Room(roomImg: "room3", roomTitle: "Gelar tiker room3", roomClass: "Kasur pake tiker"),
            Room(roomImg: "room4", roomTitle: "Platinum Room3", roomClass: "Nyaman bangetttttt"),
            
            ])

        let data4 = HotelModel(image: "hotel3", name: "Hotel hotelan", address: "Street 12321", price: 30, rating: 4.1, desc: "Our hotel offers a unique blend of modern amenities and classic charm, ensuring that each and every guest enjoys an unforgettable stay. With beautifully appointed rooms, all featuring plush bedding, luxurious linens, and state-of-the-art technology, you'll feel right at home from the moment you arrive. Whether you're here for business or pleasure, our friendly and attentive staff is always on hand to ensure that your needs are met. And when it's time to unwind, head to our on-site restaurant and lounge, where you can savor delicious cuisine and signature cocktails. We also offer a range of meeting and event spaces, making us the ideal choice for everything from intimate gatherings to large-scale conferences.", room: [
            Room(roomImg: "room1", roomTitle: "Main bedroom4", roomClass: "Presidential Deluxe"),
            Room(roomImg: "room2", roomTitle: "Lesehan room4", roomClass: "kamarnya bikin sakit pinggang"),
            Room(roomImg: "room3", roomTitle: "Gelar tiker room4", roomClass: "Kasur pake tiker"),
            Room(roomImg: "room4", roomTitle: "Platinum Room4", roomClass: "Nyaman bangetttttt"),
            
            ])
        
        let data5 = HotelModel(image: "hotel3", name: "Oyo The best", address: "Street 129999", price: 398, rating: 5.0, desc: "Our hotel offers a unique blend of modern amenities and classic charm, ensuring that each and every guest enjoys an unforgettable stay. With beautifully appointed rooms, all featuring plush bedding, luxurious linens, and state-of-the-art technology, you'll feel right at home from the moment you arrive. Whether you're here for business or pleasure, our friendly and attentive staff is always on hand to ensure that your needs are met. And when it's time to unwind, head to our on-site restaurant and lounge, where you can savor delicious cuisine and signature cocktails. We also offer a range of meeting and event spaces, making us the ideal choice for everything from intimate gatherings to large-scale conferences.", room: [
            Room(roomImg: "room1", roomTitle: "Main bedroom", roomClass: "Presidential Deluxe"),
            Room(roomImg: "room2", roomTitle: "Lesehan room", roomClass: "kamarnya bikin sakit pinggang"),
            Room(roomImg: "room3", roomTitle: "Gelar tiker room", roomClass: "Kasur pake tiker"),
            Room(roomImg: "room4", roomTitle: "Platinum Room", roomClass: "Nyaman bangetttttt"),
            
            ])

        hotelData.append(data1)
        hotelData.append(data2)
        hotelData.append(data3)
        hotelData.append(data4)
        hotelData.append(data5)
        
    }
    
    
}

