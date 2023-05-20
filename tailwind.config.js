/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./pages/**/*.js",
    "./components/**/*.js"
  ],
  theme: {
    colors: {
      "bg-color": "#f7fafc",
      "main": "#2e5f83",
      "secondary": "#a7b1bf",
    },
    extend: {
      boxShadow: {
        "bottom-border": "0px 14px 0px -12px #a7b1bf",
        "bottom-border-md": "0px 26px 0px -24px #a7b1bf"
      }
    },
  },
  plugins: [],
}

