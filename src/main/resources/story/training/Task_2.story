GivenStories: story/demo/Homepage_Demo.story

Scenario: Log in as a Good User
When I enter `${swagGoodUserName}` in field located by `xpath(//*[@id="user-name"])`
And I enter `${swagPassword}` in field located by `xpath(//*[@id="password"])`
And I click on element located by `xpath(//*[@id="login-button"])`
When I wait until element located by `caseSensitiveText(Products)` appears
Then `${current-page-url}` is equal to `${mainPage}/inventory.html`
And number of elements found by `By.CssSelector(.inventory_item)` is equal to  `6`
When I take screenshot