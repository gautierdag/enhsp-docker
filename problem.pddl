(define (problem move-slot)
    (:domain slots)

    (:objects
        slotA - slot
        slotB - slot
    )

    (:init
        (= (quantity_in_slot slotA) 100)
        (= (quantity_in_slot slotB) 0)
    )

    (:goal
        (and
            (= (quantity_in_slot slotA) 50)
            (= (quantity_in_slot slotB) 50)
        )
    )
)