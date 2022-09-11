/*
 * Open APi
 *
 * This is a sample server. 
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: email@gmail.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct Role {
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    #[serde(rename = "capabilities", skip_serializing_if = "Option::is_none")]
    pub capabilities: Option<Vec<String>>,
}

impl Role {
    pub fn new() -> Role {
        Role {
            name: None,
            capabilities: None,
        }
    }
}

