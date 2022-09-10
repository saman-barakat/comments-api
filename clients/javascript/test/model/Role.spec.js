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
    instance = new OpenApi.Role();
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

  describe('Role', function() {
    it('should create an instance of Role', function() {
      // uncomment below and update the code to test Role
      //var instance = new OpenApi.Role();
      //expect(instance).to.be.a(OpenApi.Role);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new OpenApi.Role();
      //expect(instance).to.be();
    });

    it('should have the property capabilities (base name: "capabilities")', function() {
      // uncomment below and update the code to test the property capabilities
      //var instance = new OpenApi.Role();
      //expect(instance).to.be();
    });

  });

}));
