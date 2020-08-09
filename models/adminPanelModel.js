const pool = require("../utils/bd"); // importamos la referencia de la conexion

const create = async (obj) => {
    // SET -> Se usa cuando se envia un objeto como parametro (campos) values()
    const query = "INSERT INTO ?? SET ?";
    // obj debe tener como propiedades del objeto los campos de la tabla
    const params = [process.env.TABLA_IMAGENES, obj];
    const rows = await pool.query(query, params);
    return rows.insertId; // insertId -> id del ultimo elemento creado
  };

const renderAdminGallery = async() => {
    try{
        const query = "SELECT id, route, status FROM ??"
        const params = [process.env.TABLA_IMAGENES]
        const images = await pool.query(query, params);
        return images;
    }catch(error){
        console.log(error);
    }
}

const deleteImage = async (id, obj) => {
    const query = "UPDATE ?? SET imagenes.status = ? WHERE id = ?";
    const params = [process.env.TABLA_IMAGENES, obj, id]
    const rows = await pool.query(query, params);
    return rows;
};

  module.exports = {
      create,
      deleteImage,
      renderAdminGallery,
  }