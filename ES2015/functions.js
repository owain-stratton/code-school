// Default parameters assigned in the parameter of the function
function loadProfiles(userNames = []) {
   let namesLength = userNames.length;
   console.log(namesLength);
}

// Options object allows user-defined settings to be passed to a function in the form of properties on an object
setPageThread('New version out soon!', {
   popular: true,
   expires: 10000,
   activeClass: 'is-page-thread'
});

// OLD
// function setPageThread(name, options = {}) {
//    let popular = options.popular;
//    let expires = options.expires;
//    let activeClass = options.activeClass;
//    // ...
// }

// NEW ES2015 SYNTAX
function setPageThread(name, { popular, expires, activeClass } = {}) {
   console.log('Name: ', name);
   console.log('Popular: ', popular);
   console.log('Expires: ', expires);
   console.log('Class: ', activeClass);
}

// Fucntions with a variable list of arguments
   // The new 'rest parameter' syntax allows us to represent an indefinite number of arguments as an array
   // Used in function definitions
function displayTags(...tags) {
   for(let i in tags) {
      let tag = tags[i];
      console.log(tag);
   }
}
// Spread operator used for breaking an array into single parameters and called on function invocation
let sentence = ['hello', 'beeds', 'you', 'are', 'sweet'];
displayTags(...sentence);
