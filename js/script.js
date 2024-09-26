//sidebar toogle and loader
document.addEventListener("DOMContentLoaded", function () {
  const loader = document.querySelector(".loader-container");
  const menuToggle = document.querySelector(".menu-toggle");
  const sidebar = document.querySelector(".sidebar");
  const closeSidebar = document.querySelector(".close-sidebar");

  menuToggle.addEventListener("click", function () {
    sidebar.classList.add("show-sidebar");
  });

  closeSidebar.addEventListener("click", function () {
    sidebar.classList.remove("show-sidebar");
  });
  apiCalling();
});

//api calling js start
function apiCalling() {
  const apiKey = "b3793dc2c19a42c688fdf80e752907f6";
  const countryNm = document.getElementById("country-select").value; // Default country
  console.log(countryNm);
  const newsContainer = document.getElementById("news-container");
  const footer = document.querySelector(".footer");

  // Function to fetch and display news articles
  function fetchNews(category) {
    const apiUrl = `https://newsapi.org/v2/top-headlines?country=${countryNm}&category=${category}&apiKey=${apiKey}`;

    fetch(apiUrl)
      .then((response) => response.json())
      .then((data) => {
        if (data.articles && data.articles.length) {
          const filteredArticles = data.articles.filter(
            (article) => article.title !== "[Removed]"
          );
          if (filteredArticles.length) {
            newsContainer.innerHTML = filteredArticles
              .map(
                (article) => `
                         <div id="news-art" class="news-art news-article">
                          <div class="news-article-img"><img src="${
                            article.urlToImage || "image/imgnotavailable.png"
                          }" error="" alt="${
                  article.title
                }" style="max-width: 100%;">
                           </div><div class="news-article-content"> <h3>${
                             article.title
                           }</h3>
                            <p>${article.description}</p>
                            <p><em>Source: ${article.source.name}</em></p>
                            <a href="${
                              article.url
                            }" target="_blank" class="read-more">Read More</a></div>
                        </div>
                    `
              )
              .join("");
          }
        } else {
        
            fetch("./json/articles.json")
              .then((response) => response.json())
              .then((data) => {
                newsContainer.innerHTML = ""; // Clear any existing content

                data.forEach((article) => {
                  // Create the HTML structure for each article
                  const articleHTML = `
                    <div id="news-art" class="news-art news-article">
                        <div class="news-article-img">
                            <img src='image/${article.img}' alt="${article.title}" style="max-width: 100%;">
                        </div>
                        <div class="news-article-content">
                            <h3>${article.title}</h3>
                            <p>${article.description}</p>
                            <p><em>Source: ${article.source}</em></p>
                            <a href="${article.page_link}" target="_blank" class="read-more">Read More</a>
                        </div>
                    </div>
                `;

                  // Append the article HTML to the container
                  newsContainer.innerHTML += articleHTML;
                });
              })
              .catch((error) =>
                console.error("Error fetching articles:", error)
              );
        
        }
      })
      .catch((error) => {
        footer.classList.remove("main-footer");
        footer.classList.add("small-footer");
        console.error("Error fetching the news:", error);
        setTimeout(function () {
          newsContainer.innerHTML = "<p>Failed to load news.</p>";
        }, 3000);
      });
  }

  // Fetch news for the default category (Home) initially
  fetchNews("general");

  // Handle category link clicks
  document.querySelectorAll(".nav-links a,.sidebar-links a").forEach((link) => {
    link.addEventListener("click", function (event) {
      event.preventDefault();

      const headlinecon = document.getElementById("headline");
      const category = this.getAttribute("data-category");
      headlinecon.innerHTML = `Top ${
        category.charAt(0).toUpperCase() + category.slice(1)
      } Headlines`;
      if (category == "about") {
        console.log("hello");
        window.location.href = "about.html";
      }
      fetchNews(category);
      window.location.hash = this.getAttribute("href");
    });
  });
}
//api js end

// Handle category link clicks
document.querySelectorAll(".nav-links a,.sidebar-links a").forEach((link) => {
  link.addEventListener("click", function (event) {
    event.preventDefault();
    const category = this.getAttribute("data-category");
    if (category == "about") {
      console.log("hello");
      window.location.href = "about.html";
    } else if (category == "general") {
      console.log("general");
      window.location.href = "index.html";
    }
  });
});

//dark mode js
const toggleButton = document.getElementById("toggleTheme");
const body = document.body;
const themeIcon = document.getElementById("themeIcon");
const navCon = document.getElementById("nav-container");
const newsArticles = document.getElementById("news-container"); // Selecting articles with class 'news-art'

// Check if dark mode was enabled previously
if (localStorage.getItem("darkMode") === "enabled") {
  body.classList.add("dark-mode");
  navCon.classList.add("dark-mode-nav");
  newsArticles.classList.add("dark-mode-news-container");
  themeIcon.classList.replace("bi-brightness-high", "bi-brightness-low"); // Set dark mode icon
}

toggleButton.addEventListener("click", () => {
  body.classList.toggle("dark-mode");
  navCon.classList.toggle("dark-mode-nav");
  newsArticles.classList.toggle("dark-mode-news-container");

  if (body.classList.contains("dark-mode")) {
    localStorage.setItem("darkMode", "enabled");
    themeIcon.classList.replace("bi-brightness-high", "bi-brightness-low"); // Switch to dark mode icon
  } else {
    localStorage.removeItem("darkMode");
    themeIcon.classList.replace("bi-brightness-low", "bi-brightness-high"); // Switch to light mode icon
  }
});

//Generate  Otp
function generateRandomNo() {
  var length = 6;
  var result = "";
  var characters = "0123456789";
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    var randomLength = Math.floor(Math.random() * charactersLength);
    var randomChar = characters.charAt(randomLength);
    result += randomChar;
  }
  document.getElementById("randomID").innerText = result;
}
