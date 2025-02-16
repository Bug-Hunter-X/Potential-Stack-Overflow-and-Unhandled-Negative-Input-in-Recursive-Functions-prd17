function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return x + bar(x - 1);
  }
}

function baz(x: int, y: int): int {
  if (x == 0) {
    return y;
  } else {
    return baz(x - 1, y + 1);
  }
}

function main(): void {
  echo foo(5);
  echo bar(5);
  echo baz(5, 0);
}
