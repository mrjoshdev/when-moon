require "rails_helper"

feature "Users can add cryptocurrency" do
  scenario "user adds new mural successfully" do
    @user = User.create!(first_name: "Bob", last_name: "Wyman",email: "bobwyman@gmail.com",password: "123456")
    sign_in @user

    visit new_cryptocurrency_path
    expect(page).to have_content "New Cryptocurrency Form"

    fill_in 'Cryptocurrency name', with: "Litecoin"
    fill_in 'Symbol', with: "LTC"
    fill_in 'Target price in usd', with: "150"

    click_button "Submit"

    expect(page).to have_content "Cryptocurrency was successfully created"
  end

  scenario "user does not provide expected information for cryptocurrency" do
    @user = User.create!(first_name: "Josh", last_name: "Wyman", email:"google1@gmail.com", password:"123456")
    sign_in @user

    visit new_mural_path
    expect(page).to have_content "New Cryptocurrency Form"

    click_button "Submit"
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Symbol can't be blank"
    expect(page).to have_content "Email can't be blank"
    expect(page).to have_content "Target price can't be blank"
  end

end
