
const rp = require('request-promise');
/* rp('https://api.nal.usda.gov/fdc/v1/search?api_key=UagRUkxYwSoqkndlUZxctIfknr2Jolosk7p9O46g',{
  method:'POST',
  headers:{
    'content-type': 'application/json'
  },
  body:JSON.stringify({
    generalSearchInput:'chips'
  })
})
  .then(res=>{
    console.log(res);
  }); */


rp('https://api.nal.usda.gov/fdc/v1/503579?api_key=UagRUkxYwSoqkndlUZxctIfknr2Jolosk7p9O46g',{
  method:'GET',
  headers:{
    'content-type': 'application/json'
  }
})
  .then(res=>{
    console.log(res);
  });