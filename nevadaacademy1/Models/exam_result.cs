using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace nevadaacademy1.Models
{
    public class exam_result
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string _id { get; set; }

        [BsonElement("exam_id")]
        [Required]
        public string exam_id { get; set; }

        [BsonElement("subject_id")]
        [Required]
        public string subject_id { get; set; }

        [BsonElement("grade")]
        [Required]
        public string grade { get; set; }

        [BsonElement("comment")]
        [Required]
        public string comment { get; set; }

        [BsonElement("semester")]
        [Required]
        public string semester { get; set; }

        [BsonElement("year")]
        [Required]
        public string year { get; set; }

        [BsonElement("studentid")]
        [BsonRepresentation(BsonType.ObjectId)]
        [Required]
        public List<string> studentid { get; set; }

    }
}