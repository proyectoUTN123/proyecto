const pool = require("../utils/bd");

getCourses = async () => {
    try {
      const query =
        "SELECT id, name, short_desc, long_desc, price, status FROM ?? order by id desc";
      const params = [process.env.COURSES_TABLE];
      const rows = await pool.query(query, params);
      return rows;
    } catch (error) {
      console.log(error);
    }
  };

  

  module.exports = {
      getCourses
  }
