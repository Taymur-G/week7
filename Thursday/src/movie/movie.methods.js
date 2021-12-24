const Movie = require("./movie.models");

exports.addMovie = async (movieObj) => {
    try {
        await Movie.sync();
        await Movie.create(movieObj);
        return `${movieObj.title} Movie created into our DB!`;
    } catch (err) {
        console.log(err);
    }
};

exports.listMovies = async () => {
    try {
        console.log(await Movie.findAll({}));
    } catch (err) {
        console.log(err);
    }
};

exports.updateMovie = async (movieObj) => {
    try {
        await Movie.update(
            { actor: movieObj.actor, genre: movieObj.genre },
            { where: { title: movieObj.title } }
        );
        console.log("Worked!");
    } catch (err) {
        console.log(err);
    }
}

exports.deleteMovie = async (movieObj) => {
    try {
        let n = await Movie.destroy(
            { where: { title: movieObj.title } }
        )
        console.log(`Deleted: ${movieObj.title} x${n}`);
    } catch (err) {
        console.log(err);
    }
}

