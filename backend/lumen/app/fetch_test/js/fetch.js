fetch('http://localhost:8888/lumen/public/books')
  .then(response => {
    if (!response.ok) {
        throw new Error('Network response error');
    }
    return response.json(); // Parse JSON response
  })
  .then(data => {
    console.log(data); // Handle the data from the response
  })
  .catch(error => {
    console.error('There was a problem with your fetch operation:', error);
  });