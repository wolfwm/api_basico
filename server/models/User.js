const mongoose = require('mongoose')
const md5 = require('md5')
const Schema = mongoose.Schema
const autopopulate = require('mongoose-autopopulate')

const User = new Schema({
    nome: {
        type: String,
        required: true
    },
    sobrenome: {
        type: String,
        required: true
    }
}, {
    timestamps: true
})

User.plugin(autopopulate)
mongoose.model('User', User)