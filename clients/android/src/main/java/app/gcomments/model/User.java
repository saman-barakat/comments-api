/**
 * GComments
 * APIs for creating and managing comments 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@comments.app
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package app.gcomments.model;

import app.gcomments.model.Blog;
import app.gcomments.model.Role;
import app.gcomments.model.VerificationStatus;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

@ApiModel(description = "")
public class User implements Serializable {
  
  @SerializedName("id")
  private String id = null;
  @SerializedName("username")
  private String username = null;
  @SerializedName("password")
  private String password = null;
  @SerializedName("niceName")
  private String niceName = null;
  @SerializedName("avatarUrl")
  private String avatarUrl = null;
  @SerializedName("displayName")
  private String displayName = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("role")
  private Role role = null;
  @SerializedName("blogs")
  private List<Blog> blogs = null;
  @SerializedName("verificationStatus")
  private VerificationStatus verificationStatus = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getNiceName() {
    return niceName;
  }
  public void setNiceName(String niceName) {
    this.niceName = niceName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getAvatarUrl() {
    return avatarUrl;
  }
  public void setAvatarUrl(String avatarUrl) {
    this.avatarUrl = avatarUrl;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Role getRole() {
    return role;
  }
  public void setRole(Role role) {
    this.role = role;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Blog> getBlogs() {
    return blogs;
  }
  public void setBlogs(List<Blog> blogs) {
    this.blogs = blogs;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public VerificationStatus getVerificationStatus() {
    return verificationStatus;
  }
  public void setVerificationStatus(VerificationStatus verificationStatus) {
    this.verificationStatus = verificationStatus;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    User user = (User) o;
    return (this.id == null ? user.id == null : this.id.equals(user.id)) &&
        (this.username == null ? user.username == null : this.username.equals(user.username)) &&
        (this.password == null ? user.password == null : this.password.equals(user.password)) &&
        (this.niceName == null ? user.niceName == null : this.niceName.equals(user.niceName)) &&
        (this.avatarUrl == null ? user.avatarUrl == null : this.avatarUrl.equals(user.avatarUrl)) &&
        (this.displayName == null ? user.displayName == null : this.displayName.equals(user.displayName)) &&
        (this.email == null ? user.email == null : this.email.equals(user.email)) &&
        (this.role == null ? user.role == null : this.role.equals(user.role)) &&
        (this.blogs == null ? user.blogs == null : this.blogs.equals(user.blogs)) &&
        (this.verificationStatus == null ? user.verificationStatus == null : this.verificationStatus.equals(user.verificationStatus));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.username == null ? 0: this.username.hashCode());
    result = 31 * result + (this.password == null ? 0: this.password.hashCode());
    result = 31 * result + (this.niceName == null ? 0: this.niceName.hashCode());
    result = 31 * result + (this.avatarUrl == null ? 0: this.avatarUrl.hashCode());
    result = 31 * result + (this.displayName == null ? 0: this.displayName.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.role == null ? 0: this.role.hashCode());
    result = 31 * result + (this.blogs == null ? 0: this.blogs.hashCode());
    result = 31 * result + (this.verificationStatus == null ? 0: this.verificationStatus.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class User {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  username: ").append(username).append("\n");
    sb.append("  password: ").append(password).append("\n");
    sb.append("  niceName: ").append(niceName).append("\n");
    sb.append("  avatarUrl: ").append(avatarUrl).append("\n");
    sb.append("  displayName: ").append(displayName).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  role: ").append(role).append("\n");
    sb.append("  blogs: ").append(blogs).append("\n");
    sb.append("  verificationStatus: ").append(verificationStatus).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
