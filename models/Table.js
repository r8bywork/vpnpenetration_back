const { Schema, model } = require('mongoose')

const Table = new Schema({
	lead: { type: String },
	name: { type: String },
	surname: { type: String },
	date: { type: String },
	address: { type: String },
})

module.exports = model('Table', Table)
