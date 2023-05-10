// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/frontend and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import "../styles/aplication.scss";
import "bootstrap/dist/js/bootstrap";
import Lightbox from "bs5-lightbox";

const images = require.context('../img', true)

Rails.start()
ActiveStorage.start()

document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('[data-toggle="lightbox"]').forEach(el => el.addEventListener('click', Lightbox.initialize));
})
