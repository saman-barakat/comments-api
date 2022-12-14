/*
 * GComments
 *
 * APIs for creating and managing comments 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@comments.app
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct Blog {
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<String>,
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    #[serde(rename = "url", skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
    #[serde(rename = "authToken", skip_serializing_if = "Option::is_none")]
    pub auth_token: Option<String>,
    #[serde(rename = "commentStatus", skip_serializing_if = "Option::is_none")]
    pub comment_status: Option<CommentStatus>,
}

impl Blog {
    pub fn new() -> Blog {
        Blog {
            id: None,
            name: None,
            url: None,
            auth_token: None,
            comment_status: None,
        }
    }
}

/// 
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum CommentStatus {
    #[serde(rename = "Disabled")]
    Disabled,
    #[serde(rename = "RequireReview")]
    RequireReview,
    #[serde(rename = "AutomateReview")]
    AutomateReview,
}

impl Default for CommentStatus {
    fn default() -> CommentStatus {
        Self::Disabled
    }
}

