const pool = require("../utils/bd");

const getImage = async(id) => {
    try{
    const query = "SELECT route, id FROM ?? WHERE id = ?"
    const params = [process.env.TABLA_IMAGENES,id]
    const imagen = await pool.query(query, params);
    return imagen[0];
    }
    catch (error) {
        console.log(error);
    }
}

const getImageComment = async(id) => {
    try{
    const query = "SELECT comentarios.comment_text, comentarios.of_user, comentarios.ts_create, users.name, comentarios.of_image FROM comentarios JOIN imagenes ON comentarios.of_image = imagenes.id JOIN users ON comentarios.of_user = users.id WHERE comentarios.of_image = ? "
    const params = [id];
    const row = await pool.query(query, params);
    return row;
    }
    catch(error) {
        console.log(error);
    }
}

const createComment = async(obj) => {
    try{
        const query = "INSERT INTO ?? SET ?"
        const params = [process.env.COMMENTS_TABLE,obj];
        const row = await pool.query(query, params);
        return row;
    }
    catch(error){
        console.log(error);
    }
}

module.exports = {
    getImage,
    getImageComment,
    createComment,
}
