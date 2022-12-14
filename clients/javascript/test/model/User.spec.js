/**
 * Open APi
 * This is a sample server. 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: email@gmail.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OpenApi);
  }
}(this, function(expect, OpenApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OpenApi.User();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('User', function() {
    it('should create an instance of User', function() {
      // uncomment below and update the code to test User
      //var instance = new OpenApi.User();
      //expect(instance).to.be.a(OpenApi.User);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property username (base name: "username")', function() {
      // uncomment below and update the code to test the property username
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property password (base name: "password")', function() {
      // uncomment below and update the code to test the property password
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property niceName (base name: "niceName")', function() {
      // uncomment below and update the code to test the property niceName
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property avatarUrl (base name: "avatarUrl")', function() {
      // uncomment below and update the code to test the property avatarUrl
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property displayName (base name: "displayName")', function() {
      // uncomment below and update the code to test the property displayName
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property email (base name: "email")', function() {
      // uncomment below and update the code to test the property email
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property role (base name: "role")', function() {
      // uncomment below and update the code to test the property role
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property blogs (base name: "blogs")', function() {
      // uncomment below and update the code to test the property blogs
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

    it('should have the property verificationStatus (base name: "verificationStatus")', function() {
      // uncomment below and update the code to test the property verificationStatus
      //var instance = new OpenApi.User();
      //expect(instance).to.be();
    });

  });

}));
