using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Travello.Data;
using Travello.Models;
using Travello.ViewModel;

namespace Travello.Controllers
{
    public class HomeController : Controller
    {
        private ApplicationDbContext _context;

        public HomeController(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            
            HotelCityViewModel model = new HotelCityViewModel();
            model.Cities = _context.City.OrderBy(r => Guid.NewGuid()).Take(3).ToList();
            model.CheapHotels = _context.Hotels.Where(h => h.Hotel_type == 1).OrderBy(r=>Guid.NewGuid()).Take(6).ToList();
            model.luxuryHotels= _context.Hotels.Where(h => h.Hotel_type == 2).OrderBy(r => Guid.NewGuid()).Take(6).ToList();
            model.campingHotels= _context.Hotels.Where(h => h.Hotel_type == 3).OrderBy(r => Guid.NewGuid()).Take(6).ToList();

            return View(model);
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult Contact()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

      
    }
}
