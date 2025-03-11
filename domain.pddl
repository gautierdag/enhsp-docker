(define (domain slots)
    (:requirements :strips :typing :fluents :existential-preconditions :universal-preconditions :conditional-effects)

    (:types
        slot - object ; Inventory slots
        )

    (:functions
        (quantity_in_slot ?s - slot) ; Quantity of item i in slot s
    )

    (:action move
        :parameters (?from - slot ?to - slot)
        :precondition (>= (quantity_in_slot ?from) 1)
        :effect (and
            (increase
                (quantity_in_slot ?to)
                1)
            (decrease
                (quantity_in_slot ?from)
                1)
        )
    )
)