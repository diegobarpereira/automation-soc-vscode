class BlogPage
  include Capybara::DSL

  def open
    visit "https://ww2.soc.com.br/blog/"
  end

  def encontrarcampodebusca
    find(:xpath, "(//input[@placeholder='Procurar'])[3]").click
  end

  def inserirtextoprocura(texto)
    find(:xpath, "(//input[@placeholder='Procurar'])[3]").set texto
  end

  def clicarnobotaopesquisar
    find(:xpath, "//button[@title='Search']").click
  end

  def verificartexto
    page.has_xpath?("(//h2[@class='elementor-heading-title elementor-size-default'])[1]")
  end
end
