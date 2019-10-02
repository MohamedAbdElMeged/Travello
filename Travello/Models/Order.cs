using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Travello.Models
{
    public class Order
    {
        [Key]
        public int Order_id { get; set; }
        public String user_id { get; set; }
        public String user_name { get; set; }
        public int room_id { get; set; }
        public int person_quantity { get; set; }
        public DateTime Order_from { get; set; }
        public DateTime Order_to { get; set; }
        public double total_price { get; set; }
        public DateTime Order_timestamp { get; set; }
    }
}
