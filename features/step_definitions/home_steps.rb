Dado("que estou na na pagina principal da SOC") do
  @home_page.open
  @home_page.aceitarcookies
end

Dado("clico no link da SOCNET") do
  @home_page.clicarnolinksocnet
end

Dado("sou redirecionado para a pagina da SOCNET") do
  @socnet_page.verificartextopaginasocnet
end

Dado("clico no link Buscar credenciados") do
  @socnet_page.clicarnolinkbuscarcredenciados
end

Quando("eu digito o CEP {string}") do |cep|
  @redecred_page.inserircepvalido(cep)
end

Quando("clico no botao Pesquisar") do
  @redecred_page.clicarnobotaopesquisarcep
end

Entao("e exibido o conteudo da minha busca dos prestadores credenciados") do
  @redecred_page.verificarprestadorcredenciado
end
