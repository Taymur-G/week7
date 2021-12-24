const sequelize = require("../db/connection");
const { DataTypes } = require("sequelize");

const Movie = sequelize.define("Movie", {
    id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true,
        autoIncrement: true,
        primaryKey: true,
    },
    title: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    actor: {
        type: DataTypes.STRING,
        primaryKey: true,
    },
    genre: {
        type: DataTypes.STRING,
    },
});

const Actor = sequelize.define("Actor", {
    actor_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true
    },
    name: {
        type: DataTypes.STRING,
    },
    age: {
        type: DataTypes.INTEGER,
    }
});

Movie.belongsTo(Actor, { foreignKey: 'actor' });

module.exports = Movie;