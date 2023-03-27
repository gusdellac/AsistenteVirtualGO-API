import { Router } from "express";
import { getCourses , getCourse } from "../controllers/courses.controller.js";

const router = Router();

router.get("/courses", getCourses);
router.get("/courses/:id", getCourse);

export default router;