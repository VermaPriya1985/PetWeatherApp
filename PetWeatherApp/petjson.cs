using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetWeatherApp
{
    public class petjson 
    {

        /* public petdetail[] detail { get; set; }

        public class petdetail
        {
            public int id { get; set; }
            // public int RoomTypeId { get; set; }

            // public string Name { get; set; }
        }*/ 

        public int id { get; set; }
        public string name { get; set; }
        public string type { get; set; }
        public string breed { get; set; }
        public string location { get; set; }
        public decimal latitude { get; set; }
        public decimal longitude { get; set; }
        
        /*public List<PetDetail> PetDetail { get; set; }
        public void AddRoom(PetDetail room)
        {
            PetDetail.Add(room);

        }*/



    } 

    /* public class Hotel
    {
        public List<Room> Rooms { get; set; }

        public void AddRoom(Room room)
        {
            Rooms.Add(room);
        }
    } 

    public class Room
    {
        public Hotel Hotel { get; private set; }
        public int RoomId { get; set; }
       
        public Room(Hotel hotel)
        {
            this.Hotel = hotel;
        }
    } */ 

    /*public class PetDetail
    {
        public petjson Hotel { get; private set; }
        public int id { get; set; }
       
        public PetDetail(petjson hotel)
        {
            this.Hotel = hotel;
        }
    }*/

}