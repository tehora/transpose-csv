#! /bin/awk -f

# as in standard coordinate system:
# field_x -- column number
# field_y -- row number


{
     if (max_nf < NF)
          max_nf = NF
     max_nr = NR

     # inserting into a row of a matrix
     
     for (field = 1; field <= NF; field++)
          row[field, NR] = $field
}

END {

    #printing the transposed matrix
    
     for (field_y = 1; field_y <= max_nf; field_y++) {
         for (field_x = 1; field_x <= max_nr; field_x++) {
             if (field_x < max_nr)
                 printf("%s" FS, row[field_y, field_x])
             else
                 printf("%s", row[field_y, field_x])
         }
          printf("\n")
     }
}
