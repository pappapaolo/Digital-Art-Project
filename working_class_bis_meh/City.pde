// The City (a list of Building objects)

class City {
  ArrayList<Building> lines; // An ArrayList for all the boids

  City() {
    lines = new ArrayList<Building>(); // Initialize the ArrayList
  }

  void run() {
    for (Building b : lines) {
    }
  }

  void addBuilding(Building b) {
    lines.add(b);
  }

}
