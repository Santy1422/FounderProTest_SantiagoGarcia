const path = require('path');

module.exports = {
  purge: [
    "./**/*.php",
    "./funderprotest/**/*.php",
    "./**/*.html",
    "./funderprotest/**/*.html",
    "./**/*.js",
    "./funderprotest/**/*.js",
  ],
  theme: {
    fontFamily: {
      title: ['Dongle'],
      menuandtext: ['Dongle'],
      text: ['Inter'],
      menu: ['Dongle'],
    },
    colors: {
      primary: '#FFFFFF',
      title: '#251F6E',
      text: '#474747',
      button: "#6371F4",
      footer: "#8A94F7"
    },
    extend: {},
  },
  variants: {},
  plugins: [],
};


