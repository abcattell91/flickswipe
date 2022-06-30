// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import {matchedFilter} from '../includes/matched_filter'

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"
import '../stylesheets/application';


require('../includes/slides')
require('../includes/modal')
require('../includes/matched_filter')
