function foo(x: int): int {
  if (x < 0) {
    return 0; // Handle negative input
  }
  if (x == 0) {
    return 1;
  } else if (x > 10) {
    return 0; // Prevent stack overflow for large input 
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    return 0; // Handle negative input
  }
  if (x == 0) {
    return 0;
  } else if (x > 100) {
    return 0; // Prevent stack overflow for large input
  } else {
    return x + bar(x - 1);
  }
}

function baz(x: int, y: int): int {
  if (x < 0) {
    return y; // Handle negative input
  }
  if (x == 0) {
    return y;
  } else if (x > 1000) {
      return y; //Prevent stack overflow for large input
  } else {
    return baz(x - 1, y + 1);
  }
}

function main(): void {
  echo foo(5);
  echo bar(5);
  echo baz(5, 0);
}
