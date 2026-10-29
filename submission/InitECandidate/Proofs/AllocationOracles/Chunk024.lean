import Flapjack.Misc.Sptree

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.AllocationOracles
-- Native proposal for source functions 384 through 399; compiler validation is required.
def chunk024 : List (Option (Flapjack.Spt Nat)) :=
[some
    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
              1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 1
              (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.ls 3))) 0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))) 3
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))) 2
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 6))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 3))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)) 3 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 5)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 (Flapjack.Spt.ls 27))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 2 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1)))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 6 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 29)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 22)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 3 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 0)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 5 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 22 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.ls 24)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 0 (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 28 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 25 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 24 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 24
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 8 Flapjack.Spt.ln) 5
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)) 6
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 6 (Flapjack.Spt.ls 4)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 1)) 8
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 8 (Flapjack.Spt.ls 0)))
                4 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.ls 2)))
                3
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 8
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)) 5
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.ls 6))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
              0 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 4 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 4
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 23))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 10)) 0 (Flapjack.Spt.ls 4))
                      35 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 27))) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 30)) 23
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 12)))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 5 (Flapjack.Spt.ls 7)) 24
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 Flapjack.Spt.ln)) 33
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7)))
                      11 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 30))))
                    3
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 12)))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 38)))
                      12 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 4 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 2)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 28 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 36))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 30)))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 22 Flapjack.Spt.ln) 13
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 2
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 Flapjack.Spt.ln))
                      24
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 1))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 28
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                      7 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                      7
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 5
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 Flapjack.Spt.ln)))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25))) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 22
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 23
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln)) 26
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6))) 8
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 9))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                      11 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 24
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 8)))
                      0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 5
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 26)))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln) 12
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 6
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 3
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 6
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    31
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 30))) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 9)) 3 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26))) 9
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 24
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)))))
                  24
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 4
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                      0 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2)))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 Flapjack.Spt.ln)) 31
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))
                      0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 37)))
                      12 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 23
                        (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 29 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 (Flapjack.Spt.ls 5))))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 3
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)) 31
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 26
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                      22
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    33
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 31))) 6
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 3
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 23)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 8)) 2 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 37))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))) 4
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 5)) 24 Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 28 (Flapjack.Spt.ls 24))
                      23 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 29
                        (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                      0 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 10))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                      8 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 27 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 22 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                      0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.ls 31))))
                    0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 25)))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12)) (Flapjack.Spt.ls 1)) 12
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) 30
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 3))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
                    23
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))) 10
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 25
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln)))
                    23
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 8
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 4 (Flapjack.Spt.ls 26))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 27 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 22
                        (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 36)))
                      (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 31
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 24 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                    23
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 26 (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 25 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                    33
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 33)))
                      (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 38)))
                      (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                    22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 23 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 22 Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 26 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 22 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.ls 33)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                    24
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 25 (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 24 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 23 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    31
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 37)))
                      (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 24 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 28 Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)) 5 Flapjack.Spt.ln) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
        Flapjack.Spt.ln)),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.ls 12)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 8))) 7
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 6
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 1 (Flapjack.Spt.ls 37)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 26)) 6
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 14))) 4
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 31
                        (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 4)) 4
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 7))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 6))) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 32
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 5)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 5 (Flapjack.Spt.ls 0)))
                    26
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))) 26
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0)))
                    28
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))) 24
                      (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 24
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15))) 6
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0
                        (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11))) 1
                      Flapjack.Spt.ln)
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 23
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 15)))
                      27 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)))))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 33)) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 4
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 16))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 6
                        (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 7 (Flapjack.Spt.ls 2)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                    24
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 38 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)))
                      6 Flapjack.Spt.ln)
                    4
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 27)) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 26
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 1))) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 6
                        (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 35
                        (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 10)))
                      5 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))) 23
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 7
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 30 (Flapjack.Spt.ls 23))))
                  5
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6)) 26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 2 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7)
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 8)) 28
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 37 (Flapjack.Spt.ls 15)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 13)))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 33 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 31 (Flapjack.Spt.ls 29)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))) 6
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 6
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                    25
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1))) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln)))
                  6
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 3)))
                      1 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7))) 6
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 34
                        (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 33 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                    27
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1))) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 22
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 16))) 25
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.ls 3)) 25
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 25
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 10))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 6
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 33)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4
                        (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 38)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 31)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                    22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 1)) 3
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 8))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 0)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 7))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 11)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 23))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 28)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    25
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24))) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 26))) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 39)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    26
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 27))) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 40)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    27
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 25))) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 29))
                      Flapjack.Spt.ln))))))))),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) 0
                            (Flapjack.Spt.ls 15))
                          1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                        41
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 34 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 35))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 32
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 8 (Flapjack.Spt.ls 45)))
                          33
                          (Flapjack.Spt.bs Flapjack.Spt.ln 2
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 20))))))
                    40
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 (Flapjack.Spt.ls 36)))
                          25
                          (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 22
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))
                          42
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 49)) 4
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 36)))
                          32
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                        6
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 2 (Flapjack.Spt.ls 2))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 43)) 34
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 41)) 28
                            (Flapjack.Spt.ls 49))
                          44
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 32 (Flapjack.Spt.ls 43))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 4)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 35
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                      32
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 6))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 23 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 35)) 9
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 3 (Flapjack.Spt.ls 22)))
                          35
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 40 Flapjack.Spt.ln) 41
                            (Flapjack.Spt.ls 29)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.ls 2)))
                        32
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 42)))
                          4
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 6)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 49 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
                        5
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 29
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 1 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                          2
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.ls 41))))
                        27
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 44
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 35 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs Flapjack.Spt.ln 30
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 (Flapjack.Spt.ls 37))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 24
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 3 (Flapjack.Spt.ls 37)))
                          29
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 30 (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 25)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 9)) 2 Flapjack.Spt.ln))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                          39
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))
                      23
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 32
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25)))
                          26
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 7)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 2))))
                        32
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) (Flapjack.Spt.ls 6))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 34)))))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 8)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 29 (Flapjack.Spt.ls 44)))
                          33
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 18
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 8 (Flapjack.Spt.ls 42))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0)) 29
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 49)))
                          5
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 36)) 27
                            Flapjack.Spt.ln)))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 1)) 27
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 20) (Flapjack.Spt.ls 44)))
                          42
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 43)) 26
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 29 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 0))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 35)) 31
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 41))))))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 3))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 26)))
                        39
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln)) 0
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))))
                      3
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 26 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 29))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 9 Flapjack.Spt.ln))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) 2
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 4 (Flapjack.Spt.ls 49))))
                        29
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 2 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 48
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)))))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 47 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 33
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 40 (Flapjack.Spt.ls 36))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 40
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 11 (Flapjack.Spt.ls 36)))
                          30
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 3)) 4
                            (Flapjack.Spt.ls 3)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 37)))
                          23
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 13)) 6 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                          28
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 41 Flapjack.Spt.ln))))
                      32
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 31
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 37)))
                          28
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 0 (Flapjack.Spt.ls 4))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 40)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 45)) 32
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 49)))
                          3
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 43 (Flapjack.Spt.ls 31))))
                        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 41 (Flapjack.Spt.ls 40)) 5
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 33)) 30
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
                      40
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 16) (Flapjack.Spt.ls 49)))
                          46
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 11
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 30 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))
                          22
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 46)) 36
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 49))))))
                    29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 47)) 4
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 39)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                          4
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 10)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 41 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 49))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 24)) 34
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                          2
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 5 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)) 49
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 2))))
                        34
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 4
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 4)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 48)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
                      28
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 43 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 24)))
                          27
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 29 (Flapjack.Spt.ls 0)) 45
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) 33 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 25)))
                          38
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 23 (Flapjack.Spt.ls 0)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 40
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 0)))
                          22
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 3))))
                        23
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 41
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 0)) 4
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 40 (Flapjack.Spt.ls 45)))
                          29
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 19)) 14
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 34
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)))
                          31
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 37)) 2
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 0 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))
                          37
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 40)) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 23 Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 40
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 4
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 47))))
                        26
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 33
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.ls 44)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17)))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 24 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 1)))
                          49
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 12)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 12 Flapjack.Spt.ln)))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 17 Flapjack.Spt.ln))
                          0 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))
                        42
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 0 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 40)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 49 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 6
                            (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 29
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 9 (Flapjack.Spt.ls 32)))
                          25 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                          34
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 14)) 8
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                          5
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 49 (Flapjack.Spt.ls 5)))))
                      41
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 47))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 43)))
                          30
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
                        2
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 1 (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 23
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 37)))))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 35)) 41
                            (Flapjack.Spt.ls 47))
                          42
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 37)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 29 (Flapjack.Spt.ls 37))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 31
                            (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 35)) 32
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                      29
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 7))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 22 Flapjack.Spt.ln))
                          49
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 33)) 12
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 4 Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                          34
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 48)) 38
                            (Flapjack.Spt.ls 40)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0)) 5
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
                        30
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 2
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                          22
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 8)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 47 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 1)))
                        22
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 40
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 3 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 4
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 3 (Flapjack.Spt.ls 2)))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 2 (Flapjack.Spt.ls 35))))
                        35
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 4 Flapjack.Spt.ln))
                          0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 42 (Flapjack.Spt.ls 22))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 29 (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 48)) 4
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 31))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 16 (Flapjack.Spt.ls 31)))
                          24
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 32 (Flapjack.Spt.ls 1)) 48
                            (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 8)) 0 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 40)))
                          37
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 2 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 29
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 34)))
                          24
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 32)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 0))))
                        30
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 33
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 42)))))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 28)) 23
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 43 (Flapjack.Spt.ls 38)))
                          31
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 21)) 16
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 40
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))
                          6
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 43)) 26
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 2 Flapjack.Spt.ln))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 2)) 2
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 37)) 2
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 40 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 33)) 29
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 35))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 4))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 49))))
                        40
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 4 (Flapjack.Spt.ls 48)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 10)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 0 Flapjack.Spt.ln))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 18)) 3
                            (Flapjack.Spt.ls 0))
                          3
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 47)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 4 (Flapjack.Spt.ls 47))))
                        24
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 46
                            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 34)))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 41 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs Flapjack.Spt.ln 16
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 (Flapjack.Spt.ls 43))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 13 (Flapjack.Spt.ls 43)))
                          36
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 47 (Flapjack.Spt.ls 30)) 4
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 40)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 11)) 4 Flapjack.Spt.ln))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                          9
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 26 Flapjack.Spt.ln))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 41
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 21) (Flapjack.Spt.ls 40)))
                          27
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                        49
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) (Flapjack.Spt.ls 5))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 2 (Flapjack.Spt.ls 25)))))))
                  4
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 11)) 29
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 47)))
                          37
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)) 20
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 40 (Flapjack.Spt.ls 5))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 2)) 32
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 5)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 2)) 28
                            Flapjack.Spt.ln)))
                      34
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.ls 47)))
                          44
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 36)) 10
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 32 Flapjack.Spt.ln)))
                        5
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 33
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))))))
                    40
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 2
                            (Flapjack.Spt.ls 3)))
                        25
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 53) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 12)))))
                      1
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 35 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 47))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 39)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
                          4
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 7 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 32))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
                          46
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 30 (Flapjack.Spt.ls 36))))
                        22
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) 37
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
                      41
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 6))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 40 (Flapjack.Spt.ls 3)))
                          2
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 28
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 4)))
                          40
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 43
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 2))))))
                    0
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 4)) 49
                            (Flapjack.Spt.ls 2)))
                        43
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 34)))
                          26
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 22 (Flapjack.Spt.ls 2)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 (Flapjack.Spt.ls 22)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                        27
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) 32
                            (Flapjack.Spt.ls 4))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 29))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 (Flapjack.Spt.ls 2)))
                          40
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17)) 12
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                          41
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 40)) 22
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 4
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 26)))
                          33
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 25
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 36))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 41))))
                        22
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 41
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 30)))
                          49
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) 24
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))
                      29
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 25 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 28))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 0)))
                          33
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 14)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 20) Flapjack.Spt.ln))))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 16 Flapjack.Spt.ln))
                          1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))
                        30
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 22 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 37)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 40
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln))
                          5
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 49
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 32))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 28
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 0 (Flapjack.Spt.ls 5)))
                          31
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 21))))))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 20))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                          26
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 15)) 9
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                          36
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      5
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 48))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 21) (Flapjack.Spt.ls 28)))
                          31
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 3 (Flapjack.Spt.ls 7))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 27)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 3)))
                          43
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 9 (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 49
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 33 Flapjack.Spt.ln)))
                      25
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 6))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 34 (Flapjack.Spt.ls 2)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 45)) 13
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 49 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                          26
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 49)) 0
                            (Flapjack.Spt.ls 3)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                        41
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                          23
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 7)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 48 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 40)
                            (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4))))
                        34
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 27
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 2 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 49 (Flapjack.Spt.ls 6))))
                        40
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 49 Flapjack.Spt.ln))
                          2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 43 (Flapjack.Spt.ls 34))))
                      3
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 2)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 15
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 40))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 2
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 15 (Flapjack.Spt.ls 40)))
                          9
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 35 (Flapjack.Spt.ls 3)) 49
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 1 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                          27
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 29 Flapjack.Spt.ln))))
                      22
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24)))
                          34
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39) (Flapjack.Spt.ls 24))))
                        41
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 49
                            (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 4)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 36)) 40
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 (Flapjack.Spt.ls 41)))
                          32
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 17
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 34 (Flapjack.Spt.ls 22))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 26
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)))
                          49
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28)) 25
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 2 Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 21) (Flapjack.Spt.ls 41)))
                          41
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5)) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 24 Flapjack.Spt.ln)))
                        2
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 45)) 30
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 29))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 5))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 47)))
                        27
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 2 (Flapjack.Spt.ls 49)))
                          2
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 21) 29 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 35))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 4 (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 9 Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 10 Flapjack.Spt.ln))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)) 1 Flapjack.Spt.ln) 3
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 48)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 51) (Flapjack.Spt.ls 48))))
                        25
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 47
                            (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 23)))))
                      2
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs Flapjack.Spt.ln 31
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.ls 28))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 26
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 12 (Flapjack.Spt.ls 28)))
                          42
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
                          22
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 12)) 5 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                          29
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 27 Flapjack.Spt.ln))))
                      29
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 30
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.ls 3)))
                          40
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 0 (Flapjack.Spt.ls 7))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 31)))))))
                  5
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 33)) 2
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 48)))
                          38
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)) 21
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24 (Flapjack.Spt.ls 25))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 2)) 28
                            (Flapjack.Spt.ls 25))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 32)) 29
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
                      23
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 48)))
                          45
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 27)) 40
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 35 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 26))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 35
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 48))))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 4
                            (Flapjack.Spt.ls 4)))
                        29
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)) 0 Flapjack.Spt.ln) 0
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 11)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 30 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 48))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 34)) 4
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                          5
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 0)))
                          48
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 41 (Flapjack.Spt.ls 27))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 1)))
                          4
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 38
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 24 (Flapjack.Spt.ls 1)))
                          2
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 32
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 34)))
                          37
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 0)) 44
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1))))))
                    2
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 22 Flapjack.Spt.ln))
                        49
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 24)))
                          35
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 34 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 24
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 42)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        29
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 30
                            (Flapjack.Spt.ls 0))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 37)) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 33)))
                          28
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18)) 13
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))) 25
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 0)) 23
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln))))
                      2
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 33)))
                          35
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 34 Flapjack.Spt.ln)))
                        2
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 27
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 27))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 30))))
                        34
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 31
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 6 (Flapjack.Spt.ls 41)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 Flapjack.Spt.ln) 2
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 18)))))
                      32
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 40 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 1)))
                          43
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 13)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                          3 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)))
                        28
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 1 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 49
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 31)))))
                      2
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 48 Flapjack.Spt.ln))
                          4
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.ls 27))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 27
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 10 (Flapjack.Spt.ls 27)))
                          41 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 46))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                          0 (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 7 Flapjack.Spt.ln))
                        2
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                          32
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 28 Flapjack.Spt.ln))))
                      27
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 49
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 27)))
                          29
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 3 (Flapjack.Spt.ls 7))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 1 (Flapjack.Spt.ls 3)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 26)) 27
                            (Flapjack.Spt.ls 0))
                          41
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 0 (Flapjack.Spt.ls 40))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 30
                            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                          2
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 45)) 31
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
                      24
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln))
                          48
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 32)) 27
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 41 Flapjack.Spt.ln)))
                        4
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 47)) 37
                            (Flapjack.Spt.ls 23)))))
                    25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 22)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        2
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 2
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                          5
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 9)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 26
                            (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
                          3
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 4
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 47 (Flapjack.Spt.ls 32))))
                        26
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 47 (Flapjack.Spt.ls 2)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 49)) 41
                            Flapjack.Spt.ln)))
                      49
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 28 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 47)) 14
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 25))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 17 (Flapjack.Spt.ls 25)))
                          39
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 46
                            (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 3))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 7)) 31 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 31)))
                          40
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 40 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 26
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 39)))
                          23
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 2))))
                        28
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 31
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.ls 22)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 43)) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 35)))
                          30
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 20)) 15
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 24
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                          33
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 27)) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 1 Flapjack.Spt.ln))))
                      4
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                          38
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4)) 7
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 25 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 28
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 32))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 48))))
                        35
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 49
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 5 (Flapjack.Spt.ls 47)))
                          2
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 43 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 7)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 11)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 11 Flapjack.Spt.ln))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 1
                            (Flapjack.Spt.ls 0))
                          2
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.ls 7))))
                        39
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 45
                            (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 42)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 30 Flapjack.Spt.ln))
                          2
                          (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 2))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 14 (Flapjack.Spt.ls 2)))
                          28
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 41 (Flapjack.Spt.ls 4))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 31)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 10)) 3 Flapjack.Spt.ln))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                          24
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 32 Flapjack.Spt.ln))))
                      40
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) 28
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 31)))
                          25
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 41)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 46) (Flapjack.Spt.ls 3))))
                        33
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) (Flapjack.Spt.ls 7))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 18) (Flapjack.Spt.ls 23)))))))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)) 5
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 46)))
                          35
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 19
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 25 (Flapjack.Spt.ls 34))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)) 2
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0)))
                          6
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 29)) 40
                            Flapjack.Spt.ln)))
                      22
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 0)) 2
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 19) (Flapjack.Spt.ls 46)))
                          43
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)) 8
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 38)) 32
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
                    23
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 49)))
                        24
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 1 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 13)))))
                      0
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 32 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 41))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 42)) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 26)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 7 Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 8 Flapjack.Spt.ln)))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 38)) 49
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 3)))
                          45
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 35 (Flapjack.Spt.ls 28))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 3)))
                          9
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 36
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      27
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 2))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 25 (Flapjack.Spt.ls 2)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 30)) 29
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 52) (Flapjack.Spt.ls 22))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 3 (Flapjack.Spt.ls 42)))
                          38
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln) 42
                            (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))))
                    0
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 0)))
                        33
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 39)))
                          34
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                        40
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 28
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 40))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 34 (Flapjack.Spt.ls 29)))
                          27
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16)) 11
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                          30
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 45) (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 29)))
                          0
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 28)) 26
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 28))))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 29))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 30
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 35)))
                          6
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 19)))))
                      24
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 23 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 43))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 2)))
                          32
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) 27 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                          40
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)))
                        43
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 35))))
                        23
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 38)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 29 Flapjack.Spt.ln))
                          (Flapjack.Spt.ls 48)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 46
                            (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 31))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 41)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 37)))
                          25 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 34))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) Flapjack.Spt.ln))
                        43
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26)))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 40)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))))
                        22
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) 32 Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 45))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 47)))
                          37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 33)) 30
                            (Flapjack.Spt.ls 28))))
                      40
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)))
                          45
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 28
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 49) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 35
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 25
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 40 (Flapjack.Spt.ls 26)) 46
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 40 (Flapjack.Spt.ls 37))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 29
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 22 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 48)) 39
                            Flapjack.Spt.ln)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) 37
                            (Flapjack.Spt.ls 40)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 22)))
                          26 (Flapjack.Spt.ls 44)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 24
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 51) (Flapjack.Spt.ls 45)))
                          32 (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.ls 41)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                          40
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 41) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 24
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 40 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 29
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                          36
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 40)) 22
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)))
                        28
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 27
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 24 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                          34
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                        30
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln)))))
                    32
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 27))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 29 (Flapjack.Spt.ls 36))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 41
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 40 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 44 Flapjack.Spt.ln)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs Flapjack.Spt.ln 42
                            (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 42))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.ls 24)))
                          37
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 34 Flapjack.Spt.ln) 49
                            Flapjack.Spt.ln)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                          Flapjack.Spt.ln)
                        30
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 43)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 48))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 26))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                          31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 34 (Flapjack.Spt.ls 36)) 27
                            (Flapjack.Spt.ls 32))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 41
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                          41
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) 26
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln)))
                        33
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) 30
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 53) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 41)))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 40
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 33 Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 44)) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln))
                          42
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 22 (Flapjack.Spt.ls 23))))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 34 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 41)) 35
                            Flapjack.Spt.ln)))
                      27
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 32
                            (Flapjack.Spt.ls 22)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 39
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 47))))
                        40
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 41 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.ls 36)))
                          42 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 29)))))
                    40
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                          34
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 34
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                          31
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
                        40
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 30 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 27)) 24
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 26 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                          25
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln))
                        32
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 48))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 33
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 43 Flapjack.Spt.ln))
                          (Flapjack.Spt.ls 46)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 44
                            (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 23))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 35)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 31)))
                          39
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln)
                            Flapjack.Spt.ln)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                          Flapjack.Spt.ln)
                        32
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 36)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 32))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)))
                          33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.ls 30)) 28
                            (Flapjack.Spt.ls 27))))
                      22
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 31
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)))
                          43
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 27
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 32
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 48)))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 39
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 48)) 34
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 Flapjack.Spt.ln))
                          44
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 23 (Flapjack.Spt.ls 31))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 40
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 46)) 37
                            Flapjack.Spt.ln)))
                      25
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 35
                            (Flapjack.Spt.ls 23)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                          23 (Flapjack.Spt.ls 42)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))))
                        39
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 27 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 22
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.ls 32)))
                          41 (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 32)))))
                    29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 29))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                          25
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 22
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 34 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 40
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                          33
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 23))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))
                        29
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 31 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 28)) 26
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 22 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                          23
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 34)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                        23
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 26 (Flapjack.Spt.ls 30)) 49
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 43 (Flapjack.Spt.ls 43))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 32
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 23 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 42 Flapjack.Spt.ln)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 39
                            (Flapjack.Spt.ls 29)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.ls 23)))
                          38 (Flapjack.Spt.ls 46)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 37)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 34
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 53) (Flapjack.Spt.ls 30)))
                          43
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 48)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 49 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 28))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))
                          29
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) 26
                            (Flapjack.Spt.ls 29))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 32
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                          38
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 37)) 24
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)))
                        41
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 28
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 35)))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 26
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 41 Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 38))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 49)))
                          36
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.ls 42))))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 35)) 32
                            Flapjack.Spt.ln)))
                      29
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 48
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 30
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 37
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 41))))
                        26
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 48)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 35 Flapjack.Spt.ln))
                          Flapjack.Spt.ln))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 47)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 44) (Flapjack.Spt.ls 43)))
                          28 (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 40)))))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                          23
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 22
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                          29
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                        34
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 28 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) 22
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 40 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                          27
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                        33
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 49))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 32))))
                        22
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 49
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 26 Flapjack.Spt.ln))
                          (Flapjack.Spt.ls 47)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 45
                            (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 25))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 33)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 40)))
                          24 (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 22))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                        33
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 27)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 28
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 33))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 46)))
                          35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 32)) 29
                            (Flapjack.Spt.ls 41))))
                      23
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 49
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))
                          44
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 40
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 48) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 33
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 42) (Flapjack.Spt.ls 49)))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln) 24
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 49)) 24
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 29 Flapjack.Spt.ln))
                          45
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 25 (Flapjack.Spt.ls 40))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 27
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 47)) 38
                            Flapjack.Spt.ln)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 36
                            (Flapjack.Spt.ls 25)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                          34 (Flapjack.Spt.ls 43)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 49 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 23
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 50) (Flapjack.Spt.ls 29)))
                          31 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 27)))))
                    25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 37))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                          27
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 23
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 23 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                          35
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln)))
                        25
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 33 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 25
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 23 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                          24
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 46) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                        28
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln)))))
                    29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 41))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 26 (Flapjack.Spt.ls 28))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 30
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 43 Flapjack.Spt.ln)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)) 41
                            (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 22))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.ls 34)))
                          40 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 48 Flapjack.Spt.ln)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                          Flapjack.Spt.ln)
                        42
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 43) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))) 49
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 36))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                          30
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 28)) 25
                            (Flapjack.Spt.ls 25))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))
                          39
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 34
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))
                        32
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 29
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 52) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 29)))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) 35
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 31 Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 41))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 40 Flapjack.Spt.ln))
                          41
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.ls 34))))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 38)) 33
                            Flapjack.Spt.ln)))
                      32
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 36) Flapjack.Spt.ln) 49
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) 31
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 52) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 38
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 30))))
                        35
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 49)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 48)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 45) (Flapjack.Spt.ls 28)))
                          36 (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 24)))))
                    23
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                          24
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 47) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 23
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))
                          30
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
                        23
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 32 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 37)) 23
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 34 Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                          26
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 40)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                        41
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 38) Flapjack.Spt.ln)))))
                    25
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 47))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 27 (Flapjack.Spt.ls 27))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 31
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln))
                          (Flapjack.Spt.ls 45)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 49) (Flapjack.Spt.ls 22))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 43
                            (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 34))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 25)))
                          27
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)
                            Flapjack.Spt.ln)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                          Flapjack.Spt.ln)
                        41
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 28)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 49))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 27))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                          32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.ls 29)) 40
                            (Flapjack.Spt.ls 26))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 30
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)))
                          42
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 25
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 45) Flapjack.Spt.ln)))
                        49
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 31
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 47)))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) 27
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 49 Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 47)) 23
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 43 Flapjack.Spt.ln))
                          43
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 34 (Flapjack.Spt.ls 25))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 26
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 44)) 36
                            Flapjack.Spt.ln)))
                      41
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 33
                            (Flapjack.Spt.ls 34)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 40) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                          22 (Flapjack.Spt.ls 41)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 48))))
                        27
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 47 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 48) (Flapjack.Spt.ls 27)))
                          30 (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 25)))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 40))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                          26
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 22 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)) 24
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                          32
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 25))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
                        27
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 41 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 43)) 34
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) Flapjack.Spt.ln))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                          22
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 39) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 42) Flapjack.Spt.ln))
                        29
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))))
                    40
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 25 (Flapjack.Spt.ls 35)) 48
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 24 (Flapjack.Spt.ls 24))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 28
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 34 Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 49)) 41
                            Flapjack.Spt.ln)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 41) Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 38
                            (Flapjack.Spt.ls 24)))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.ls 42)))
                          35 (Flapjack.Spt.ls 45)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 29
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 40)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 25
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 52) (Flapjack.Spt.ls 35)))
                          33 (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.ls 28)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 43))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                          28
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 47) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 34
                            (Flapjack.Spt.ls 24))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))
                          37
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 26)) 23
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 40) Flapjack.Spt.ln)))
                        30
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 40
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln))
                        49
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 50) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 32)))))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 34
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 30 Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 35))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 48)))
                          38
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.ls 22))))
                        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 23 Flapjack.Spt.ln)
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 45)) 31
                            (Flapjack.Spt.ls 49))))
                      24
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)))
                          46
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 29
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 50) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) 36
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 29))))
                        34
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 47)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 32 Flapjack.Spt.ln))
                          (Flapjack.Spt.ls 49)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))
                          (Flapjack.Spt.bs Flapjack.Spt.ln 47
                            (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 40))))
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 38)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 26)))
                          29 (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.ls 23)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                          22
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 43) (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)))
                        49
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                          28
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 42))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
                        22
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 29 Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 40))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))))))),
some
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
      0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                    0
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 11)) 2
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 2 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 4 (Flapjack.Spt.ls 5)) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 26
                      (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 24))
                      22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 28 (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 13) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 28
                      (Flapjack.Spt.ls 1))
                    26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))) 27
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                    0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 29 (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 28))))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 22 (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 Flapjack.Spt.ln)))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 28))))
                    26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 12)) 0
                        (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 1
                      Flapjack.Spt.ln))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 0
                        (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)))
                      26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 2 (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23))))
                    1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 33)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) 28
                        (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8))
                        (Flapjack.Spt.ls 27))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 27
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 27))))
                    2
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 22)))
                      2
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  26
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 27))))
                    23
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 5))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 2)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 26
                        (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 5))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) (Flapjack.Spt.ls 29)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 22 Flapjack.Spt.ln) 26
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))))
                    22
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 28
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 27 (Flapjack.Spt.ls 27))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 30)) (Flapjack.Spt.ls 26)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 5 Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26))))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 11))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)))
                      3 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) Flapjack.Spt.ln)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)))
                      3 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 24)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))
                    0
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 27 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))
                        (Flapjack.Spt.ls 28)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 22 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 26
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      Flapjack.Spt.ln)
                    24
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln) 24
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 27
                      Flapjack.Spt.ln)
                    26
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 22
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 23
                      Flapjack.Spt.ln)
                    23
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 28
                      Flapjack.Spt.ln)
                    22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))))))),
some
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 0 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 11))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 5)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 9)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)) 25 (Flapjack.Spt.ls 31)))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 8)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 11))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  2
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 12 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 29 (Flapjack.Spt.ls 22)))
                  2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 25)))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 2)))
                  2 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 12)))
                  3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 32 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 28 (Flapjack.Spt.ls 3)))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 26 (Flapjack.Spt.ls 2)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 9)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 22 Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 1 (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 22 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))))]
theorem chunk024_length : chunk024.length = 16 := by rfl
end InitECandidate.Proofs.AllocationOracles
