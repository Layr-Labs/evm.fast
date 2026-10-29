import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass345_8
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def proposed345 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 2)))
                    2
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
                  5
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
                    6
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 5)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 4
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 5
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 Flapjack.Spt.ln))
                    1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                    0 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)) 3
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 Flapjack.Spt.ln) 0
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 2)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 7)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 (Flapjack.Spt.ls 1)))
                    1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)) 3
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 2))))
                  25
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.ls 0))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 Flapjack.Spt.ln) 5 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 4 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                    1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 4)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))
                    4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    4
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 (Flapjack.Spt.ls 3)) 0
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6))))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 Flapjack.Spt.ln) (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 5)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                    5
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 1)))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3 Flapjack.Spt.ln))
                    3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 25)))
                    1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)) 1 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4)))
                    7
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)) 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1)) 4 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 6)) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) 4 (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 4
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 3 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))))
                  22
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 4)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)) 3
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
                    1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))))
                  24
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 2)))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 3 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 (Flapjack.Spt.ls 2)) 4
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 Flapjack.Spt.ln))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 7)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3)))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln) 1
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                    5
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 Flapjack.Spt.ln) (Flapjack.Spt.ls 3)) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 4
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 Flapjack.Spt.ln) 23 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 22)) 4
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                    1
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                    3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 0)) 5
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)) 23
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 24 Flapjack.Spt.ln) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)
                  25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln)
                  25
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 26))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
                  22 Flapjack.Spt.ln)
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  26
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 Flapjack.Spt.ln) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln) (Flapjack.Spt.ls 26))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    Flapjack.Spt.ln)
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))))
def word345_9_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def word345_9_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def word345_9_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word345_9_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def word345_9_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def word345_9_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def word345_9_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def word345_9_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def word345_9_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word345_9_9 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_7 word345_9_8

def word345_9_10 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_6 word345_9_9

def word345_9_11 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_5 word345_9_10

def word345_9_12 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_4 word345_9_11

def word345_9_13 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_3 word345_9_12

def word345_9_14 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_13

def word345_9_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word345_9_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) word345_9_14 word345_9_15

def word345_9_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def word345_9_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def word345_9_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 2)]

def word345_9_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 400#64)

def word345_9_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 48), (50, 6)]

def word345_9_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def word345_9_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def word345_9_24 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_23 word345_9_8

def word345_9_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_22, 345, 2)) (some 68) ([2]) (some (2, word345_9_24, 345, 3))

def word345_9_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def word345_9_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 400#64)

def word345_9_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2)]

def word345_9_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (10, 52)]

def word345_9_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (10, 52)]

def word345_9_31 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_30 word345_9_8

def word345_9_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_29, 345, 4)) (some 78) ([2, 4]) (some (2, word345_9_31, 345, 5))

def word345_9_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def word345_9_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 384#64)))

def word345_9_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def word345_9_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def word345_9_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 392#64)))

def word345_9_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def word345_9_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def word345_9_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word345_9_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 9#64)

def word345_9_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def word345_9_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def word345_9_44 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_42 word345_9_43

def word345_9_45 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_44

def word345_9_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def word345_9_47 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_46 word345_9_43

def word345_9_48 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_47

def word345_9_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 2) word345_9_45 word345_9_48

def word345_9_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def word345_9_51 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_3 word345_9_7

def word345_9_52 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_51

def word345_9_53 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_1 word345_9_7

def word345_9_54 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_53

def word345_9_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 6) word345_9_52 word345_9_54

def word345_9_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def word345_9_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 8)))

def word345_9_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def word345_9_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def word345_9_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def word345_9_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word345_9_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 12), (50, 10)]

def word345_9_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (4, 4), (44, 44), (0, 46), (46, 48), (8, 50)]

def word345_9_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (8, 50)]

def word345_9_65 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_64 word345_9_8

def word345_9_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_63, 345, 6)) (some 162) ([2, 4]) (some (2, word345_9_65, 345, 7))

def word345_9_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11#64)

def word345_9_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2)]

def word345_9_69 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_67 word345_9_68

def word345_9_70 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_69

def word345_9_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46)]

def word345_9_72 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_71

def word345_9_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word345_9_70 word345_9_72

def word345_9_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def word345_9_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def word345_9_76 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_75 word345_9_68

def word345_9_77 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_76

def word345_9_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word345_9_77 word345_9_72

def word345_9_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def word345_9_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 14#64)

def word345_9_81 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_80 word345_9_68

def word345_9_82 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_81

def word345_9_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word345_9_82 word345_9_72

def word345_9_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def word345_9_85 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_84 word345_9_68

def word345_9_86 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_85

def word345_9_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word345_9_86 word345_9_72

def word345_9_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (46, 46), (10, 10), (8, 8), (0, 0), (4, 4)]

def word345_9_89 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_88

def word345_9_90 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_87 word345_9_89

def word345_9_91 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_50 word345_9_90

def word345_9_92 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_91

def word345_9_93 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_92

def word345_9_94 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_83 word345_9_93

def word345_9_95 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_79 word345_9_94

def word345_9_96 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_95

def word345_9_97 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_96

def word345_9_98 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_78 word345_9_97

def word345_9_99 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_74 word345_9_98

def word345_9_100 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_99

def word345_9_101 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_100

def word345_9_102 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_73 word345_9_101

def word345_9_103 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_3 word345_9_102

def word345_9_104 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_103

def word345_9_105 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_104

def word345_9_106 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_66 word345_9_105

def word345_9_107 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_62 word345_9_106

def word345_9_108 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_61 word345_9_107

def word345_9_109 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_60 word345_9_108

def word345_9_110 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_59 word345_9_109

def word345_9_111 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_110

def word345_9_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 192#64)

def word345_9_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 254#64)

def word345_9_114 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_74 word345_9_12

def word345_9_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) word345_9_15 word345_9_114

def word345_9_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 12), (48, 10), (50, 14)]

def word345_9_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (4, 4), (44, 44), (46, 46), (8, 48), (0, 50)]

def word345_9_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48), (0, 50)]

def word345_9_119 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_118 word345_9_8

def word345_9_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_117, 345, 8)) (some 162) ([2, 4]) (some (2, word345_9_119, 345, 9))

def word345_9_121 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_89

def word345_9_122 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_120 word345_9_121

def word345_9_123 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_116 word345_9_122

def word345_9_124 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_115 word345_9_123

def word345_9_125 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_57 word345_9_124

def word345_9_126 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_56 word345_9_125

def word345_9_127 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_126

def word345_9_128 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_55 word345_9_127

def word345_9_129 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_17 word345_9_128

def word345_9_130 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_113 word345_9_129

def word345_9_131 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_130

def word345_9_132 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_49 word345_9_131

def word345_9_133 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_112 word345_9_132

def word345_9_134 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_17 word345_9_133

def word345_9_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) word345_9_111 word345_9_134

def word345_9_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def word345_9_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def word345_9_138 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_79 word345_9_12

def word345_9_139 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_138

def word345_9_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) word345_9_139 word345_9_15

def word345_9_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 44), (46, 46), (48, 8), (50, 0)]

def word345_9_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (44, 44), (8, 46), (48, 48), (0, 50)]

def word345_9_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (48, 48), (0, 50)]

def word345_9_144 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_143 word345_9_8

def word345_9_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_142, 345, 10)) (some 169) ([2, 4]) (some (2, word345_9_144, 345, 11))

def word345_9_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4), (6, 6)]

def word345_9_147 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_50 word345_9_12

def word345_9_148 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_147

def word345_9_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 8) word345_9_148 word345_9_15

def word345_9_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def word345_9_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def word345_9_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 12#64)

def word345_9_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def word345_9_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 48), (48, 0), (50, 2)]

def word345_9_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (8, 46), (0, 48), (6, 50)]

def word345_9_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (0, 48), (6, 50)]

def word345_9_157 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_156 word345_9_8

def word345_9_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_155, 345, 12)) (some 337) ([2, 4, 6, 8]) (some (2, word345_9_157, 345, 13))

def word345_9_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def word345_9_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 8#64)))

def word345_9_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def word345_9_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 8), (0, 0), (6, 6)]

def word345_9_163 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_161 word345_9_162

def word345_9_164 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_39 word345_9_163

def word345_9_165 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_164

def word345_9_166 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_160 word345_9_165

def word345_9_167 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_166

def word345_9_168 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_167

def word345_9_169 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_158 word345_9_168

def word345_9_170 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_154 word345_9_169

def word345_9_171 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_150 word345_9_170

def word345_9_172 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_153 word345_9_171

def word345_9_173 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_152 word345_9_172

def word345_9_174 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_151 word345_9_173

def word345_9_175 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_174

def word345_9_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 48), (0, 0), (6, 6)]

def word345_9_177 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_176

def word345_9_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) word345_9_175 word345_9_177

def word345_9_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def word345_9_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 48), (50, 0), (52, 2)]

def word345_9_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (14, 48), (12, 50), (16, 52)]

def word345_9_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (14, 48), (12, 50), (16, 52)]

def word345_9_183 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_182 word345_9_8

def word345_9_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_181, 345, 14)) (some 337) ([2, 4, 6, 8]) (some (2, word345_9_183, 345, 15))

def word345_9_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word345_9_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (10, 10), (6, 6), (4, 4), (0, 0), (14, 14), (12, 12), (8, 8), (16, 16)]

def word345_9_187 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_46 word345_9_186

def word345_9_188 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_185 word345_9_187

def word345_9_189 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_150 word345_9_188

def word345_9_190 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_189

def word345_9_191 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_190

def word345_9_192 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_184 word345_9_191

def word345_9_193 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_180 word345_9_192

def word345_9_194 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_153 word345_9_193

def word345_9_195 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_152 word345_9_194

def word345_9_196 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_179 word345_9_195

def word345_9_197 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_196

def word345_9_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def word345_9_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 0), (52, 2)]

def word345_9_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (14, 48), (12, 50), (16, 52)]

def word345_9_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_200, 345, 16)) (some 336) ([2, 4, 6]) (some (2, word345_9_183, 345, 17))

def word345_9_202 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_186

def word345_9_203 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_201 word345_9_202

def word345_9_204 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_199 word345_9_203

def word345_9_205 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_198 word345_9_204

def word345_9_206 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_179 word345_9_205

def word345_9_207 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_206

def word345_9_208 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word345_9_197 word345_9_207

def word345_9_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def word345_9_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 16#64)))

def word345_9_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (8, 8), (6, 6), (4, 4)]

def word345_9_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def word345_9_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def word345_9_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def word345_9_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def word345_9_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def word345_9_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def word345_9_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def word345_9_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def word345_9_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def word345_9_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 16)]

def word345_9_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 14), (50, 12), (52, 2)]

def word345_9_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (10, 48), (50, 50), (14, 52)]

def word345_9_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (50, 50), (14, 52)]

def word345_9_225 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_224 word345_9_8

def word345_9_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_223, 345, 18)) (some 336) ([2, 4, 6]) (some (2, word345_9_225, 345, 19))

def word345_9_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 48#64)))

def word345_9_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (8, 8), (6, 6), (4, 4)]

def word345_9_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def word345_9_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 10), (50, 50), (14, 14)]

def word345_9_231 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_218 word345_9_230

def word345_9_232 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_231

def word345_9_233 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_232

def word345_9_234 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_233

def word345_9_235 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_234

def word345_9_236 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_235

def word345_9_237 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_236

def word345_9_238 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_237

def word345_9_239 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_238

def word345_9_240 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_228 word345_9_239

def word345_9_241 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_227 word345_9_240

def word345_9_242 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_241

def word345_9_243 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_242

def word345_9_244 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_226 word345_9_243

def word345_9_245 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_222 word345_9_244

def word345_9_246 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_185 word345_9_245

def word345_9_247 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_221 word345_9_246

def word345_9_248 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_247

def word345_9_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (14, 48), (50, 50), (10, 52)]

def word345_9_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (14, 48), (50, 50), (10, 52)]

def word345_9_251 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_250 word345_9_8

def word345_9_252 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_249, 345, 20)) (some 336) ([2, 4, 6]) (some (2, word345_9_251, 345, 21))

def word345_9_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 80#64)))

def word345_9_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 10)]

def word345_9_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 14), (50, 50), (52, 2)]

def word345_9_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_223, 345, 22)) (some 336) ([2, 4, 6]) (some (2, word345_9_225, 345, 23))

def word345_9_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 112#64)))

def word345_9_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 2#64)))

def word345_9_259 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_258 word345_9_230

def word345_9_260 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_259

def word345_9_261 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_260

def word345_9_262 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_261

def word345_9_263 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_262

def word345_9_264 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_263

def word345_9_265 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_264

def word345_9_266 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_265

def word345_9_267 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_266

def word345_9_268 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_228 word345_9_267

def word345_9_269 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_257 word345_9_268

def word345_9_270 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_269

def word345_9_271 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_270

def word345_9_272 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_256 word345_9_271

def word345_9_273 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_255 word345_9_272

def word345_9_274 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_185 word345_9_273

def word345_9_275 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_218 word345_9_274

def word345_9_276 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_254 word345_9_275

def word345_9_277 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_276

def word345_9_278 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_277

def word345_9_279 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_278

def word345_9_280 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_279

def word345_9_281 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_280

def word345_9_282 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_281

def word345_9_283 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_282

def word345_9_284 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_228 word345_9_283

def word345_9_285 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_253 word345_9_284

def word345_9_286 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_209 word345_9_285

def word345_9_287 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_286

def word345_9_288 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_252 word345_9_287

def word345_9_289 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_222 word345_9_288

def word345_9_290 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_185 word345_9_289

def word345_9_291 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_221 word345_9_290

def word345_9_292 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_291

def word345_9_293 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 12) word345_9_248 word345_9_292

def word345_9_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 14)]

def word345_9_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 14#64)

def word345_9_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 4), (48, 48), (50, 50), (52, 2)]

def word345_9_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (4, 46), (0, 48), (8, 50), (6, 52)]

def word345_9_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (8, 50), (6, 52)]

def word345_9_299 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_298 word345_9_8

def word345_9_300 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_297, 345, 24)) (some 337) ([2, 4, 6, 8]) (some (2, word345_9_299, 345, 25))

def word345_9_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 144#64)))

def word345_9_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def word345_9_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def word345_9_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 4)]

def word345_9_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def word345_9_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0), (50, 8), (52, 2)]

def word345_9_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (4, 46), (0, 48), (50, 50), (6, 52)]

def word345_9_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50), (6, 52)]

def word345_9_309 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_308 word345_9_8

def word345_9_310 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_307, 345, 26)) (some 339) ([2, 4, 6]) (some (2, word345_9_309, 345, 27))

def word345_9_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (8, 8), (0, 0), (50, 50), (6, 6)]

def word345_9_312 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_311

def word345_9_313 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_310 word345_9_312

def word345_9_314 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_306 word345_9_313

def word345_9_315 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_305 word345_9_314

def word345_9_316 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_179 word345_9_315

def word345_9_317 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_316

def word345_9_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4), (48, 0), (50, 8), (52, 6)]

def word345_9_319 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_307, 345, 28)) (some 340) ([2, 4]) (some (2, word345_9_309, 345, 29))

def word345_9_320 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_319 word345_9_312

def word345_9_321 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_318 word345_9_320

def word345_9_322 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_321

def word345_9_323 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 2) word345_9_317 word345_9_322

def word345_9_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 152#64)))

def word345_9_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def word345_9_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0), (50, 50), (52, 2)]

def word345_9_327 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_223, 345, 30)) (some 336) ([2, 4, 6]) (some (2, word345_9_225, 345, 31))

def word345_9_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 160#64)))

def word345_9_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (44, 44), (46, 4), (48, 10), (50, 50), (52, 14)]

def word345_9_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (4, 4), (44, 44), (10, 46), (8, 48), (0, 50), (6, 52)]

def word345_9_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (8, 48), (0, 50), (6, 52)]

def word345_9_332 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_331 word345_9_8

def word345_9_333 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_330, 345, 32)) (some 338) ([2, 4]) (some (2, word345_9_332, 345, 33))

def word345_9_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 192#64)))

def word345_9_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def word345_9_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 200#64)))

def word345_9_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 1#64)))

def word345_9_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def word345_9_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4), (48, 8), (50, 0), (52, 6)]

def word345_9_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def word345_9_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def word345_9_342 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_341 word345_9_8

def word345_9_343 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_340, 345, 34)) (some 341) ([2, 4]) (some (2, word345_9_342, 345, 35))

def word345_9_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def word345_9_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (12, 2), (44, 44), (10, 46), (8, 48), (0, 50), (6, 52)]

def word345_9_346 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_345, 345, 36)) (some 342) ([2, 4]) (some (2, word345_9_332, 345, 37))

def word345_9_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 208#64)))

def word345_9_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 216#64)))

def word345_9_349 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_337 word345_9_162

def word345_9_350 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_349

def word345_9_351 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_39 word345_9_350

def word345_9_352 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_351

def word345_9_353 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_348 word345_9_352

def word345_9_354 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_353

def word345_9_355 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_354

def word345_9_356 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_335 word345_9_355

def word345_9_357 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_347 word345_9_356

def word345_9_358 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_357

def word345_9_359 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_358

def word345_9_360 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_346 word345_9_359

def word345_9_361 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_344 word345_9_360

def word345_9_362 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_361

def word345_9_363 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_343 word345_9_362

def word345_9_364 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_339 word345_9_363

def word345_9_365 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_364

def word345_9_366 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_162

def word345_9_367 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) word345_9_365 word345_9_366

def word345_9_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (10, 48), (50, 50), (12, 52)]

def word345_9_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (50, 50), (12, 52)]

def word345_9_370 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_369 word345_9_8

def word345_9_371 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_368, 345, 38)) (some 336) ([2, 4, 6]) (some (2, word345_9_370, 345, 39))

def word345_9_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 224#64)))

def word345_9_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14), (8, 8), (6, 6), (4, 4)]

def word345_9_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def word345_9_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 12)]

def word345_9_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 10), (50, 50), (52, 2)]

def word345_9_377 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_340, 345, 40)) (some 341) ([2, 4]) (some (2, word345_9_342, 345, 41))

def word345_9_378 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_345, 345, 42)) (some 343) ([2, 4]) (some (2, word345_9_332, 345, 43))

def word345_9_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 256#64)))

def word345_9_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 264#64)))

def word345_9_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 2#64)))

def word345_9_382 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_381 word345_9_162

def word345_9_383 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_382

def word345_9_384 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_39 word345_9_383

def word345_9_385 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_384

def word345_9_386 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_380 word345_9_385

def word345_9_387 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_386

def word345_9_388 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_387

def word345_9_389 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_335 word345_9_388

def word345_9_390 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_379 word345_9_389

def word345_9_391 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_390

def word345_9_392 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_391

def word345_9_393 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_378 word345_9_392

def word345_9_394 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_344 word345_9_393

def word345_9_395 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_394

def word345_9_396 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_377 word345_9_395

def word345_9_397 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_376 word345_9_396

def word345_9_398 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_218 word345_9_397

def word345_9_399 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_375 word345_9_398

def word345_9_400 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_399

def word345_9_401 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_400

def word345_9_402 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_401

def word345_9_403 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_402

def word345_9_404 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_403

def word345_9_405 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_404

def word345_9_406 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_374 word345_9_405

def word345_9_407 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_373 word345_9_406

def word345_9_408 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_372 word345_9_407

def word345_9_409 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_408

def word345_9_410 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_409

def word345_9_411 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_371 word345_9_410

def word345_9_412 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_199 word345_9_411

def word345_9_413 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_198 word345_9_412

def word345_9_414 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_179 word345_9_413

def word345_9_415 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_414

def word345_9_416 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word345_9_415 word345_9_177

def word345_9_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 4), (48, 48), (50, 6)]

def word345_9_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50)]

def word345_9_419 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_418, 345, 44)) (some 341) ([2, 4]) (some (2, word345_9_24, 345, 45))

def word345_9_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50)]

def word345_9_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 2), (44, 44), (8, 46), (0, 48), (6, 50)]

def word345_9_422 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_421, 345, 46)) (some 344) ([2, 4]) (some (2, word345_9_157, 345, 47))

def word345_9_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 272#64)))

def word345_9_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 280#64)))

def word345_9_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 1#64)))

def word345_9_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 0), (6, 6)]

def word345_9_427 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_425 word345_9_426

def word345_9_428 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_427

def word345_9_429 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_39 word345_9_428

def word345_9_430 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_429

def word345_9_431 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_424 word345_9_430

def word345_9_432 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_431

def word345_9_433 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_212 word345_9_432

def word345_9_434 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_302 word345_9_433

def word345_9_435 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_423 word345_9_434

def word345_9_436 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_435

def word345_9_437 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_436

def word345_9_438 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_422 word345_9_437

def word345_9_439 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_420 word345_9_438

def word345_9_440 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_439

def word345_9_441 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_419 word345_9_440

def word345_9_442 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_417 word345_9_441

def word345_9_443 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_442

def word345_9_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 48), (6, 6)]

def word345_9_445 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_444

def word345_9_446 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) word345_9_443 word345_9_445

def word345_9_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 48), (50, 2)]

def word345_9_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 6), (4, 4), (8, 8), (44, 44), (0, 46), (14, 48), (10, 50)]

def word345_9_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (14, 48), (10, 50)]

def word345_9_450 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_449 word345_9_8

def word345_9_451 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_448, 345, 48)) (some 336) ([2, 4, 6]) (some (2, word345_9_450, 345, 49))

def word345_9_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 288#64)))

def word345_9_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 14), (50, 2)]

def word345_9_454 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_448, 345, 50)) (some 336) ([2, 4, 6]) (some (2, word345_9_450, 345, 51))

def word345_9_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 320#64)))

def word345_9_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 14)]

def word345_9_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (4, 4), (8, 8), (12, 44), (0, 46)]

def word345_9_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (0, 46)]

def word345_9_459 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_458 word345_9_8

def word345_9_460 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word345_9_457, 345, 52)) (some 336) ([2, 4, 6]) (some (2, word345_9_459, 345, 53))

def word345_9_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 352#64)))

def word345_9_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def word345_9_463 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_26 word345_9_462

def word345_9_464 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_463

def word345_9_465 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_464

def word345_9_466 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_465

def word345_9_467 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_466

def word345_9_468 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_467

def word345_9_469 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_468

def word345_9_470 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_212 word345_9_469

def word345_9_471 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_211 word345_9_470

def word345_9_472 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_461 word345_9_471

def word345_9_473 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_472

def word345_9_474 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_473

def word345_9_475 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_460 word345_9_474

def word345_9_476 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_456 word345_9_475

def word345_9_477 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_198 word345_9_476

def word345_9_478 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_258 word345_9_477

def word345_9_479 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_254 word345_9_478

def word345_9_480 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_479

def word345_9_481 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_480

def word345_9_482 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_481

def word345_9_483 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_482

def word345_9_484 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_483

def word345_9_485 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_484

def word345_9_486 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_485

def word345_9_487 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_228 word345_9_486

def word345_9_488 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_455 word345_9_487

def word345_9_489 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_209 word345_9_488

def word345_9_490 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_489

def word345_9_491 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_454 word345_9_490

def word345_9_492 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_453 word345_9_491

def word345_9_493 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_198 word345_9_492

def word345_9_494 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_218 word345_9_493

def word345_9_495 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_254 word345_9_494

def word345_9_496 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_495

def word345_9_497 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_496

def word345_9_498 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_497

def word345_9_499 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_498

def word345_9_500 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_499

def word345_9_501 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_500

def word345_9_502 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_501

def word345_9_503 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_228 word345_9_502

def word345_9_504 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_452 word345_9_503

def word345_9_505 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_209 word345_9_504

def word345_9_506 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_505

def word345_9_507 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_451 word345_9_506

def word345_9_508 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_447 word345_9_507

def word345_9_509 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_198 word345_9_508

def word345_9_510 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_179 word345_9_509

def word345_9_511 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_510

def word345_9_512 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_446 word345_9_511

def word345_9_513 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_50 word345_9_512

def word345_9_514 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_513

def word345_9_515 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_514

def word345_9_516 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_416 word345_9_515

def word345_9_517 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_79 word345_9_516

def word345_9_518 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_517

def word345_9_519 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_518

def word345_9_520 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_367 word345_9_519

def word345_9_521 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_1 word345_9_520

def word345_9_522 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_338 word345_9_521

def word345_9_523 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_337 word345_9_522

def word345_9_524 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_523

def word345_9_525 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_39 word345_9_524

def word345_9_526 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_525

def word345_9_527 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_336 word345_9_526

def word345_9_528 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_527

def word345_9_529 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_528

def word345_9_530 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_335 word345_9_529

def word345_9_531 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_334 word345_9_530

def word345_9_532 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_159 word345_9_531

def word345_9_533 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_532

def word345_9_534 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_333 word345_9_533

def word345_9_535 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_329 word345_9_534

def word345_9_536 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_218 word345_9_535

def word345_9_537 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_536

def word345_9_538 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_537

def word345_9_539 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_538

def word345_9_540 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_539

def word345_9_541 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_540

def word345_9_542 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_541

def word345_9_543 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_542

def word345_9_544 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_229 word345_9_543

def word345_9_545 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_228 word345_9_544

def word345_9_546 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_328 word345_9_545

def word345_9_547 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_546

def word345_9_548 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_547

def word345_9_549 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_327 word345_9_548

def word345_9_550 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_326 word345_9_549

def word345_9_551 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_198 word345_9_550

def word345_9_552 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_179 word345_9_551

def word345_9_553 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_303 word345_9_552

def word345_9_554 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_60 word345_9_553

def word345_9_555 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_325 word345_9_554

def word345_9_556 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_555

def word345_9_557 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_324 word345_9_556

def word345_9_558 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_557

def word345_9_559 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_558

def word345_9_560 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_323 word345_9_559

def word345_9_561 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_79 word345_9_560

def word345_9_562 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_304 word345_9_561

def word345_9_563 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_303 word345_9_562

def word345_9_564 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_60 word345_9_563

def word345_9_565 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_212 word345_9_564

def word345_9_566 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_302 word345_9_565

def word345_9_567 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_301 word345_9_566

def word345_9_568 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_567

def word345_9_569 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_568

def word345_9_570 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_300 word345_9_569

def word345_9_571 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_296 word345_9_570

def word345_9_572 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_185 word345_9_571

def word345_9_573 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_295 word345_9_572

def word345_9_574 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_294 word345_9_573

def word345_9_575 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_574

def word345_9_576 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_293 word345_9_575

def word345_9_577 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_220 word345_9_576

def word345_9_578 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_219 word345_9_577

def word345_9_579 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_60 word345_9_578

def word345_9_580 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_218 word345_9_579

def word345_9_581 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_580

def word345_9_582 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_217 word345_9_581

def word345_9_583 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_216 word345_9_582

def word345_9_584 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_215 word345_9_583

def word345_9_585 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_214 word345_9_584

def word345_9_586 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_213 word345_9_585

def word345_9_587 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_586

def word345_9_588 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_212 word345_9_587

def word345_9_589 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_211 word345_9_588

def word345_9_590 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_210 word345_9_589

def word345_9_591 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_209 word345_9_590

def word345_9_592 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_591

def word345_9_593 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_208 word345_9_592

def word345_9_594 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_50 word345_9_593

def word345_9_595 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_594

def word345_9_596 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_595

def word345_9_597 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_178 word345_9_596

def word345_9_598 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_1 word345_9_597

def word345_9_599 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_58 word345_9_598

def word345_9_600 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_150 word345_9_599

def word345_9_601 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_600

def word345_9_602 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_601

def word345_9_603 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_149 word345_9_602

def word345_9_604 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_146 word345_9_603

def word345_9_605 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_604

def word345_9_606 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_145 word345_9_605

def word345_9_607 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_141 word345_9_606

def word345_9_608 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_607

def word345_9_609 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_608

def word345_9_610 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_140 word345_9_609

def word345_9_611 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_3 word345_9_610

def word345_9_612 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_611

def word345_9_613 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_137 word345_9_612

def word345_9_614 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_136 word345_9_613

def word345_9_615 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_614

def word345_9_616 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_135 word345_9_615

def word345_9_617 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_57 word345_9_616

def word345_9_618 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_56 word345_9_617

def word345_9_619 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_618

def word345_9_620 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_55 word345_9_619

def word345_9_621 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_17 word345_9_620

def word345_9_622 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_50 word345_9_621

def word345_9_623 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_622

def word345_9_624 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_49 word345_9_623

def word345_9_625 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_3 word345_9_624

def word345_9_626 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_17 word345_9_625

def word345_9_627 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_41 word345_9_626

def word345_9_628 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_40 word345_9_627

def word345_9_629 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_39 word345_9_628

def word345_9_630 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_38 word345_9_629

def word345_9_631 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_37 word345_9_630

def word345_9_632 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_631

def word345_9_633 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_36 word345_9_632

def word345_9_634 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_35 word345_9_633

def word345_9_635 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_34 word345_9_634

def word345_9_636 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_33 word345_9_635

def word345_9_637 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_636

def word345_9_638 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_32 word345_9_637

def word345_9_639 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_28 word345_9_638

def word345_9_640 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_27 word345_9_639

def word345_9_641 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_26 word345_9_640

def word345_9_642 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_641

def word345_9_643 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_25 word345_9_642

def word345_9_644 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_21 word345_9_643

def word345_9_645 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_20 word345_9_644

def word345_9_646 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_19 word345_9_645

def word345_9_647 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_18 word345_9_646

def word345_9_648 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_17 word345_9_647

def word345_9_649 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_648

def word345_9_650 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_2 word345_9_649

def word345_9_651 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_16 word345_9_650

def word345_9_652 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_1 word345_9_651

def word345_9_653 : WordLangProgHOL (BitVec 64) :=
.seq word345_9_0 word345_9_652

def pass345_9 : WordLangProgHOL (BitVec 64) :=
word345_9_653
theorem pass345_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 345 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass345_8) proposed345 = pass345_9 := by
  kernel_rfl
#print axioms pass345_9_eq
end InitECandidate.Proofs.WordStages
