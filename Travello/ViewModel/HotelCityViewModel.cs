using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Travello.Models;

namespace Travello.ViewModel
{
    public class HotelCityViewModel
    {
        public List<Hotel> CheapHotels { get; set; }
        public List<City> Cities { get; set; }
        public List<Hotel> luxuryHotels { get; set; }
        public List<Hotel> campingHotels { get; set; }

        public HotelCityViewModel()
        {
            this.CheapHotels = new List<Hotel>();
            this.Cities = new List<City>();
            this.campingHotels = new List<Hotel>();
            this.luxuryHotels = new List<Hotel>();
        }
    }
}
