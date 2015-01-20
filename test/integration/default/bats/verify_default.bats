@test "Check it added a file" {
   run cat /chef-demo.txt
   [ "$status" -eq 0 ]
   [ "$output" = 'A Simple file.' ]
}
