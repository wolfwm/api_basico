const mongoose = require('mongoose')
const Schema = mongoose.Schema

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

mongoose.model('User', User)