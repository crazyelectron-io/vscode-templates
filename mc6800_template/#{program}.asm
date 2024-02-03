* Author: #{author}
* Title: #{title}
*
* Assemble with the following command:
*   as0 #{program}.asm
*
    	NAM #{program}

    	OPT	c
    	OPT	cre
        OPT l

label   EQU $10

	    ORG	$0
