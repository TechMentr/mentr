namespace Mentr.Core
{
    public interface IMember
    {
        int ID { get; }

        string Name { get; }

        string Surname { get; }

        int Gender { get; }

        string Password { get; }

        string Email { get; }

        bool IsMentor { get; }

        bool IsMentee { get; }

        Skill[] Skills { get; }
    }
}
