class LoginPage {

    get usernameField() {
        return $('~usernameField')
    }

    get passwordField() {
        return $('~passwordField')
    }

    get loginButton() {
        return $('~loginButton')
    }

    get loginError() {
        return $('~loginError')
    }

    async login(
        username: string,
        password: string
    ) {

        await this.usernameField.setValue(
            username
        )

        await this.passwordField.setValue(
            password
        )

        await this.loginButton.click()
    }
}

export default new LoginPage()