(define-state-relation invariant
    (mac_game r1_game)
    (= mac_game.mac_real.k r1_game.prf_real.k))

(define-fun randomness-mapping-Mac
    (
        (sample-id-in-Mac SampleId)
        (sample-id-in-Eval SampleId)
        (offset-in-Mac Int)
        (offset-in-Eval Int)
    )
    Bool
    (and
        (= sample-id-in-Mac (sample-id "mac_real" "Mac" "k"))
        (= sample-id-in-Eval (sample-id "prf_real" "Eval" "k"))
        (= offset-in-Mac offset-in-Eval)))

(define-fun randomness-mapping-Verify
    (
        (sample-id-in-Verify SampleId)
        (sample-id-in-Eval SampleId)
        (offset-in-Verify Int)
        (offset-in-Eval Int)
    )
    Bool
    (and
        (= sample-id-in-Verify (sample-id "mac_real" "Verify" "k"))
        (= sample-id-in-Eval (sample-id "prf_real" "Eval" "k"))
        (= offset-in-Verify offset-in-Eval)))
