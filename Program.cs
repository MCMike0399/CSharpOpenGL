using OpenTK.Windowing.Desktop;
using OpenTK.Mathematics;

namespace CSharpOpenGL
{
    class Program 
    {
        static void Main(string[] args)
        {
            var nativeWindowSettings = new NativeWindowSettings()
            {
                Size = new Vector2i(800, 600),
                Title = "Texture2",
            };
            using (var window = new Transformation2(GameWindowSettings.Default, nativeWindowSettings))
            {
                window.Run();
            }
        }
    }
}
