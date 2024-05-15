const express=require('express');
const conn=require('../connection');
const router=express.Router()



// ver
router.post('/ver', (req, res) => {
    const query = "SELECT * FROM registro";
    conn.query(query, (error, results) => {
        if (error) {
            console.log('Hay un error' + error);
            res.status(400).json({ message: "Hay un error, no se puede leer" });
        } else {
            res.status(200).json({ message: "ver tabla todo correcto", data: results });
        }
    });
});
// ver mapas
router.post('/restaurantes', (req, res) => {
    const query = "SELECT * FROM mapa";
    conn.query(query, (error, results) => {
        if (error) {
            console.log('Hay un error' + error);
            res.status(400).json({ message: "Hay un error, no se puede leer" });
        } else {
            res.status(200).json({ message: "ver tabla mapa todo correcto", data: results });
        }
    });
});

// ver Eventos
router.post('/verloseventos', (req, res) => {
    const query = "SELECT * FROM calendario";
    conn.query(query, (error, results) => {
        if (error) {
            console.log('Hay un error' + error);
            res.status(400).json({ message: "Hay un error, no se puede leer" });
        } else {
            res.status(200).json({ message: "ver Eventos todo correcto", data: results });
        }
    });
});

// insertar
router.post('/insertar', (req, res) => {
    const { nombre, apellido, email, telefono, localizacion } = req.body; 
    const query = "INSERT INTO registro (nombre, apellido, email, telefono, localizacion) VALUES (?, ?, ?, ?, ?)";
    conn.query(query, [nombre, apellido, email, telefono, localizacion], (error, results) => {
        if (error) {
            res.status(400).json({ message: "Hay un error, no se pudo insertar el registro" });
        } else {
        
            res.status(200).json({ message: "Se ha insertado el registro con éxito", nuevoId: results.insertId });
        }
    });
});

// insertar eventos en calendario
router.post('/evento', (req, res) => {
    const { title, date, color } = req.body; 
    const query = "INSERT INTO calendario (title, date, color) VALUES (?, ?, ?)";
    conn.query(query, [title, date, color], (error, results) => {
        if (error) {
            res.status(400).json({ message: "Hay un error, no se pudo insertar el evento" });
        } else {
        
            res.status(200).json({ message: "Se ha insertado el evento con éxito", nuevoId: results.insertId });
        }
    });
});


//actualizar
router.post('/actualizar/:id', (req, res) => {
    const { nombre, apellido, email, telefono, localizacion } = req.body;
    const id = req.params.id;
    const query = "UPDATE registro SET nombre = ?, apellido = ?, email = ?, telefono = ?, localizacion = ? WHERE id = ?";
    conn.query(query, [nombre, apellido, email, telefono, localizacion, id], (error, results) => {
        if (error) {
            res.status(400).json({ message: "Hay un error, no se pudo actualizar el registro" });
        } else {
            res.status(200).json({ message: "Registro actualizado con éxito" });
        }
    });
});

//actualizar eventos

//actualizar
router.post('/actualizareventos/:id', (req, res) => {
    const { title, date, color } = req.body; 
    const id = req.params.id;
    const query = "UPDATE calendario SET title = ?, date = ?, color = ? WHERE id = ?";
    conn.query(query, [title, date, color, id], (error, results) => {
        if (error) {
            res.status(400).json({ message: "Hay un error, no se pudo actualizar el registro" });
        } else {
            res.status(200).json({ message: "Evento actualizado con éxito" });
        }
    });
});


// eliminar

router.post('/eliminar/:id', (req, res) => {
    const id = req.params.id; 
    const query = "DELETE FROM registro WHERE id = ?";
    conn.query(query, id, (error, results) => {
        if (error) {
            res.status(400).json({ message: "Hay un error, no se pudo eliminar el registro" });
        } else {
            res.status(200).json({ message: "Se ha eliminado el registro con éxito" });
        }
    });
});

// eliminar Eventos

router.post('/eliminareventos/:id', (req, res) => {
    const id = req.params.id; 
    const query = "DELETE FROM calendario WHERE id = ?";
    conn.query(query, id, (error, results) => {
        if (error) {
            res.status(400).json({ message: "Hay un error, no se pudo eliminar el evento" });
        } else {
            res.status(200).json({ message: "Se ha eliminado el evento con éxito" });
        }
    });
});

// Ver la id seleccionada de la tabla

router.get('/ver/:id', (req, res) => {
    const id = req.params.id;
    const query = "SELECT * FROM registro WHERE id = ?";
    conn.query(query, [id], (error, results) => {
        if (error) {
            console.log('Hay un error: ' + error);
            res.status(400).json({ message: "Hay un error, no se puede leer el registro" });
        } else {
            if (results.length > 0) {
                res.status(200).json({ message: "Registro encontrado", data: results[0] });
            } else {
                res.status(404).json({ message: "No se encontró ningún registro con esa ID" });
            }
        }
    });
});


module.exports = router;