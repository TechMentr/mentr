namespace Mentr.Core
{
    public class Member : IMember
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string Surname { get; set; }

        public string Gender { get; set; }

        public string Password { get; set; }

        public string Email { get; set; }

        public bool IsMentor { get; set; }

        public bool IsMentee { get; set; }
    }
}
