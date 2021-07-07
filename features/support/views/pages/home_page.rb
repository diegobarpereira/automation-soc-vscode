class HomePage
  include Capybara::DSL

  def open
    visit "https://www.soc.com.br/"
  end

  def aceitarcookies
    find(:xpath, "//span[@class='elementor-button-text']//parent::span[1]//*[text()='Aceitar cookies']").click
  end

  def clicarnolinksocnet
    find(:xpath, "(//a[@class='access-details'])[3]").click
  end
end
