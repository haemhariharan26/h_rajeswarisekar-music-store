export default {
  methods: {
    getAllAlbums() {
      return fetch("http://localhost:8000/album")
        .then((res) => res.json())
        .then((output) => {
          return output;
        })
        .catch((err) => {
          return [];
        });
    },
    getAlbumInfoById(albumId) {
      return fetch(`http://localhost:8000/album/${albumId}`)
        .then((res) => res.json())
        .then((output) => {
          console.log(output, "op", albumId);
          return output;
        })
        .catch((err) => {
          return [];
        });
    },
  },
};
