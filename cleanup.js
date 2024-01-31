const fs = require("fs");
const path = require("path");

const extListToDelete = ["aux", "fdb_latexmk", "fls", "log", "out", "gz"];

fs.readdir(__dirname, (err, files) => {
  if (err) throw err;

  for (const file of files) {
    if (extListToDelete.includes(path.extname(file).slice(1))) {
      fs.unlink(path.join(__dirname, file), (err) => {
        if (err) throw err;
      });
    }
  }
});
