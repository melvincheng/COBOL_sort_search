using System;
using Gtk;

public class GtkHelloWorld{
	public static void Main(){
		Application.Init();
		Window myWin = new Window("GTK# Application");
		myWin.Resize(200,200);
		Label myLabel = new Label();
		myLabel.Text = "Hello World";
		myWin.Add(myLabel);
		myWin.ShowAll();
		Application.Run();
		// Console.WriteLine("HelloWorld");
	}
}