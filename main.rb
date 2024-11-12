# frozen_string_literal: true

require 'lennarb'

APP =
  Lennarb.new do |route|
    route.get '/' do |_req, res|
      html = <<~HTML
        <!DOCTYPE html>
          <html lang="en">
          <head>
              <meta charset="UTF-8">
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <title>Lennarb - Modular Web Applications</title>
              <style>
                  /* Modern CSS Reset */
                  * {
                      margin: 0;
                      padding: 0;
                      box-sizing: border-box;
                  }

                  /* Variables */
                  :root {
                      --primary-color: #ff6b6b;
                      --background-color: #fff5e6;
                      --text-color: #2d3436;
                      --accent-color: #ffd8a8;
                      --spacing-unit: 2rem;
                  }

                  body {
                      font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
                      background-color: var(--background-color);
                      color: var(--text-color);
                      line-height: 1.6;
                  }

                  /* Navigation */
                  nav {
                      padding: var(--spacing-unit);
                      display: flex;
                      justify-content: space-between;
                      align-items: center;
                      max-width: 1200px;
                      margin: 0 auto;
                  }

                  .logo {
                      font-size: 1.5rem;
                      font-weight: 600;
                      color: var(--primary-color);
                      border: 2px solid var(--primary-color);
                      padding: 0.5rem 1rem;
                      border-radius: 6px;
                      text-decoration: none;
                      transition: all 0.3s ease;
                  }

                  .logo:hover {
                      background-color: var(--primary-color);
                      color: white;
                  }

                  /* Hero Section */
                  .hero {
                      min-height: 80vh;
                      display: flex;
                      align-items: center;
                      justify-content: center;
                      text-align: center;
                      padding: var(--spacing-unit);
                  }

                  .hero-content {
                      max-width: 800px;
                  }

                  h1 {
                      font-size: 2.5rem;
                      margin-bottom: 1rem;
                      color: var(--text-color);
                  }

                  .hero-description {
                      font-size: 1.25rem;
                      margin-bottom: 2rem;
                      color: var(--text-color);
                      opacity: 0.9;
                  }

                  /* Features Section */
                  .features {
                      padding: var(--spacing-unit);
                      background-color: white;
                  }

                  .features-grid {
                      display: grid;
                      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                      gap: 2rem;
                      max-width: 1200px;
                      margin: 0 auto;
                      padding: var(--spacing-unit);
                  }

                  .feature-card {
                      padding: 2rem;
                      background-color: var(--background-color);
                      border-radius: 12px;
                      transition: transform 0.3s ease;
                  }

                  .feature-card:hover {
                      transform: translateY(-5px);
                  }

                  .feature-card h3 {
                      margin-bottom: 1rem;
                      color: var(--primary-color);
                  }

                  /* CTA Section */
                  .cta {
                      padding: var(--spacing-unit);
                      text-align: center;
                      background-color: var(--accent-color);
                  }

                  .button {
                      display: inline-block;
                      padding: 1rem 2rem;
                      background-color: var(--primary-color);
                      color: white;
                      text-decoration: none;
                      border-radius: 6px;
                      transition: all 0.3s ease;
                      margin: 1rem;
                  }

                  .button:hover {
                      transform: translateY(-2px);
                      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                  }

                  .button.secondary {
                      background-color: transparent;
                      border: 2px solid var(--primary-color);
                      color: var(--primary-color);
                  }

                  /* Responsive Design */
                  @media (max-width: 768px) {
                      h1 {
                          font-size: 2rem;
                      }

                      .hero-description {
                          font-size: 1.1rem;
                      }

                      .features-grid {
                          grid-template-columns: 1fr;
                      }
                  }
              </style>
          </head>
          <body>
              <nav>
                  <a href="https://aristotelesbr.github.io/lennarb/index.html" class="logo">Lennarb</a>
              </nav>

              <section class="hero">
                  <div class="hero-content">
                      <h1>Build Modular Web Applications with Ruby</h1>
                      <p class="hero-description">
                          Lennarb is a lightweight, fast, and easy-to-use framework for building modular web applications and APIs with Ruby. Focus on what matters most - your application's logic.
                      </p>
                      <div class="cta-buttons">
                          <a href="https://aristotelesbr.github.io/lennarb/guides/getting-started/index" class="button">Get Started</a>
                          <a href="https://aristotelesbr.github.io/lennarb/guides/index.html" class="button secondary">Documentation</a>
                      </div>
                  </div>
              </section>

              <section class="features">
                  <div class="features-grid">
                      <div class="feature-card">
                          <h3>Lightweight</h3>
                          <p>Minimal overhead with maximum performance. Only include what you need.</p>
                      </div>
                      <div class="feature-card">
                          <h3>Modular</h3>
                          <p>Build your application with independent, reusable modules.</p>
                      </div>
                      <div class="feature-card">
                          <h3>Fast</h3>
                          <p>Optimized for speed and efficiency right out of the box.</p>
                      </div>
                  </div>
              </section>

              <section class="cta">
                  <h2>Contribute to Lennarb on GitHub</h2>
                  <p>Join developers worldwide who are enhancing Lennarb by contributing to our open-source project on GitHub.</p>
                  <a href="https://github.com/aristotelesbr/lennarb" class="button">Visit Our GitHub</a>
              </section>
          </body>
          </html>
      HTML

      res.status = 200
      res.html html
    end

    route.get '/up' do |_req, res|
      html = <<~HTML
        <html>
        <body style="background-color: green;">
        <h1>OK</h1>
        </body>
        </html>
      HTML

      res.status = 200
      res.html html
    end
  end
