function loadProfiles(userNames) {
   for(let i in userNames) {
      _fetchProfile('/users/' + userNames[i], function() {
         console.log('Fetched profiles for ', userNames[i]);
      });
   }
}
loadProfiles(['Angie', 'Owain', 'Karin', 'Kimmo']);

// The const keyword creates 'read-only' named constants
   // Cannot be reassigned
   // Must be assigned an initial value
   // Block scoped and not hoisted
const MAX_USER = 10;
