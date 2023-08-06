const path = require("path");

const mainControllers = {
  getIndex: (req, res) => {
    res.render("index", { title : 'Fénix'});
  }
};

module.exports = mainControllers;
