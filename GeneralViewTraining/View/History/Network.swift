//
//  Network.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 03/02/22.
//
import SwiftUI

class Network: ObservableObject{
    //MARK: - PROPERTIES
    @Published var users: [User] = []
    
    //MARK: -OLD Methods
    
    func getUsers(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else{fatalError("Missing Url")}
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest){(data, response, error) in
            if let error = error {
                print("Request Error: \(error)")
                return
            }
            guard let response = response as? HTTPURLResponse else {
                return
            }
            
            if response.statusCode == 200{
                guard let data = data else {
                    return
                }
                DispatchQueue.main.async {
                    do {
                        let decodedUsers = try JSONDecoder().decode([User].self, from: data)
                        self.users = decodedUsers
                    } catch let error {
                        print("Error decoding \(error)")
                    }//: catch
                }//: DispatchQueue

            }//: response
 
        }//: dataTask
        dataTask.resume()
        
    }//: getUser()
    
    //MARK: - New  Method TO CALL API
    
    //--------------------async and await function-----------------------------------------

    func fetchUserData() async throws {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else{fatalError("Missing url")}
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{ throw fetchUserDataError.userDataNotFound }
        let jsonDecoder = JSONDecoder()
        let decodeUser = try jsonDecoder.decode([User].self, from: data)
        self.users = decodeUser
    }

}

    //-----------------------coustom Error type-------------------------------------------

    enum fetchUserDataError: Error, LocalizedError{
        case userDataNotFound
    }
