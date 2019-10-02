using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Travello.Data;
using Travello.Services;
using Travello.ViewModel;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Travello.Controllers
{
    public class RoomController : Controller
    {
        private ApplicationDbContext _context;

        public RoomController(ApplicationDbContext context)
        {
            _context = context;
        }

        [Authorize]
        
        public IActionResult Index()
        {

            List<RoomViewModel> rm = new List<RoomViewModel>();
            Roomservices os = new Roomservices(_context);
            rm = os.GetRoomViewModels();






            return View(rm);
        }
    }
}
