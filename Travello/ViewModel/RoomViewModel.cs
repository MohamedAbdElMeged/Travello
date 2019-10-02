using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Travello.Models;

namespace Travello.ViewModel
{
    public class RoomViewModel
    {
        public int Room_id { get; set; }
        public int Room_type { get; set; }
        public int Hotel_id { get; set; }
        public double Room_price { get; set; }
        public String Hotel_Name { get; set; }
        public String Hotel_pic { get; set; }
        public String city_name { get; set; }
        public Boolean SwimmingPool { get; set; }
        public Boolean Wi_fi { get; set; }
        public Boolean Gymnesium { get; set; }
        public Boolean RoomService { get; set; }
        public Boolean Restaurant { get; set; }



        public List<Room> Rooms { get; set; }
    }
}
