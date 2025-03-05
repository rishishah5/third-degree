//
//  ProfileView.swift
//  Third-Degree
//
//  Created by Rishi Shah on 3/5/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Profile header
                HStack(alignment: .top, spacing: 20) {
                    // Profile image
                    Image("Profile Pic") // Replace with your image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray.opacity(0.2), lineWidth: 1))
                    
                    // Stats
                    HStack(spacing: 0) {
                        VStack {
                            Text("108")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("friends")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        
                        Divider()
                            .frame(height: 40)
                            .padding(.vertical, 8)
                        
                        VStack {
                            Text("52")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("posts")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        
                        Divider()
                            .frame(height: 40)
                            .padding(.vertical, 8)
                        
                        VStack {
                            Text("27")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("mutuals")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal)
                
                // Name and bio
                VStack(alignment: .leading, spacing: 4) {
                    Text("Sarah Beckman")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Here for a good time, not a long caption.")
                        .font(.subheadline)
                    
                    Text("NYC → LA → CHI")
                        .font(.subheadline)
                }
                .padding(.horizontal)
                
                // Action buttons
                HStack(spacing: 12) {
                    Button(action: {}) {
                        Text("Friend")
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width * 0.4)
                            .padding(.vertical, 10)
                            .background(Color(red: 0.42, green: 0.42, blue: 0.94)) // #6B6BF0
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    
                    Button(action: {}) {
                        Text("Message")
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width * 0.4)
                            .padding(.vertical, 10)
                            .background(Color(.systemGray5))
                            .foregroundColor(.black)
                            .cornerRadius(25)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                // Info box
                VStack(alignment: .leading, spacing: 12) {
                    HStack(spacing: 8) {
                        Image(systemName: "person.2.fill")
                            .frame(width: 24)
                        Text("27")
                            .fontWeight(.medium)
                        Spacer(minLength: 20)
                        Image(systemName: "building.2.fill")
                            .frame(width: 24)
                        Text("Los Angeles, CA")
                            .fontWeight(.medium)
                        Spacer()
                    }
                    
                    HStack(spacing: 8) {
                        Image(systemName: "briefcase.fill")
                            .frame(width: 24)
                        Text("Works as Actress, Model")
                            .fontWeight(.medium)
                        Spacer()
                    }
                    
                    HStack(spacing: 8) {
                        Image(systemName: "graduationcap.fill")
                            .frame(width: 24)
                        Text("University of Illinois at Urbana-Champaign")
                            .fontWeight(.medium)
                            .lineLimit(1)
                        Spacer()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)
                
                // Highlights section
                HStack(alignment: .top, spacing: 0) {
                    // Vertical "The Highlights" text
                    VStack {
                        Text("The Highlights")
                            .font(.title)
                            .fontWeight(.bold)
                            .rotationEffect(.degrees(-90))
                            .fixedSize()
                            .frame(width: 40, height: 150)
                            .padding(.top, 20)
                    }
                    .frame(width: 40)
                    
                    // Horizontal carousel of posts
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            // Post 1
                            postView(
                                image: "Post 1",
                                title: "70s twisted undefeated",
                                date: "posted on june 15, 2024"
                            )
                            
                            // Post 2
                            postView(
                                image: "Post 2",
                                title: "hollywood girl's night:)",
                                subtitle: "fresh set courtesy of @margaret_qualley",
                                date: "posted on november 2, 2024"
                            )
                        }
                        .padding(.vertical)
                        .padding(.trailing)
                    }
                }
                .padding(.top, 20)
                .padding(.leading)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                HStack(spacing: 0) {
                    Button(action: {}) {
                        Image(systemName: "person.circle")
                            .font(.system(size: 24))
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 24))
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 24))
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {}) {
                        Image(systemName: "bubble.left")
                            .font(.system(size: 24))
                    }
                    .frame(maxWidth: .infinity)
                }
                .foregroundColor(.black)
            }
        }
    }
    
    func postView(image: String, title: String, subtitle: String? = nil, date: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(image) // Replace with your image
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 200)
                .clipped()
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                
                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(.subheadline)
                }
                
                Text(date)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(width: 250, alignment: .leading)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
