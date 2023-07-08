const path = require("path");

const mainControllers = {
  getIndex: (req, res) => {
    res.render("index");
  }
};

module.exports = mainControllers;
