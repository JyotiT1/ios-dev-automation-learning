import SwiftUI

struct ContentView: View {

    // MARK: - State

    @State private var username = ""
    @State private var password = ""

    @State private var isLoggedIn = false
    @State private var showLoginError = false

    // MARK: - Body

    var body: some View {

        Group {
            if isLoggedIn {

                HomeView(
                    username: username,
                    onLogout: logout
                )

            } else {

                loginView
            }
        }
    }

    // MARK: - Login View

    private var loginView: some View {

        ZStack {

            LinearGradient(
                colors: [
                    Color.blue.opacity(0.15),
                    Color.purple.opacity(0.10)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {

                VStack(spacing: 24) {

                    // App Logo
                    AppLogoView()

                    // App Branding
                    AppBrandingView()

                    // Login Card
                    VStack(spacing: 18) {

                        // Username
                        AppTextField(
                            title: "Username",
                            placeholder: "Enter username",
                            icon: "person.fill",
                            text: $username,
                            isSecure: false,
                            accessibilityID: "usernameField"
                        )

                        // Password
                        AppTextField(
                            title: "Password",
                            placeholder: "Enter password",
                            icon: "lock.fill",
                            text: $password,
                            isSecure: true,
                            accessibilityID: "passwordField"
                        )

                        // Login Error
                        if showLoginError {
                            LoginErrorView()
                        }

                        // Login Button
                        PrimaryButton(
                            title: "Login",
                            icon: "arrow.right.circle.fill",
                            action: login,
                            accessibilityID: "loginButton"
                        )

                        // Demo Credentials
                        DemoCredentialsView()
                    }
                    .padding(24)
                    .background(.regularMaterial)
                    .clipShape(
                        RoundedRectangle(
                            cornerRadius: 24
                        )
                    )
                }
                .padding()
            }
        }
    }

    // MARK: - Login

    private func login() {

        if username == User.demo.username &&
            password == User.password {

            showLoginError = false
            isLoggedIn = true

        } else {

            showLoginError = true
        }
    }

    // MARK: - Logout

    private func logout() {

        username = ""
        password = ""

        showLoginError = false
        isLoggedIn = false
    }
}
