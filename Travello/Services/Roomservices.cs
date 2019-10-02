using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Travello.Data;
using Travello.Models;
using Travello.ViewModel;

namespace Travello.Services
{
    public class Roomservices
    {
        private ApplicationDbContext _context;

        public Roomservices(ApplicationDbContext context)
        {
            _context = context;
        }
        public Hotel GetHotel(int Id)
        {

            var Query = _context.Hotels.SingleOrDefault(f => f.Hotel_Id == Id);

            return Query;
        }
        public string GetCityName(int Id)
        {
            string name = " ";
            var Query = _context.City.SingleOrDefault(f => f.City_id == Id);
            if (Query != null)
            {
                name = Query.City_Name;
            }
            return name;
        }
        public List<RoomViewModel> GetRoomViewModels()
        {
            var Rooms = _context.Room.ToList();

            List<RoomViewModel> Result = new List<RoomViewModel>();

            foreach (var item in Rooms)
            {
                var hotel = GetHotel(item.Hotel_id);

                Result.Add(new RoomViewModel()
                {
                    Hotel_id = item.Hotel_id,
                    Hotel_Name = hotel.Hotel_name,
                    Hotel_pic = hotel.Hotel_Pic,
                    Room_id = item.Room_id,
                    Room_price = hotel.Room_price,
                    Room_type = item.Room_type,
                    city_name = GetCityName(hotel.city_id),
                    Gymnesium = hotel.Gymnesium,
                    Wi_fi=hotel.Wi_fi,
                    SwimmingPool=hotel.SwimmingPool,
                    Restaurant=hotel.Restaurant,
                    RoomService=hotel.RoomService
                    
                }
               );

            }
            return Result;
        }
    }
}
