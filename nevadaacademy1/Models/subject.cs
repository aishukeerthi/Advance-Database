using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace nevadaacademy1.Models
{
    public class subject
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string _id { get; set; }

        [BsonElement("subject_id")]
        [Required]
        public string subject_id { get; set; }

        [BsonElement("name")]
        [Required]
        public string name { get; set; }

        [BsonElement("description")]
        [Required]
        public string description { get; set; }
    }
}