using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace nevadaacademy1.Models
{
    public class teacher
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string _id { get; set; }

        [BsonElement("userid")]
        [Required]
        public string userid { get; set; }

        [BsonElement("password")]
        [Required]
        public string password { get; set; }


        [BsonElement("teacher_id")]
        [Required]
        public string teacher_id { get; set; }

        [BsonElement("teacher_name")]
        [Required]
        public string teacher_name { get; set; }

        [BsonElement("contact")]
        [Required]
        public string contact { get; set; }

    }
}