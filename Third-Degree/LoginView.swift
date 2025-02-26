//
//  LoginView.swift
//  Third-Degree
//
//  Created by Rishi Shah on 2/26/25.
//

import SwiftUI

struct LoginView: View {
    @State private var phoneNumber = ""
    @State private var selectedCountry = "United States (+1)"
    let continueButtonColor = Color(red: 0.435, green: 0.102, blue: 0.027)
    let backgroundColor = Color(red: 1, green: 1, blue: 1)
    
    var body: some View {
        VStack(spacing: 10) {
            // Logo
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.top, 0)
                .padding(.bottom, 0)
            
            // Login Text
            Text("Log In")
                .font(.custom("LibreBaskerville-Regular", size: 32))
                .padding(.bottom, 4)
            
            // "Don't have an account? Sign up" text
            HStack(spacing: 4) {
                Text("Don't have an account?")
                    .foregroundColor(.black)
                Text("Sign up")
                    .foregroundColor(.black)
                    .underline()
            }
            .font(.system(size: 14))
            .padding(.bottom, 20)
            
            // Phone Input Section
            VStack(spacing: 0) {
                // Country Picker
                Menu {
                    Button("United States (+1)", action: { selectedCountry = "United States (+1)" })
                } label: {
                    VStack(alignment: .leading, spacing: 4) {  // Changed to VStack with left alignment
                        Text("Country/Region")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                        
                        HStack {
                            Text(selectedCountry)
                                .font(.system(size: 16))
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                }
                
                Divider()
                
                // Phone Number Field
                TextField("Phone number", text: $phoneNumber)
                    .font(.system(size: 16))
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .keyboardType(.phonePad)
            }
            .background(backgroundColor)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.black.opacity(0.9), lineWidth: 1)
            )
            .padding(.horizontal)
            
            // Confirmation Text
            Text("We'll call or text to confirm your number. Standard message and data rates apply.")
                .font(.system(size: 12))
                .foregroundColor(.gray)
                .fixedSize(horizontal: false, vertical: true)  // This allows vertical growth
                .frame(maxWidth: .infinity, alignment: .leading)  // This ensures full width
                .padding(.horizontal, 32)
                .padding(.top, 8)
            
            // Continue Button
            Button(action: {}) {
                Text("Continue")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
            }
            .background(continueButtonColor)
            .cornerRadius(8)
            .padding(.horizontal)
            .padding(.top, 16)
            
            // Divider with "or"
            ZStack {  // Reduced spacing between text and line
                Rectangle()
                    .fill(Color.black.opacity(0.9))
                    .frame(height: 0.5)
                    .padding(.horizontal)
                
                // "or" text with background to mask the line
                Text("or")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.horizontal, 8)
                    .background(backgroundColor)  // Use same color as main background
            }
            .padding(.vertical, 20)
            
            // Social Login Buttons
            VStack(spacing: 12) {
                // Apple Sign In
                Button(action: {}) {
                    HStack {
                        Image(systemName: "apple.logo")
                        Text("Sign in with Apple")
                            .font(.system(size: 16))
                            .padding(.horizontal,16)
                    }
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                }
                .background(backgroundColor)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black.opacity(0.9), lineWidth: 1)
                )
                .padding(.horizontal)
                
                // Google Sign In
                Button(action: {}) {
                    HStack {
                        Image("googleTrans")
                            .resizable()
                            .frame(width: 20, height: 20)  // Same size as
                        Text("Sign in with Google")
                            .font(.system(size: 16))
                            .padding(.horizontal,16)
                    }
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                }
                .background(backgroundColor)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black.opacity(0.9), lineWidth: 1)
                )
                .padding(.horizontal)
                
                // Email Sign In
                Button(action: {}) {
                    HStack {
                        Image(systemName: "envelope")
                        Text("Sign in with Email")
                            .font(.system(size: 16))
                            .padding(.horizontal,16)
                    }
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                }
                .background(backgroundColor)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black.opacity(0.9), lineWidth: 1)
                )
                .padding(.horizontal)
            }
        }
        .padding()
        .background(backgroundColor)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
