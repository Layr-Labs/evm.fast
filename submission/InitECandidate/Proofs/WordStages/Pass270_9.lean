import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass270_8
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def proposed270 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 24 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                    1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                  3 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 3
                    Flapjack.Spt.ln)
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 22 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 (Flapjack.Spt.ls 24)))
                  24
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 3 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22)) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 1 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))
                  0
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)) 2 (Flapjack.Spt.ls 2)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)) 1
                      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 24)))
                    22 Flapjack.Spt.ln)
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 1
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 1)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.ls 3)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                      (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 1 (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2
                      (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                    1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 23
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 23
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 22 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 22
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 23 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))))
def word270_9_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def word270_9_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (44, 44)]

def word270_9_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def word270_9_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word270_9_4 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_2 word270_9_3

def word270_9_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_1, 270, 2)) (some 162) ([2, 4]) (some (2, word270_9_4, 270, 3))

def word270_9_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word270_9_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def word270_9_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def word270_9_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def word270_9_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def word270_9_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def word270_9_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def word270_9_13 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_12 word270_9_3

def word270_9_14 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_11 word270_9_13

def word270_9_15 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_10 word270_9_14

def word270_9_16 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_15

def word270_9_17 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_9 word270_9_16

def word270_9_18 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_17

def word270_9_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word270_9_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) word270_9_18 word270_9_19

def word270_9_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 44)]

def word270_9_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44)]

def word270_9_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_22, 270, 4)) (some 169) ([2, 4]) (some (2, word270_9_4, 270, 5))

def word270_9_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 0)]

def word270_9_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word270_9_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def word270_9_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 23#64)

def word270_9_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def word270_9_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0)]

def word270_9_30 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_28 word270_9_29

def word270_9_31 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_30

def word270_9_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 21#64)

def word270_9_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 11#64)

def word270_9_34 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_33 word270_9_16

def word270_9_35 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_34

def word270_9_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) word270_9_35 word270_9_19

def word270_9_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 6)]

def word270_9_38 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_37

def word270_9_39 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_38

def word270_9_40 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_36 word270_9_39

def word270_9_41 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_32 word270_9_40

def word270_9_42 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_26 word270_9_41

def word270_9_43 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_42

def word270_9_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) word270_9_31 word270_9_43

def word270_9_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 248#64)

def word270_9_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def word270_9_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (8, 46), (4, 48)]

def word270_9_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48)]

def word270_9_49 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_48 word270_9_3

def word270_9_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_47, 270, 6)) (some 68) ([2]) (some (2, word270_9_49, 270, 7))

def word270_9_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def word270_9_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 0#64))

def word270_9_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def word270_9_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def word270_9_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def word270_9_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8), (50, 2)]

def word270_9_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (4, 50)]

def word270_9_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50)]

def word270_9_59 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_58 word270_9_3

def word270_9_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 8)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 9))

def word270_9_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def word270_9_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def word270_9_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def word270_9_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def word270_9_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 2)]

def word270_9_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 10)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 11))

def word270_9_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def word270_9_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def word270_9_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def word270_9_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 12)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 13))

def word270_9_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def word270_9_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def word270_9_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 14)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 15))

def word270_9_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def word270_9_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def word270_9_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 16)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 17))

def word270_9_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 40#64)))

def word270_9_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5#64)

def word270_9_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 18)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 19))

def word270_9_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def word270_9_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 256#64)

def word270_9_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 6#64)

def word270_9_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 20)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 21))

def word270_9_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 56#64)))

def word270_9_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 7#64)

def word270_9_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (6, 6), (12, 2), (44, 44), (0, 46), (48, 48), (10, 50)]

def word270_9_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (10, 50)]

def word270_9_88 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_87 word270_9_3

def word270_9_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_86, 270, 22)) (some 267) ([2, 4, 6]) (some (2, word270_9_88, 270, 23))

def word270_9_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def word270_9_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (8, 8), (6, 6), (4, 4)]

def word270_9_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def word270_9_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def word270_9_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def word270_9_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def word270_9_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def word270_9_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def word270_9_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def word270_9_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def word270_9_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 2)]

def word270_9_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 24)) (some 266) ([2, 4]) (some (2, word270_9_59, 270, 25))

def word270_9_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def word270_9_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 9#64)

def word270_9_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 26)) (some 266) ([2, 4]) (some (2, word270_9_59, 270, 27))

def word270_9_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 104#64)))

def word270_9_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 10#64)

def word270_9_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 28)) (some 266) ([2, 4]) (some (2, word270_9_59, 270, 29))

def word270_9_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 112#64)))

def word270_9_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 11#64)

def word270_9_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44), (46, 46), (48, 48), (0, 50)]

def word270_9_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def word270_9_112 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_111 word270_9_3

def word270_9_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_110, 270, 30)) (some 265) ([2, 4, 6]) (some (2, word270_9_112, 270, 31))

def word270_9_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def word270_9_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def word270_9_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def word270_9_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def word270_9_118 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_117 word270_9_14

def word270_9_119 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_116 word270_9_118

def word270_9_120 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_115 word270_9_119

def word270_9_121 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_120

def word270_9_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) word270_9_121 word270_9_19

def word270_9_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def word270_9_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 2)]

def word270_9_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 32)) (some 266) ([2, 4]) (some (2, word270_9_59, 270, 33))

def word270_9_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 120#64)))

def word270_9_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12#64)

def word270_9_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (44, 44), (0, 46), (48, 48), (6, 50)]

def word270_9_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50)]

def word270_9_130 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_129 word270_9_3

def word270_9_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_128, 270, 34)) (some 269) ([2, 4]) (some (2, word270_9_130, 270, 35))

def word270_9_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def word270_9_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def word270_9_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 136#64)))

def word270_9_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def word270_9_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def word270_9_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 13#64)

def word270_9_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 36)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 37))

def word270_9_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 144#64)))

def word270_9_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def word270_9_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 14#64)

def word270_9_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 38)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 39))

def word270_9_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 152#64)))

def word270_9_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 15#64)

def word270_9_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_86, 270, 40)) (some 267) ([2, 4, 6]) (some (2, word270_9_88, 270, 41))

def word270_9_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 160#64)))

def word270_9_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def word270_9_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 42)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 43))

def word270_9_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def word270_9_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 17#64)

def word270_9_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50)]

def word270_9_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_151, 270, 44)) (some 265) ([2, 4, 6]) (some (2, word270_9_112, 270, 45))

def word270_9_153 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 46)) (some 266) ([2, 4]) (some (2, word270_9_59, 270, 47))

def word270_9_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 200#64)))

def word270_9_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18#64)

def word270_9_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_151, 270, 48)) (some 265) ([2, 4, 6]) (some (2, word270_9_112, 270, 49))

def word270_9_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 50)) (some 266) ([2, 4]) (some (2, word270_9_59, 270, 51))

def word270_9_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 208#64)))

def word270_9_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 19#64)

def word270_9_160 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_57, 270, 52)) (some 268) ([2, 4, 6]) (some (2, word270_9_59, 270, 53))

def word270_9_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 216#64)))

def word270_9_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def word270_9_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (8, 46), (4, 48), (0, 50)]

def word270_9_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48), (0, 50)]

def word270_9_165 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_164 word270_9_3

def word270_9_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_163, 270, 54)) (some 268) ([2, 4, 6]) (some (2, word270_9_165, 270, 55))

def word270_9_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def word270_9_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 224#64)))

def word270_9_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def word270_9_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 21#64)

def word270_9_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 8), (48, 2)]

def word270_9_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def word270_9_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def word270_9_174 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_173 word270_9_3

def word270_9_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_172, 270, 56)) (some 268) ([2, 4, 6]) (some (2, word270_9_174, 270, 57))

def word270_9_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 232#64)))

def word270_9_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 22#64)

def word270_9_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 2)]

def word270_9_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def word270_9_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def word270_9_181 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_180 word270_9_3

def word270_9_182 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_179, 270, 58)) (some 265) ([2, 4, 6]) (some (2, word270_9_181, 270, 59))

def word270_9_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def word270_9_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (8, 46)]

def word270_9_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46)]

def word270_9_186 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_185 word270_9_3

def word270_9_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_9_184, 270, 60)) (some 266) ([2, 4]) (some (2, word270_9_186, 270, 61))

def word270_9_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 240#64)))

def word270_9_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8)]

def word270_9_190 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_135 word270_9_189

def word270_9_191 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_93 word270_9_190

def word270_9_192 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_188 word270_9_191

def word270_9_193 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_167 word270_9_192

def word270_9_194 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_193

def word270_9_195 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_187 word270_9_194

def word270_9_196 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_183 word270_9_195

def word270_9_197 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_177 word270_9_196

def word270_9_198 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_123 word270_9_197

def word270_9_199 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_198

def word270_9_200 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_182 word270_9_199

def word270_9_201 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_178 word270_9_200

def word270_9_202 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_177 word270_9_201

def word270_9_203 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_140 word270_9_202

def word270_9_204 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_203

def word270_9_205 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_204

def word270_9_206 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_205

def word270_9_207 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_176 word270_9_206

def word270_9_208 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_207

def word270_9_209 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_208

def word270_9_210 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_175 word270_9_209

def word270_9_211 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_171 word270_9_210

def word270_9_212 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_170 word270_9_211

def word270_9_213 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_212

def word270_9_214 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_123 word270_9_213

def word270_9_215 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_214

def word270_9_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 232#64)))

def word270_9_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def word270_9_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 240#64)))

def word270_9_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (8, 8)]

def word270_9_220 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_217 word270_9_219

def word270_9_221 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_220

def word270_9_222 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_169 word270_9_221

def word270_9_223 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_218 word270_9_222

def word270_9_224 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_167 word270_9_223

def word270_9_225 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_217 word270_9_224

def word270_9_226 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_225

def word270_9_227 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_169 word270_9_226

def word270_9_228 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_216 word270_9_227

def word270_9_229 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_167 word270_9_228

def word270_9_230 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_229

def word270_9_231 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) word270_9_215 word270_9_230

def word270_9_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8)]

def word270_9_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def word270_9_234 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_232 word270_9_233

def word270_9_235 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_234

def word270_9_236 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_231 word270_9_235

def word270_9_237 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_169 word270_9_236

def word270_9_238 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_26 word270_9_237

def word270_9_239 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_238

def word270_9_240 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_239

def word270_9_241 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_168 word270_9_240

def word270_9_242 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_167 word270_9_241

def word270_9_243 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_242

def word270_9_244 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_166 word270_9_243

def word270_9_245 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_244

def word270_9_246 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_162 word270_9_245

def word270_9_247 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_246

def word270_9_248 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_247

def word270_9_249 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_248

def word270_9_250 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_249

def word270_9_251 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_161 word270_9_250

def word270_9_252 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_251

def word270_9_253 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_252

def word270_9_254 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_160 word270_9_253

def word270_9_255 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_254

def word270_9_256 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_159 word270_9_255

def word270_9_257 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_256

def word270_9_258 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_257

def word270_9_259 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_258

def word270_9_260 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_259

def word270_9_261 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_158 word270_9_260

def word270_9_262 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_261

def word270_9_263 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_262

def word270_9_264 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_157 word270_9_263

def word270_9_265 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_124 word270_9_264

def word270_9_266 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_155 word270_9_265

def word270_9_267 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_123 word270_9_266

def word270_9_268 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_267

def word270_9_269 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_156 word270_9_268

def word270_9_270 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_269

def word270_9_271 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_155 word270_9_270

def word270_9_272 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_140 word270_9_271

def word270_9_273 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_272

def word270_9_274 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_273

def word270_9_275 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_274

def word270_9_276 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_154 word270_9_275

def word270_9_277 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_276

def word270_9_278 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_277

def word270_9_279 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_153 word270_9_278

def word270_9_280 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_124 word270_9_279

def word270_9_281 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_150 word270_9_280

def word270_9_282 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_123 word270_9_281

def word270_9_283 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_282

def word270_9_284 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_152 word270_9_283

def word270_9_285 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_284

def word270_9_286 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_150 word270_9_285

def word270_9_287 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_140 word270_9_286

def word270_9_288 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_287

def word270_9_289 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_288

def word270_9_290 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_289

def word270_9_291 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_149 word270_9_290

def word270_9_292 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_291

def word270_9_293 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_292

def word270_9_294 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_148 word270_9_293

def word270_9_295 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_294

def word270_9_296 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_147 word270_9_295

def word270_9_297 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_296

def word270_9_298 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_98 word270_9_297

def word270_9_299 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_97 word270_9_298

def word270_9_300 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_96 word270_9_299

def word270_9_301 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_95 word270_9_300

def word270_9_302 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_301

def word270_9_303 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_94 word270_9_302

def word270_9_304 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_93 word270_9_303

def word270_9_305 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_92 word270_9_304

def word270_9_306 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_91 word270_9_305

def word270_9_307 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_146 word270_9_306

def word270_9_308 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_307

def word270_9_309 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_308

def word270_9_310 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_145 word270_9_309

def word270_9_311 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_310

def word270_9_312 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_144 word270_9_311

def word270_9_313 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_25 word270_9_312

def word270_9_314 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_313

def word270_9_315 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_314

def word270_9_316 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_315

def word270_9_317 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_143 word270_9_316

def word270_9_318 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_317

def word270_9_319 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_318

def word270_9_320 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_142 word270_9_319

def word270_9_321 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_320

def word270_9_322 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_141 word270_9_321

def word270_9_323 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_140 word270_9_322

def word270_9_324 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_323

def word270_9_325 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_324

def word270_9_326 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_325

def word270_9_327 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_139 word270_9_326

def word270_9_328 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_327

def word270_9_329 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_328

def word270_9_330 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_138 word270_9_329

def word270_9_331 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_330

def word270_9_332 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_137 word270_9_331

def word270_9_333 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_332

def word270_9_334 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_136 word270_9_333

def word270_9_335 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_135 word270_9_334

def word270_9_336 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_93 word270_9_335

def word270_9_337 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_134 word270_9_336

def word270_9_338 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_337

def word270_9_339 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_133 word270_9_338

def word270_9_340 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_96 word270_9_339

def word270_9_341 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_132 word270_9_340

def word270_9_342 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_341

def word270_9_343 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_342

def word270_9_344 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_131 word270_9_343

def word270_9_345 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_100 word270_9_344

def word270_9_346 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_127 word270_9_345

def word270_9_347 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_346

def word270_9_348 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_347

def word270_9_349 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_348

def word270_9_350 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_126 word270_9_349

def word270_9_351 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_350

def word270_9_352 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_351

def word270_9_353 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_125 word270_9_352

def word270_9_354 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_124 word270_9_353

def word270_9_355 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_109 word270_9_354

def word270_9_356 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_123 word270_9_355

def word270_9_357 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_356

def word270_9_358 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_357

def word270_9_359 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_122 word270_9_358

def word270_9_360 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_26 word270_9_359

def word270_9_361 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_114 word270_9_360

def word270_9_362 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_361

def word270_9_363 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_113 word270_9_362

def word270_9_364 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_363

def word270_9_365 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_109 word270_9_364

def word270_9_366 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_365

def word270_9_367 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_366

def word270_9_368 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_367

def word270_9_369 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_368

def word270_9_370 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_108 word270_9_369

def word270_9_371 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_370

def word270_9_372 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_371

def word270_9_373 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_107 word270_9_372

def word270_9_374 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_100 word270_9_373

def word270_9_375 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_106 word270_9_374

def word270_9_376 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_375

def word270_9_377 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_376

def word270_9_378 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_377

def word270_9_379 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_105 word270_9_378

def word270_9_380 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_379

def word270_9_381 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_380

def word270_9_382 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_104 word270_9_381

def word270_9_383 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_100 word270_9_382

def word270_9_384 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_103 word270_9_383

def word270_9_385 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_384

def word270_9_386 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_385

def word270_9_387 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_386

def word270_9_388 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_102 word270_9_387

def word270_9_389 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_388

def word270_9_390 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_389

def word270_9_391 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_101 word270_9_390

def word270_9_392 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_100 word270_9_391

def word270_9_393 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_99 word270_9_392

def word270_9_394 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_98 word270_9_393

def word270_9_395 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_97 word270_9_394

def word270_9_396 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_96 word270_9_395

def word270_9_397 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_95 word270_9_396

def word270_9_398 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_397

def word270_9_399 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_94 word270_9_398

def word270_9_400 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_93 word270_9_399

def word270_9_401 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_92 word270_9_400

def word270_9_402 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_91 word270_9_401

def word270_9_403 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_90 word270_9_402

def word270_9_404 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_403

def word270_9_405 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_404

def word270_9_406 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_89 word270_9_405

def word270_9_407 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_406

def word270_9_408 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_85 word270_9_407

def word270_9_409 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_25 word270_9_408

def word270_9_410 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_409

def word270_9_411 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_410

def word270_9_412 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_411

def word270_9_413 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_84 word270_9_412

def word270_9_414 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_413

def word270_9_415 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_414

def word270_9_416 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_83 word270_9_415

def word270_9_417 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_416

def word270_9_418 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_82 word270_9_417

def word270_9_419 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_81 word270_9_418

def word270_9_420 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_419

def word270_9_421 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_420

def word270_9_422 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_421

def word270_9_423 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_80 word270_9_422

def word270_9_424 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_423

def word270_9_425 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_424

def word270_9_426 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_79 word270_9_425

def word270_9_427 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_426

def word270_9_428 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_78 word270_9_427

def word270_9_429 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_428

def word270_9_430 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_429

def word270_9_431 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_430

def word270_9_432 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_431

def word270_9_433 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_77 word270_9_432

def word270_9_434 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_433

def word270_9_435 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_434

def word270_9_436 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_76 word270_9_435

def word270_9_437 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_436

def word270_9_438 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_75 word270_9_437

def word270_9_439 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_438

def word270_9_440 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_439

def word270_9_441 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_440

def word270_9_442 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_441

def word270_9_443 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_74 word270_9_442

def word270_9_444 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_443

def word270_9_445 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_444

def word270_9_446 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_73 word270_9_445

def word270_9_447 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_446

def word270_9_448 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_72 word270_9_447

def word270_9_449 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_448

def word270_9_450 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_449

def word270_9_451 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_450

def word270_9_452 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_451

def word270_9_453 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_71 word270_9_452

def word270_9_454 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_453

def word270_9_455 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_454

def word270_9_456 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_70 word270_9_455

def word270_9_457 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_456

def word270_9_458 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_69 word270_9_457

def word270_9_459 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_68 word270_9_458

def word270_9_460 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_459

def word270_9_461 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_460

def word270_9_462 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_461

def word270_9_463 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_67 word270_9_462

def word270_9_464 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_463

def word270_9_465 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_464

def word270_9_466 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_66 word270_9_465

def word270_9_467 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_65 word270_9_466

def word270_9_468 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_64 word270_9_467

def word270_9_469 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_468

def word270_9_470 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_469

def word270_9_471 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_63 word270_9_470

def word270_9_472 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_62 word270_9_471

def word270_9_473 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_61 word270_9_472

def word270_9_474 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_473

def word270_9_475 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_474

def word270_9_476 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_60 word270_9_475

def word270_9_477 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_56 word270_9_476

def word270_9_478 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_55 word270_9_477

def word270_9_479 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_54 word270_9_478

def word270_9_480 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_53 word270_9_479

def word270_9_481 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_52 word270_9_480

def word270_9_482 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_51 word270_9_481

def word270_9_483 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_482

def word270_9_484 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_50 word270_9_483

def word270_9_485 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_46 word270_9_484

def word270_9_486 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_45 word270_9_485

def word270_9_487 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_486

def word270_9_488 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_44 word270_9_487

def word270_9_489 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_27 word270_9_488

def word270_9_490 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_26 word270_9_489

def word270_9_491 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_25 word270_9_490

def word270_9_492 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_24 word270_9_491

def word270_9_493 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_492

def word270_9_494 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_23 word270_9_493

def word270_9_495 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_21 word270_9_494

def word270_9_496 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_495

def word270_9_497 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_496

def word270_9_498 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_20 word270_9_497

def word270_9_499 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_8 word270_9_498

def word270_9_500 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_7 word270_9_499

def word270_9_501 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_6 word270_9_500

def word270_9_502 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_5 word270_9_501

def word270_9_503 : WordLangProgHOL (BitVec 64) :=
.seq word270_9_0 word270_9_502

def pass270_9 : WordLangProgHOL (BitVec 64) :=
word270_9_503
theorem pass270_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 270 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass270_8) proposed270 = pass270_9 := by
  kernel_rfl
#print axioms pass270_9_eq
end InitECandidate.Proofs.WordStages
