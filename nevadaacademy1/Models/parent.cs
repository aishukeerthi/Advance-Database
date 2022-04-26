using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace nevadaacademy1.Models
{
    public class parent
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string _id { get; set; }

        [BsonElement("parent_id")]
        [Required]
        public string parent_id { get; set; }

        [BsonElement("first_name")]
        [Required]
        public string first_name { get; set; }

        [BsonElement("middle_name")]
        [Required]
        public string middle_name { get; set; }

        [BsonElement("last_name")]
        [Required]
        public string last_name { get; set; }

        [BsonElement("email")]
        [Required]
        public string email { get; set; }

        [BsonElement("password")]
        [Required]
        public string password { get; set; }

        [BsonElement("dob")]
        [Required]
        public string dob { get; set; }

        [BsonElement("kids")]
        [BsonRepresentation(BsonType.ObjectId)]
        [Required]
        public List<string> kids { get; set; }
    }
}