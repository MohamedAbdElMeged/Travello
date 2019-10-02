using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Travello.Data;
using Travello.ViewModel;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Travello.Controllers
{
    public class HotelsController : Controller
    {
        private ApplicationDbContext _context;

        public HotelsController(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult Index(int id)
        {
            var room = _context.Room.FirstOrDefault(r => r.isReserved == false && r.Room_type == id);
            var hotel = _context.Hotels.FirstOrDefault(h => h.Hotel_Id == room.Hotel_id);
            var city= _context.City.FirstOrDefault(c => c.City_id == hotel.Hotel_Id);
            RoomViewModel roomViewModel = new RoomViewModel
            {
                Room_id = room.Room_id,
                Room_price = hotel.Room_price,
                Room_type = room.Room_type,
                RoomService = hotel.RoomService,
                SwimmingPool = hotel.SwimmingPool,
                Wi_fi = hotel.Wi_fi,
                Gymnesium = hotel.Gymnesium,
                city_name = city.City_Name,



            };
            return View(roomViewModel);
        }
    }
}
