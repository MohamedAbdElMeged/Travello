using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Travello.Data;
using Travello.Models;
using Travello.ViewModel;

namespace Travello.Services
{
    public class OrderServices
    {
        private ApplicationDbContext _context;

        public OrderServices(ApplicationDbContext context)

        {

            _context = context;
        }

        public Room GetRoom(int id)
        {
            Room room = _context.Room.FirstOrDefault(r => r.Room_id == id);

            return room;

        }

        public Order createOrder(OrderViewModel orderViewModel)
        {
            Room room = GetRoom(orderViewModel.room_id);
            int dayFrom = orderViewModel.Order_from.Day;
            int dayto = orderViewModel.Order_to.Day;
            Order order = new Order();
            order.Order_from = orderViewModel.Order_from;
            order.Order_to = orderViewModel.Order_to;
            order.Order_timestamp = DateTime.Now;
            order.person_quantity = orderViewModel.person_quantity;
            order.total_price = orderViewModel.room_price * (dayto - dayFrom);
            order.user_name = orderViewModel.user_name;
            order.user_id = orderViewModel.user_id;
            order.room_id = orderViewModel.room_id;

            room.isReserved = true;
            _context.Room.Update(room);
            

            _context.Order.Add(order);
            _context.SaveChanges();

            return order;
        }

    } 
}
