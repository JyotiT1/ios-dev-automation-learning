import LoginPage from '../../pageobjects/login.page'

describe(
    'Automation Learning - Login',
    () => {

        it(
            'should login successfully',
            async () => {

                await LoginPage.login(
                    'automation',
                    'password'
                )

                const homeTitle =
                    $('~homeTitle')

                await expect(
                    homeTitle
                ).toBeDisplayed()
            }
        )
    }
)
