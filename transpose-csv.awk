#!/usr/bin/awk -f

# as in standard coordinate system:
# field_x -- column number
# field_y -- row number

# max_x -- the number of columns in an array
# max_y -- the number of rows in an array

{
    if (max_x < NF)
        max_x = NF
    max_y = NR

# inserting into a row of a matrix

    for (field = 1; field <= NF; field++)
        row[field, NR] = $field
}

END {

#printing the transposed matrix
#take the column and print it

    for (field_x = 1; field_x <= max_x; field_x++) {
        for (field_y = 1; field_y <= max_y; field_y++) {
            if (field_y < max_y)
                printf("%s" FS, row[field_x, field_y])
            else
                printf("%s\n", row[field_x, field_y])
        }
    }
}
