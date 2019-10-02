using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Travello.Models
{
    public class Hotel
    {
        [Key]
        public int Hotel_Id { get; set; }
        public String Hotel_name { get; set; }
        public String Hotel_Pic { get; set; }
        public int city_id { get; set; }
        public int Rooms_quantity { get; set; }
        public int Rooms_available { get; set; }
        public int Hotel_type { get; set; }
        public City City { get; set; }
        public double Room_price { get; set; }
        public Boolean SwimmingPool { get; set; }
        public Boolean Wi_fi { get; set; }
        public Boolean Gymnesium { get; set; }
        public Boolean RoomService{ get; set; }
        public Boolean Restaurant { get; set; }


        //1->cheap
        //2->luxury
        //3->camping





    }
}
