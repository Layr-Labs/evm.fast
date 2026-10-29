import Flapjack.Misc.Sptree

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.AllocationOracles
-- Native proposal for source functions 800 through 815; compiler validation is required.
def chunk050 : List (Option (Flapjack.Spt Nat)) :=
[some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    0 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln)))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 1 (Flapjack.Spt.ls 0)))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 2))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22))))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
                    22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 22)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0)))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 10)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1)) 26 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))
                    2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 27)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 11)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 2
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 28 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 32
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.ls 6))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 7))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 32
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 29)) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 13)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8)) 30
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 29
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))
                    22 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 32)) 32
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 12)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 5))))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 10)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 24)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  24 (Flapjack.Spt.ls 32))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  23 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  32 (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  22 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    Flapjack.Spt.ln)))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))
                      23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 22))))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 35)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 3 Flapjack.Spt.ln))
                      1
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 31))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 38 (Flapjack.Spt.ls 1)))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 26)))
                      0 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 13 Flapjack.Spt.ln) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 5 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln) 2
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 11 (Flapjack.Spt.ls 36)) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 0 Flapjack.Spt.ln))
                      25 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 0)) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.ls 23)))
                      23
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 39)) 38
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 28))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 1 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24 (Flapjack.Spt.ls 38)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 (Flapjack.Spt.ls 0)) 0
                        (Flapjack.Spt.ls 2)))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 28)) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 4 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 3)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 25)))
                      26
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 Flapjack.Spt.ln) 37
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 0 (Flapjack.Spt.ls 1))))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 39))) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 2 Flapjack.Spt.ln) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 37 (Flapjack.Spt.ls 31))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 33)))
                      1
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 4
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 38)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 3 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 8 (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 0 (Flapjack.Spt.ls 3)) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln) 2 (Flapjack.Spt.ls 5)))
                    25
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 33)) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 Flapjack.Spt.ln))
                      0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 3))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 (Flapjack.Spt.ls 2)))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 5 (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 8 Flapjack.Spt.ln)))
                    26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 12 Flapjack.Spt.ln) 5 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 3))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 11 (Flapjack.Spt.ls 39)))
                      3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 12 (Flapjack.Spt.ls 25)) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 0 Flapjack.Spt.ln))
                      23
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 Flapjack.Spt.ln) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 37)) 23
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 37 (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 0 Flapjack.Spt.ln) 37
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 22 (Flapjack.Spt.ls 23)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 26)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 1 Flapjack.Spt.ln))
                      27
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 38)))
                      3
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 9 Flapjack.Spt.ln) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 33)))
                      1
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 3 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 (Flapjack.Spt.ls 24))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 9 (Flapjack.Spt.ls 28)))
                      1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 2)) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 5 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 39)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25 (Flapjack.Spt.ls 3))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 4 (Flapjack.Spt.ls 2)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 1 Flapjack.Spt.ln) 1
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))))
                    0
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 37)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 11 (Flapjack.Spt.ls 36))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 22 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 6 Flapjack.Spt.ln))
                      1
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 Flapjack.Spt.ln) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 0 (Flapjack.Spt.ls 30))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 11 Flapjack.Spt.ln)) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 11 (Flapjack.Spt.ls 32)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 0 (Flapjack.Spt.ls 1)))
                      22
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln) 4
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 35)) 3
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 2))) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 38 (Flapjack.Spt.ls 2)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 1)) 5
                        (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 27)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 0 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 38)) 4
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 29)))
                      25
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 9 (Flapjack.Spt.ls 4)) 2
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 10 (Flapjack.Spt.ls 1))))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 6 Flapjack.Spt.ln) 2
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 28 (Flapjack.Spt.ls 36))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 30)))
                      0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln)))
                    1
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 34)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 3 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln) 1 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 10 (Flapjack.Spt.ls 4))))
                    4
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 4 (Flapjack.Spt.ls 3)) 25
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 2)) 5
                        (Flapjack.Spt.ls 5)))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 30)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 7 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 (Flapjack.Spt.ls 25)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 24)))
                      27
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 5 (Flapjack.Spt.ls 1))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 4))))
                    25
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 1 (Flapjack.Spt.ls 6)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 Flapjack.Spt.ln)
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 29)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 3 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 4
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 2 (Flapjack.Spt.ls 1))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 31)))
                      0
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 23 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 11 (Flapjack.Spt.ls 31)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1 Flapjack.Spt.ln))
                      26
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 23)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 2)))
                      22
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 9 Flapjack.Spt.ln) 25
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 30))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 0 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 25 (Flapjack.Spt.ls 29))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 9 (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 0)))
                    0
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 13 (Flapjack.Spt.ls 23)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 5 (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 Flapjack.Spt.ln) 4
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 37)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 39)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 24 (Flapjack.Spt.ls 4))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 38)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)) 22
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 24 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                    22
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 24
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 26 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 37))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 22 Flapjack.Spt.ln) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 39))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 23
                      (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 30)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 38 Flapjack.Spt.ln) 37
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    23
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) (Flapjack.Spt.ls 38))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 37)) Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                    26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 24 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 33))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 39)) 23 Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))) 25
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 37 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.ls 38))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        Flapjack.Spt.ln)),
some
    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        Flapjack.Spt.ln)),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 8 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 Flapjack.Spt.ln)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 11)) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 Flapjack.Spt.ln))
                  3 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 6)) 8
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))
                  26
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 22)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 12)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln))
                  24
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 10)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 Flapjack.Spt.ln) Flapjack.Spt.ln) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 15)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 8)))
                  4
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 25 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 Flapjack.Spt.ln)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 2)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 26 Flapjack.Spt.ln))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 Flapjack.Spt.ln) (Flapjack.Spt.ls 8)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln))
                  25
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) (Flapjack.Spt.ls 9)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 13))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 Flapjack.Spt.ln)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 26 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                  5
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9)) 2 (Flapjack.Spt.ls 29)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
            0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            Flapjack.Spt.ln)))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 7)) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 5
                      (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))))
                  28
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 8)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 8))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4)) 23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 3)) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27)) 23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln) Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)) 22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) 28 Flapjack.Spt.ln) 24
                  Flapjack.Spt.ln))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 23 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.ls 22)))))),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 1))) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                      25
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 26 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 19))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 35 (Flapjack.Spt.ls 44))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                        1 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 3)))
                      26
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 41
                          (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 4)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) 7
                          (Flapjack.Spt.ls 9))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))))
                      3
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) 1
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 21 (Flapjack.Spt.ls 1)) 38
                          (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 9)) 32
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 6))))
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 26 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 8)) 22
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 26))))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 22)) 22
                          (Flapjack.Spt.ls 13)))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 36
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 28 Flapjack.Spt.ln) 41
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 26)) 1 Flapjack.Spt.ln)))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 13
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 34))))
                      22
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 41
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 4
                          (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 2)))
                        1 (Flapjack.Spt.ls 5)))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 1)) 2
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 7 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 23
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 9
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                          (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 23))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 26
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 32 (Flapjack.Spt.ls 45))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1))) 31
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 1 Flapjack.Spt.ln))
                      23
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 32)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 5))))
                    4
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 4
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24)) 24 Flapjack.Spt.ln))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 43))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 2 Flapjack.Spt.ln)))
                    4
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                        1
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 42)))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 2)) 1
                        (Flapjack.Spt.bs Flapjack.Spt.ln 43
                          (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 24)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 12))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 6 Flapjack.Spt.ln)))
                    6
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 3))))
                      4
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 3))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 35 Flapjack.Spt.ln))
                      2
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 22 Flapjack.Spt.ln) 25
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24)) 13
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                          (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 25))))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 37 (Flapjack.Spt.ls 48)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6)))
                        Flapjack.Spt.ln)
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 45 (Flapjack.Spt.ls 4))
                        11
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7)) 8
                          (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 39))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                      1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 38
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 0))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 2
                        (Flapjack.Spt.ls 39)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 38
                          (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 1)))
                        1 (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 10)))
                      5
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)) 28 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 35)))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 35
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 28 (Flapjack.Spt.ls 41)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1))) 24
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                      24
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 31)) 10
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 7))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 9 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 32 (Flapjack.Spt.ls 5)) 14
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                    7
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 8)))
                      2
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 24)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 33
                          (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 25)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 17)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 39 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))
                    4
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 6)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 4))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 37
                          (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 7)) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 13
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 26))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 38
                          (Flapjack.Spt.ls 3)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7)))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 8 (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 2))
                          (Flapjack.Spt.ls 25))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.ls 12)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 0)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 6
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                      1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)) 0 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 32))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 40 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)) 2
                          (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 0)))
                        1 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))
                      28
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 2
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) 22
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
                    5
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 27)) 1
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 17)
                          (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 22))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln) 38
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 (Flapjack.Spt.ls 44))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 11)) 23 (Flapjack.Spt.ls 0))
                      22
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.ls 27))))
                    8
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 0
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)) 23
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 2)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 39
                          (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 31))))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 Flapjack.Spt.ln)
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln)))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                        1
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 41)))
                      23
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 42
                          (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 23)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 15))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)) 6
                          (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 0)))
                        12 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0 Flapjack.Spt.ln)))
                    4
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 20) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 2)) 1
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 32 Flapjack.Spt.ln))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 8))
                        24 Flapjack.Spt.ln))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                          (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 35 (Flapjack.Spt.ls 46)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 37)) 1
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6)) 0
                          (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5))))
                      4
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 5))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 1
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 35))))
                      1
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 6)) 35
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 2
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln) 0
                        (Flapjack.Spt.ls 44)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 37
                          (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 0)))
                        1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                        3 (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 33)))
                      3
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 21)
                          (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 27))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 27
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 13)))
                      2
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.ls 4))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 38 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24 Flapjack.Spt.ln) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 41
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22)))
                      26 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 45 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 35 Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 39)) 22 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                        (Flapjack.Spt.ls 26))
                      26
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 41))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 26)))
                      28
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 43)) 25 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 23)) 28 Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 42)
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                        (Flapjack.Spt.ls 22))
                      22
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 45)) 28 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 Flapjack.Spt.ln) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 41 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 25)) 30 Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                        (Flapjack.Spt.ls 24))
                      24
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 43
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 24)))
                      38
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 42 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 23 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 41)) 31 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                        (Flapjack.Spt.ls 28))
                      28
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 43))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 37)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln) (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 26 Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 41
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 30 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 23 Flapjack.Spt.ln) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 25 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 44 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 32 Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                        (Flapjack.Spt.ls 25))
                      25
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 33
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 25)))
                      27
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 43 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 42)) 24 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                        (Flapjack.Spt.ls 29))
                      29
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 38)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln) (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 22)) 27 Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 40)
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                        Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 44)) 27 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 39 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 24)) 29 Flapjack.Spt.ln)
                        Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                        (Flapjack.Spt.ls 23))
                      23
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23)))
                      35
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 40 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 37 Flapjack.Spt.ln) 22
                        Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 40)) 23 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                        (Flapjack.Spt.ls 27))
                      27
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 42))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 26
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))))))),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 45)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 106 (Flapjack.Spt.ls 61)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 86
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 47 (Flapjack.Spt.ls 43))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 109) 94 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 30)))))
                        33
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 29 Flapjack.Spt.ln))
                            89
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 88) (Flapjack.Spt.ls 46))))
                          23
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 4 (Flapjack.Spt.ls 54)) 105
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 10 (Flapjack.Spt.ls 84)))
                            44
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 33 (Flapjack.Spt.ls 106))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 55) (Flapjack.Spt.ls 60))))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.bn (Flapjack.Spt.ls 88) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 48 (Flapjack.Spt.ls 93))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 106 Flapjack.Spt.ln)))
                          0
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 1 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln))
                            29
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 95) Flapjack.Spt.ln) 56
                              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 52))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 47 Flapjack.Spt.ln))
                            2
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 58)) 72
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 45 Flapjack.Spt.ln))
                            6
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 107
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 78)) 7
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 65) (Flapjack.Spt.ls 103)))
                            35
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 32 (Flapjack.Spt.ls 107)) 43
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                          29
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 83) Flapjack.Spt.ln) 38
                              (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0)))
                            0
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 78 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 55)))))
                        50
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 82) Flapjack.Spt.ln) 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 46 (Flapjack.Spt.ls 45)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 106
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 79 (Flapjack.Spt.ls 25))))
                          4
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 35 (Flapjack.Spt.ls 106)) 64
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 1 (Flapjack.Spt.ls 106)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 107 (Flapjack.Spt.ls 108))))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 84 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 29 Flapjack.Spt.ln) 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 33 (Flapjack.Spt.ls 3))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 104) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 1 (Flapjack.Spt.ls 107))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 79)) Flapjack.Spt.ln)
                            7
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 48 (Flapjack.Spt.ls 56)) 59
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 92) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.bn (Flapjack.Spt.ls 70) Flapjack.Spt.ln))
                            56
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 78
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 53))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 43 (Flapjack.Spt.ls 0)))
                            105
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 112) 41 (Flapjack.Spt.ls 55)) 33
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 79))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 88) Flapjack.Spt.ln) 107
                              (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 86)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 30 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 2 (Flapjack.Spt.ls 94)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 43 (Flapjack.Spt.ls 4)) 55
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 22 (Flapjack.Spt.ls 86)))
                            43
                            (Flapjack.Spt.bs Flapjack.Spt.ln 42
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 61 (Flapjack.Spt.ls 35))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 46 (Flapjack.Spt.ls 57)) 40
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 62)))
                            30
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 43)) 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 103))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 16
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 94 (Flapjack.Spt.ls 26))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 23 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 11 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 96) Flapjack.Spt.ln) 66
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 60))
                              Flapjack.Spt.ln)
                            107
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 36 (Flapjack.Spt.ls 48)) 38
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                          34
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 40
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 25 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 33
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 38
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 83) (Flapjack.Spt.ls 26)))
                            26
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 26 (Flapjack.Spt.ls 51))
                              (Flapjack.Spt.ls 39)))
                          8
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 25
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 47 (Flapjack.Spt.ls 25)))
                            38
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 45
                              (Flapjack.Spt.ls 35))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 79) (Flapjack.Spt.ls 2)) 28
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 33 (Flapjack.Spt.ls 59)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 78
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 Flapjack.Spt.ln)))
                          28
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 43)) 78
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 58 (Flapjack.Spt.ls 43)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 56 Flapjack.Spt.ln)))))
                      6
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 37 Flapjack.Spt.ln))
                            105
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 83) (Flapjack.Spt.ls 1))))
                          50
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 107 (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 107) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 46 (Flapjack.Spt.ls 37))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 33 (Flapjack.Spt.ls 106))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 48 (Flapjack.Spt.ls 91))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 1 (Flapjack.Spt.ls 78))))
                          2
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 11))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.ls 58)))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 103 (Flapjack.Spt.ls 82)) 2
                              (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 107)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 0)) 38
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 78 Flapjack.Spt.ln) 105
                              (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 57)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 56 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 1 (Flapjack.Spt.ls 33)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 24 (Flapjack.Spt.ls 57)))
                            29
                            (Flapjack.Spt.bs Flapjack.Spt.ln 55
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 93) (Flapjack.Spt.ls 62))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 105 (Flapjack.Spt.ls 62)) 107
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 46)))
                            36
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 64 (Flapjack.Spt.ls 80)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 4 (Flapjack.Spt.ls 2))))))
                      23
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 82) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 107 (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.ls 25)))
                          4
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 19)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln))
                            43
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 90) (Flapjack.Spt.ls 3)) 28
                              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 69))
                              (Flapjack.Spt.ls 78))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 86)) 86
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 84) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 106 Flapjack.Spt.ln))
                            59
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 39
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 84) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.ls 76)))
                            30
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 76 (Flapjack.Spt.ls 92))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 108))))
                          44
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 81) Flapjack.Spt.ln) 64
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 64 (Flapjack.Spt.ls 64)))
                            7
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 88) (Flapjack.Spt.ls 1)) 5
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 36 (Flapjack.Spt.ls 30)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 25
                              (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 23))))
                          34
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 80)) 25
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 107) (Flapjack.Spt.ls 80)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 12
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 39 Flapjack.Spt.ln)))))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 37
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 86 Flapjack.Spt.ln))
                            2
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 24 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.ls 2))))
                          3
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 36 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 102) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 105 (Flapjack.Spt.ls 92))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 56)) Flapjack.Spt.ln)
                            47
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 0 (Flapjack.Spt.ls 64)) 23
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 94) (Flapjack.Spt.ls 2))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.bn (Flapjack.Spt.ls 78) Flapjack.Spt.ln))
                            25
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 69 (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 72))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 108 (Flapjack.Spt.ls 70)) 15
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 58) (Flapjack.Spt.ls 35)))
                            60
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 79 (Flapjack.Spt.ls 41)) 27
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 103))))
                          3
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 79) Flapjack.Spt.ln) 45
                              (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 31)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 47 Flapjack.Spt.ln) 1
                              Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 85) Flapjack.Spt.ln) 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 105 (Flapjack.Spt.ls 71)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 89
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 42 (Flapjack.Spt.ls 64))))
                          1
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 62 (Flapjack.Spt.ls 56)) 35
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 7 (Flapjack.Spt.ls 35)))
                            23
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 72 (Flapjack.Spt.ls 28))))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bn (Flapjack.Spt.ls 91) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 56 (Flapjack.Spt.ls 22))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 58) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 3 (Flapjack.Spt.ls 5))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 99) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 3 (Flapjack.Spt.ls 57))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        31
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 48 (Flapjack.Spt.ls 83))
                              Flapjack.Spt.ln)
                            39
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 46 (Flapjack.Spt.ls 0)) 33
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)))
                          27
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 23 Flapjack.Spt.ln))
                            41
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 63) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.bn (Flapjack.Spt.ls 79) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 4 (Flapjack.Spt.ls 45))
                              (Flapjack.Spt.ls 45)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 78
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 78 (Flapjack.Spt.ls 2)))
                            89
                            (Flapjack.Spt.bs Flapjack.Spt.ln 62
                              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))))
                        0
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 83) (Flapjack.Spt.ls 61)) 108
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 30 (Flapjack.Spt.ls 87)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 65)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 66 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 38 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 30 Flapjack.Spt.ln)))))
                      2
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 45 Flapjack.Spt.ln) 58
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 1 Flapjack.Spt.ln))
                            60
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 79) (Flapjack.Spt.ls 3))))
                          0
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 84 (Flapjack.Spt.ls 90))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 2 Flapjack.Spt.ln))
                            49
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 36 (Flapjack.Spt.ls 31))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 58)))))
                        1
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 30 (Flapjack.Spt.ls 80)) 7
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 107 (Flapjack.Spt.ls 97))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 3 (Flapjack.Spt.ls 47))))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 105 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 2 (Flapjack.Spt.ls 41))))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 98)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 76 (Flapjack.Spt.ls 52)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 41
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 66 (Flapjack.Spt.ls 22))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 89 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 101) (Flapjack.Spt.ls 93)))))
                        23
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 76 Flapjack.Spt.ln) 45
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 59 (Flapjack.Spt.ls 105)))
                            33
                            (Flapjack.Spt.bs Flapjack.Spt.ln 72
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 41))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 56) (Flapjack.Spt.ls 92)) 55
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 58)))
                            62
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 103 (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 4 (Flapjack.Spt.ls 34))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 55 (Flapjack.Spt.ls 106))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 Flapjack.Spt.ln)))
                          34
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 20) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 21) Flapjack.Spt.ln))
                            25
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 100) Flapjack.Spt.ln) 106
                              (Flapjack.Spt.bs Flapjack.Spt.ln 87 (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 66 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 49)) 58
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 32 Flapjack.Spt.ln))
                            7
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 42
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 23 Flapjack.Spt.ln))))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 54) (Flapjack.Spt.ls 106)))
                            34
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 106 (Flapjack.Spt.ls 54))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 25))))
                          26
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 71) Flapjack.Spt.ln) 35
                              (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 103)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 97) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 0)))))
                        56
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 4)) 35
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 60 (Flapjack.Spt.ls 56)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 35 (Flapjack.Spt.ls 108))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 32 (Flapjack.Spt.ls 76)) 28
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 7 (Flapjack.Spt.ls 76)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 10
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 42 (Flapjack.Spt.ls 23))))))
                      5
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 35
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 58 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 59 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 54) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 34 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 92) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 5 (Flapjack.Spt.ls 54))
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                            28
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 96) (Flapjack.Spt.ls 93)) 26
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 104) (Flapjack.Spt.ls 2))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 87) Flapjack.Spt.ln))
                            31
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 61)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 69) (Flapjack.Spt.ls 3))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 59)) 19
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 52) (Flapjack.Spt.ls 39)))
                            46
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 62 (Flapjack.Spt.ls 49)) 31
                              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 35))))
                          22
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 68) Flapjack.Spt.ln) 60
                              (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 60)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 101 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 38)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 76) (Flapjack.Spt.ls 2)) 107
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 83) (Flapjack.Spt.ls 60)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 39
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 44 (Flapjack.Spt.ls 103))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 41 (Flapjack.Spt.ls 45)) 37
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 79)))
                            0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 2 (Flapjack.Spt.ls 64))))))
                      2
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 89 (Flapjack.Spt.ls 43))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 52) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 7 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 89) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 102) (Flapjack.Spt.ls 105)) 22
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 71))
                              Flapjack.Spt.ln)
                            42
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 60 (Flapjack.Spt.ls 39)) 35
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 69) Flapjack.Spt.ln)))
                          56
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 108 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 61) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 74) (Flapjack.Spt.ls 43)))
                            23
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 43 (Flapjack.Spt.ls 4))
                              (Flapjack.Spt.ls 37)))
                          7
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 108
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 66 (Flapjack.Spt.ls 108)))
                            40
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44
                              (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 4)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 74) (Flapjack.Spt.ls 6)) 25
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 93 (Flapjack.Spt.ls 24)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 0 (Flapjack.Spt.ls 47)))
                          24
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) 6
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 86 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 32 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 107
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 45 Flapjack.Spt.ln))
                            46
                            (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 74) Flapjack.Spt.ln)))
                          30
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 58 (Flapjack.Spt.ls 38)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 60 (Flapjack.Spt.ls 89))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84)))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 93 (Flapjack.Spt.ls 76))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 55 (Flapjack.Spt.ls 108))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 66))))
                          5
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 9))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 62) (Flapjack.Spt.ls 46)))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 29)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 26 (Flapjack.Spt.ls 41)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 35
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 55
                              (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 90)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 93 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 3 (Flapjack.Spt.ls 89)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 26 (Flapjack.Spt.ls 1)) 105
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 87 (Flapjack.Spt.ls 90)))
                            25
                            (Flapjack.Spt.bs Flapjack.Spt.ln 107
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 106) (Flapjack.Spt.ls 79))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 57 (Flapjack.Spt.ls 51)) 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 41)))
                            34
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 28 (Flapjack.Spt.ls 26)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 3 (Flapjack.Spt.ls 3))))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 20 (Flapjack.Spt.bn (Flapjack.Spt.ls 73) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 40 (Flapjack.Spt.ls 80))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 108 Flapjack.Spt.ln)))
                          23
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 15 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 98) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 107) (Flapjack.Spt.ls 4)) 47
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        0
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 42)) Flapjack.Spt.ln)
                            50
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 35 (Flapjack.Spt.ls 41)) 41
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 75) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 3 Flapjack.Spt.ln))
                            4
                            (Flapjack.Spt.bs Flapjack.Spt.ln 89
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 45
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 71) (Flapjack.Spt.ls 80)))
                            59
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 27 (Flapjack.Spt.ls 62))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 23))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 77) Flapjack.Spt.ln) 29
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 (Flapjack.Spt.ls 27)))
                            46
                            (Flapjack.Spt.bs Flapjack.Spt.ln 105
                              (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 68) (Flapjack.Spt.ls 4)) 64
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 35 (Flapjack.Spt.ls 5)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 108
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 64 Flapjack.Spt.ln)))
                          56
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 26)) 108
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 84 (Flapjack.Spt.ls 26)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 89 Flapjack.Spt.ln)))))
                      2
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 40
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 38 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 4
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 71) (Flapjack.Spt.ls 3))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 60 (Flapjack.Spt.ls 49))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 96) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 39 (Flapjack.Spt.ls 83))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 93)) Flapjack.Spt.ln)
                            23
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 92) (Flapjack.Spt.ls 32))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 99) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 66)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 41 (Flapjack.Spt.ls 3))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 102) (Flapjack.Spt.ls 84))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 87)) 11
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 33)))
                            40
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 35 (Flapjack.Spt.ls 90)) 24
                              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 64))))
                          32
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 74) Flapjack.Spt.ln) 41
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 79 (Flapjack.Spt.ls 36)))
                            0
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 66 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 46)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 73) (Flapjack.Spt.ls 1)) 40
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 39 (Flapjack.Spt.ls 37)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 62 (Flapjack.Spt.ls 27))))
                          6
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 79 (Flapjack.Spt.ls 93)) 32
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 1 (Flapjack.Spt.ls 32)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 55 (Flapjack.Spt.ls 25))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 72 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 31 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 103 (Flapjack.Spt.ls 5))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 94) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 2 (Flapjack.Spt.ls 44))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 55 (Flapjack.Spt.ls 74))
                              Flapjack.Spt.ln)
                            26
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 55 (Flapjack.Spt.ls 45)) 30
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                          23
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn (Flapjack.Spt.ls 59) Flapjack.Spt.ln))
                            37
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 108
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 52) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.bn (Flapjack.Spt.ls 68) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 57) (Flapjack.Spt.ls 56))
                              (Flapjack.Spt.ls 33)))
                          50
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln))
                            33
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln) 79
                              (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 3)))))
                        33
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 63)) 78
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 101 (Flapjack.Spt.ls 22)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 61)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 78 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 37 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 50
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 59 Flapjack.Spt.ln)))))
                      2
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 0)) 24
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 31 (Flapjack.Spt.ls 0)))
                            40
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 68) (Flapjack.Spt.ls 55))))
                          27
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 72 (Flapjack.Spt.ls 107))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 8 (Flapjack.Spt.ls 72)))
                            58
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 35 (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 107)))))
                        2
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 101 (Flapjack.Spt.ls 26)) 0
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 40 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 73) (Flapjack.Spt.ls 101))))
                          0
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 58
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 32 (Flapjack.Spt.ls 65))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 0 (Flapjack.Spt.ls 62)))))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 89 (Flapjack.Spt.ls 67)) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 30 (Flapjack.Spt.ls 55)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 60
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 90))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 26 (Flapjack.Spt.ls 55)) 5
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 72)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 79 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 76) (Flapjack.Spt.ls 106)))))
                        25
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 30 Flapjack.Spt.ln) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 (Flapjack.Spt.ls 72)))
                            56
                            (Flapjack.Spt.bs Flapjack.Spt.ln 5
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 98) (Flapjack.Spt.ls 86))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 60)) 50
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 2 (Flapjack.Spt.ls 57)))
                            41
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 0 (Flapjack.Spt.ls 25)) 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 38))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 98) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 61 (Flapjack.Spt.ls 73))
                              (Flapjack.Spt.ls 31)))
                          29
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 18) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 19) Flapjack.Spt.ln))
                            27
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 75) Flapjack.Spt.ln) 2
                              (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.ls 38))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 26 Flapjack.Spt.ln))
                            4
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) 50
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 105
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 5 Flapjack.Spt.ln))
                            2 (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 44 (Flapjack.Spt.ls 66))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 5
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 93)))
                            32
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 93 (Flapjack.Spt.ls 42)) 78
                              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 59))))
                          0
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 104) Flapjack.Spt.ln) 37
                              (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 56)))
                            0
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 87) Flapjack.Spt.ln) 1
                              (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 61)))))
                        89
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 103) (Flapjack.Spt.ls 2)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 86 (Flapjack.Spt.ls 34)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 31
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 89 (Flapjack.Spt.ls 24))))
                          2
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 56 (Flapjack.Spt.ls 23)) 30
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 1 (Flapjack.Spt.ls 29)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 44 (Flapjack.Spt.ls 87))))))
                      5
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 51
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 39 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 28 Flapjack.Spt.ln) 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 45 (Flapjack.Spt.ls 3))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 71) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 42))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        1
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 39 (Flapjack.Spt.ls 89))
                              Flapjack.Spt.ln)
                            30
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 65 (Flapjack.Spt.ls 103)) 47
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 71) (Flapjack.Spt.ls 3))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn (Flapjack.Spt.ls 108) Flapjack.Spt.ln))
                            33
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 90) (Flapjack.Spt.ls 0))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 59 (Flapjack.Spt.ls 32)) 21
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 78 (Flapjack.Spt.ls 62)))
                            55
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 110) 40 (Flapjack.Spt.ls 63)) 106
                              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 89))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 109) Flapjack.Spt.ln) 6
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 54)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 76 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 62)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 78 Flapjack.Spt.ln) 10
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 104) (Flapjack.Spt.ls 54)))
                            22
                            (Flapjack.Spt.bs Flapjack.Spt.ln 62
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 55 (Flapjack.Spt.ls 56))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 86 (Flapjack.Spt.ls 28)) 38
                              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 94)))
                            59
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 78)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 1 (Flapjack.Spt.ls 31))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 14
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 0 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 79 (Flapjack.Spt.ls 66)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 22 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 9 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 68) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 77) (Flapjack.Spt.ls 72)) 23
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 92)) Flapjack.Spt.ln)
                            5
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 38 (Flapjack.Spt.ls 62)) 3
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 90) Flapjack.Spt.ln)))
                          89
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 38
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 24 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 31 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 40
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 94) (Flapjack.Spt.ls 66)))
                            66
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 66 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.ls 38)))
                          9
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 24
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 (Flapjack.Spt.ls 24)))
                            37
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 107
                              (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 99) (Flapjack.Spt.ls 1)) 59
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 32 (Flapjack.Spt.ls 3)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 59 Flapjack.Spt.ln)))
                          26
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 2)) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 46 (Flapjack.Spt.ls 78)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 103 Flapjack.Spt.ln)))))
                      22
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 2)) 23
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 35 Flapjack.Spt.ln))
                            55
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 94) Flapjack.Spt.ln)))
                          35
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 69 (Flapjack.Spt.ls 52)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 2 Flapjack.Spt.ln))
                            2
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 86 (Flapjack.Spt.ls 79))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 105)))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 32 (Flapjack.Spt.ls 23)) 3
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 61 (Flapjack.Spt.ls 24))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.ls 43))))
                          4
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 10))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 44)))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 50))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 47 (Flapjack.Spt.ls 42)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 58 Flapjack.Spt.ln) 0
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                          0
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln) 54
                              (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 58)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 32 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.ls 35)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 47 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 108 (Flapjack.Spt.ls 58)))
                            27
                            (Flapjack.Spt.bs Flapjack.Spt.ln 45
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 3 (Flapjack.Spt.ls 94))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 84 (Flapjack.Spt.ls 39)) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 86)))
                            3
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 29 (Flapjack.Spt.ls 47)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 4 (Flapjack.Spt.ls 45))))))
                      31
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 3 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 41 (Flapjack.Spt.ls 101))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)))
                          25
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 17)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                            22
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 69) (Flapjack.Spt.ls 5)) 59
                              Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 107))
                              Flapjack.Spt.ln)
                            72
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) 60
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 95) Flapjack.Spt.ln)))
                          2
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 86
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 30 Flapjack.Spt.ln))
                            2
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 79
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 92) (Flapjack.Spt.ls 101)))
                            28
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 101 (Flapjack.Spt.ls 71))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 87))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 102) Flapjack.Spt.ln) 31
                              (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28)))
                            6
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 109) (Flapjack.Spt.ls 1)) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 37 (Flapjack.Spt.ls 64)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 24
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 32 (Flapjack.Spt.ls 22))))
                          89
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 47)) 24
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 65 (Flapjack.Spt.ls 47)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 79 Flapjack.Spt.ln)))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 38
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 60 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 108 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 92) (Flapjack.Spt.ls 3))))
                          5
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 38 (Flapjack.Spt.ls 61))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 77) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 84 (Flapjack.Spt.ls 71))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 37 (Flapjack.Spt.ls 103))
                              Flapjack.Spt.ln)
                            108
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 81) (Flapjack.Spt.ls 53)) 22
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 74) (Flapjack.Spt.ls 1))))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 107 (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 54) (Flapjack.Spt.ls 105))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 87 (Flapjack.Spt.ls 108)) 13
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 45)))
                            36
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 89 (Flapjack.Spt.ls 40)) 25
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                          5
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 99) Flapjack.Spt.ln) 42
                              (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 37)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 26 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 86)))))
                        2
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 106) (Flapjack.Spt.ls 1)) 41
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 84 (Flapjack.Spt.ls 6)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 56
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 41 (Flapjack.Spt.ls 28))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 94 (Flapjack.Spt.ls 103)) 51
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 6 (Flapjack.Spt.ls 33)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 50 (Flapjack.Spt.ls 59))))))
                      3
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 0 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 103 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 74) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 58))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 61 (Flapjack.Spt.ls 94))
                              Flapjack.Spt.ln)
                            35
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 34)) 64
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 54) Flapjack.Spt.ln)))
                          25
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 Flapjack.Spt.ln))
                            7
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.bn (Flapjack.Spt.ls 89) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 30))
                              (Flapjack.Spt.ls 34)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.ls 22)))
                            56
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln) 39
                              (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1)))))
                        2
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 62) (Flapjack.Spt.ls 49)) 43
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 76 (Flapjack.Spt.ls 23)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 63)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 43 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 78)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 36 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 72
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 28 Flapjack.Spt.ln)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 4)) 49
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 103 Flapjack.Spt.ln))
                            36
                            (Flapjack.Spt.bs Flapjack.Spt.ln 7
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 89) (Flapjack.Spt.ls 61))))
                          31
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 105 (Flapjack.Spt.ls 69)) 5
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 1 Flapjack.Spt.ln))
                            50
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 37 (Flapjack.Spt.ls 30))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69)))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 76 (Flapjack.Spt.ls 47)) 6
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 41 (Flapjack.Spt.ls 78))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 1 (Flapjack.Spt.ls 5))))
                          50
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 56)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 40))))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 34)) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 101 (Flapjack.Spt.ls 69)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 84 (Flapjack.Spt.ls 0)) 40
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 86))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 43 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 34 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 3 (Flapjack.Spt.ls 32)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 101 (Flapjack.Spt.ls 2)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 25 (Flapjack.Spt.ls 84)))
                            31
                            (Flapjack.Spt.bs Flapjack.Spt.ln 50
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 103) (Flapjack.Spt.ls 40))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 72 (Flapjack.Spt.ls 71)) 48
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 90)))
                            39
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 31 (Flapjack.Spt.ls 101)) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 3 (Flapjack.Spt.ls 37))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 69 (Flapjack.Spt.ls 25))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln)))
                          31
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 21)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 82) Flapjack.Spt.ln))
                            24
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 30
                              (Flapjack.Spt.ls 23))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 54) (Flapjack.Spt.ls 90))
                              (Flapjack.Spt.ls 43))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 46)) 46
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 58
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 93 Flapjack.Spt.ln))
                            48
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 62
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 22 Flapjack.Spt.ln))))))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 25)))
                            106
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 30 (Flapjack.Spt.ls 60))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 24))))
                          41
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 92) Flapjack.Spt.ln) 33
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 31 (Flapjack.Spt.ls 30)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 78) Flapjack.Spt.ln) 0
                              (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 65)))))
                        31
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 98) Flapjack.Spt.ln) 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 38 (Flapjack.Spt.ls 103)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 56 (Flapjack.Spt.ls 87))))
                          50
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 93 (Flapjack.Spt.ls 101)) 59
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 7 (Flapjack.Spt.ls 101)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 11
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 62 (Flapjack.Spt.ls 22))))))
                      3
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 45
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 46 Flapjack.Spt.ln))
                            4
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 25 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                          4
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 37 Flapjack.Spt.ln) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 72 (Flapjack.Spt.ls 60))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 44)) Flapjack.Spt.ln)
                            59
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 77) (Flapjack.Spt.ls 29)) 66
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 83) (Flapjack.Spt.ls 1))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.bn (Flapjack.Spt.ls 97) Flapjack.Spt.ln))
                            28
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 5))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 107) Flapjack.Spt.ln)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 91)) 17
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 37)))
                            86
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 94 (Flapjack.Spt.ls 52)) 29
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 56))))
                          24
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 89) Flapjack.Spt.ln) 46
                              (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 38)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 27 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60)))))
                        4
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 4)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 72 (Flapjack.Spt.ls 92)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 79
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 107 (Flapjack.Spt.ls 30))))
                          1
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 40 (Flapjack.Spt.ls 4)) 45
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 72) (Flapjack.Spt.ls 89)))
                            24
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 93) (Flapjack.Spt.ls 29))))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 10
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 0 (Flapjack.Spt.ls 23)) 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 5 (Flapjack.Spt.ls 4))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 79) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 84))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                        56
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 65 (Flapjack.Spt.ls 104))
                              Flapjack.Spt.ln)
                            62
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 86 (Flapjack.Spt.ls 51)) 34
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 107) Flapjack.Spt.ln)))
                          31
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 45
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 87 Flapjack.Spt.ln))
                            44
                            (Flapjack.Spt.bs Flapjack.Spt.ln 7
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 60
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 99) (Flapjack.Spt.ls 78)))
                            22
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 78 (Flapjack.Spt.ls 33))
                              (Flapjack.Spt.ls 36)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 43
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 43 (Flapjack.Spt.ls 87)))
                            36
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 42
                              (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 94) Flapjack.Spt.ln) 24
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 106 (Flapjack.Spt.ls 108)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 67)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 26 Flapjack.Spt.ln)))
                          22
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 60 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 103)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 64 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 48
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 33 Flapjack.Spt.ln))
                            86
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 99) (Flapjack.Spt.ls 65))))
                          29
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 57 (Flapjack.Spt.ls 6)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 2 (Flapjack.Spt.ls 0)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 38 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 57)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 106 (Flapjack.Spt.ls 101)) 2
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 69 (Flapjack.Spt.ls 87))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 2 (Flapjack.Spt.ls 26))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 89 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 86)))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 64))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 66 (Flapjack.Spt.ls 40)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 61)) 34
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 94))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 98) Flapjack.Spt.ln) 52
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 46)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 106 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 1 (Flapjack.Spt.ls 79)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 66 (Flapjack.Spt.ls 1)) 50
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 23 (Flapjack.Spt.ls 46)))
                            24
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 105 (Flapjack.Spt.ls 89))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 58 (Flapjack.Spt.ls 30)) 41
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 40)))
                            32
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 59 (Flapjack.Spt.ls 66)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 4 (Flapjack.Spt.ls 56))))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 18
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 62 (Flapjack.Spt.ls 47))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 87 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 13 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 88) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 86) Flapjack.Spt.ln) 26
                              Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 54))
                              Flapjack.Spt.ln)
                            58
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 37 (Flapjack.Spt.ls 40)) 40
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 100) Flapjack.Spt.ln)))
                          50
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 0 Flapjack.Spt.ln))
                            3 (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 56 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 24
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 104) (Flapjack.Spt.ls 47)))
                            47
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 47 (Flapjack.Spt.ls 39))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 22))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 96) Flapjack.Spt.ln) 59
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 59 (Flapjack.Spt.ls 59)))
                            86
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 55
                              (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 89) Flapjack.Spt.ln) 30
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 45 (Flapjack.Spt.ls 4)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 21 (Flapjack.Spt.ls 3)) 43
                              (Flapjack.Spt.ls 30)))
                          33
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 101 (Flapjack.Spt.ls 66)) 43
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 39 (Flapjack.Spt.ls 66)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 36 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 41 (Flapjack.Spt.ls 36))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 104) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 39 (Flapjack.Spt.ls 63)) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 1 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 58 (Flapjack.Spt.ls 94))
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 45 (Flapjack.Spt.ls 73))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 65 (Flapjack.Spt.ls 59))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 79) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 40 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 57))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 97)) 9
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 56)))
                            38
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 56 (Flapjack.Spt.ls 69)) 108
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                          34
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 94) Flapjack.Spt.ln) 5
                              (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 45)))
                            0
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 43 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 90)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 93) (Flapjack.Spt.ls 4)) 38
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 58 (Flapjack.Spt.ls 36)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 33
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 38 (Flapjack.Spt.ls 59))))
                          3
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 89 (Flapjack.Spt.ls 73)) 36
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 7 (Flapjack.Spt.ls 93)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 48 (Flapjack.Spt.ls 24))))))
                      31
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 105 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 64 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 83) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 2 (Flapjack.Spt.ls 69))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 69 (Flapjack.Spt.ls 99))
                              Flapjack.Spt.ln)
                            34
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 61 (Flapjack.Spt.ls 31)) 28
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 60) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn (Flapjack.Spt.ls 91) Flapjack.Spt.ln))
                            89
                            (Flapjack.Spt.bs Flapjack.Spt.ln 43
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn (Flapjack.Spt.ls 109) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 65 (Flapjack.Spt.ls 103))
                              (Flapjack.Spt.ls 93)))
                          2
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln))
                            31
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 84) Flapjack.Spt.ln) 89
                              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3)))))
                        22
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 10 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 75)) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 4 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 58
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 47 Flapjack.Spt.ln)))))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 1)) 72
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 64 (Flapjack.Spt.ls 0)))
                            79
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 90))))
                          25
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 42)) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 9 (Flapjack.Spt.ls 105)))
                            107
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 45 (Flapjack.Spt.ls 27))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 48 (Flapjack.Spt.ls 39)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.ls 66)) 0
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 62 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 37 (Flapjack.Spt.ls 76))))
                          29
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 93 (Flapjack.Spt.ls 63))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7
                                (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 0)))))))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 36 (Flapjack.Spt.ls 24)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 64 (Flapjack.Spt.ls 57)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 44
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 24 (Flapjack.Spt.ls 97)) 2
                              (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 37 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 53) (Flapjack.Spt.ls 64)))))
                        31
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 64 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 76 Flapjack.Spt.ln))
                            0
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 107))))
                          22
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 0 (Flapjack.Spt.ls 33)) 6
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 4 (Flapjack.Spt.ls 61)))
                            42
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 56 (Flapjack.Spt.ls 64)) 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 97) (Flapjack.Spt.ls 40))))))
                      2
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 84 (Flapjack.Spt.ls 2))
                              (Flapjack.Spt.ls 64)))
                          89
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 18) Flapjack.Spt.ln))
                            28
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 52) Flapjack.Spt.ln) 34
                              (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 81) (Flapjack.Spt.ls 75))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 24 Flapjack.Spt.ln))
                            3
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 52)) 105
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 72
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 34 Flapjack.Spt.ln))
                            1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 86
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 108 Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 6
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 86) (Flapjack.Spt.ls 28)))
                            89
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 103 (Flapjack.Spt.ls 86)) 23
                              (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 101))))
                          89
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 62) Flapjack.Spt.ln) 56
                              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 33)))
                            1
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 22 Flapjack.Spt.ln) 2
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 57)))))
                        5
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 61) (Flapjack.Spt.ls 7)) 89
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 107 (Flapjack.Spt.ls 35)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 64
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 36 (Flapjack.Spt.ls 47))))
                          5
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 33 (Flapjack.Spt.ls 64)) 31
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 1 (Flapjack.Spt.ls 64)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 12
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 86 (Flapjack.Spt.ls 66))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 34
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 61 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 76 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 86) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 35 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 74) (Flapjack.Spt.ls 86))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                            31
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 105 (Flapjack.Spt.ls 30)) 25
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                            34
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 6)) 22
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 0))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 101 (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 23 (Flapjack.Spt.ls 71)))
                            50
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 111) 60 (Flapjack.Spt.ls 105)) 36
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 36))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 67) Flapjack.Spt.ln) 86
                              (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 42)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 29 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 78) (Flapjack.Spt.ls 34)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 23 Flapjack.Spt.ln) 58
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 1 (Flapjack.Spt.ls 42)))
                            23
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 48 (Flapjack.Spt.ls 33))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 107 (Flapjack.Spt.ls 79)) 39
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.ls 34)))
                            28
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 23)) 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 64) (Flapjack.Spt.ls 93))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 15
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 37 (Flapjack.Spt.ls 108))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 78 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 10 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 54) Flapjack.Spt.ln) 43
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 4 (Flapjack.Spt.ls 37))
                              Flapjack.Spt.ln)
                            86
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 62 (Flapjack.Spt.ls 71)) 79
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))
                          32
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 39
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 47 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 106 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 39
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 108)))
                            108
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 108 (Flapjack.Spt.ls 5))
                              (Flapjack.Spt.ls 62)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 47
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 47)))
                            0
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 46
                              (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 57) (Flapjack.Spt.ls 4)) 27
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 56 (Flapjack.Spt.ls 80)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 22
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 27 Flapjack.Spt.ln)))
                          27
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 97)) 22
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 6 (Flapjack.Spt.ls 23)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 34 Flapjack.Spt.ln)))))
                      4
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 1)) 44
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 79 Flapjack.Spt.ln))
                            50
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))
                          41
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 46 (Flapjack.Spt.ls 95))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                            1
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 107 (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 56 (Flapjack.Spt.ls 64))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 84 (Flapjack.Spt.ls 47))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 45) (Flapjack.Spt.ls 23))))
                          3
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 13))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 71) (Flapjack.Spt.ls 0)))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 93)) 4
                              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 86)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 0)) 79
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60))))
                          1
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 22 Flapjack.Spt.ln) 7
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 55)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 0 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 4 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 25 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 26 (Flapjack.Spt.ls 55)))
                            28
                            (Flapjack.Spt.bs Flapjack.Spt.ln 58
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 50) (Flapjack.Spt.ls 31))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 48 (Flapjack.Spt.ls 83)) 86
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 107)))
                            89
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 30 (Flapjack.Spt.ls 91))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 1 (Flapjack.Spt.ls 89))))))
                      33
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 86 (Flapjack.Spt.ls 32))
                              (Flapjack.Spt.ls 47)))
                          3
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 18)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                            23
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 2)) 27
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                        2
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 28))
                              (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 42)) 44
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 107
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 64 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 38
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 63) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 56
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 3)))
                            29
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 28 (Flapjack.Spt.ls 48))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 66))))
                          50
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 60) Flapjack.Spt.ln) 32
                              (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 29)))
                            50
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 67) (Flapjack.Spt.ls 1)) 33
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 94 (Flapjack.Spt.ls 106)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 47
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 78))))
                          32
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 91)) 47
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 72 (Flapjack.Spt.ls 25)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 38 Flapjack.Spt.ln)))))
                      4
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 79 (Flapjack.Spt.ls 41))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 26 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 81) 62 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 48 (Flapjack.Spt.ls 48))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 94 (Flapjack.Spt.ls 5))
                              Flapjack.Spt.ln)
                            24
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.ls 25)) 78
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                            0
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 96) (Flapjack.Spt.ls 65))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 26)) 14
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 89)))
                            42
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 34 (Flapjack.Spt.ls 58)) 59
                              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 93))))
                          4
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 57) Flapjack.Spt.ln) 44
                              (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 94)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 24 Flapjack.Spt.ln) 2
                              (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 39)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 64) (Flapjack.Spt.ls 2)) 42
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 48 (Flapjack.Spt.ls 62)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 60 (Flapjack.Spt.ls 29))))
                          1
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 36 (Flapjack.Spt.ls 25)) 56
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 1 (Flapjack.Spt.ls 31)))
                            22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 105 (Flapjack.Spt.ls 101))))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 32 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 2 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 71) (Flapjack.Spt.ls 55))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        22
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 84 (Flapjack.Spt.ls 39))
                              Flapjack.Spt.ln)
                            8
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 69 (Flapjack.Spt.ls 79)) 106
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 96) Flapjack.Spt.ln)))
                          26
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 56
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 78 Flapjack.Spt.ln))
                            38
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 47
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 84) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 2 (Flapjack.Spt.ls 31))
                              (Flapjack.Spt.ls 35)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln) 22
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 22 (Flapjack.Spt.ls 78)))
                            32
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln) 40
                              (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1)))))
                        89
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72)) 66
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 29 (Flapjack.Spt.ls 43)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 105)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 87 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 62 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 56)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 29 Flapjack.Spt.ln)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 35 (Flapjack.Spt.ls 1)) 55
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 32 Flapjack.Spt.ln))
                            42
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 84))))
                          33
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 48 (Flapjack.Spt.ls 46)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 10 (Flapjack.Spt.ls 2)))
                            48
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 94 (Flapjack.Spt.ls 56))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                        1
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 29 (Flapjack.Spt.ls 91)) 0
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 86 (Flapjack.Spt.ls 23))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 82) (Flapjack.Spt.ls 25))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 50
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 33)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 3 (Flapjack.Spt.ls 60))))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 56)) 5
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.ls 90)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 1)) 62
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 107))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 87 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 45 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 4 (Flapjack.Spt.ls 103)))))
                        22
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 28 (Flapjack.Spt.ls 3)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 10 (Flapjack.Spt.ls 63)))
                            106
                            (Flapjack.Spt.bs Flapjack.Spt.ln 105
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 60))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 48)) 58
                              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                            40
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 93 (Flapjack.Spt.ls 32)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 3 (Flapjack.Spt.ls 94))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 58 (Flapjack.Spt.ls 64))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 Flapjack.Spt.ln)))
                          33
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 21) Flapjack.Spt.ln) Flapjack.Spt.ln) 47
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 58) Flapjack.Spt.ln) 31
                              (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 77) (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.ls 87))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 69)) 45
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 55
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 103 Flapjack.Spt.ln))
                            49
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 5
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 78 Flapjack.Spt.ln))))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 77) (Flapjack.Spt.ls 64)))
                            33
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 64 (Flapjack.Spt.ls 35))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 47))))
                          2
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln) 34
                              (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 93)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 55) Flapjack.Spt.ln) 1
                              (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 105)))))
                        33
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln) 56
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 40 (Flapjack.Spt.ls 32)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 28
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 34 (Flapjack.Spt.ls 66))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 103 (Flapjack.Spt.ls 32)) 27
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 27)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 41 (Flapjack.Spt.ls 78))))))
                      3
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 22
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 69 Flapjack.Spt.ln))
                            3
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 27 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 77) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 79 (Flapjack.Spt.ls 6))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 0 (Flapjack.Spt.ls 41))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 67)) Flapjack.Spt.ln)
                            27
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 54) (Flapjack.Spt.ls 7)) 108
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 62) (Flapjack.Spt.ls 0))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln))
                            30
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 80)) 18
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 75) (Flapjack.Spt.ls 94)))
                            107
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 36 (Flapjack.Spt.ls 95)) 30
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                          23
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln) 48
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 40)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 59 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 40)))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 53) (Flapjack.Spt.ls 1)) 86
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 40)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 38
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 46 (Flapjack.Spt.ls 93))))
                          1
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 60 (Flapjack.Spt.ls 27)) 89
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 5 (Flapjack.Spt.ls 36)))
                            25
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 6
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 50) (Flapjack.Spt.ls 30))))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bn (Flapjack.Spt.ls 101) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 45 (Flapjack.Spt.ls 97))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 75) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 6 (Flapjack.Spt.ls 5))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.ls 63))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                        89
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 72 (Flapjack.Spt.ls 7))
                              Flapjack.Spt.ln)
                            36
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 41 (Flapjack.Spt.ls 94)) 56
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                          33
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 89
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 66 Flapjack.Spt.ln))
                            50
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 6
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 42
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 23)))
                            78
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 23 (Flapjack.Spt.ls 79))
                              (Flapjack.Spt.ls 79)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 66
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 87 (Flapjack.Spt.ls 66)))
                            39 (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 32))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln) 47
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 31 (Flapjack.Spt.ls 26)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 24 Flapjack.Spt.ln)))
                          23
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 6
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 41 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 106 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 46
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 34 Flapjack.Spt.ln))
                            107
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 72))))
                          89
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 55 (Flapjack.Spt.ls 58)) 7
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 8 (Flapjack.Spt.ls 2)))
                            2
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 40 (Flapjack.Spt.ls 45))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 61)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 31 (Flapjack.Spt.ls 32))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 58 (Flapjack.Spt.ls 66))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 1 (Flapjack.Spt.ls 108))))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 35 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 83)
                                (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 0))))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 106))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 108 (Flapjack.Spt.ls 60)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 56
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln) 58
                              (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 69)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 31 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 3 (Flapjack.Spt.ls 36)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 108 (Flapjack.Spt.ls 1)) 6
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 43 (Flapjack.Spt.ls 69)))
                            47
                            (Flapjack.Spt.bs Flapjack.Spt.ln 86
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 72 (Flapjack.Spt.ls 36))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 55 (Flapjack.Spt.ls 74)) 42
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7 (Flapjack.Spt.ls 60)))
                            33
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 101 (Flapjack.Spt.ls 108)) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 0 (Flapjack.Spt.ls 33))))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 19
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 38 (Flapjack.Spt.ls 91))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 66 Flapjack.Spt.ln)))
                          22
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 14 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 65) Flapjack.Spt.ln) 24
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                        0
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 96)) Flapjack.Spt.ln)
                            55
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 79 (Flapjack.Spt.ls 60)) 62
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 42
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 Flapjack.Spt.ln))
                            5
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 13
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 61) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 89
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 2)))
                            25
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 81) 25 (Flapjack.Spt.ls 83))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 78))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 54) Flapjack.Spt.ln) 28
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 101 (Flapjack.Spt.ls 101)))
                            107
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 50
                              (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln) 31
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 89 (Flapjack.Spt.ls 76)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 66
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 Flapjack.Spt.ln)))
                          0
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 108)) 66
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 61 (Flapjack.Spt.ls 108)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 45 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 62 (Flapjack.Spt.ls 62))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 0))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 41 (Flapjack.Spt.ls 105))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 55 (Flapjack.Spt.ls 39))
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 89 (Flapjack.Spt.ls 50))
                              Flapjack.Spt.ln)
                            22
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 72 (Flapjack.Spt.ls 101))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 57) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 60 (Flapjack.Spt.ls 2))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.ls 61))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 43)) 10
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 69) (Flapjack.Spt.ls 31)))
                            39
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 33 (Flapjack.Spt.ls 46)) 26
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                          33
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln) 89
                              (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 89)))
                            3
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 87 Flapjack.Spt.ln) 36
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 69)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 50) (Flapjack.Spt.ls 1)) 39
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 55 (Flapjack.Spt.ls 79)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 39 (Flapjack.Spt.ls 101))))
                          0
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 34 (Flapjack.Spt.ls 50)) 33
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 7 (Flapjack.Spt.ls 103)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 10
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 58 (Flapjack.Spt.ls 47))))))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 65 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 106 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 69) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 32 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 4 (Flapjack.Spt.ls 90))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 58 (Flapjack.Spt.ls 30))
                              Flapjack.Spt.ln)
                            56
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 39 (Flapjack.Spt.ls 33)) 29
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 102) Flapjack.Spt.ln)))
                          22
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bn (Flapjack.Spt.ls 80) Flapjack.Spt.ln))
                            36
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 66
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 75) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 72 (Flapjack.Spt.ls 28))
                              (Flapjack.Spt.ls 103)))
                          41
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln))
                            26
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 63) Flapjack.Spt.ln) 36
                              (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 0)))))
                        31
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 71) (Flapjack.Spt.ls 84)) 22
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 59 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 57))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 79 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 55
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 25 Flapjack.Spt.ln)))))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 2)) 105
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 106 (Flapjack.Spt.ls 6)))
                            39
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 58))))
                          26
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 68) (Flapjack.Spt.ls 86)) 11
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 4 (Flapjack.Spt.ls 65)))
                            46
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 89 (Flapjack.Spt.ls 93))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 86)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 59 (Flapjack.Spt.ls 108)) 4
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 38 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 28))))
                          89
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 37
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 105))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 2 (Flapjack.Spt.ls 38)))))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 44)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 29 (Flapjack.Spt.ls 58)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 42
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 108 (Flapjack.Spt.ls 78))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 65)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 35 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 31)))))
                        24
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 29 Flapjack.Spt.ln) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 101 (Flapjack.Spt.ls 65)))
                            34
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 56) (Flapjack.Spt.ls 2))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 98) (Flapjack.Spt.ls 37)) 49
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 7 (Flapjack.Spt.ls 55)))
                            38
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 32 (Flapjack.Spt.ls 53)) 7
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 87) (Flapjack.Spt.ls 62))))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 109) 3 (Flapjack.Spt.ls 29))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 30 Flapjack.Spt.ln)))
                          56
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 19) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 20) Flapjack.Spt.ln))
                            59
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 33
                              (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 102) (Flapjack.Spt.ls 58))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 108 Flapjack.Spt.ln))
                            0
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 90)) 55
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 61) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 50
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 56 Flapjack.Spt.ln))
                            0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 43 Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 4
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 96) (Flapjack.Spt.ls 29)))
                            56
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 31 (Flapjack.Spt.ls 96)) 22
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 80))))
                          37
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 36
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 32 (Flapjack.Spt.ls 32)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 84)))))
                        0
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 1)) 7
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 41 (Flapjack.Spt.ls 33)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 45 (Flapjack.Spt.ls 26))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 0 (Flapjack.Spt.ls 53)) 29
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 1 (Flapjack.Spt.ls 28)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 60 (Flapjack.Spt.ls 43))))))
                      5
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 56
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 55 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 101 Flapjack.Spt.ln) 4
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 96) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 89 (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 1 (Flapjack.Spt.ls 38))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 41 (Flapjack.Spt.ls 45))
                              Flapjack.Spt.ln)
                            29
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 72 (Flapjack.Spt.ls 28)) 24
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 66) Flapjack.Spt.ln))
                            32
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 84)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 1))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 101)) 20
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 22 (Flapjack.Spt.ls 83)))
                            58
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 38 (Flapjack.Spt.ls 84)) 64
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 45))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 49
                              (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 41)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 28 Flapjack.Spt.ln)
                              (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 (Flapjack.Spt.ls 5)) 46
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 62) (Flapjack.Spt.ls 41)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 40
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 58 (Flapjack.Spt.ls 32))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 39 (Flapjack.Spt.ls 89)) 79
                              (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 37)))
                            26
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) 5
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 2 (Flapjack.Spt.ls 106))))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 13
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 10 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 34 (Flapjack.Spt.ls 87)) 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 95) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 8 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 65)) 78
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        50
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 48))
                              Flapjack.Spt.ln)
                            6
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 40 (Flapjack.Spt.ls 83)) 89
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln)))
                          0
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 79
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 26 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 4 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 62
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 51) (Flapjack.Spt.ls 87)))
                            43
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 87 (Flapjack.Spt.ls 99))
                              (Flapjack.Spt.ls 2)))
                          6
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 26
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 108 (Flapjack.Spt.ls 26)))
                            62
                            (Flapjack.Spt.bs Flapjack.Spt.ln 86
                              (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 1)) 11
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 103 (Flapjack.Spt.ls 47)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 Flapjack.Spt.ln)))
                          25
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 78)) 11
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 107 (Flapjack.Spt.ls 22)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 13
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 33 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 86
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 89 Flapjack.Spt.ln))
                            58
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln)))
                          32
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 94) (Flapjack.Spt.ls 75)) 6
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 1 Flapjack.Spt.ln))
                            0
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 41 (Flapjack.Spt.ls 35))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                        1
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 103 (Flapjack.Spt.ls 53))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 39 (Flapjack.Spt.ls 26))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 0 (Flapjack.Spt.ls 87))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 37)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 104) (Flapjack.Spt.ls 69)))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 73)) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 54)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 69 Flapjack.Spt.ln) 89
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) 53
                              (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 52)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 103 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 4 (Flapjack.Spt.ls 45)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24 (Flapjack.Spt.ls 2)) 72
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 66 (Flapjack.Spt.ls 52)))
                            59
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 37))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 61 (Flapjack.Spt.ls 94)) 44
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 42)))
                            56
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 76 (Flapjack.Spt.ls 24)) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 3 (Flapjack.Spt.ls 35))))))
                      22
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 21 (Flapjack.Spt.bn (Flapjack.Spt.ls 50) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 60 (Flapjack.Spt.ls 59))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 Flapjack.Spt.ln)))
                          24
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 16)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 25
                              Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 86)) Flapjack.Spt.ln)
                            105
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 89 (Flapjack.Spt.ls 54)) 42
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 52) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 29 Flapjack.Spt.ln))
                            8
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 8
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.ls 59)))
                            27
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 59 (Flapjack.Spt.ls 3))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 43))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 30
                              (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 76)))
                            58
                            (Flapjack.Spt.bs Flapjack.Spt.ln 72
                              (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 2)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 2)) 106
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 79 (Flapjack.Spt.ls 29)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 26
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 106 Flapjack.Spt.ln)))
                          29
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0)) 26
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 105 (Flapjack.Spt.ls 24)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 0 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 39
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 40 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 4
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.ls 1))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 40 (Flapjack.Spt.ls 72))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 54) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 109) 61 (Flapjack.Spt.ls 62))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 79 (Flapjack.Spt.ls 3))
                              Flapjack.Spt.ln)
                            43
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 0))))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 22
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 86 (Flapjack.Spt.ls 4))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 48))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 66)) 12
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 90) (Flapjack.Spt.ls 34)))
                            62
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 45 (Flapjack.Spt.ls 38)) 47
                              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 106))))
                          31
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 79
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 37 (Flapjack.Spt.ls 79)))
                            4
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 108 Flapjack.Spt.ln) 2
                              (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 107)))))
                        4
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 1)) 62
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 61 (Flapjack.Spt.ls 94)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 40 (Flapjack.Spt.ls 76))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 37 (Flapjack.Spt.ls 24)) 34
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 56)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 49 (Flapjack.Spt.ls 5))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 93 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 90) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 2 (Flapjack.Spt.ls 52))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 57 (Flapjack.Spt.ls 51))
                              Flapjack.Spt.ln)
                            89
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 58 (Flapjack.Spt.ls 89)) 31
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
                          24
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bn (Flapjack.Spt.ls 101) Flapjack.Spt.ln))
                            6
                            (Flapjack.Spt.bs Flapjack.Spt.ln 26
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 95) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 99) (Flapjack.Spt.ls 44))
                              (Flapjack.Spt.ls 56)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))
                            34
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 38
                              (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2)))))
                        56
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 104) (Flapjack.Spt.ls 105)) 23
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 28 (Flapjack.Spt.ls 78)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 84)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 94 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 105
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 27 Flapjack.Spt.ln)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 4)) 50
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 93 (Flapjack.Spt.ls 1)))
                            62
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 45) (Flapjack.Spt.ls 57))))
                          28
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 65 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 4 Flapjack.Spt.ln))
                            45
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 79 (Flapjack.Spt.ls 103))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 28 (Flapjack.Spt.ls 70)) 1
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 60 (Flapjack.Spt.ls 22))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 2 (Flapjack.Spt.ls 59))))
                          34
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 72))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 2 (Flapjack.Spt.ls 39))))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 32 (Flapjack.Spt.ls 103)) 0
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 59 (Flapjack.Spt.ls 46)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 61 (Flapjack.Spt.ls 0)) 39
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 23 Flapjack.Spt.ln) 72
                              (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 61)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 33 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 3 (Flapjack.Spt.ls 56)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 59 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 47 (Flapjack.Spt.ls 61)))
                            30
                            (Flapjack.Spt.bs Flapjack.Spt.ln 4
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 82) (Flapjack.Spt.ls 38))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 65 (Flapjack.Spt.ls 104)) 46
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 69)))
                            37
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 106 (Flapjack.Spt.ls 59)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 0 (Flapjack.Spt.ls 79))))))
                      50
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 61) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 46 (Flapjack.Spt.ls 53))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 59 Flapjack.Spt.ln)))
                          5
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 20) Flapjack.Spt.ln) 5
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) 29
                              (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 2)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 96) (Flapjack.Spt.ls 46))
                              (Flapjack.Spt.ls 23))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 107)) 107
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 63) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 37
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 31 Flapjack.Spt.ln))
                            45
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 40
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 102) (Flapjack.Spt.ls 4)))
                            31
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 29 (Flapjack.Spt.ls 37))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 26))))
                          42
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) 106
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 106 (Flapjack.Spt.ls 106)))
                            8
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 0
                              (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 72)))))
                        22
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 2)) 34
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 62 (Flapjack.Spt.ls 93)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 59
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 33 (Flapjack.Spt.ls 43))))
                          35
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 59)) 11
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 59)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 40 Flapjack.Spt.ln)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 89
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 107 Flapjack.Spt.ln))
                            5
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 47 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 102) (Flapjack.Spt.ls 3))))
                          2
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 94 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 60) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 65 (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)))))
                        56
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 98)) Flapjack.Spt.ln)
                            25
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 0 (Flapjack.Spt.ls 106)) 43
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 1))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 55) Flapjack.Spt.ln))
                            27
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 0))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 86) Flapjack.Spt.ln)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 47)) 16
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 100) (Flapjack.Spt.ls 79)))
                            44
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 37 (Flapjack.Spt.ls 75)) 28
                              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 32))))
                          25
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) 62
                              (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 62)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 25 Flapjack.Spt.ln) 1
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))))
                        2
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln) 44
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 65 (Flapjack.Spt.ls 2)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 37
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 86 (Flapjack.Spt.ls 106))))
                          1
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 38 (Flapjack.Spt.ls 44)) 7
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 1 (Flapjack.Spt.ls 45)))
                            43
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 82) (Flapjack.Spt.ls 76))))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 9
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 1 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 33 (Flapjack.Spt.ls 78)) 4
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 100) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 4 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 57) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 92) (Flapjack.Spt.ls 61))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                        33
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 105 (Flapjack.Spt.ls 62))
                              Flapjack.Spt.ln)
                            40
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 107 (Flapjack.Spt.ls 36)) 2
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 86) Flapjack.Spt.ln)))
                          28
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 7
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 43 Flapjack.Spt.ln))
                            42
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 59
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 57) (Flapjack.Spt.ls 22)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 22 (Flapjack.Spt.ls 89))
                              (Flapjack.Spt.ls 89)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 23
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 23 (Flapjack.Spt.ls 43)))
                            35
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41
                              (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 0)))))
                        50
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln) 26
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 64 (Flapjack.Spt.ls 66)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 72)) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 108 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 40 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 3
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 31 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 89)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 56 Flapjack.Spt.ln))
                            44
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 57) (Flapjack.Spt.ls 105))))
                          56
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 61 (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 9 (Flapjack.Spt.ls 1)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 62 (Flapjack.Spt.ls 33))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 55)))))
                        1
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 64 (Flapjack.Spt.ls 59)) 2
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 46 (Flapjack.Spt.ls 43))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 1 (Flapjack.Spt.ls 24))))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 72 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 45 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 94) (Flapjack.Spt.ls 42)))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 76 (Flapjack.Spt.ls 23))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 87 (Flapjack.Spt.ls 92)))
                            72
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 72)) 5
                              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 37))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln) 51
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 107)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 64 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 4 (Flapjack.Spt.ls 37)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 87 (Flapjack.Spt.ls 1)) 12
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 78 (Flapjack.Spt.ls 107)))
                            108
                            (Flapjack.Spt.bs Flapjack.Spt.ln 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 2 (Flapjack.Spt.ls 45))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 69 (Flapjack.Spt.ls 99)) 62
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 38)))
                            31
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.ls 87)) 6
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 1 (Flapjack.Spt.ls 32))))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 17
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 36 (Flapjack.Spt.ls 24))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 43 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 12 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 67) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln) 108
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.ls 33))
                              Flapjack.Spt.ln)
                            46
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 94 (Flapjack.Spt.ls 92)) 39
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 58) Flapjack.Spt.ln)))
                          35
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 62
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 59 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 34 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 79
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 62) (Flapjack.Spt.ls 24)))
                            24
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 24 (Flapjack.Spt.ls 94))
                              (Flapjack.Spt.ls 40)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln) 27
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 80)))
                            41
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 58
                              (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 3)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 6)) 29
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 34 (Flapjack.Spt.ls 101)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 20 (Flapjack.Spt.ls 10)) 23
                              (Flapjack.Spt.ls 29)))
                          31
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 87)) 23
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 55 (Flapjack.Spt.ls 87)))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 8
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 35 Flapjack.Spt.ln)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 42 (Flapjack.Spt.ls 94)) 72
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 3
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 62) (Flapjack.Spt.ls 3))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 86 (Flapjack.Spt.ls 84))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 69 (Flapjack.Spt.ls 51))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 105 (Flapjack.Spt.ls 80))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 22))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 12))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 92)
                                (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 1)))))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55)) 8
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 107) (Flapjack.Spt.ls 30)))
                            79
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 4 (Flapjack.Spt.ls 36)) 66
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 76))))
                          56
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln) 4
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 45 (Flapjack.Spt.ls 35)))
                            2
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 58)))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) 79
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 69 (Flapjack.Spt.ls 89)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 36
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 37 (Flapjack.Spt.ls 0))))
                          1
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 45 (Flapjack.Spt.ls 29)) 106
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 1 (Flapjack.Spt.ls 30)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 11
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 46 (Flapjack.Spt.ls 26))))))
                      5
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 1
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 48 Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 30 Flapjack.Spt.ln) 0
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 107) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 56 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 62) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 0 (Flapjack.Spt.ls 46))
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 57)) Flapjack.Spt.ln)
                            33
                            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 84 (Flapjack.Spt.ls 9)) 27
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln))
                            29
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 23
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 58) Flapjack.Spt.ln))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.bn (Flapjack.Spt.ls 67) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 105 (Flapjack.Spt.ls 27))
                              (Flapjack.Spt.ls 32)))
                          26
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 16) Flapjack.Spt.ln))
                            30
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln) 35
                              (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 1)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 92) (Flapjack.Spt.ls 95))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 25 Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 55))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 5
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 89 Flapjack.Spt.ln))
                            1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 46
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 24 Flapjack.Spt.ln)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 30 Flapjack.Spt.ln))
                            35
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 67) (Flapjack.Spt.ls 69))))
                          24
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 109) (Flapjack.Spt.ls 96)) 72
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 4 (Flapjack.Spt.ls 63)))
                            86
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 34 (Flapjack.Spt.ls 29))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 78) (Flapjack.Spt.ls 41)))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 25 (Flapjack.Spt.ls 87))
                              (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 36 Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 64) (Flapjack.Spt.ls 29))))
                          56
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 84))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 89) (Flapjack.Spt.ls 37)))))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 25
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 78) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 27 Flapjack.Spt.ln)))
                          24
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 93) Flapjack.Spt.ln)) 32
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63)) 56
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 40 (Flapjack.Spt.ls 79))
                              (Flapjack.Spt.ls 87)))
                          Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 27))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 58)))
                            60
                            (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 53)) 58
                              (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 61)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 78))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 89) Flapjack.Spt.ln))))
                        24
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 57
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 87) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 94))))
                          31
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 84 (Flapjack.Spt.ls 58))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 68) (Flapjack.Spt.ls 27))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 89)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 65) (Flapjack.Spt.ls 86))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 98) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 48)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 107) Flapjack.Spt.ln) 40
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 87 (Flapjack.Spt.ls 97))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 107
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 69))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 95))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 87))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 28
                              (Flapjack.Spt.bs Flapjack.Spt.ln 101 (Flapjack.Spt.ls 106)))
                            33
                            (Flapjack.Spt.bs Flapjack.Spt.ln 42
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 35 Flapjack.Spt.ln))))
                        22
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 35 (Flapjack.Spt.ls 32)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22))))
                          34
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 30 (Flapjack.Spt.ls 31))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 80)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 66) Flapjack.Spt.ln)
                              (Flapjack.Spt.ls 34)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 94) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 58))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 70) Flapjack.Spt.ln))
                            23
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 108
                              Flapjack.Spt.ln)))
                        23
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 31 (Flapjack.Spt.ls 64))
                              Flapjack.Spt.ln))
                          25
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln) Flapjack.Spt.ln))))
                      22
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 67))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 83)))
                            30
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                          35
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 78)) 89
                              (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 62)))
                            46
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 108)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 46 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 39 (Flapjack.Spt.ls 40)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 29))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 94 (Flapjack.Spt.ls 48))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 66))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 101)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 90))
                              (Flapjack.Spt.ls 33))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 42
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 101) (Flapjack.Spt.ls 65))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 45)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 53))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 92) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) 25
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 85) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 84) Flapjack.Spt.ln) Flapjack.Spt.ln) 32
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 71) (Flapjack.Spt.ls 94))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 87)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 100) (Flapjack.Spt.ls 41))
                              (Flapjack.Spt.ls 93)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 24))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 101 (Flapjack.Spt.ls 26)))
                            50 (Flapjack.Spt.ls 45))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 78 (Flapjack.Spt.ls 32))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 36 Flapjack.Spt.ln))
                            38 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 108))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 78
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 87 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 53) Flapjack.Spt.ln))
                            28
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 29
                              Flapjack.Spt.ln)))
                        26
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 81) 89 (Flapjack.Spt.ls 30))
                              Flapjack.Spt.ln))
                          30 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 101 (Flapjack.Spt.ls 30))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 54)))
                            35
                            (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 89))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 70)) 48
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 107)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 86
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 105) (Flapjack.Spt.ls 69)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 56))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 86 (Flapjack.Spt.ls 86))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 101))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 93)))))))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.ls 37))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.bn (Flapjack.Spt.ls 73) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 51)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 103))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))))
                        50
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) 33
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 82) Flapjack.Spt.ln) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 111) Flapjack.Spt.ln) Flapjack.Spt.ln) 39
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 54) (Flapjack.Spt.ls 60))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 108))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 59)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))
                              (Flapjack.Spt.ls 36)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 66
                              (Flapjack.Spt.bs Flapjack.Spt.ln 87 (Flapjack.Spt.ls 80)))
                            26 (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 31))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 47
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 93 (Flapjack.Spt.ls 76)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 108)))
                          27
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 47 (Flapjack.Spt.ls 50))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 43)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 29)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 89) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 86))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 78) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 84) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 84) Flapjack.Spt.ln) 46
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 59 (Flapjack.Spt.ls 91))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 52) (Flapjack.Spt.ls 84))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                            26
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 59))))
                          31
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34
                              (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 35)))
                            40
                            (Flapjack.Spt.bs Flapjack.Spt.ln 55
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 40 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 56
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 60 (Flapjack.Spt.ls 79)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 24))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 56 (Flapjack.Spt.ls 74))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 106)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 101) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 66)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 54))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 72)))
                            105
                            (Flapjack.Spt.bs Flapjack.Spt.ln 89
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 66) (Flapjack.Spt.ls 90))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 24))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 94) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 80) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 86))))
                          35
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.ls 105))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84)))
                            24
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 74) (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 55 (Flapjack.Spt.ls 83))
                              (Flapjack.Spt.ls 27)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 66 Flapjack.Spt.ln))
                            42 (Flapjack.Spt.ls 62))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 70) (Flapjack.Spt.ls 108))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 93 Flapjack.Spt.ln))
                            34 (Flapjack.Spt.ls 33))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 108
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 24 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 106) Flapjack.Spt.ln)) 26
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 75)) 106
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 94 (Flapjack.Spt.ls 33))
                              (Flapjack.Spt.ls 22)))
                          35 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 39))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 87 (Flapjack.Spt.ls 46)))
                            40
                            (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 94))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 59)) 86
                              (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 52)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 64)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln))))
                        33
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 58
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 78) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 89))))
                          25
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 81) 58 (Flapjack.Spt.ls 46))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 88) (Flapjack.Spt.ls 25))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 49))
                              (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 72
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 62)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 33))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 69) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 60) Flapjack.Spt.ln) 89
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 41
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 65) (Flapjack.Spt.ls 42))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 91))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 22))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 47
                              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 76)))
                            29 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 33))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 28
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 33 (Flapjack.Spt.ls 106)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                          56
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 101 (Flapjack.Spt.ls 28))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 26)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 55) Flapjack.Spt.ln) 50
                              (Flapjack.Spt.ls 106)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 99) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 46))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 87) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 78
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln) 105
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 29 (Flapjack.Spt.ls 32))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 63) (Flapjack.Spt.ls 72))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 79)))
                            59
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 28))))
                          29
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 56
                              (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 79)))
                            42
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 101) 60 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 89
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 46 (Flapjack.Spt.ls 62)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 59))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 89 (Flapjack.Spt.ls 83))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 78))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 47)))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 107))
                              (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 39
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.ls 61))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 98)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 59))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 104) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 93) Flapjack.Spt.ln) 43
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 76) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 90))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 65) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72)))
                            59
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 83) (Flapjack.Spt.ls 79))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 86))))))
                      23
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 48 (Flapjack.Spt.ls 48))
                              (Flapjack.Spt.ls 31)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 87))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 47 (Flapjack.Spt.ls 43)))
                            107 (Flapjack.Spt.ls 44))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 80) (Flapjack.Spt.ls 91))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 34 Flapjack.Spt.ln))
                            36 (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 78))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 22 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 95))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 59) Flapjack.Spt.ln))
                            47
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) 25
                              Flapjack.Spt.ln)))
                        33
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 56 (Flapjack.Spt.ls 27))
                              Flapjack.Spt.ln))
                          31 Flapjack.Spt.ln))
                      50
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 25))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 92)))
                            34
                            (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 56))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 87)) 44
                              (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 41)))
                            48
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 49 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 48
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 105 (Flapjack.Spt.ls 42)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 31))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 40 (Flapjack.Spt.ls 35))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 79)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 47))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 30)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 38))
                              (Flapjack.Spt.ls 45))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 107
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 57)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 29))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))))
                        56
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) 29
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 73) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 100) Flapjack.Spt.ln) Flapjack.Spt.ln) 29
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.ls 71))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 97))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 111) (Flapjack.Spt.ls 86))
                              (Flapjack.Spt.ls 34)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22
                              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)))
                            43 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 27))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 66
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 30 (Flapjack.Spt.ls 80)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 23)))
                          23
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 85) 66 (Flapjack.Spt.ls 64))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 38 Flapjack.Spt.ln))
                            50 (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 25)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 51))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 75) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 58) Flapjack.Spt.ln) 60
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 24 (Flapjack.Spt.ls 108))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 50
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 58) (Flapjack.Spt.ls 58))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 64))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                            23
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 24))))
                          25
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32
                              (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 32)))
                            89
                            (Flapjack.Spt.bs Flapjack.Spt.ln 107
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 37 Flapjack.Spt.ln))))
                        89
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 36 (Flapjack.Spt.ls 35)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 87))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 93 (Flapjack.Spt.ls 79))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 76)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 78)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 37))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 84)))
                            46
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 55) (Flapjack.Spt.ls 86))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 29)) 57
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 65)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 87))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 99) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 101) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 70) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                          30
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 72 (Flapjack.Spt.ls 95))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 79) (Flapjack.Spt.ls 30))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 94))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 107 (Flapjack.Spt.ls 37))
                              (Flapjack.Spt.ls 24)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 78 Flapjack.Spt.ln))
                            39
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 67)) 79 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 87) (Flapjack.Spt.ls 97))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 31 Flapjack.Spt.ln))
                            30 (Flapjack.Spt.ls 29)))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 24
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 25 Flapjack.Spt.ln)))
                          22
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 73) Flapjack.Spt.ln)) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61)) 32
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 62 (Flapjack.Spt.ls 89))
                              (Flapjack.Spt.ls 23)))
                          50 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 62))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 90)))
                            36
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 51
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 55)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
                        23
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 53
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 97) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 79))))
                          27
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 57 (Flapjack.Spt.ls 38))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 86)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 109) (Flapjack.Spt.ls 106))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 61))
                              (Flapjack.Spt.ls 60))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 45))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 90) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln) 79
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 23 (Flapjack.Spt.ls 78))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 44
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 107))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 59))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 64)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 75))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 23))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27
                              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29)))
                            31
                            (Flapjack.Spt.bs Flapjack.Spt.ln 62
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 34 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 45 (Flapjack.Spt.ls 93)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                          89
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 103) 76 (Flapjack.Spt.ls 44))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 47)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln) 72
                              (Flapjack.Spt.ls 33)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 74) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 108) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 43
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 64 (Flapjack.Spt.ls 53))
                              Flapjack.Spt.ln))
                          23
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 98))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 94)))
                            28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 64))))
                          30
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 39
                              (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 94)))
                            86
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 87)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 86 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 79
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 58 (Flapjack.Spt.ls 38)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 28))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 79 (Flapjack.Spt.ls 104))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 64) (Flapjack.Spt.ls 43))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 27)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 69))
                              (Flapjack.Spt.ls 103))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 62
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 80) (Flapjack.Spt.ls 63))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 67)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 32))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 71) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) 24
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln) Flapjack.Spt.ln) 30
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 104) (Flapjack.Spt.ls 37))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 65 (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.ls 106)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 78)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 108))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 27 (Flapjack.Spt.ls 66)))
                            58 (Flapjack.Spt.ls 107))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 101) (Flapjack.Spt.ls 59))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 45 Flapjack.Spt.ln))
                            26 (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 43))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 23 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 84))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                            59
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 27
                              Flapjack.Spt.ln)))
                        29
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 34 (Flapjack.Spt.ls 28))
                              Flapjack.Spt.ln))
                          29 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 57))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60)))
                            32
                            (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 108)) 62
                              (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 42)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 59)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 105 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 49
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 72 (Flapjack.Spt.ls 107)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 103))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 41 (Flapjack.Spt.ls 96))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 94)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 61) (Flapjack.Spt.ls 80))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 106)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 52))
                              (Flapjack.Spt.ls 36))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 45
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 106) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 93))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 54) Flapjack.Spt.ln))))
                        89
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) 31
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 93) Flapjack.Spt.ln) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 107) Flapjack.Spt.ln) Flapjack.Spt.ln) 36
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 92))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 87))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))
                              (Flapjack.Spt.ls 45)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23
                              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 47)))
                            25 (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 29))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 26
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 106 (Flapjack.Spt.ls 101)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 87)))
                          25
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 26 (Flapjack.Spt.ls 29))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 39 (Flapjack.Spt.ls 78)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 27)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                              (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 68) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 96)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 95) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 57) Flapjack.Spt.ln) 86
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 25 (Flapjack.Spt.ls 24))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 49
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 57))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                            66
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 25))))
                          27
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 106
                              (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 33)))
                            37
                            (Flapjack.Spt.bs Flapjack.Spt.ln 45
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 38 Flapjack.Spt.ln))))
                        50
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 36
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 38 (Flapjack.Spt.ls 89)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 108))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 109) 32 (Flapjack.Spt.ls 99))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 80) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 43)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 102))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 105)))
                            55
                            (Flapjack.Spt.bs Flapjack.Spt.ln 56
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 46))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 87 (Flapjack.Spt.ls 50)) 72
                              (Flapjack.Spt.ls 72))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 108))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 74) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 76) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 91) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                          32
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 84))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57)))
                            23
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 99) (Flapjack.Spt.ls 31))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 69 (Flapjack.Spt.ls 94))
                              (Flapjack.Spt.ls 25)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 66)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 43 Flapjack.Spt.ln))
                            62 (Flapjack.Spt.ls 39))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 108) (Flapjack.Spt.ls 87))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 106 Flapjack.Spt.ln))
                            32 (Flapjack.Spt.ls 31))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 43
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 108 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 85) Flapjack.Spt.ln))
                            30
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58)) 31
                              Flapjack.Spt.ln)))
                        50
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 79 (Flapjack.Spt.ls 44))
                              Flapjack.Spt.ln))
                          32 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 51))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 86)))
                            38
                            (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 79))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 91)) 49
                              (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 69)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln))))
                        22
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 51
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 72) (Flapjack.Spt.ls 52)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 35))))
                          23
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 46 (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 98) (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 63))
                              (Flapjack.Spt.ls 38))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.bn (Flapjack.Spt.ls 93) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 56))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 107) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln) 56
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 62
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 54))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 70))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50))
                              (Flapjack.Spt.ls 37)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 26
                              (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 101)))
                            27 (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 106))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 32 (Flapjack.Spt.ls 29)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                          31
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 93) 27 (Flapjack.Spt.ls 27))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 66)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 58
                              (Flapjack.Spt.ls 31)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 79) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 97) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln) 55
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 28 (Flapjack.Spt.ls 59))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 105))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 82))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 89)))
                            47
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 27))))
                          34
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 36
                              (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 89)))
                            38
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 105
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 41 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 39
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 86 (Flapjack.Spt.ls 94)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 25))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 35 (Flapjack.Spt.ls 94))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 93)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 76) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 26)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 42))
                              (Flapjack.Spt.ls 64))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 79
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 55))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 91))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 83) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 106) Flapjack.Spt.ln) 22
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 101) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 58) (Flapjack.Spt.ls 72))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105)))
                            26
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 94) (Flapjack.Spt.ls 89))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 61 (Flapjack.Spt.ls 38))
                              (Flapjack.Spt.ls 29)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 23))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.ls 78)))
                            41 (Flapjack.Spt.ls 42))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 91) (Flapjack.Spt.ls 24))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 33 Flapjack.Spt.ln))
                            29 (Flapjack.Spt.ls 56)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 83) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 75))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 91) Flapjack.Spt.ln))
                            108
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 86)) 24
                              Flapjack.Spt.ln)))
                        25
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 103 (Flapjack.Spt.ls 29))
                              Flapjack.Spt.ln))
                          27 Flapjack.Spt.ln))
                      33
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 45))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 71)))
                            106
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 103))))
                          50
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 97)) 79
                              (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 40)))
                            45
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 58 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 62
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 84 (Flapjack.Spt.ls 41)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 64))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 62 (Flapjack.Spt.ls 37))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 89)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 50) (Flapjack.Spt.ls 26))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 76)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 31))
                              (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.bn (Flapjack.Spt.ls 76) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 64))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 60) Flapjack.Spt.ln))))
                        31
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln) 27
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 106) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 90) Flapjack.Spt.ln) Flapjack.Spt.ln) 34
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 92) (Flapjack.Spt.ls 83))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 78))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 108)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 107) (Flapjack.Spt.ls 96))
                              (Flapjack.Spt.ls 33)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 66))) 22
                            (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 25))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 76 (Flapjack.Spt.ls 47)))
                            72 (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 22)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 43 (Flapjack.Spt.ls 53))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 37 Flapjack.Spt.ln))
                            42 (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 24)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 88) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 100) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 69) Flapjack.Spt.ln) 36
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 109) 108 (Flapjack.Spt.ls 87))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 58
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 44))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 53))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                            22
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 108))))
                          23
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30
                              (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 93)))
                            56
                            (Flapjack.Spt.bs Flapjack.Spt.ln 44
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 45 Flapjack.Spt.ln))))
                        33
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 106
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 37 (Flapjack.Spt.ls 33)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 23))))
                          50
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 106 (Flapjack.Spt.ls 89))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 101)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                              (Flapjack.Spt.ls 35))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 48))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 57)))
                            86
                            (Flapjack.Spt.bs Flapjack.Spt.ln 36
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 41))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 64)) 53
                              (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 63)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 97))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 79) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 72
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 108) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 62))))
                          29
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 105 (Flapjack.Spt.ls 75))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 90)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 89) (Flapjack.Spt.ls 28))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 79))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 41 (Flapjack.Spt.ls 99))
                              (Flapjack.Spt.ls 108)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln)) 35
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65)) 89 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 97) (Flapjack.Spt.ls 78))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 29 Flapjack.Spt.ln))
                            27 (Flapjack.Spt.ls 27))))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 47
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 59 Flapjack.Spt.ln)))
                          23
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 50) Flapjack.Spt.ln)) 56
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84)) 34
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 38 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.ls 43)))
                          Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 104))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 52)))
                            42
                            (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 76)) 52
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 57)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 22))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln))))
                        89
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 54
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 37))))
                          28
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 61 (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 107)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 29))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 105) (Flapjack.Spt.ls 41))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 71)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 89))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 86) Flapjack.Spt.ln) 39
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 43 (Flapjack.Spt.ls 23))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 86
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 69) (Flapjack.Spt.ls 46))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 101))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 106)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 43))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 59
                              (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 64)))
                            32
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 56 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 31
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 89 (Flapjack.Spt.ls 103)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                          32
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 29 (Flapjack.Spt.ls 30))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 25)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 87) Flapjack.Spt.ln)
                              (Flapjack.Spt.ls 103)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 35))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                            22
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 54)) 66
                              Flapjack.Spt.ln)))
                        22
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 106 (Flapjack.Spt.ls 25))
                              Flapjack.Spt.ln))
                          24
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 72) Flapjack.Spt.ln) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 87 (Flapjack.Spt.ls 44))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                            29
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 106))))
                          32
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 40
                              (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 34)))
                            107
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 66)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 107 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 42
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 55 (Flapjack.Spt.ls 92)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 76))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 37 (Flapjack.Spt.ls 71))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 106) (Flapjack.Spt.ls 87))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 59)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 46))
                              (Flapjack.Spt.ls 32))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 59) (Flapjack.Spt.ls 105))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 101 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln) 47
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 75) Flapjack.Spt.ln) Flapjack.Spt.ln) 31
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 51))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 72 (Flapjack.Spt.ls 60))
                              (Flapjack.Spt.ls 32)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 79) 59 (Flapjack.Spt.ls 108)))
                            55 (Flapjack.Spt.ls 46))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 (Flapjack.Spt.ls 101))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 95) 89 Flapjack.Spt.ln))
                            35 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 66))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln) 22
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 43 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 76) Flapjack.Spt.ln))
                            27
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 90)) 28
                              Flapjack.Spt.ln)))
                        89
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 45 (Flapjack.Spt.ls 103))
                              Flapjack.Spt.ln))
                          56 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 99))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                            89
                            (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 46
                              (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 86)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 101)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 72 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 50
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 63) (Flapjack.Spt.ls 46)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 32))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 42 (Flapjack.Spt.ls 42))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 103) (Flapjack.Spt.ls 59))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 31)))))))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 95))
                              (Flapjack.Spt.ls 79))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 93 (Flapjack.Spt.ls 74)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 28))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 96) Flapjack.Spt.ln))))
                        24
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 94) Flapjack.Spt.ln) 106
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 110) Flapjack.Spt.ln) Flapjack.Spt.ln) 37
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 77) (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 66))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 80)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69))
                              (Flapjack.Spt.ls 89)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 43
                              (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 25)))
                            47 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 30))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 24
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 83) 31 (Flapjack.Spt.ls 27)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 66)))
                          26
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 24 (Flapjack.Spt.ls 73))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 23)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 28)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                              (Flapjack.Spt.ls 61))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 42))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 83))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 61) Flapjack.Spt.ln) 107
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 27 (Flapjack.Spt.ls 47))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 75) (Flapjack.Spt.ls 61))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 73))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                            108
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 67))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 80))))
                          28
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 33
                              (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 31)))
                            39
                            (Flapjack.Spt.bs Flapjack.Spt.ln 58
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 39 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 37
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 40 (Flapjack.Spt.ls 36)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 26))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 33 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 64)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 59) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 87)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 33))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 65)))
                            50
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 87) (Flapjack.Spt.ls 69))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 93)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 26))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                          34
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 63))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61)))
                            43
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 33))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 58 (Flapjack.Spt.ls 39))
                              (Flapjack.Spt.ls 59)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 108)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 87 Flapjack.Spt.ln))
                            37 (Flapjack.Spt.ls 40))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 66))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 32 Flapjack.Spt.ln))
                            33 (Flapjack.Spt.ls 106))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 66
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 26 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 64) Flapjack.Spt.ln))
                            31
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55)) 64
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 37 (Flapjack.Spt.ls 31))
                              Flapjack.Spt.ln))
                          34 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 94))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 107)))
                            39
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 80)) 50
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 90)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 98) Flapjack.Spt.ln))))
                        31
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 52
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 61) (Flapjack.Spt.ls 58)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 45))))
                          24
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 69 (Flapjack.Spt.ls 69))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 53))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 56)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 105))
                              (Flapjack.Spt.ls 62))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 105
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 82) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 83)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 31))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln) 26
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 38
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 86) (Flapjack.Spt.ls 38))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 76)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 52))
                              (Flapjack.Spt.ls 38)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 24
                              (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))
                            28 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 32))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 59
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 56 (Flapjack.Spt.ls 64)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))
                          33
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 59 (Flapjack.Spt.ls 103))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 108)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 78) Flapjack.Spt.ln) 55
                              (Flapjack.Spt.ls 64)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 57) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 69))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 92)) 22
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 65) Flapjack.Spt.ln) 50
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 76 (Flapjack.Spt.ls 101))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 84) (Flapjack.Spt.ls 65))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 103))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                            25
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 76))))
                          56
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 37
                              (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 36)))
                            41
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 72
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 42 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 40
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 107 (Flapjack.Spt.ls 31)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 27))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 45 (Flapjack.Spt.ls 39))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 103)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 53) (Flapjack.Spt.ls 22))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 24)))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 86))
                              (Flapjack.Spt.ls 106))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 38
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 70) (Flapjack.Spt.ls 57))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 56)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 80))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 62) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) 23
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 63) (Flapjack.Spt.ls 61))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65)))
                            27
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 35))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))))
                      22
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 84 (Flapjack.Spt.ls 71))
                              (Flapjack.Spt.ls 30)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 43))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 24 (Flapjack.Spt.ls 23)))
                            86 (Flapjack.Spt.ls 60))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 47))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 56 Flapjack.Spt.ln))
                            89 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 62) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 52))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 80) Flapjack.Spt.ln))
                            24
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 107)) 47
                              Flapjack.Spt.ln)))
                        31
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 32 (Flapjack.Spt.ls 73))
                              Flapjack.Spt.ln))
                          28 Flapjack.Spt.ln))
                      23
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 89))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                            33
                            (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) 42
                              (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 60)))
                            50
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 47)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 55 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 48 (Flapjack.Spt.ls 54)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 106))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 39 (Flapjack.Spt.ls 60))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 93) (Flapjack.Spt.ls 24))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 29)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 58))
                              (Flapjack.Spt.ls 35))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.bn (Flapjack.Spt.ls 53) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 79)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 106))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 102) Flapjack.Spt.ln))))
                        33
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 89) Flapjack.Spt.ln) 28
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 95) Flapjack.Spt.ln) Flapjack.Spt.ln) 56
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 62))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 110) (Flapjack.Spt.ls 42))
                              (Flapjack.Spt.ls 56)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 108))) 23
                            (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 59))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 43
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 29 (Flapjack.Spt.ls 25)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 78)))
                          22
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 87 (Flapjack.Spt.ls 25))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 105) 94 Flapjack.Spt.ln))
                            44 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 47)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 67) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 60)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln) 42
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 26 (Flapjack.Spt.ls 66))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 45
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 52))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 103)))
                            78
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 26))))
                          24
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 31
                              (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 103)))
                            35
                            (Flapjack.Spt.bs Flapjack.Spt.ln 86
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 87) 89 Flapjack.Spt.ln))))
                        56
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 33
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 94 (Flapjack.Spt.ls 34)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 43))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 31 (Flapjack.Spt.ls 33))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 27)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 70) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 22)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 92))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 61)))
                            107
                            (Flapjack.Spt.bs Flapjack.Spt.ln 33
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 78) (Flapjack.Spt.ls 42))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 106)) 54
                              (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 105)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 43))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 57) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 59)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                          56
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 65 (Flapjack.Spt.ls 52))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 103))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 86 (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.ls 26)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 78)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 22 Flapjack.Spt.ln))
                            36
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72)) 36 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 23))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 107) 30 Flapjack.Spt.ln))
                            28 (Flapjack.Spt.ls 28)))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 26
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 47 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)) 33
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57)) 33
                              Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 36 (Flapjack.Spt.ls 45))
                              (Flapjack.Spt.ls 78)))
                          41 Flapjack.Spt.ln))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 83))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 69)))
                            62
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 101)) 107
                              (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 58)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 106)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 67) Flapjack.Spt.ln))))
                        56
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 55
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 55) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 36))))
                          26
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 55 (Flapjack.Spt.ls 90))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 67) (Flapjack.Spt.ls 64))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 72))
                              (Flapjack.Spt.ls 40))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 104)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 34))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln) 35
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 78 (Flapjack.Spt.ls 22))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 42
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 107) (Flapjack.Spt.ls 86))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 80))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 78))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 25
                              (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 28)))
                            30 (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 103))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 34 (Flapjack.Spt.ls 30)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 59)))
                          29
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 28 (Flapjack.Spt.ls 56))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 24)))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 97) Flapjack.Spt.ln) 105
                              (Flapjack.Spt.ls 32)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 90))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 66) Flapjack.Spt.ln))
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60)) 23
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 61) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 72
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 30 (Flapjack.Spt.ls 76))
                              Flapjack.Spt.ln))
                          22
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 56))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                            27
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 29))))
                          89
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 38
                              (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 37)))
                            44
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 44 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 69 (Flapjack.Spt.ls 71)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 101))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 36 (Flapjack.Spt.ls 62))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 56)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 85) (Flapjack.Spt.ls 23))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 25)))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 28))
                              (Flapjack.Spt.ls 93))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 40
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 91) (Flapjack.Spt.ls 84))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 44)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 101))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 103) Flapjack.Spt.ln) 108
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 53) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 69) Flapjack.Spt.ln) Flapjack.Spt.ln) 28
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 62) (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 107))))))
                      24
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 78)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 105 (Flapjack.Spt.ls 92))
                              (Flapjack.Spt.ls 64)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 66))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 89) 25 (Flapjack.Spt.ls 87)))
                            46 (Flapjack.Spt.ls 86))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 59) (Flapjack.Spt.ls 80))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 35 Flapjack.Spt.ln))
                            37 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 78 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 40))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 101) Flapjack.Spt.ln))
                            25
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69)) 59
                              Flapjack.Spt.ln)))
                        56
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 33 (Flapjack.Spt.ls 93))
                              Flapjack.Spt.ln))
                          33 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 79))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                            56
                            (Flapjack.Spt.bs Flapjack.Spt.ln 108
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 66)) 45
                              (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 54)))
                            49
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 50 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 65 (Flapjack.Spt.ls 86)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 93))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 60 (Flapjack.Spt.ls 54))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 82) (Flapjack.Spt.ls 91))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 64)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 75))
                              (Flapjack.Spt.ls 89))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.bn (Flapjack.Spt.ls 64) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 99)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 27))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
                        23
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 79) Flapjack.Spt.ln) 30
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 50) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 105) Flapjack.Spt.ln) Flapjack.Spt.ln) 89
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 102) (Flapjack.Spt.ls 48))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 112) (Flapjack.Spt.ls 107))
                              (Flapjack.Spt.ls 35)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 78
                              (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 24)))
                            24 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 28))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 108
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 64 (Flapjack.Spt.ls 59)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 43)))
                          24
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 108 (Flapjack.Spt.ls 106))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 62 (Flapjack.Spt.ls 22)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 59)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 54)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 94))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 52) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 55) Flapjack.Spt.ln) 44
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 47 (Flapjack.Spt.ls 26))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 48
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 100) (Flapjack.Spt.ls 55))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 106))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 56)))
                            43
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 47))))
                          26
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 64
                              (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 56)))
                            36
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 79 Flapjack.Spt.ln))))
                        23
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 62 (Flapjack.Spt.ls 45)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 66))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 103 (Flapjack.Spt.ls 57))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 28)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 91) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 89 (Flapjack.Spt.ls 23)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 60))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 101 (Flapjack.Spt.ls 63)))
                            58
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 97) (Flapjack.Spt.ls 107))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 73)) 105
                              (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 72)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 66))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60))))
                          89
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 49))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55)))
                            22
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 57) (Flapjack.Spt.ls 56))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 46 (Flapjack.Spt.ls 51))
                              (Flapjack.Spt.ls 47)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 23 Flapjack.Spt.ln))
                            40 (Flapjack.Spt.ls 38))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 66) (Flapjack.Spt.ls 43))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 64 Flapjack.Spt.ln))
                            31 (Flapjack.Spt.ls 30))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 23
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 66 Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln))
                            29
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 52)) 30
                              Flapjack.Spt.ln)))
                        34
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 35 (Flapjack.Spt.ls 56))
                              Flapjack.Spt.ln))
                          89 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 74))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 42)))
                            79
                            (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 60
                              (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 46)))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 76)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 107
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.ls 90)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 33))))
                          22
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 107 (Flapjack.Spt.ls 107))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 56) (Flapjack.Spt.ls 32))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 103)))))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 84))
                              (Flapjack.Spt.ls 94))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.bn (Flapjack.Spt.ls 50) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 94)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 30))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 86) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 62) Flapjack.Spt.ln) 34
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 61) Flapjack.Spt.ln) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 112) Flapjack.Spt.ln) Flapjack.Spt.ln) 40
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 96) (Flapjack.Spt.ls 41))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 72))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 101)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 90))
                              (Flapjack.Spt.ls 79)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 108
                              (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 59)))
                            59 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 64))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 25
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 103 (Flapjack.Spt.ls 28)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                          28
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 25 (Flapjack.Spt.ls 93))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 87)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 30)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 107))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 55) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 71))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 63) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln) 58
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 101 (Flapjack.Spt.ls 80))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 95) (Flapjack.Spt.ls 63))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 93))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))
                            24
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 101))))
                          33
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35
                              (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 45)))
                            62
                            (Flapjack.Spt.bs Flapjack.Spt.ln 50
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 91) 62 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 38
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 41 (Flapjack.Spt.ls 37)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 47))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 34 (Flapjack.Spt.ls 51))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 108)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 96))
                              (Flapjack.Spt.ls 30))
                            72
                            (Flapjack.Spt.bs Flapjack.Spt.ln 37
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 108) (Flapjack.Spt.ls 58))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 103)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 47))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 64) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 59) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 107))))
                          50
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 52) (Flapjack.Spt.ls 55))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63)))
                            25
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 51) (Flapjack.Spt.ls 45))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 39 (Flapjack.Spt.ls 62))
                              (Flapjack.Spt.ls 28)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 78))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 108 (Flapjack.Spt.ls 22)))
                            38 (Flapjack.Spt.ls 41))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.ls 26))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 103 Flapjack.Spt.ln))
                            56 (Flapjack.Spt.ls 34)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 38))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln))
                            43
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) 26
                              Flapjack.Spt.ln)))
                        24
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 93 (Flapjack.Spt.ls 106))
                              Flapjack.Spt.ln))
                          26 Flapjack.Spt.ln))
                      31
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 24))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62)))
                            31
                            (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 93))))
                          41
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55)) 41
                              (Flapjack.Spt.bs Flapjack.Spt.ln 79 (Flapjack.Spt.ls 38)))
                            58
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 48 Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 45
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 61 (Flapjack.Spt.ls 60)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 30))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 38 (Flapjack.Spt.ls 92))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 73) (Flapjack.Spt.ls 108))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 107 (Flapjack.Spt.ls 28)))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 36))
                              (Flapjack.Spt.ls 56))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 60
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 72))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 89)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 25))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))))
                        22
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) 59
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 64) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 84))))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 86) Flapjack.Spt.ln) Flapjack.Spt.ln) 33
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.ls 39))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 66)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 105) (Flapjack.Spt.ls 54))
                              (Flapjack.Spt.ls 103)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 87)))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 47))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 78
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 99) 28 (Flapjack.Spt.ls 24)))
                            105 (Flapjack.Spt.ls 58))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 23 (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 79 Flapjack.Spt.ln))
                            41 (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 26)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 72) (Flapjack.Spt.ls 107))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 92)) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 79))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 58) Flapjack.Spt.ln))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln) 62
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 66 (Flapjack.Spt.ls 43))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 46
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 90) (Flapjack.Spt.ls 90))
                              Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 76))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 93)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 66))))
                          22
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29
                              (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 30)))
                            34
                            (Flapjack.Spt.bs Flapjack.Spt.ln 60
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 97) 36 Flapjack.Spt.ln))))
                        31
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs Flapjack.Spt.ln 64
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 79 (Flapjack.Spt.ls 56)))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 78))))
                          35
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 64 (Flapjack.Spt.ls 45))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 59)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 108) Flapjack.Spt.ln)
                              (Flapjack.Spt.ls 56))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 103 (Flapjack.Spt.ls 71))
                              (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 55)))
                            44
                            (Flapjack.Spt.bs Flapjack.Spt.ln 106
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 55
                              (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 84)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 23))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))))
                        50
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 105
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 66) Flapjack.Spt.ln)
                              (Flapjack.Spt.bs Flapjack.Spt.ln 105 (Flapjack.Spt.ls 34))))
                          33
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 48 (Flapjack.Spt.ls 41))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 69)))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 45) (Flapjack.Spt.ls 93))
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 60 (Flapjack.Spt.ls 35))
                              (Flapjack.Spt.ls 66)))
                          Flapjack.Spt.ln)
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 82) Flapjack.Spt.ln)) 89
                            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 105)) 35
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bs
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 55) (Flapjack.Spt.ls 22))
                              (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 28 Flapjack.Spt.ln))
                            25
                            (Flapjack.Spt.bs Flapjack.Spt.ln 59
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln))),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 10
                  (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 11 (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 12 (Flapjack.Spt.ls 7))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 12)) 0 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 11 (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 12
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 10 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1)) 11 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                  0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 3)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 9 (Flapjack.Spt.ls 11))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 9
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 9)) 0 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 12 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 11 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 11
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 3
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
                Flapjack.Spt.ln)
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 8)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 23 Flapjack.Spt.ln)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 3)) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 7)))
                    0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 Flapjack.Spt.ln) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 25)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 27
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    5
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 4)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 Flapjack.Spt.ln) 32
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)))
                    0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0))) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 33)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    22
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                  25
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))) 3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 8
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 27)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 (Flapjack.Spt.ls 7)) 33
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                    3 (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)) 8
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 1 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    11
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    26
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 2))) 8
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)) 30
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 26 (Flapjack.Spt.ls 2)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) Flapjack.Spt.ln) 11
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 22 Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2)) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 6)))
                    2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 26)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 32 Flapjack.Spt.ln) 34 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                    0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.ls 32))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 11)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 34 (Flapjack.Spt.ls 22)))
                    25
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 10)) 11
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)) 29
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                    5
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 25
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 8
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 Flapjack.Spt.ln) 24
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                    23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) 31
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.ls 2)))
                    1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 33 (Flapjack.Spt.ls 0)) 2 Flapjack.Spt.ln))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                    4
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))) 24
                      (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))) 28
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 8)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 24 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 29
                      (Flapjack.Spt.ls 0))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 33 Flapjack.Spt.ln) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))) 24
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 34)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 32)))
                  23 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 33
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))))))))]
theorem chunk050_length : chunk050.length = 16 := by rfl
end InitECandidate.Proofs.AllocationOracles
