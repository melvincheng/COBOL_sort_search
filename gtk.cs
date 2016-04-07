using System;
using Gtk;

class GtkHelloWorld : Window{
	public GtkHelloWorld() : base("Everything")
	{
		SetDefaultSize(250, 200);
		SetPosition(WindowPosition.Center);

		Fixed fix = new Fixed();
		Label myLabel = new Label();
		Button button1 = new Button("Press me");
		Button button2 = new Button("Can't press me");
		button2.Sensitive = false;

		fix.Put(button1, 100, 100);
		fix.Put(button2, 100, 150);
		fix.Put(myLabel, 100,10);

		myLabel.Text = "Hello World";
		Add(fix);
		ShowAll();
	}

	public static void Main(){
		Application.Init();
		new GtkHelloWorld();
		Application.Run();
	}
}