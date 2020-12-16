contract TEST {

  address [] add_array;

  bool lengthChecking = false;

  function push_1() public {
    add_array.push();
  }

  function pop_1() public {
    if (add_array.length > 0) {
      add_array.pop();
    }
  }

  function double() public {
    uint alen = add_array.length;
    for (uint i = 0; i < alen; i++) {
      add_array.push();
    }
  }

  function plus5() public {
    uint alen = add_array.length;
    for (uint i = 0; i < 5; i++) {
      add_array.push();
    }
  }

  function halve() public {
    uint alen = add_array.length;
    for (uint i = 0; i < (alen/2); i++) {
      add_array.pop();
    }
  }

  function decimate() public {
    uint alen = add_array.length;
    for (uint i = 0; i < ((alen*9)/10); i++) {
      add_array.pop();
    }
  }  

  function empty1() public {
    delete add_array;
  }

  function empty2() public {
    delete add_array;
  }

  function empty3() public {
    delete add_array;
  }

  function turn_on_length_checking() public {
    lengthChecking = true;
  }

  function turn_off_length_checking() public {
    lengthChecking = false;
  }

  function test_long_8() public view {
    if (add_array.length >= 8) {
      if (lengthChecking) {
	assert(false);
      }
    }
  }

  function test_long_64() public view {
    if (add_array.length >= 128) {
      if (lengthChecking) {
	assert(false);
      }
    }
  }

  function test_long_128() public view {
    if (add_array.length >= 128) {
      if (lengthChecking) {
	assert(false);
      }
    }
  }
}
