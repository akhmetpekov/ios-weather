//
//  Weather.swift
//  Weather
//
//  Created by Erik on 27.11.2022.
//
import Foundation
import Combine

class UserData: ObservableObject {
    @Published var users: [User] = []
    func loadUsers() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users/1")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print("Error loading users: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let users = try decoder.decode([User].self, from: data)
                DispatchQueue.main.async {
                    self.users = users
                }
            } catch {
                print("Error decoding users: \(error.localizedDescription)")
            }
        }.resume()
    }
}

struct User: Codable, Hashable {
    var name: String
    var email: String
}
