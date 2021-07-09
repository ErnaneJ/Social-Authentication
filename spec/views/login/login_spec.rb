feature "Logging in" do
  background do
    User.create(email: 'example@example.com', password: '321s3nhas3cre3ta')
  end

  scenario "logging in as an unauthenticated user" do
    visit '/users/sign_in'
    
    within(".container") do
      fill_in 'Email', with: 'example@exampleeee.com'
      fill_in 'Password', with: '123456'
    end
    
    click_button 'Log in'
    expect(page).to have_content "Log in"
  end

  scenario "as an authenticated user" do
    visit '/users/sign_in'
    
    within(".container") do
      fill_in 'Email', with: 'example@example.com'
      fill_in 'Password', with: '321s3nhas3cre3ta'
    end
    
    click_button 'Log in'
    expect(page).to have_content "Hi,"
  end
end