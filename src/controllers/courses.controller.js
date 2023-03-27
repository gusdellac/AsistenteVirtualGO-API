import {pool} from "../db.js";

export const getCourses = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM courses');
        res.json(rows);
    } catch (error) {
        return res.status(500).json({
            message: "Something goes wrong"
        });
    }
};

export const getCourse = async (req, res) => {
    try {
        const id = req.params.id;
        const [rows] = await pool.query('SELECT * FROM courses WHERE id = ?', [id]);
        if(rows.length <= 0) return res.status(404).json({ message : "Course not found"});
        res.json(rows[0]);
    } catch (error) {
        return res.status(500).json({
            message : "Something goes wrong"
        });
    }
}



