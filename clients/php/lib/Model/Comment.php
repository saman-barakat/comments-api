<?php
/**
 * Comment
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * GComments
 *
 * APIs for creating and managing comments
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@comments.app
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.0.1
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * Comment Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class Comment implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'Comment';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'id' => 'string',
        'user_id' => 'string',
        'post_id' => 'string',
        'blog_id' => 'string',
        'parent_id' => 'string',
        'author_display_name' => 'string',
        'created_timestamp' => '\DateTime',
        'modified_timestamp' => '\DateTime',
        'content' => 'string',
        'status' => 'string',
        'downvote_count' => 'int',
        'upvote_count' => 'int',
        'media' => '\OpenAPI\Client\Model\Media'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'id' => null,
        'user_id' => null,
        'post_id' => null,
        'blog_id' => null,
        'parent_id' => null,
        'author_display_name' => null,
        'created_timestamp' => 'date-time',
        'modified_timestamp' => 'date-time',
        'content' => null,
        'status' => null,
        'downvote_count' => null,
        'upvote_count' => null,
        'media' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'id' => 'id',
        'user_id' => 'userId',
        'post_id' => 'postId',
        'blog_id' => 'blogId',
        'parent_id' => 'parentId',
        'author_display_name' => 'authorDisplayName',
        'created_timestamp' => 'created_timestamp',
        'modified_timestamp' => 'modified_timestamp',
        'content' => 'content',
        'status' => 'status',
        'downvote_count' => 'downvoteCount',
        'upvote_count' => 'upvoteCount',
        'media' => 'media'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'id' => 'setId',
        'user_id' => 'setUserId',
        'post_id' => 'setPostId',
        'blog_id' => 'setBlogId',
        'parent_id' => 'setParentId',
        'author_display_name' => 'setAuthorDisplayName',
        'created_timestamp' => 'setCreatedTimestamp',
        'modified_timestamp' => 'setModifiedTimestamp',
        'content' => 'setContent',
        'status' => 'setStatus',
        'downvote_count' => 'setDownvoteCount',
        'upvote_count' => 'setUpvoteCount',
        'media' => 'setMedia'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'id' => 'getId',
        'user_id' => 'getUserId',
        'post_id' => 'getPostId',
        'blog_id' => 'getBlogId',
        'parent_id' => 'getParentId',
        'author_display_name' => 'getAuthorDisplayName',
        'created_timestamp' => 'getCreatedTimestamp',
        'modified_timestamp' => 'getModifiedTimestamp',
        'content' => 'getContent',
        'status' => 'getStatus',
        'downvote_count' => 'getDownvoteCount',
        'upvote_count' => 'getUpvoteCount',
        'media' => 'getMedia'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    public const STATUS_DRAFT = 'Draft';
    public const STATUS_IN_REVIEW = 'InReview';
    public const STATUS_FLAGGED = 'Flagged';
    public const STATUS_PUBLISHED = 'Published';

    /**
     * Gets allowable values of the enum
     *
     * @return string[]
     */
    public function getStatusAllowableValues()
    {
        return [
            self::STATUS_DRAFT,
            self::STATUS_IN_REVIEW,
            self::STATUS_FLAGGED,
            self::STATUS_PUBLISHED,
        ];
    }

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['id'] = $data['id'] ?? null;
        $this->container['user_id'] = $data['user_id'] ?? null;
        $this->container['post_id'] = $data['post_id'] ?? null;
        $this->container['blog_id'] = $data['blog_id'] ?? null;
        $this->container['parent_id'] = $data['parent_id'] ?? null;
        $this->container['author_display_name'] = $data['author_display_name'] ?? null;
        $this->container['created_timestamp'] = $data['created_timestamp'] ?? null;
        $this->container['modified_timestamp'] = $data['modified_timestamp'] ?? null;
        $this->container['content'] = $data['content'] ?? null;
        $this->container['status'] = $data['status'] ?? null;
        $this->container['downvote_count'] = $data['downvote_count'] ?? null;
        $this->container['upvote_count'] = $data['upvote_count'] ?? null;
        $this->container['media'] = $data['media'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        $allowedValues = $this->getStatusAllowableValues();
        if (!is_null($this->container['status']) && !in_array($this->container['status'], $allowedValues, true)) {
            $invalidProperties[] = sprintf(
                "invalid value '%s' for 'status', must be one of '%s'",
                $this->container['status'],
                implode("', '", $allowedValues)
            );
        }

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets id
     *
     * @return string|null
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param string|null $id id
     *
     * @return self
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets user_id
     *
     * @return string|null
     */
    public function getUserId()
    {
        return $this->container['user_id'];
    }

    /**
     * Sets user_id
     *
     * @param string|null $user_id user_id
     *
     * @return self
     */
    public function setUserId($user_id)
    {
        $this->container['user_id'] = $user_id;

        return $this;
    }

    /**
     * Gets post_id
     *
     * @return string|null
     */
    public function getPostId()
    {
        return $this->container['post_id'];
    }

    /**
     * Sets post_id
     *
     * @param string|null $post_id post_id
     *
     * @return self
     */
    public function setPostId($post_id)
    {
        $this->container['post_id'] = $post_id;

        return $this;
    }

    /**
     * Gets blog_id
     *
     * @return string|null
     */
    public function getBlogId()
    {
        return $this->container['blog_id'];
    }

    /**
     * Sets blog_id
     *
     * @param string|null $blog_id blog_id
     *
     * @return self
     */
    public function setBlogId($blog_id)
    {
        $this->container['blog_id'] = $blog_id;

        return $this;
    }

    /**
     * Gets parent_id
     *
     * @return string|null
     */
    public function getParentId()
    {
        return $this->container['parent_id'];
    }

    /**
     * Sets parent_id
     *
     * @param string|null $parent_id parent_id
     *
     * @return self
     */
    public function setParentId($parent_id)
    {
        $this->container['parent_id'] = $parent_id;

        return $this;
    }

    /**
     * Gets author_display_name
     *
     * @return string|null
     */
    public function getAuthorDisplayName()
    {
        return $this->container['author_display_name'];
    }

    /**
     * Sets author_display_name
     *
     * @param string|null $author_display_name author_display_name
     *
     * @return self
     */
    public function setAuthorDisplayName($author_display_name)
    {
        $this->container['author_display_name'] = $author_display_name;

        return $this;
    }

    /**
     * Gets created_timestamp
     *
     * @return \DateTime|null
     */
    public function getCreatedTimestamp()
    {
        return $this->container['created_timestamp'];
    }

    /**
     * Sets created_timestamp
     *
     * @param \DateTime|null $created_timestamp created_timestamp
     *
     * @return self
     */
    public function setCreatedTimestamp($created_timestamp)
    {
        $this->container['created_timestamp'] = $created_timestamp;

        return $this;
    }

    /**
     * Gets modified_timestamp
     *
     * @return \DateTime|null
     */
    public function getModifiedTimestamp()
    {
        return $this->container['modified_timestamp'];
    }

    /**
     * Sets modified_timestamp
     *
     * @param \DateTime|null $modified_timestamp modified_timestamp
     *
     * @return self
     */
    public function setModifiedTimestamp($modified_timestamp)
    {
        $this->container['modified_timestamp'] = $modified_timestamp;

        return $this;
    }

    /**
     * Gets content
     *
     * @return string|null
     */
    public function getContent()
    {
        return $this->container['content'];
    }

    /**
     * Sets content
     *
     * @param string|null $content content
     *
     * @return self
     */
    public function setContent($content)
    {
        $this->container['content'] = $content;

        return $this;
    }

    /**
     * Gets status
     *
     * @return string|null
     */
    public function getStatus()
    {
        return $this->container['status'];
    }

    /**
     * Sets status
     *
     * @param string|null $status status
     *
     * @return self
     */
    public function setStatus($status)
    {
        $allowedValues = $this->getStatusAllowableValues();
        if (!is_null($status) && !in_array($status, $allowedValues, true)) {
            throw new \InvalidArgumentException(
                sprintf(
                    "Invalid value '%s' for 'status', must be one of '%s'",
                    $status,
                    implode("', '", $allowedValues)
                )
            );
        }
        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets downvote_count
     *
     * @return int|null
     */
    public function getDownvoteCount()
    {
        return $this->container['downvote_count'];
    }

    /**
     * Sets downvote_count
     *
     * @param int|null $downvote_count downvote_count
     *
     * @return self
     */
    public function setDownvoteCount($downvote_count)
    {
        $this->container['downvote_count'] = $downvote_count;

        return $this;
    }

    /**
     * Gets upvote_count
     *
     * @return int|null
     */
    public function getUpvoteCount()
    {
        return $this->container['upvote_count'];
    }

    /**
     * Sets upvote_count
     *
     * @param int|null $upvote_count upvote_count
     *
     * @return self
     */
    public function setUpvoteCount($upvote_count)
    {
        $this->container['upvote_count'] = $upvote_count;

        return $this;
    }

    /**
     * Gets media
     *
     * @return \OpenAPI\Client\Model\Media|null
     */
    public function getMedia()
    {
        return $this->container['media'];
    }

    /**
     * Sets media
     *
     * @param \OpenAPI\Client\Model\Media|null $media media
     *
     * @return self
     */
    public function setMedia($media)
    {
        $this->container['media'] = $media;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


