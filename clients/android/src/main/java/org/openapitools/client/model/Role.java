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
 */

package org.openapitools.client.model;

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class Role {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("capabilities")
  private List<String> capabilities = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getCapabilities() {
    return capabilities;
  }
  public void setCapabilities(List<String> capabilities) {
    this.capabilities = capabilities;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Role role = (Role) o;
    return (this.name == null ? role.name == null : this.name.equals(role.name)) &&
        (this.capabilities == null ? role.capabilities == null : this.capabilities.equals(role.capabilities));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.capabilities == null ? 0: this.capabilities.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Role {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  capabilities: ").append(capabilities).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}