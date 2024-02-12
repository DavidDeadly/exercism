Class {
	#name : #RomanNumerals,
	#superclass : #Object,
	#category : #'Exercise@RomanNumerals'
}

RomanNumerals >> romanNumber: number [
    | result rules num |
    num := number.
    rules := #(
        #( 'M' 1000 )
        #( 'CM' 900 )
        #( 'D' 500 )
        #( 'CD' 400 )
        #( 'C' 100 )
        #( 'XC' 90 )
        #( 'L' 50 )
        #( 'XL' 40 )
        #( 'X' 10 )
        #( 'IX' 9 )
        #( 'V' 5 )
        #( 'IV' 4 )
        #( 'I' 1 )
    ).
    result := ''.

    rules do: [:rule |
        | arabic romanChar |

        arabic := rule second.
        romanChar := rule first.

        [num >= arabic] whileTrue: [
            num := num - arabic.
            result := result, romanChar.
        ]. 
    ].  

    ^ result.
]
