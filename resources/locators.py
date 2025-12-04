# locators.py

# Base
baseUrl = "https://petstore.octoperf.com/actions/Catalog.action"

# Buttons
SignInButton = "xpath=//a[text()='Sign In']"
RegisterNow = "xpath=//a[text()='Register Now!']"
LogOutButton = "xpath=//a[text()='Sign Out']"

# Registration fields
UserID = "name=username"
NewPassword = "name=password"
RepeatPassword = "name=repeatedPassword"
FirstName = "name=account.firstName"
LastName = "name=account.lastName"
Email = "name=account.email"
Phone = "name=account.phone"
Address1 = "name=account.address1"
City = "name=account.city"
State = "name=account.state"
Zip = "name=account.zip"
Country = "name=account.country"

SaveAccountButton = "name=newAccount"

# Login fields
LoginUser = "name=username"
LoginPassword = "name=password"
LoginButton = "name=signon"

# Product
FishCategory = "xpath=//a[contains(@href, 'categoryId=FISH')]"
AddToCartButton = "xpath=//a[contains(text(), 'Add to Cart')]"
ProceedToCheckout = "xpath=//a[text()='Proceed to Checkout']"
ConfirmButton = "name=newOrder"