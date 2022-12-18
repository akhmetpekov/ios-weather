//
//  ContentView.swift
//  Weather
//
//  Created by Erik on 27.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var background: [String] = ["cloudy1", "cloudy2"]
    @ObservedObject var userData = UserData()
    
    var body: some View {
        ZStack {
            Image(background[0]).edgesIgnoringSafeArea(.all).scaledToFill()
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 35)
                        .fill(Color(#colorLiteral(red: 0.5686274766921997, green: 0.7058823704719543, blue: 0.7764706015586853, alpha: 1)))
                        .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height / 2.39)
                    VStack(spacing: 15){
                        HStack {
                            Text("Today")
                            Image(systemName: "chevron.down")
                        }
                        .padding(.top, UIScreen.main.bounds.height / 92.6)
                        HStack {
                            Image(systemName: "cloud.snow").font(.system(size: 70))
                            ZStack {
                                Text("25").font(
                                    .system(size: 100))
                                    .overlay(alignment: .topTrailing) {
                                        Image(systemName: "circle").offset(x: 20, y: 5).font(.system(size: 15))
                                    }
                            }
                        }
                        Text("Cloudy").font(.custom("Poppins-SemiBold", size: 20))
                        Text("California, Los Angeles").font(.system(size: 15))
                        Text("21 oct 2019").font(.system(size: 15))
                        HStack {
                            Text("Feels like 28").font(.system(size: 15))
                            Text("|").font(.system(size: 15))
                            Text("Sunset 18:20").font(.system(size: 15))
                        }
                        .padding(.bottom, 34)
                    }
                }
                .foregroundColor(Color(#colorLiteral(red: 0.79, green: 0.84, blue: 0.87, alpha: 1)))
                .padding(.top, UIScreen.main.bounds.height / 17.4)
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(RadialGradient(
                                gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.5686274766921997, green: 0.7058823704719543, blue: 0.7764706015586853, alpha: 0.699999988079071)), location: 1),
                            .init(color: Color(#colorLiteral(red: 0.5686274766921997, green: 0.7058823704719543, blue: 0.7764706015586853, alpha: 0.30000001192092896)), location: 1)]),
                                center: UnitPoint(x: 0.008994750740108637, y: 0.02975202237287311),
                                startRadius: 4.619982724438948,
                                endRadius: 271.60539148163326
                              ))
                        .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height / 4.79)
                    VStack {
                        HStack(spacing: 15) {
                            NextWeather(str: "Now", img: "cloud.snow")
                            NextWeather(str: "2 AM", img: "cloud.snow")
                            NextWeather(str: "3 AM", img: "cloud.snow")
                            NextWeather(str: "4 AM", img: "cloud.snow")
                            NextWeather(str: "5 AM", img: "cloud.snow")
                        }
                        .padding(.bottom, 20)
                        
                        Divider().frame(maxWidth: .infinity, maxHeight: 1).overlay(.white)
                        
                        HStack(spacing: 15) {
                            NextWeather(str: "6 AM", img: "cloud.snow")
                            NextWeather(str: "7 AM", img: "cloud.snow")
                            NextWeather(str: "8 AM", img: "cloud.snow")
                            NextWeather(str: "9 AM", img: "cloud.snow")
                            NextWeather(str: "10 AM", img: "cloud.snow")
                        }
                        .padding(.top, 20)
                    }
                    .padding(.horizontal, 30)
                    .foregroundColor(.white)
                }
                .padding(.top, 35)
                VStack(alignment: .leading) {
                    Text("Random Text").font(
                        .system(size: 20))
                        .padding(.bottom, 10)
                    Text("""
                         Improve him believe opinion offered met and
                         end cheered forbade. Friendly as stronger
                         speedily by recurred. Son interest wandered
                         sir addition end say. Manners beloved affixed
                         picture men ask.
                         """)
                }
                .font(.custom("Poppins-SemiBold", size: 15))
                .padding(.top, UIScreen.main.bounds.height / 30)
                .padding(.bottom, UIScreen.main.bounds.height / 17.4)
            }
            .padding(.horizontal, 34)
        }
        .font(.custom("Poppins-Medium", size: 25))
        .foregroundColor(.white)
    }
}

struct NextWeather: View {
    
    var str: String
    var img: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(str)").font(.custom("Poppins-Regular", size: 15))
            HStack {
                Image(systemName: "\(img)")
                Text("25")
            }
            .font(.system(size: 15))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
