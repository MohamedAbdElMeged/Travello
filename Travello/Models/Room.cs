using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Travello.Models
{
    public class Room
    {
        [Key]
        public int Room_id { get; set; }
        public int Room_type { get; set; }
        public int Hotel_id { get; set; }    
        public Hotel Hotel { get; set; }
        public bool isReserved { get; set; }

        //signle->1
        //double->2


    }
}
