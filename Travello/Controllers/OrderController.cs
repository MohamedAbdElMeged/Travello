using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Travello.Data;
using Travello.Models;
using Travello.Services;
using Travello.ViewModel;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Travello.Controllers
{
    public class OrderController : Controller
    {
        private ApplicationDbContext _context;

        public OrderController(ApplicationDbContext context)
        {
            _context = context;
        }
        
        public IActionResult Index()
        {

            return View();
        }

        [HttpGet]
        public IActionResult Create(OrderViewModel orderViewModel)
        {
            var model = orderViewModel;


            return View(model);
        }
        
        [HttpPost]
        public IActionResult Createe(OrderViewModel orderViewModel)
        {
            OrderServices os = new OrderServices(_context);
            Order ord = os.createOrder(orderViewModel);

            return RedirectToAction("Index", "Home");


        }
    }
}
