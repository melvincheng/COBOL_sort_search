
class program{
    static void Main(){
        Grid Layout = new Grid();
        Layout.ColumnDefinitions.Add(new ColumnDefinition() { Width = GridLength.Auto });
        Layout.ColumnDefinitions.Add(new ColumnDefinition() { Width = new GridLength(50)});

        Layout.RowDefinitions.Add(new RowDefinition() { Height = new GridLength(50) });
        Layout.Children.Add(new TextBlock() { });
        //Read the children

        foreach (UIElement element in Layout.Children)
        {
        //
        //Read it's row and column property
            int row = (int)element.GetValue(Grid.RowProperty);
        }

        //Some logic to store the row-columns of the UIElement, if required

        //Then bind some data by retrieving the TextBlock

        TextBlock lbl = Layout.Children[0] as TextBlock;
        Binding bind = new Binding();
        //logic for binding

        lbl.SetBinding(TextBlock.TextProperty,bind);
    }
}