class RedeCredPage
  include Capybara::DSL
  include RSpec::Matchers

  def inserircepvalido(cep)
    find("#ipt-busca-credenciado-2").set cep
  end

  def clicarnobotaopesquisarcep
    find("#botao-buscar").click
  end

  def verificarprestadorcredenciado
    #page.should has_field?("#div-resultados-qtdd", :text => "Prestadores encontrado")
    expect(page).to have_content "Prestadores encontrados"
  end
end
