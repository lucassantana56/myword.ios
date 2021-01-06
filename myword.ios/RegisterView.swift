//
//  RegisterView.swift
//  myword.ios
//
//  Created by Lucas Santana on 27/12/2020.
//

import SwiftUI

struct RegisterView: View {
    @State var userName = ""
    @State var email = ""
    @State var contact = ""
    @State var password = ""
    @State var confirmpass = ""
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
   
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View {
        VStack(alignment: .center){
                TextField("Email", text: $email )
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 10)
                    .frame(width: 350, height: 50)
                TextField("User Name", text: $userName )
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 10)
                    .frame(width: 350, height: 50)
            
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 10)
                    .frame(width: 350, height: 50)
                
                Button(action: {}) {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(10.0)}
                
                HStack{
                    Text("Already registered yet?").foregroundColor(.black).font(.system(size: 20))
                    Text("login").foregroundColor(Color.red).font(.system(size: 20)).onTapGesture(count: 1, perform: {
                        self.mode.wrappedValue.dismiss()
                    })
                }.padding()
                
            }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: .infinity, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: .infinity, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
