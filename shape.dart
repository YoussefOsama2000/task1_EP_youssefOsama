abstract class Shape {
  getArea();
}

class Circle implements Shape {
  double radius = 0, area = 0;
  Circle(double radius) {
    this.radius = radius;
    setArea();
  }
  setArea() {
    area = (22 / 7) * radius * radius;
  }

  @override
  void getArea() {
    print("circle area is $area");
  }
}

class Rectangle implements Shape {
  double length = 0, width = 0, area = 0;
  Rectangle(double length, double width) {
    this.length = length;
    this.width = width;
    setArea();
  }
  void setArea() {
    area = length * width;
  }

  @override
  void getArea() {
    print("rectangle area is $area");
  }
}

class Triangle implements Shape {
  double height = 0, width = 0, area = 0;
  Triangle(height, width) {
    this.height = height;
    this.width = width;
    setArea();
  }
  void setArea() {
    area = 0.5 * width * height;
  }

  @override
  void getArea() {
    print("triangle area is $area");
  }
}

mixin Fill {
  void filled() {
    print("it's a filled shape");
  }
}

class FilledCircle extends Circle with Fill {
  FilledCircle(double radius) : super(radius);
  void defineMe() {
    String stringArea = area.toStringAsFixed(2);
    print("This is circle with area of $stringArea \n      this is a filled shape");
  }
}

void main(List<String> args) {
  Circle c = Circle(5);
  c.getArea();
  print('*****************************');
  Rectangle r = Rectangle(5, 4);
  r.getArea();
  print('*****************************');
  Triangle t = Triangle(5, 4);
  t.getArea();
  print('*****************************');
  FilledCircle fc = FilledCircle(5);
  fc.defineMe();
}
