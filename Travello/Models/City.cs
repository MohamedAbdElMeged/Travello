using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Travello.Models
{
    public class City
    {
        [Key]
        public int City_id { get; set; }
        public String City_Name { get; set; }
        public String City_pic { get; set; }
       

    }
}
