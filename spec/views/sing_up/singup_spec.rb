feature "Sign up - " do
  scenario "creating user" do
    visit '/users/sign_up'
    
    within(".container") do
      fill_in 'Email', with: 'example@example.com'
      fill_in 'Password', with: '123456'
      fill_in 'Password confirmation', with: '123456'
    end
    
    click_button 'Sign up'
    expect(page).to have_content "Hi,\nexample@example.com"
  end
end