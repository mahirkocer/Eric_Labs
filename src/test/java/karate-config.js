function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    baseUrl : 'http://www.omdbapi.com',
    myKey :'8565127a'
  }

  return config;
}