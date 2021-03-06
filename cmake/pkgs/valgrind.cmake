macro(define_setup_valgrind)
    find_program(MEMORYCHECK_COMMAND NAMES valgrind)
    set(MEMORYCHECK_COMMAND_OPTIONS "--tool=helgrind --tool=memcheck --leak-check=full --track-origins=yes --show-leak-kinds=all --leak-resolution=high --num-callers=256")
    include(CTest)
endmacro()