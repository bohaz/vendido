<a name="readme-top"></a>

  <h3><b>Vendido</b></h3>

</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [💸 Vendido ](#-Vendido-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Database](#Database)
    - [Usage](#usage)
    <!-- - [Testing](#Testing) -->
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ (OPTIONAL) ](#-faq-optional-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 💸 Vendido <a name="about-project"></a>

**Vendido** This is a full-stack application developed using Ruby on Rails. It offers users a platform where they can buy or sell items effortlessly through an intuitive and user-friendly interface.

![alt text](<Captura de pantalla (231).png>)  ![alt text](<Captura de pantalla (232).png>)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Technologies</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
    <li><a href="#">Postgresql</a></li>
  </ul>
</details>
<details>
<summary>Linters</summary>
  <ul>
    <li>Rubocop</li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- [x] **Ruby on Rails**
- [x] **View componets**
- [x] **Stimulus Js**
- [x] **Postgres Database**
- [x] **Git Version Control**
- [x] **Redis**
- [x] **Sidekiq**
- [x] **Interactive User Interface**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

Before you begin, make sure you have the following prerequisites installed on your system:

- Ruby: You need Ruby to run the Ruby on Rails application.
- Bundler: Bundler is used to manage gem dependencies in your Ruby project.

### Setup

Clone this repository to your desired folder:

sh <br>
cd my-folder <br>
git clone https://github.com/bohaz/vendido.git

### Install

Install this project with the steps below:

- After cloning, type `cd vendido` to access the project on the terminal.
- Run `bundle install` to install all the required dependancies.
- For developmente environment:
  - Create Database with `rails db:create RAILS_ENV=development`
  - Migrate Database with `rails db:migrate RAILS_ENV=development`

- For testing porpouses:
  - Create Database with `rails  db:create RAILS_ENV=test`
  - Migrate Database with `rails db:migrate RAILS_ENV=test`

### Database
Create database using pgAdmin or terminal command line.

Run the following command to create database:
``rails db:create``

Then migrate the database by executing the following commands:
``rails db:migrate``

### Usage

To run the project, execute the following command:
- Run `rails s` to start a development server (it will run in port 3000)
- Now, you are ready to use the App!


## 👥 Author <a name="authors"></a>

👤 **Ricardo Martínez**

- GitHub: [@bohaz](https://github.com/bohaz)
- Twitter: [@Ricardo29115571](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Deployment**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/bohaz/vendido/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project please feel free to send me corrections for make it better I would feel glad to read your comments.
And think If you enjoy gift me a star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- GitHub Docs for providing a wealth of information on Git and GitHub.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

- **Can I use with a templeate your project?**

  - Of course I would feel honored

- **Your project is free license?**

  - Yeah, you can use it completely

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is licensed under the MIT License - you can click here to have more details [MIT](./LICENSE).

<p align="right">(<a href="#readme-top">back to top</a>)</p>