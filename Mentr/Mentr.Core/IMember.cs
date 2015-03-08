namespace TechMentr.Core
{
    public interface IMember
    {
        int ID { get; }

        string Name { get; }

        string Surname { get; }

        string Gender { get; }

        string Password { get; }

        string Email { get; }

        bool IsMentor { get; }

        bool IsMentee { get; }

        Skill[] Skills { get; }
    }
}
