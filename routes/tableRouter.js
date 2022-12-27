const Router = require('express')
const { getTable } = require('../controllers/authController.js')
const authMiddleware = require('../middlewares/authMiddleware.js')

const router = new Router()

router.get('/table', getTable)

module.exports = router
