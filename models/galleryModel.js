const pool = require("../utils/bd");

const renderGallery = async() => {
    try{
        const query = "SELECT id, route FROM ?? WHERE status = 1"
        const params = [process.env.TABLA_IMAGENES]
        const images = await pool.query(query, params);
        return images;
    }catch(error){
        console.log(error);
    }
}

module.exports = {
    renderGallery
}