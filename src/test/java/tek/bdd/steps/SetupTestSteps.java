package tek.bdd.steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import tek.bdd.utility.SeleniumUtility;

public class SetupTestSteps extends SeleniumUtility {

    @Then("validate top left corner is TEKSCHOOL")
    public void validateTopLeftLogo() {
        String text = getElementText(By.className("top-nav__logo"));
        Assert.assertEquals("TEKSCHOOL" , text);
        System.out.println(text);
    }

    @Then("Cross the browser")
    public void closeBrowser() { quitBrowser();

    }

    @Then("Validate Sign in button is Enabled")
    public void validateSignInButtonEnabled() {
        boolean isSignInBtnEnabled = isElementEnabled(By.id("signinLink"));
        Assert.assertTrue(isSignInBtnEnabled);
    }

}
