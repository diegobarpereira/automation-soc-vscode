Before do
  @blog_page = BlogPage.new
  @home_page = HomePage.new
  @socnet_page = SocNetPage.new
  @redecred_page = RedeCredPage.new
  page.current_window.resize_to(1440, 900)
end

After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end
