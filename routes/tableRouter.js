const Router = require('express')
const { getTable } = require('../controllers/authController.js')
const authMiddleware = require('../middlewares/authMiddleware.js')

const router = new Router()

router.get('/table', authMiddleware, getTable)

module.exports = router
