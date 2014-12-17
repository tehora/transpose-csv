#! /bin/awk -f

{
     if (max_nf < NF)
          max_nf = NF
     max_nr = NR
     for (x = 1; x <= NF; x++)
          wektor[x, NR] = $x
}

END {
     for (x = 1; x <= max_nf; x++) {
         for (y = 1; y <= max_nr; y++) {
             if (y < max_nr)
                 printf("%s" FS, wektor[x, y])
             else
                 printf("%s", wektor[x,y])
         }
          printf("\n")
     }
}
