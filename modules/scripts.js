const { createApp, ref, onMounted, computed } = Vue;
import albums from "./album";
import { startLoader } from "./animations";

createApp({
  setup() {
    const data = ref([]);
    const loading = ref(true);
    const errorMessage = ref(null);
    const selectedAlbum = ref(null);
    const albumDetails = ref(null);
    const albumDetailsPage = ref(false);
    const itemsPerPage = 4;
    let currentPage = ref(1);

    function getApiResponse() {
      loading.value = true;
      albums.methods
        .getAllAlbums()
        .then((res) => {
          loading.value = false;
          if(res.length==0){
            errorMessage.value="Api failure,please check backend"
          }
          data.value = res;
        })
        .catch((err) => {
          loading.value = false;
          console.log(err, "error");
          errorMessage.value="Api failure,please check backend"
        });
    }

    function getInfoById(bookId) {
      loading.value = true;
      albums.methods
        .getAlbumInfoById(bookId)
        .then((res) => {
          albumDetails.value = res;
          loading.value = false;
          if(res.length==0){
            errorMessage.value="Artist not found"
            selectedAlbum.value = null
            
          }
        })
        .catch((err) => {
          loading.value = false;
          errorMessage.value = "Artist not found";
        });
    }

    openDetailsPage = (albumId) => {
      selectedAlbum.value = albumId;
      getInfoById(albumId);
      loading.value = false;
    };

    closeDetailsPage = () => {
      selectedAlbum.value = null;
      albumDetails.value = null;
      albumDetailsPage.value = false;
      errorMessage.value = null;
    };

    onMounted(() => {
      getApiResponse(), startLoader();
    });

    const totalPages = computed(() =>
      Math.ceil(data.value.length / itemsPerPage)
    );

    const paginatedData = computed(() => {
      const startIndex = (currentPage.value - 1) * itemsPerPage;
      const endIndex = currentPage.value * itemsPerPage;
      return data.value.slice(startIndex, endIndex);
    });

    const nextPage = () => {
      loading.value = true;
      if (currentPage.value < totalPages.value) {
        currentPage.value++;
      }
      loading.value = false;
    };

    const previousPage = () => {
      if (currentPage.value > 1) {
        currentPage.value--;
      }
    };
    // adding pagination ends here

    return {
      data,
      loading,
      errorMessage,
      openDetailsPage,
      albumDetailsPage,
      albumDetails,
      closeDetailsPage,
      selectedAlbum,

      nextPage,
      previousPage,
      currentPage,
      totalPages,
      paginatedData,
    };
  },
}).mount("#app");
