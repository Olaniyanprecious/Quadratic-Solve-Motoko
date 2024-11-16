import Float "mo:base/Float";

actor {
  private type Roots = {
    result1: Float;
    result2: Float;
  };

  public func quadraticCalculator(a: Int, b: Int, c: Int): async ?Roots {
    
    if (a == 0) {
      return null; 
    };

    
    let aF: Float = Float.fromInt(a);
    let bF: Float = Float.fromInt(b);
    let cF: Float = Float.fromInt(c);

    
    let discriminant: Float = (bF * bF) - (4.0 * aF * cF);

    
    if (discriminant < 0.0) {
      return null; 
    };

    
    let sqrtDiscriminant: Float = Float.pow(discriminant, 0.5);
    let root1: Float = (-bF + sqrtDiscriminant) / (2.0 * aF);
    let root2: Float = (-bF - sqrtDiscriminant) / (2.0 * aF);

    return ?{ result1 = root1; result2 = root2 };
  };
};
