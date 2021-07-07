class SocNetPage
  include Capybara::DSL

  def verificartextopaginasocnet
    page.has_xpath?("(//h2[@class='elementor-heading-title elementor-size-default'])[1]")
  end

  def clicarnolinkbuscarcredenciados
    find(:xpath, "//span[@class='elementor-button-text']//parent::span[1]//*[text()='Buscar credenciados']").click
  end
end
