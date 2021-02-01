using System;
using System.Collections.Generic;
using System.Text;

namespace GameProject
{
    //MicroSevrice
    class GamerManager : IGamerService
    {
        IUserValidationService _userValidationService;
        ////////////////public Game!!!
        public void Add(Gamer gamer)
        {
            if (_userValidationService(gamer)==true)
            {
                Console.WriteLine("Kayıt Oldu");
            }
            else
            {
                Console.WriteLine("Doğrulama ve kayıt başarısız");
            }
            
        }

        public void Delete(Gamer gamer)
        {
            Console.WriteLine("Kayıt Silindi");
        }

        public void Update(Gamer gamer)
        {
            Console.WriteLine("Kayıt Güncellendi"); ;
        }
    }
}
