import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var hasWrongCredentials = false
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                TextField("Username", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                
                Button(
                    action: { authenticateUser(username: username, password: password) },
                    label: { Text("Login").bold() }
                )
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                .alert(isPresented: $hasWrongCredentials) {
                    Alert(title: Text("Woops!"), message: Text("Looks like either your username or password are incorrect, please try again"), dismissButton: .default(Text("OK")))
                }
                
                NavigationLink(destination: Text("You're now logged in as @\(username)"), isActive: $showingLoginScreen) {
                    EmptyView()
                }
            }
        }
    }
    
    func authenticateUser(username: String, password: String) {
        let hasValidCredentials = username.lowercased() == "chris" && password.lowercased() == "pass123"
        if (hasValidCredentials) {
            hasWrongCredentials = false
            showingLoginScreen = true
        } else {
            hasWrongCredentials = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
