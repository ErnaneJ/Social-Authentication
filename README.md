<h1 align="center">
  <strong>Social Authentication</strong>
</h1>

<div align="center">
  <a href="#-Technologies">Technologies</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-Project">Project</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-Use">Use</a>&nbsp;&nbsp;&nbsp;
</div>
<br/>

<img style="border-radius:5px; box-shadow: 4px 4px 18px -5px rgba(0,0,0,.5);" width="100%" src="./.github/image%201.png">

<br>

## 🚀 Technologies

This application was developed with the following technologies:

- Ruby
  
Gems:
  - Rails
  - devise
  - omniauth
  - omniauth-github
  - omniauth-facebook
  - omniauth-google-oauth2
  - omniauth-rails_csrf_protection

## 💻 Project
<p>
Application developed in Ruby on Rails as a template to perform user authentication through their social networks. In this system, the following networks were used as a form of authentication in addition, of course, to the creation of a default user with email and password.
</p>

* [x] Authentication with Google
* [x] Authentication with Github
* [x] Authentication with Facebook
  
## 💡 Use

- Clone the repository:

```bash
$ git clone https://github.com/ErnaneJ/Social-Authentication.git
```

- Install the dependencies

```bash
$ bundle install
```
- Generate your application on the platform.
  - <a href="https://console.cloud.google.com/apis/dashboard?folder=&hl=es&organizationId=&project=emerald-eon-261615">Google</a>
  - <a href="https://github.com/settings/developers">Github</a>
  - <a href="https://developers.facebook.com/?locale=pt_BR">Facebook</a>
  
- Take the Client ID and Client Secret and put them in an .ENV file. <br>_See the <a href="./.env.development">example</a>._

- Start a server on localhost

```bash
$ Rails s
```
_Note: The facebook documentation does not allow the execution of applications linked to facebook without ssl certificate. To enable ssl on localhost generate an ssl key and run rails with it._

```bash
$ openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 -keyout localhost.key -out localhost.crt

$ pwd 
=> copy path

$ rails s -b 'ssl://localhost:3000?key=/PATH/localhost.key&cert=/PATH/localhost.crt'
```
_Read more about it <a href="https://madeintandem.com/blog/rails-local-development-https-using-self-signed-ssl-certificate/">here</a>._

## 📚 Documentation:
- <a href="https://cloud.google.com/appengine/docs/standard/ruby/authenticating-users?hl=pt-br">Google</a>
- <a href="https://docs.github.com/pt/github/authenticating-to-github/keeping-your-account-and-data-secure/about-authentication-to-github">Github</a>
- <a href="https://developers.facebook.com/">Facebook</a>

---
<div align="center">
Developed with ❤ by <a target="_blank" href="https://ernanej.github.io/my-linktree/">Ernane Ferreira</a>. 👋🏻<br/>
<small>Project carried out in support of the company  <a target="_blank" href="https://www.seguroviagem.srv.br/">Real Seguro Viagem</a> in its internship process. <small>
</div>

