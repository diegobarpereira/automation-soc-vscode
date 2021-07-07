Dado("que estou na na pagina do Blog da SOC") do
  @blog_page.open
end

Dado("tenho um campo de busca") do
  @blog_page.encontrarcampodebusca
end

Quando("eu procuro pelo texto {string}") do |texto|
  @blog_page.inserirtextoprocura(texto)
end

Quando("clico no botao pesquisar") do
  @blog_page.clicarnobotaopesquisar
end

Entao("e exibido o conteudo da minha busca") do
  @blog_page.verificartexto
end
