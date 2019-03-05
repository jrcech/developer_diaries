import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";

const application = Application.start();
const context = require.context("controllers", true, /_controller\.js$/);
const turbolinks = require("turbolinks");

application.load(definitionsFromContext(context));
turbolinks.start();
