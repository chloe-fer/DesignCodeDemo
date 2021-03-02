//
//  SignInView.swift
//  DesignCodeDemo
//
//  Created by Chloe Fermanis on 1/3/21.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        
        VStack {
            
//            RoundedRectangle(cornerRadius: 30, style: .continuous)
//                .foregroundColor(Color.white)
//                .padding(.horizontal)
//                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Sign in")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.pink)
                Text("Access to 120+ hours of courses, turotials and livestreams.")
                    .font(.body)
                    .fontWeight(.light)
                
                HStack {
                    Image(systemName: "envelope.fill")
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink, Color.orange]), startPoint: .top, endPoint: .bottom))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))

                    Text("Email address")
                        .foregroundColor(.gray)
                        .font(.body)

                }
                
                
                HStack {
                    Image(systemName: "key.fill")
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink, Color.orange]), startPoint: .top, endPoint: .bottom))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                    Text("Password")
                        .foregroundColor(.gray)
                        .font(.body)

                }

                Button(action: {
                    
                }) {
                    Text("Sign in")
                        .font(.body)
                        .frame(width: 300, height: 44)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),  Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                HStack {
                    Text("Dont't have an account?")
                    Text("Sign up")
                        .foregroundColor(.purple)
                        .bold()
                }
                HStack {
                    Text("Forgot Password?")
                    Text("Reset Password")
                        .foregroundColor(.purple)
                        .bold()
                }
                HStack {
                    Text("Don't have a password yet?")
                    Text("Set Password")
                        .foregroundColor(.purple)
                        .bold()
//                        .onTapGesture {
//                            <#code#>
//                        }
                }
            }
            .font(.caption)
            .padding()
            .frame(maxWidth: 350)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
        }
        .frame(maxHeight: 500)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
