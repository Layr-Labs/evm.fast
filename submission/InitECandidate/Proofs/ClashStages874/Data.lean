import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages874
def colour : Flapjack.Spt Nat := Flapjack.Spt.bs
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 32))))
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
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8)) 7 (Flapjack.Spt.ls 9))))
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
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 21 (Flapjack.Spt.ls 1)) 38 (Flapjack.Spt.ls 3)))
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
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 22)) 22 (Flapjack.Spt.ls 13)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 23))))
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
                    1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 42)))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 24)))))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 25))))
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
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 45 (Flapjack.Spt.ls 4)) 11
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7)) 8 (Flapjack.Spt.ls 24))))
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
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 37 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 7)) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 13
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 38 (Flapjack.Spt.ls 3)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 8 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 25))))
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
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 37) Flapjack.Spt.ln) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
                5
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 27)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln) 38
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 (Flapjack.Spt.ls 44))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 11)) 23 (Flapjack.Spt.ls 0)) 22
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
                    1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 19 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 41)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 8)) 24
                    Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 35 (Flapjack.Spt.ls 46)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 37)) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6)) 0 (Flapjack.Spt.ls 23))))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 21) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 27))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))))))
def setValue0 : Flapjack.NumSet := .ln
def setValue1 : Flapjack.NumSet := .ls ()
def setValue2 : Flapjack.NumSet := .bs setValue0 () setValue1
def setValue3 : Flapjack.NumSet := .bs setValue1 () setValue2
def setValue4 : Flapjack.NumSet := .bn setValue0 setValue1
def setValue5 : Flapjack.NumSet := .bn setValue4 setValue0
def setValue6 : Flapjack.NumSet := .bn setValue5 setValue0
def setValue7 : Flapjack.NumSet := .bn setValue6 setValue0
def setValue8 : Flapjack.NumSet := .bn setValue0 setValue7
def setValue9 : Flapjack.NumSet := .bn setValue8 setValue0
def setValue10 : Flapjack.NumSet := .bn setValue0 setValue9
def setValue11 : Flapjack.NumSet := .bn setValue0 setValue10
def setValue12 : Flapjack.NumSet := .bn setValue0 setValue11
def setValue13 : Flapjack.NumSet := .bn setValue0 setValue12
def setValue14 : Flapjack.NumSet := .bn setValue13 setValue0
def setValue15 : Flapjack.NumSet := .bn setValue3 setValue14
def setValue16 : Flapjack.NumSet := .bs setValue3 () setValue0
def tree0 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5953, 2, 4, 6, 8])).val
theorem tree0_def : tree0 = (Flapjack.RegAlloc.ClashTree.delta [] [5953, 2, 4, 6, 8]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal0 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5953, 2, 4, 6, 8]
def live0 : Flapjack.NumSet := setValue0
def coloured0 : Flapjack.NumSet := setValue0
def result0 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue15, setValue16)
def setValue17 : Flapjack.NumSet := .bn setValue0 setValue8
def setValue18 : Flapjack.NumSet := .bn setValue17 setValue0
def setValue19 : Flapjack.NumSet := .bn setValue18 setValue0
def setValue20 : Flapjack.NumSet := .bn setValue18 setValue18
def setValue21 : Flapjack.NumSet := .bn setValue19 setValue20
def setValue22 : Flapjack.NumSet := .bn setValue18 setValue10
def setValue23 : Flapjack.NumSet := .bn setValue0 setValue22
def setValue24 : Flapjack.NumSet := .bn setValue21 setValue23
def setValue25 : Flapjack.NumSet := .bn setValue24 setValue0
def setValue26 : Flapjack.NumSet := .bn setValue0 setValue25
def setValue27 : Flapjack.NumSet := .bn setValue2 setValue2
def setValue28 : Flapjack.NumSet := .bs setValue27 () setValue0
def tree1 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8] [5941, 5949, 5937, 5925])).val
theorem tree1_def : tree1 = (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8] [5941, 5949, 5937, 5925]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8] [5941, 5949, 5937, 5925]
def live1 : Flapjack.NumSet := setValue15
def coloured1 : Flapjack.NumSet := setValue16
def result1 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue26, setValue28)
def tree2 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1 tree0)).val
theorem tree2_def : tree2 = (.seq tree1 tree0) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal2 : Flapjack.RegAlloc.ClashTree := .seq literal1 literal0
def live2 : Flapjack.NumSet := setValue0
def coloured2 : Flapjack.NumSet := setValue0
def result2 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue26, setValue28)
def tree3 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree3_def : tree3 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal3 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live3 : Flapjack.NumSet := setValue26
def coloured3 : Flapjack.NumSet := setValue28
def result3 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue26, setValue28)
def tree4 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree3 tree2)).val
theorem tree4_def : tree4 = (.seq tree3 tree2) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal4 : Flapjack.RegAlloc.ClashTree := .seq literal3 literal2
def live4 : Flapjack.NumSet := setValue0
def coloured4 : Flapjack.NumSet := setValue0
def result4 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue26, setValue28)
def setValue29 : Flapjack.NumSet := .bn setValue0 setValue6
def setValue30 : Flapjack.NumSet := .bn setValue29 setValue0
def setValue31 : Flapjack.NumSet := .bn setValue30 setValue0
def setValue32 : Flapjack.NumSet := .bn setValue0 setValue31
def setValue33 : Flapjack.NumSet := .bn setValue0 setValue32
def setValue34 : Flapjack.NumSet := .bn setValue33 setValue33
def setValue35 : Flapjack.NumSet := .bn setValue32 setValue32
def setValue36 : Flapjack.NumSet := .bn setValue33 setValue35
def setValue37 : Flapjack.NumSet := .bn setValue34 setValue36
def setValue38 : Flapjack.NumSet := .bn setValue37 setValue0
def setValue39 : Flapjack.NumSet := .bn setValue0 setValue38
def tree5 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5953, 5949, 5941, 5937, 5925] [5825, 5829, 5833, 5837, 5841])).val
theorem tree5_def : tree5 = (Flapjack.RegAlloc.ClashTree.delta [5953, 5949, 5941, 5937, 5925] [5825, 5829, 5833, 5837, 5841]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal5 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5953, 5949, 5941, 5937, 5925] [5825, 5829, 5833, 5837, 5841]
def live5 : Flapjack.NumSet := setValue26
def coloured5 : Flapjack.NumSet := setValue28
def result5 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree6 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree6_def : tree6 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal6 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live6 : Flapjack.NumSet := setValue39
def coloured6 : Flapjack.NumSet := setValue28
def result6 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree7 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree6 tree5)).val
theorem tree7_def : tree7 = (.seq tree6 tree5) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal7 : Flapjack.RegAlloc.ClashTree := .seq literal6 literal5
def live7 : Flapjack.NumSet := setValue26
def coloured7 : Flapjack.NumSet := setValue28
def result7 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree8 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree8_def : tree8 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal8 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live8 : Flapjack.NumSet := setValue39
def coloured8 : Flapjack.NumSet := setValue28
def result8 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree9 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree8 tree7)).val
theorem tree9_def : tree9 = (.seq tree8 tree7) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal9 : Flapjack.RegAlloc.ClashTree := .seq literal8 literal7
def live9 : Flapjack.NumSet := setValue26
def coloured9 : Flapjack.NumSet := setValue28
def result9 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def setValue40 : Flapjack.NumSet := .bn setValue1 setValue38
def setValue41 : Flapjack.NumSet := .bs setValue2 () setValue2
def setValue42 : Flapjack.NumSet := .bs setValue41 () setValue0
def tree10 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree10_def : tree10 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal10 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live10 : Flapjack.NumSet := setValue39
def coloured10 : Flapjack.NumSet := setValue28
def result10 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue40, setValue42)
def setValue43 : Flapjack.NumSet := .bn setValue31 setValue0
def setValue44 : Flapjack.NumSet := .bn setValue43 setValue32
def setValue45 : Flapjack.NumSet := .bn setValue44 setValue33
def setValue46 : Flapjack.NumSet := .bn setValue45 setValue36
def setValue47 : Flapjack.NumSet := .bn setValue46 setValue0
def setValue48 : Flapjack.NumSet := .bn setValue0 setValue47
def tree11 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [5885])).val
theorem tree11_def : tree11 = (Flapjack.RegAlloc.ClashTree.delta [2] [5885]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal11 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [5885]
def live11 : Flapjack.NumSet := setValue40
def coloured11 : Flapjack.NumSet := setValue42
def result11 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue48, setValue42)
def tree12 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree11 tree10)).val
theorem tree12_def : tree12 = (.seq tree11 tree10) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal12 : Flapjack.RegAlloc.ClashTree := .seq literal11 literal10
def live12 : Flapjack.NumSet := setValue39
def coloured12 : Flapjack.NumSet := setValue28
def result12 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue48, setValue42)
def tree13 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5885] [])).val
theorem tree13_def : tree13 = (Flapjack.RegAlloc.ClashTree.delta [5885] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal13 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5885] []
def live13 : Flapjack.NumSet := setValue48
def coloured13 : Flapjack.NumSet := setValue42
def result13 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree14 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree13 tree12)).val
theorem tree14_def : tree14 = (.seq tree13 tree12) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal14 : Flapjack.RegAlloc.ClashTree := .seq literal13 literal12
def live14 : Flapjack.NumSet := setValue39
def coloured14 : Flapjack.NumSet := setValue28
def result14 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def setValue49 : Flapjack.NumSet := .bn setValue44 setValue35
def setValue50 : Flapjack.NumSet := .bn setValue34 setValue49
def setValue51 : Flapjack.NumSet := .bn setValue50 setValue0
def setValue52 : Flapjack.NumSet := .bn setValue0 setValue51
def tree15 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5881])).val
theorem tree15_def : tree15 = (Flapjack.RegAlloc.ClashTree.delta [] [5881]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal15 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5881]
def live15 : Flapjack.NumSet := setValue39
def coloured15 : Flapjack.NumSet := setValue28
def result15 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue52, setValue42)
def tree16 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree15 tree14)).val
theorem tree16_def : tree16 = (.seq tree15 tree14) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal16 : Flapjack.RegAlloc.ClashTree := .seq literal15 literal14
def live16 : Flapjack.NumSet := setValue39
def coloured16 : Flapjack.NumSet := setValue28
def result16 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue52, setValue42)
def setValue53 : Flapjack.NumSet := .bn setValue33 setValue44
def setValue54 : Flapjack.NumSet := .bn setValue53 setValue36
def setValue55 : Flapjack.NumSet := .bn setValue54 setValue0
def setValue56 : Flapjack.NumSet := .bn setValue0 setValue55
def tree17 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5881] [5877])).val
theorem tree17_def : tree17 = (Flapjack.RegAlloc.ClashTree.delta [5881] [5877]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal17 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5881] [5877]
def live17 : Flapjack.NumSet := setValue52
def coloured17 : Flapjack.NumSet := setValue42
def result17 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue56, setValue42)
def tree18 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree17 tree16)).val
theorem tree18_def : tree18 = (.seq tree17 tree16) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal18 : Flapjack.RegAlloc.ClashTree := .seq literal17 literal16
def live18 : Flapjack.NumSet := setValue39
def coloured18 : Flapjack.NumSet := setValue28
def result18 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue56, setValue42)
def tree19 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5877] [])).val
theorem tree19_def : tree19 = (Flapjack.RegAlloc.ClashTree.delta [5877] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal19 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5877] []
def live19 : Flapjack.NumSet := setValue56
def coloured19 : Flapjack.NumSet := setValue42
def result19 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree20 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree19 tree18)).val
theorem tree20_def : tree20 = (.seq tree19 tree18) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal20 : Flapjack.RegAlloc.ClashTree := .seq literal19 literal18
def live20 : Flapjack.NumSet := setValue39
def coloured20 : Flapjack.NumSet := setValue28
def result20 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree21 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree21_def : tree21 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal21 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live21 : Flapjack.NumSet := setValue39
def coloured21 : Flapjack.NumSet := setValue28
def result21 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree22 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree21 tree20)).val
theorem tree22_def : tree22 = (.seq tree21 tree20) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal22 : Flapjack.RegAlloc.ClashTree := .seq literal21 literal20
def live22 : Flapjack.NumSet := setValue39
def coloured22 : Flapjack.NumSet := setValue28
def result22 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree23 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree23_def : tree23 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal23 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live23 : Flapjack.NumSet := setValue39
def coloured23 : Flapjack.NumSet := setValue28
def result23 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def tree24 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree22 tree23)).val
theorem tree24_def : tree24 = (.branch (none) tree22 tree23) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal24 : Flapjack.RegAlloc.ClashTree := .branch (none) literal22 literal23
def live24 : Flapjack.NumSet := setValue39
def coloured24 : Flapjack.NumSet := setValue28
def result24 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue39, setValue28)
def setValue57 : Flapjack.NumSet := .bn setValue31 setValue31
def setValue58 : Flapjack.NumSet := .bn setValue0 setValue57
def setValue59 : Flapjack.NumSet := .bn setValue33 setValue58
def setValue60 : Flapjack.NumSet := .bn setValue58 setValue35
def setValue61 : Flapjack.NumSet := .bn setValue59 setValue60
def setValue62 : Flapjack.NumSet := .bn setValue61 setValue0
def setValue63 : Flapjack.NumSet := .bn setValue0 setValue62
def setValue64 : Flapjack.NumSet := .bs setValue1 () setValue1
def setValue65 : Flapjack.NumSet := .bs setValue2 () setValue64
def setValue66 : Flapjack.NumSet := .bs setValue65 () setValue0
def tree25 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5861, 5865])).val
theorem tree25_def : tree25 = (Flapjack.RegAlloc.ClashTree.delta [] [5861, 5865]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal25 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5861, 5865]
def live25 : Flapjack.NumSet := setValue39
def coloured25 : Flapjack.NumSet := setValue28
def result25 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue63, setValue66)
def tree26 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree25 tree24)).val
theorem tree26_def : tree26 = (.seq tree25 tree24) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal26 : Flapjack.RegAlloc.ClashTree := .seq literal25 literal24
def live26 : Flapjack.NumSet := setValue39
def coloured26 : Flapjack.NumSet := setValue28
def result26 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue63, setValue66)
def tree27 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree26 tree9)).val
theorem tree27_def : tree27 = (.seq tree26 tree9) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal27 : Flapjack.RegAlloc.ClashTree := .seq literal26 literal9
def live27 : Flapjack.NumSet := setValue26
def coloured27 : Flapjack.NumSet := setValue28
def result27 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue63, setValue66)
def setValue67 : Flapjack.NumSet := .bn setValue59 setValue36
def setValue68 : Flapjack.NumSet := .bn setValue67 setValue0
def setValue69 : Flapjack.NumSet := .bn setValue0 setValue68
def setValue70 : Flapjack.NumSet := .bn setValue2 setValue64
def setValue71 : Flapjack.NumSet := .bs setValue70 () setValue0
def tree28 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5865] [])).val
theorem tree28_def : tree28 = (Flapjack.RegAlloc.ClashTree.delta [5865] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal28 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5865] []
def live28 : Flapjack.NumSet := setValue63
def coloured28 : Flapjack.NumSet := setValue66
def result28 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue69, setValue71)
def tree29 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree28 tree27)).val
theorem tree29_def : tree29 = (.seq tree28 tree27) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal29 : Flapjack.RegAlloc.ClashTree := .seq literal28 literal27
def live29 : Flapjack.NumSet := setValue26
def coloured29 : Flapjack.NumSet := setValue28
def result29 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue69, setValue71)
def setValue72 : Flapjack.NumSet := .bn setValue35 setValue33
def setValue73 : Flapjack.NumSet := .bn setValue72 setValue36
def setValue74 : Flapjack.NumSet := .bn setValue73 setValue0
def setValue75 : Flapjack.NumSet := .bn setValue0 setValue74
def tree30 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5861] [5853])).val
theorem tree30_def : tree30 = (Flapjack.RegAlloc.ClashTree.delta [5861] [5853]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal30 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5861] [5853]
def live30 : Flapjack.NumSet := setValue69
def coloured30 : Flapjack.NumSet := setValue71
def result30 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue75, setValue71)
def tree31 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree30 tree29)).val
theorem tree31_def : tree31 = (.seq tree30 tree29) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal31 : Flapjack.RegAlloc.ClashTree := .seq literal30 literal29
def live31 : Flapjack.NumSet := setValue26
def coloured31 : Flapjack.NumSet := setValue28
def result31 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue75, setValue71)
def tree32 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree32_def : tree32 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal32 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live32 : Flapjack.NumSet := setValue75
def coloured32 : Flapjack.NumSet := setValue71
def result32 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue75, setValue71)
def tree33 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree32 tree31)).val
theorem tree33_def : tree33 = (.seq tree32 tree31) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal33 : Flapjack.RegAlloc.ClashTree := .seq literal32 literal31
def live33 : Flapjack.NumSet := setValue26
def coloured33 : Flapjack.NumSet := setValue28
def result33 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue75, setValue71)
def setValue76 : Flapjack.NumSet := .bn setValue0 setValue30
def setValue77 : Flapjack.NumSet := .bn setValue76 setValue0
def setValue78 : Flapjack.NumSet := .bn setValue77 setValue77
def setValue79 : Flapjack.NumSet := .bn setValue77 setValue0
def setValue80 : Flapjack.NumSet := .bn setValue78 setValue79
def setValue81 : Flapjack.NumSet := .bn setValue79 setValue79
def setValue82 : Flapjack.NumSet := .bn setValue80 setValue81
def setValue83 : Flapjack.NumSet := .bn setValue0 setValue82
def setValue84 : Flapjack.NumSet := .bn setValue1 setValue83
def setValue85 : Flapjack.NumSet := .bn setValue1 setValue0
def setValue86 : Flapjack.NumSet := .bn setValue0 setValue85
def setValue87 : Flapjack.NumSet := .bn setValue5 setValue86
def setValue88 : Flapjack.NumSet := .bn setValue4 setValue85
def setValue89 : Flapjack.NumSet := .bn setValue88 setValue86
def setValue90 : Flapjack.NumSet := .bs setValue87 () setValue89
def setValue91 : Flapjack.NumSet := .bn setValue90 setValue0
def tree34 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5853, 5825, 5829, 5833, 5837, 5841] [2, 5803, 5807, 5811, 5815, 5819])).val
theorem tree34_def : tree34 = (Flapjack.RegAlloc.ClashTree.delta [5853, 5825, 5829, 5833, 5837, 5841] [2, 5803, 5807, 5811, 5815, 5819]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal34 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5853, 5825, 5829, 5833, 5837, 5841] [2, 5803, 5807, 5811, 5815, 5819]
def live34 : Flapjack.NumSet := setValue75
def coloured34 : Flapjack.NumSet := setValue71
def result34 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue84, setValue91)
def tree35 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue84)).val
theorem tree35_def : tree35 = (.set setValue84) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal35 : Flapjack.RegAlloc.ClashTree := .set setValue84
def live35 : Flapjack.NumSet := setValue84
def coloured35 : Flapjack.NumSet := setValue91
def result35 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue84, setValue91)
def tree36 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree35 tree34)).val
theorem tree36_def : tree36 = (.seq tree35 tree34) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal36 : Flapjack.RegAlloc.ClashTree := .seq literal35 literal34
def live36 : Flapjack.NumSet := setValue75
def coloured36 : Flapjack.NumSet := setValue71
def result36 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue84, setValue91)
def setValue92 : Flapjack.NumSet := .bn setValue1 setValue74
def tree37 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree37_def : tree37 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal37 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live37 : Flapjack.NumSet := setValue75
def coloured37 : Flapjack.NumSet := setValue71
def result37 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue92, setValue66)
def setValue93 : Flapjack.NumSet := .bn setValue32 setValue0
def setValue94 : Flapjack.NumSet := .bn setValue93 setValue0
def setValue95 : Flapjack.NumSet := .bn setValue94 setValue0
def setValue96 : Flapjack.NumSet := .bn setValue95 setValue82
def setValue97 : Flapjack.NumSet := .bn setValue1 setValue96
def setValue98 : Flapjack.NumSet := .bs setValue4 () setValue85
def setValue99 : Flapjack.NumSet := .bn setValue98 setValue86
def setValue100 : Flapjack.NumSet := .bs setValue87 () setValue99
def setValue101 : Flapjack.NumSet := .bn setValue100 setValue0
def tree38 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 5825, 5829, 5833, 5837, 5841] [2, 5803, 5807, 5811, 5815, 5819])).val
theorem tree38_def : tree38 = (Flapjack.RegAlloc.ClashTree.delta [2, 5825, 5829, 5833, 5837, 5841] [2, 5803, 5807, 5811, 5815, 5819]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal38 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 5825, 5829, 5833, 5837, 5841] [2, 5803, 5807, 5811, 5815, 5819]
def live38 : Flapjack.NumSet := setValue92
def coloured38 : Flapjack.NumSet := setValue66
def result38 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue97, setValue101)
def tree39 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree38 tree37)).val
theorem tree39_def : tree39 = (.seq tree38 tree37) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal39 : Flapjack.RegAlloc.ClashTree := .seq literal38 literal37
def live39 : Flapjack.NumSet := setValue75
def coloured39 : Flapjack.NumSet := setValue71
def result39 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue97, setValue101)
def tree40 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue84)).val
theorem tree40_def : tree40 = (.set setValue84) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal40 : Flapjack.RegAlloc.ClashTree := .set setValue84
def live40 : Flapjack.NumSet := setValue97
def coloured40 : Flapjack.NumSet := setValue101
def result40 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue84, setValue91)
def tree41 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree40 tree39)).val
theorem tree41_def : tree41 = (.seq tree40 tree39) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal41 : Flapjack.RegAlloc.ClashTree := .seq literal40 literal39
def live41 : Flapjack.NumSet := setValue75
def coloured41 : Flapjack.NumSet := setValue71
def result41 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue84, setValue91)
def setValue102 : Flapjack.NumSet := .bn setValue2 setValue83
def setValue103 : Flapjack.NumSet := .bs setValue88 () setValue86
def setValue104 : Flapjack.NumSet := .bs setValue87 () setValue103
def setValue105 : Flapjack.NumSet := .bn setValue104 setValue0
def tree42 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue102) tree36 tree41)).val
theorem tree42_def : tree42 = (.branch (some setValue102) tree36 tree41) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal42 : Flapjack.RegAlloc.ClashTree := .branch (some setValue102) literal36 literal41
def live42 : Flapjack.NumSet := setValue75
def coloured42 : Flapjack.NumSet := setValue71
def result42 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue102, setValue105)
def tree43 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree42 tree33)).val
theorem tree43_def : tree43 = (.seq tree42 tree33) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal43 : Flapjack.RegAlloc.ClashTree := .seq literal42 literal33
def live43 : Flapjack.NumSet := setValue26
def coloured43 : Flapjack.NumSet := setValue28
def result43 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue102, setValue105)
def setValue106 : Flapjack.NumSet := .bn setValue0 setValue29
def setValue107 : Flapjack.NumSet := .bn setValue106 setValue0
def setValue108 : Flapjack.NumSet := .bn setValue107 setValue0
def setValue109 : Flapjack.NumSet := .bn setValue108 setValue108
def setValue110 : Flapjack.NumSet := .bn setValue109 setValue109
def setValue111 : Flapjack.NumSet := .bn setValue108 setValue0
def setValue112 : Flapjack.NumSet := .bn setValue109 setValue111
def setValue113 : Flapjack.NumSet := .bn setValue110 setValue112
def setValue114 : Flapjack.NumSet := .bn setValue113 setValue0
def setValue115 : Flapjack.NumSet := .bn setValue0 setValue114
def setValue116 : Flapjack.NumSet := .bs setValue5 () setValue86
def setValue117 : Flapjack.NumSet := .bn setValue116 setValue103
def setValue118 : Flapjack.NumSet := .bn setValue117 setValue0
def tree44 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4, 5803, 5807, 5811, 5815, 5819] [5749, 5753, 5733, 5737, 5741, 5745, 5757])).val
theorem tree44_def : tree44 = (Flapjack.RegAlloc.ClashTree.delta [2, 4, 5803, 5807, 5811, 5815, 5819] [5749, 5753, 5733, 5737, 5741, 5745, 5757]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal44 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4, 5803, 5807, 5811, 5815, 5819] [5749, 5753, 5733, 5737, 5741, 5745, 5757]
def live44 : Flapjack.NumSet := setValue102
def coloured44 : Flapjack.NumSet := setValue105
def result44 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue115, setValue118)
def tree45 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree44 tree43)).val
theorem tree45_def : tree45 = (.seq tree44 tree43) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal45 : Flapjack.RegAlloc.ClashTree := .seq literal44 literal43
def live45 : Flapjack.NumSet := setValue26
def coloured45 : Flapjack.NumSet := setValue28
def result45 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue115, setValue118)
def tree46 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree46_def : tree46 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal46 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live46 : Flapjack.NumSet := setValue115
def coloured46 : Flapjack.NumSet := setValue118
def result46 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue115, setValue118)
def tree47 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree46 tree45)).val
theorem tree47_def : tree47 = (.seq tree46 tree45) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal47 : Flapjack.RegAlloc.ClashTree := .seq literal46 literal45
def live47 : Flapjack.NumSet := setValue26
def coloured47 : Flapjack.NumSet := setValue28
def result47 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue115, setValue118)
def setValue119 : Flapjack.NumSet := .bn setValue0 setValue108
def setValue120 : Flapjack.NumSet := .bn setValue109 setValue119
def setValue121 : Flapjack.NumSet := .bn setValue119 setValue111
def setValue122 : Flapjack.NumSet := .bn setValue120 setValue121
def setValue123 : Flapjack.NumSet := .bn setValue122 setValue0
def setValue124 : Flapjack.NumSet := .bn setValue0 setValue123
def setValue125 : Flapjack.NumSet := .bn setValue87 setValue89
def setValue126 : Flapjack.NumSet := .bn setValue125 setValue0
def tree48 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5953, 5949, 5941, 5937, 5925] [5733, 5737, 5741, 5745, 5757])).val
theorem tree48_def : tree48 = (Flapjack.RegAlloc.ClashTree.delta [5953, 5949, 5941, 5937, 5925] [5733, 5737, 5741, 5745, 5757]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal48 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5953, 5949, 5941, 5937, 5925] [5733, 5737, 5741, 5745, 5757]
def live48 : Flapjack.NumSet := setValue26
def coloured48 : Flapjack.NumSet := setValue28
def result48 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue124, setValue126)
def tree49 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree49_def : tree49 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal49 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live49 : Flapjack.NumSet := setValue124
def coloured49 : Flapjack.NumSet := setValue126
def result49 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue124, setValue126)
def tree50 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree49 tree48)).val
theorem tree50_def : tree50 = (.seq tree49 tree48) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal50 : Flapjack.RegAlloc.ClashTree := .seq literal49 literal48
def live50 : Flapjack.NumSet := setValue26
def coloured50 : Flapjack.NumSet := setValue28
def result50 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue124, setValue126)
def tree51 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree47 tree50)).val
theorem tree51_def : tree51 = (.branch (none) tree47 tree50) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal51 : Flapjack.RegAlloc.ClashTree := .branch (none) literal47 literal50
def live51 : Flapjack.NumSet := setValue26
def coloured51 : Flapjack.NumSet := setValue28
def result51 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue115, setValue118)
def setValue127 : Flapjack.NumSet := .bn setValue107 setValue76
def setValue128 : Flapjack.NumSet := .bn setValue127 setValue108
def setValue129 : Flapjack.NumSet := .bn setValue109 setValue128
def setValue130 : Flapjack.NumSet := .bn setValue127 setValue0
def setValue131 : Flapjack.NumSet := .bn setValue109 setValue130
def setValue132 : Flapjack.NumSet := .bn setValue129 setValue131
def setValue133 : Flapjack.NumSet := .bn setValue132 setValue0
def setValue134 : Flapjack.NumSet := .bn setValue0 setValue133
def setValue135 : Flapjack.NumSet := .bs setValue116 () setValue103
def setValue136 : Flapjack.NumSet := .bs setValue135 () setValue0
def tree52 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5777, 5781])).val
theorem tree52_def : tree52 = (Flapjack.RegAlloc.ClashTree.delta [] [5777, 5781]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal52 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5777, 5781]
def live52 : Flapjack.NumSet := setValue115
def coloured52 : Flapjack.NumSet := setValue118
def result52 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue134, setValue136)
def tree53 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree52 tree51)).val
theorem tree53_def : tree53 = (.seq tree52 tree51) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal53 : Flapjack.RegAlloc.ClashTree := .seq literal52 literal51
def live53 : Flapjack.NumSet := setValue26
def coloured53 : Flapjack.NumSet := setValue28
def result53 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue134, setValue136)
def tree54 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree53 tree4)).val
theorem tree54_def : tree54 = (.seq tree53 tree4) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal54 : Flapjack.RegAlloc.ClashTree := .seq literal53 literal4
def live54 : Flapjack.NumSet := setValue0
def coloured54 : Flapjack.NumSet := setValue0
def result54 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue134, setValue136)
def setValue137 : Flapjack.NumSet := .bn setValue110 setValue131
def setValue138 : Flapjack.NumSet := .bn setValue137 setValue0
def setValue139 : Flapjack.NumSet := .bn setValue0 setValue138
def setValue140 : Flapjack.NumSet := .bs setValue117 () setValue0
def tree55 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5781] [])).val
theorem tree55_def : tree55 = (Flapjack.RegAlloc.ClashTree.delta [5781] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal55 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5781] []
def live55 : Flapjack.NumSet := setValue134
def coloured55 : Flapjack.NumSet := setValue136
def result55 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue139, setValue140)
def tree56 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree55 tree54)).val
theorem tree56_def : tree56 = (.seq tree55 tree54) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal56 : Flapjack.RegAlloc.ClashTree := .seq literal55 literal54
def live56 : Flapjack.NumSet := setValue0
def coloured56 : Flapjack.NumSet := setValue0
def result56 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue139, setValue140)
def setValue141 : Flapjack.NumSet := .bn setValue108 setValue127
def setValue142 : Flapjack.NumSet := .bn setValue141 setValue109
def setValue143 : Flapjack.NumSet := .bn setValue142 setValue112
def setValue144 : Flapjack.NumSet := .bn setValue143 setValue0
def setValue145 : Flapjack.NumSet := .bn setValue0 setValue144
def tree57 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5777] [5773])).val
theorem tree57_def : tree57 = (Flapjack.RegAlloc.ClashTree.delta [5777] [5773]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal57 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5777] [5773]
def live57 : Flapjack.NumSet := setValue139
def coloured57 : Flapjack.NumSet := setValue140
def result57 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue145, setValue140)
def tree58 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree57 tree56)).val
theorem tree58_def : tree58 = (.seq tree57 tree56) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal58 : Flapjack.RegAlloc.ClashTree := .seq literal57 literal56
def live58 : Flapjack.NumSet := setValue0
def coloured58 : Flapjack.NumSet := setValue0
def result58 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue145, setValue140)
def tree59 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree59_def : tree59 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal59 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live59 : Flapjack.NumSet := setValue145
def coloured59 : Flapjack.NumSet := setValue140
def result59 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue145, setValue140)
def tree60 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree59 tree58)).val
theorem tree60_def : tree60 = (.seq tree59 tree58) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal60 : Flapjack.RegAlloc.ClashTree := .seq literal59 literal58
def live60 : Flapjack.NumSet := setValue0
def coloured60 : Flapjack.NumSet := setValue0
def result60 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue145, setValue140)
def setValue146 : Flapjack.NumSet := .bn setValue0 setValue107
def setValue147 : Flapjack.NumSet := .bn setValue146 setValue146
def setValue148 : Flapjack.NumSet := .bn setValue146 setValue0
def setValue149 : Flapjack.NumSet := .bn setValue147 setValue148
def setValue150 : Flapjack.NumSet := .bn setValue146 setValue108
def setValue151 : Flapjack.NumSet := .bn setValue147 setValue150
def setValue152 : Flapjack.NumSet := .bn setValue149 setValue151
def setValue153 : Flapjack.NumSet := .bn setValue0 setValue152
def setValue154 : Flapjack.NumSet := .bn setValue1 setValue153
def setValue155 : Flapjack.NumSet := .bn setValue85 setValue85
def setValue156 : Flapjack.NumSet := .bn setValue88 setValue155
def setValue157 : Flapjack.NumSet := .bs setValue89 () setValue156
def setValue158 : Flapjack.NumSet := .bn setValue157 setValue0
def tree61 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5773, 5733, 5737, 5741, 5745, 5749, 5753, 5757]
  [2, 5703, 5707, 5711, 5715, 5719, 5723, 5727])).val
theorem tree61_def : tree61 = (Flapjack.RegAlloc.ClashTree.delta [5773, 5733, 5737, 5741, 5745, 5749, 5753, 5757]
  [2, 5703, 5707, 5711, 5715, 5719, 5723, 5727]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal61 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5773, 5733, 5737, 5741, 5745, 5749, 5753, 5757]
  [2, 5703, 5707, 5711, 5715, 5719, 5723, 5727]
def live61 : Flapjack.NumSet := setValue145
def coloured61 : Flapjack.NumSet := setValue140
def result61 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue154, setValue158)
def tree62 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue154)).val
theorem tree62_def : tree62 = (.set setValue154) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal62 : Flapjack.RegAlloc.ClashTree := .set setValue154
def live62 : Flapjack.NumSet := setValue154
def coloured62 : Flapjack.NumSet := setValue158
def result62 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue154, setValue158)
def tree63 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree62 tree61)).val
theorem tree63_def : tree63 = (.seq tree62 tree61) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal63 : Flapjack.RegAlloc.ClashTree := .seq literal62 literal61
def live63 : Flapjack.NumSet := setValue145
def coloured63 : Flapjack.NumSet := setValue140
def result63 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue154, setValue158)
def setValue159 : Flapjack.NumSet := .bn setValue1 setValue144
def tree64 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree64_def : tree64 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal64 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live64 : Flapjack.NumSet := setValue145
def coloured64 : Flapjack.NumSet := setValue140
def result64 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue159, setValue136)
def setValue160 : Flapjack.NumSet := .bn setValue0 setValue76
def setValue161 : Flapjack.NumSet := .bn setValue0 setValue160
def setValue162 : Flapjack.NumSet := .bn setValue161 setValue0
def setValue163 : Flapjack.NumSet := .bn setValue162 setValue0
def setValue164 : Flapjack.NumSet := .bn setValue163 setValue152
def setValue165 : Flapjack.NumSet := .bn setValue1 setValue164
def setValue166 : Flapjack.NumSet := .bs setValue157 () setValue0
def tree65 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 5733, 5737, 5741, 5745, 5749, 5753, 5757]
  [2, 5703, 5707, 5711, 5715, 5719, 5723, 5727])).val
theorem tree65_def : tree65 = (Flapjack.RegAlloc.ClashTree.delta [2, 5733, 5737, 5741, 5745, 5749, 5753, 5757]
  [2, 5703, 5707, 5711, 5715, 5719, 5723, 5727]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal65 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 5733, 5737, 5741, 5745, 5749, 5753, 5757]
  [2, 5703, 5707, 5711, 5715, 5719, 5723, 5727]
def live65 : Flapjack.NumSet := setValue159
def coloured65 : Flapjack.NumSet := setValue136
def result65 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue165, setValue166)
def tree66 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree65 tree64)).val
theorem tree66_def : tree66 = (.seq tree65 tree64) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal66 : Flapjack.RegAlloc.ClashTree := .seq literal65 literal64
def live66 : Flapjack.NumSet := setValue145
def coloured66 : Flapjack.NumSet := setValue140
def result66 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue165, setValue166)
def tree67 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue154)).val
theorem tree67_def : tree67 = (.set setValue154) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal67 : Flapjack.RegAlloc.ClashTree := .set setValue154
def live67 : Flapjack.NumSet := setValue165
def coloured67 : Flapjack.NumSet := setValue166
def result67 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue154, setValue158)
def tree68 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree67 tree66)).val
theorem tree68_def : tree68 = (.seq tree67 tree66) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal68 : Flapjack.RegAlloc.ClashTree := .seq literal67 literal66
def live68 : Flapjack.NumSet := setValue145
def coloured68 : Flapjack.NumSet := setValue140
def result68 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue154, setValue158)
def setValue167 : Flapjack.NumSet := .bn setValue64 setValue153
def setValue168 : Flapjack.NumSet := .bs setValue88 () setValue155
def setValue169 : Flapjack.NumSet := .bs setValue103 () setValue168
def setValue170 : Flapjack.NumSet := .bn setValue169 setValue0
def tree69 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue167) tree63 tree68)).val
theorem tree69_def : tree69 = (.branch (some setValue167) tree63 tree68) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal69 : Flapjack.RegAlloc.ClashTree := .branch (some setValue167) literal63 literal68
def live69 : Flapjack.NumSet := setValue145
def coloured69 : Flapjack.NumSet := setValue140
def result69 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue167, setValue170)
def tree70 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree69 tree60)).val
theorem tree70_def : tree70 = (.seq tree69 tree60) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal70 : Flapjack.RegAlloc.ClashTree := .seq literal69 literal60
def live70 : Flapjack.NumSet := setValue0
def coloured70 : Flapjack.NumSet := setValue0
def result70 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue167, setValue170)
def setValue171 : Flapjack.NumSet := .bn setValue0 setValue5
def setValue172 : Flapjack.NumSet := .bn setValue171 setValue0
def setValue173 : Flapjack.NumSet := .bn setValue172 setValue0
def setValue174 : Flapjack.NumSet := .bn setValue173 setValue0
def setValue175 : Flapjack.NumSet := .bn setValue174 setValue0
def setValue176 : Flapjack.NumSet := .bn setValue175 setValue0
def setValue177 : Flapjack.NumSet := .bn setValue176 setValue176
def setValue178 : Flapjack.NumSet := .bn setValue173 setValue106
def setValue179 : Flapjack.NumSet := .bn setValue0 setValue106
def setValue180 : Flapjack.NumSet := .bn setValue178 setValue179
def setValue181 : Flapjack.NumSet := .bn setValue179 setValue179
def setValue182 : Flapjack.NumSet := .bn setValue180 setValue181
def setValue183 : Flapjack.NumSet := .bn setValue106 setValue106
def setValue184 : Flapjack.NumSet := .bn setValue179 setValue183
def setValue185 : Flapjack.NumSet := .bn setValue0 setValue184
def setValue186 : Flapjack.NumSet := .bn setValue182 setValue185
def setValue187 : Flapjack.NumSet := .bn setValue177 setValue186
def setValue188 : Flapjack.NumSet := .bn setValue187 setValue0
def setValue189 : Flapjack.NumSet := .bn setValue0 setValue188
def setValue190 : Flapjack.NumSet := .bs setValue85 () setValue85
def setValue191 : Flapjack.NumSet := .bs setValue5 () setValue190
def setValue192 : Flapjack.NumSet := .bs setValue116 () setValue191
def setValue193 : Flapjack.NumSet := .bs setValue192 () setValue0
def tree71 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 5703, 5707, 5711, 5715, 5719, 5723, 5727]
  [5673, 5689, 5697, 5621, 5625, 5629, 5633, 5665, 5657, 5641])).val
theorem tree71_def : tree71 = (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 5703, 5707, 5711, 5715, 5719, 5723, 5727]
  [5673, 5689, 5697, 5621, 5625, 5629, 5633, 5665, 5657, 5641]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal71 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 5703, 5707, 5711, 5715, 5719, 5723, 5727]
  [5673, 5689, 5697, 5621, 5625, 5629, 5633, 5665, 5657, 5641]
def live71 : Flapjack.NumSet := setValue167
def coloured71 : Flapjack.NumSet := setValue170
def result71 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue189, setValue193)
def tree72 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree71 tree70)).val
theorem tree72_def : tree72 = (.seq tree71 tree70) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal72 : Flapjack.RegAlloc.ClashTree := .seq literal71 literal70
def live72 : Flapjack.NumSet := setValue0
def coloured72 : Flapjack.NumSet := setValue0
def result72 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue189, setValue193)
def setValue194 : Flapjack.NumSet := .bn setValue0 setValue181
def setValue195 : Flapjack.NumSet := .bn setValue182 setValue194
def setValue196 : Flapjack.NumSet := .bn setValue177 setValue195
def setValue197 : Flapjack.NumSet := .bn setValue196 setValue0
def setValue198 : Flapjack.NumSet := .bn setValue0 setValue197
def setValue199 : Flapjack.NumSet := .bs setValue87 () setValue191
def setValue200 : Flapjack.NumSet := .bs setValue199 () setValue0
def tree73 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5697] [])).val
theorem tree73_def : tree73 = (Flapjack.RegAlloc.ClashTree.delta [5697] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal73 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5697] []
def live73 : Flapjack.NumSet := setValue189
def coloured73 : Flapjack.NumSet := setValue193
def result73 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue198, setValue200)
def tree74 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree73 tree72)).val
theorem tree74_def : tree74 = (.seq tree73 tree72) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal74 : Flapjack.RegAlloc.ClashTree := .seq literal73 literal72
def live74 : Flapjack.NumSet := setValue0
def coloured74 : Flapjack.NumSet := setValue0
def result74 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue198, setValue200)
def setValue201 : Flapjack.NumSet := .bn setValue178 setValue0
def setValue202 : Flapjack.NumSet := .bn setValue201 setValue0
def setValue203 : Flapjack.NumSet := .bn setValue176 setValue202
def setValue204 : Flapjack.NumSet := .bn setValue174 setValue179
def setValue205 : Flapjack.NumSet := .bn setValue204 setValue181
def setValue206 : Flapjack.NumSet := .bn setValue205 setValue194
def setValue207 : Flapjack.NumSet := .bn setValue203 setValue206
def setValue208 : Flapjack.NumSet := .bn setValue207 setValue0
def setValue209 : Flapjack.NumSet := .bn setValue0 setValue208
def tree75 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5689] [5685])).val
theorem tree75_def : tree75 = (Flapjack.RegAlloc.ClashTree.delta [5689] [5685]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal75 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5689] [5685]
def live75 : Flapjack.NumSet := setValue198
def coloured75 : Flapjack.NumSet := setValue200
def result75 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue209, setValue200)
def tree76 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree75 tree74)).val
theorem tree76_def : tree76 = (.seq tree75 tree74) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal76 : Flapjack.RegAlloc.ClashTree := .seq literal75 literal74
def live76 : Flapjack.NumSet := setValue0
def coloured76 : Flapjack.NumSet := setValue0
def result76 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue209, setValue200)
def setValue210 : Flapjack.NumSet := .bn setValue179 setValue0
def setValue211 : Flapjack.NumSet := .bn setValue210 setValue181
def setValue212 : Flapjack.NumSet := .bn setValue205 setValue211
def setValue213 : Flapjack.NumSet := .bn setValue177 setValue212
def setValue214 : Flapjack.NumSet := .bn setValue213 setValue0
def setValue215 : Flapjack.NumSet := .bn setValue0 setValue214
def tree77 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5685] [5681])).val
theorem tree77_def : tree77 = (Flapjack.RegAlloc.ClashTree.delta [5685] [5681]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal77 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5685] [5681]
def live77 : Flapjack.NumSet := setValue209
def coloured77 : Flapjack.NumSet := setValue200
def result77 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue215, setValue200)
def tree78 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree77 tree76)).val
theorem tree78_def : tree78 = (.seq tree77 tree76) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal78 : Flapjack.RegAlloc.ClashTree := .seq literal77 literal76
def live78 : Flapjack.NumSet := setValue0
def coloured78 : Flapjack.NumSet := setValue0
def result78 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue215, setValue200)
def setValue216 : Flapjack.NumSet := .bn setValue175 setValue210
def setValue217 : Flapjack.NumSet := .bn setValue216 setValue176
def setValue218 : Flapjack.NumSet := .bn setValue217 setValue206
def setValue219 : Flapjack.NumSet := .bn setValue218 setValue0
def setValue220 : Flapjack.NumSet := .bn setValue0 setValue219
def tree79 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5681] [5677])).val
theorem tree79_def : tree79 = (Flapjack.RegAlloc.ClashTree.delta [5681] [5677]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal79 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5681] [5677]
def live79 : Flapjack.NumSet := setValue215
def coloured79 : Flapjack.NumSet := setValue200
def result79 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue220, setValue200)
def tree80 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree79 tree78)).val
theorem tree80_def : tree80 = (.seq tree79 tree78) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal80 : Flapjack.RegAlloc.ClashTree := .seq literal79 literal78
def live80 : Flapjack.NumSet := setValue0
def coloured80 : Flapjack.NumSet := setValue0
def result80 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue220, setValue200)
def setValue221 : Flapjack.NumSet := .bn setValue177 setValue206
def setValue222 : Flapjack.NumSet := .bn setValue221 setValue0
def setValue223 : Flapjack.NumSet := .bn setValue0 setValue222
def setValue224 : Flapjack.NumSet := .bn setValue5 setValue190
def setValue225 : Flapjack.NumSet := .bs setValue87 () setValue224
def setValue226 : Flapjack.NumSet := .bs setValue225 () setValue0
def tree81 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5677] [])).val
theorem tree81_def : tree81 = (Flapjack.RegAlloc.ClashTree.delta [5677] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal81 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5677] []
def live81 : Flapjack.NumSet := setValue220
def coloured81 : Flapjack.NumSet := setValue200
def result81 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue223, setValue226)
def tree82 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree81 tree80)).val
theorem tree82_def : tree82 = (.seq tree81 tree80) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal82 : Flapjack.RegAlloc.ClashTree := .seq literal81 literal80
def live82 : Flapjack.NumSet := setValue0
def coloured82 : Flapjack.NumSet := setValue0
def result82 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue223, setValue226)
def setValue227 : Flapjack.NumSet := .bn setValue176 setValue216
def setValue228 : Flapjack.NumSet := .bn setValue0 setValue179
def setValue229 : Flapjack.NumSet := .bn setValue204 setValue228
def setValue230 : Flapjack.NumSet := .bn setValue229 setValue194
def setValue231 : Flapjack.NumSet := .bn setValue227 setValue230
def setValue232 : Flapjack.NumSet := .bn setValue231 setValue0
def setValue233 : Flapjack.NumSet := .bn setValue0 setValue232
def setValue234 : Flapjack.NumSet := .bn setValue87 setValue191
def setValue235 : Flapjack.NumSet := .bs setValue234 () setValue0
def tree83 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5673] [5669])).val
theorem tree83_def : tree83 = (Flapjack.RegAlloc.ClashTree.delta [5673] [5669]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal83 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5673] [5669]
def live83 : Flapjack.NumSet := setValue223
def coloured83 : Flapjack.NumSet := setValue226
def result83 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue233, setValue235)
def tree84 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree83 tree82)).val
theorem tree84_def : tree84 = (.seq tree83 tree82) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal84 : Flapjack.RegAlloc.ClashTree := .seq literal83 literal82
def live84 : Flapjack.NumSet := setValue0
def coloured84 : Flapjack.NumSet := setValue0
def result84 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue233, setValue235)
def setValue236 : Flapjack.NumSet := .bn setValue175 setValue228
def setValue237 : Flapjack.NumSet := .bn setValue176 setValue236
def setValue238 : Flapjack.NumSet := .bn setValue237 setValue230
def setValue239 : Flapjack.NumSet := .bn setValue238 setValue0
def setValue240 : Flapjack.NumSet := .bn setValue0 setValue239
def tree85 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5669] [5637])).val
theorem tree85_def : tree85 = (Flapjack.RegAlloc.ClashTree.delta [5669] [5637]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal85 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5669] [5637]
def live85 : Flapjack.NumSet := setValue233
def coloured85 : Flapjack.NumSet := setValue235
def result85 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue240, setValue235)
def tree86 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree85 tree84)).val
theorem tree86_def : tree86 = (.seq tree85 tree84) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal86 : Flapjack.RegAlloc.ClashTree := .seq literal85 literal84
def live86 : Flapjack.NumSet := setValue0
def coloured86 : Flapjack.NumSet := setValue0
def result86 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue240, setValue235)
def tree87 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree87_def : tree87 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal87 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live87 : Flapjack.NumSet := setValue240
def coloured87 : Flapjack.NumSet := setValue235
def result87 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue240, setValue235)
def tree88 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree87 tree86)).val
theorem tree88_def : tree88 = (.seq tree87 tree86) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal88 : Flapjack.RegAlloc.ClashTree := .seq literal87 literal86
def live88 : Flapjack.NumSet := setValue0
def coloured88 : Flapjack.NumSet := setValue0
def result88 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue240, setValue235)
def setValue241 : Flapjack.NumSet := .bn setValue0 setValue174
def setValue242 : Flapjack.NumSet := .bn setValue241 setValue175
def setValue243 : Flapjack.NumSet := .bn setValue0 setValue175
def setValue244 : Flapjack.NumSet := .bn setValue242 setValue243
def setValue245 : Flapjack.NumSet := .bn setValue175 setValue175
def setValue246 : Flapjack.NumSet := .bn setValue243 setValue245
def setValue247 : Flapjack.NumSet := .bn setValue244 setValue246
def setValue248 : Flapjack.NumSet := .bn setValue0 setValue247
def setValue249 : Flapjack.NumSet := .bn setValue2 setValue248
def setValue250 : Flapjack.NumSet := .bs setValue87 () setValue168
def setValue251 : Flapjack.NumSet := .bn setValue250 setValue0
def tree89 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5665, 5657, 5621, 5625, 5629, 5633, 5637, 5641]
  [2, 4, 5595, 5599, 5603, 5607, 5611, 5615])).val
theorem tree89_def : tree89 = (Flapjack.RegAlloc.ClashTree.delta [5665, 5657, 5621, 5625, 5629, 5633, 5637, 5641]
  [2, 4, 5595, 5599, 5603, 5607, 5611, 5615]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal89 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5665, 5657, 5621, 5625, 5629, 5633, 5637, 5641]
  [2, 4, 5595, 5599, 5603, 5607, 5611, 5615]
def live89 : Flapjack.NumSet := setValue240
def coloured89 : Flapjack.NumSet := setValue235
def result89 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue249, setValue251)
def tree90 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue249)).val
theorem tree90_def : tree90 = (.set setValue249) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal90 : Flapjack.RegAlloc.ClashTree := .set setValue249
def live90 : Flapjack.NumSet := setValue249
def coloured90 : Flapjack.NumSet := setValue251
def result90 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue249, setValue251)
def tree91 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree90 tree89)).val
theorem tree91_def : tree91 = (.seq tree90 tree89) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal91 : Flapjack.RegAlloc.ClashTree := .seq literal90 literal89
def live91 : Flapjack.NumSet := setValue240
def coloured91 : Flapjack.NumSet := setValue235
def result91 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue249, setValue251)
def setValue252 : Flapjack.NumSet := .bn setValue1 setValue239
def tree92 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree92_def : tree92 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal92 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live92 : Flapjack.NumSet := setValue240
def coloured92 : Flapjack.NumSet := setValue235
def result92 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue252, setValue200)
def setValue253 : Flapjack.NumSet := .bn setValue228 setValue0
def setValue254 : Flapjack.NumSet := .bn setValue0 setValue210
def setValue255 : Flapjack.NumSet := .bn setValue253 setValue254
def setValue256 : Flapjack.NumSet := .bn setValue0 setValue255
def setValue257 : Flapjack.NumSet := .bn setValue256 setValue247
def setValue258 : Flapjack.NumSet := .bn setValue1 setValue257
def setValue259 : Flapjack.NumSet := .bn setValue88 setValue190
def setValue260 : Flapjack.NumSet := .bs setValue87 () setValue259
def setValue261 : Flapjack.NumSet := .bs setValue260 () setValue0
def tree93 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 5621, 5625, 5629, 5633, 5637, 5641] [2, 5595, 5599, 5603, 5607, 5611, 5615])).val
theorem tree93_def : tree93 = (Flapjack.RegAlloc.ClashTree.delta [2, 5621, 5625, 5629, 5633, 5637, 5641] [2, 5595, 5599, 5603, 5607, 5611, 5615]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal93 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 5621, 5625, 5629, 5633, 5637, 5641] [2, 5595, 5599, 5603, 5607, 5611, 5615]
def live93 : Flapjack.NumSet := setValue252
def coloured93 : Flapjack.NumSet := setValue200
def result93 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue258, setValue261)
def tree94 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree93 tree92)).val
theorem tree94_def : tree94 = (.seq tree93 tree92) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal94 : Flapjack.RegAlloc.ClashTree := .seq literal93 literal92
def live94 : Flapjack.NumSet := setValue240
def coloured94 : Flapjack.NumSet := setValue235
def result94 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue258, setValue261)
def setValue262 : Flapjack.NumSet := .bn setValue1 setValue248
def setValue263 : Flapjack.NumSet := .bs setValue87 () setValue156
def setValue264 : Flapjack.NumSet := .bn setValue263 setValue0
def tree95 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue262)).val
theorem tree95_def : tree95 = (.set setValue262) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal95 : Flapjack.RegAlloc.ClashTree := .set setValue262
def live95 : Flapjack.NumSet := setValue258
def coloured95 : Flapjack.NumSet := setValue261
def result95 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue262, setValue264)
def tree96 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree95 tree94)).val
theorem tree96_def : tree96 = (.seq tree95 tree94) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal96 : Flapjack.RegAlloc.ClashTree := .seq literal95 literal94
def live96 : Flapjack.NumSet := setValue240
def coloured96 : Flapjack.NumSet := setValue235
def result96 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue262, setValue264)
def tree97 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue249) tree91 tree96)).val
theorem tree97_def : tree97 = (.branch (some setValue249) tree91 tree96) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal97 : Flapjack.RegAlloc.ClashTree := .branch (some setValue249) literal91 literal96
def live97 : Flapjack.NumSet := setValue240
def coloured97 : Flapjack.NumSet := setValue235
def result97 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue249, setValue251)
def tree98 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree97 tree88)).val
theorem tree98_def : tree98 = (.seq tree97 tree88) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal98 : Flapjack.RegAlloc.ClashTree := .seq literal97 literal88
def live98 : Flapjack.NumSet := setValue0
def coloured98 : Flapjack.NumSet := setValue0
def result98 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue249, setValue251)
def setValue265 : Flapjack.NumSet := .bn setValue0 setValue172
def setValue266 : Flapjack.NumSet := .bn setValue265 setValue0
def setValue267 : Flapjack.NumSet := .bn setValue266 setValue0
def setValue268 : Flapjack.NumSet := .bn setValue266 setValue174
def setValue269 : Flapjack.NumSet := .bn setValue267 setValue268
def setValue270 : Flapjack.NumSet := .bn setValue0 setValue173
def setValue271 : Flapjack.NumSet := .bn setValue0 setValue270
def setValue272 : Flapjack.NumSet := .bn setValue267 setValue271
def setValue273 : Flapjack.NumSet := .bn setValue269 setValue272
def setValue274 : Flapjack.NumSet := .bn setValue267 setValue0
def setValue275 : Flapjack.NumSet := .bn setValue268 setValue0
def setValue276 : Flapjack.NumSet := .bn setValue274 setValue275
def setValue277 : Flapjack.NumSet := .bn setValue273 setValue276
def setValue278 : Flapjack.NumSet := .bn setValue277 setValue0
def setValue279 : Flapjack.NumSet := .bn setValue0 setValue278
def setValue280 : Flapjack.NumSet := .bs setValue5 () setValue155
def setValue281 : Flapjack.NumSet := .bs setValue87 () setValue280
def setValue282 : Flapjack.NumSet := .bs setValue281 () setValue0
def tree99 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4, 5595, 5599, 5603, 5607, 5611, 5615]
  [5585, 5497, 5485, 5489, 5493, 5501, 5581, 5509])).val
theorem tree99_def : tree99 = (Flapjack.RegAlloc.ClashTree.delta [2, 4, 5595, 5599, 5603, 5607, 5611, 5615]
  [5585, 5497, 5485, 5489, 5493, 5501, 5581, 5509]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal99 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4, 5595, 5599, 5603, 5607, 5611, 5615]
  [5585, 5497, 5485, 5489, 5493, 5501, 5581, 5509]
def live99 : Flapjack.NumSet := setValue249
def coloured99 : Flapjack.NumSet := setValue251
def result99 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue279, setValue282)
def tree100 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree99 tree98)).val
theorem tree100_def : tree100 = (.seq tree99 tree98) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal100 : Flapjack.RegAlloc.ClashTree := .seq literal99 literal98
def live100 : Flapjack.NumSet := setValue0
def coloured100 : Flapjack.NumSet := setValue0
def result100 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue279, setValue282)
def setValue283 : Flapjack.NumSet := .bn setValue274 setValue274
def setValue284 : Flapjack.NumSet := .bn setValue273 setValue283
def setValue285 : Flapjack.NumSet := .bn setValue284 setValue0
def setValue286 : Flapjack.NumSet := .bn setValue0 setValue285
def setValue287 : Flapjack.NumSet := .bn setValue87 setValue280
def setValue288 : Flapjack.NumSet := .bs setValue287 () setValue0
def tree101 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5585] [5581])).val
theorem tree101_def : tree101 = (Flapjack.RegAlloc.ClashTree.delta [5585] [5581]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal101 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5585] [5581]
def live101 : Flapjack.NumSet := setValue279
def coloured101 : Flapjack.NumSet := setValue282
def result101 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue286, setValue288)
def tree102 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree101 tree100)).val
theorem tree102_def : tree102 = (.seq tree101 tree100) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal102 : Flapjack.RegAlloc.ClashTree := .seq literal101 literal100
def live102 : Flapjack.NumSet := setValue0
def coloured102 : Flapjack.NumSet := setValue0
def result102 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue286, setValue288)
def setValue289 : Flapjack.NumSet := .bn setValue267 setValue267
def setValue290 : Flapjack.NumSet := .bn setValue289 setValue272
def setValue291 : Flapjack.NumSet := .bn setValue274 setValue272
def setValue292 : Flapjack.NumSet := .bn setValue290 setValue291
def setValue293 : Flapjack.NumSet := .bn setValue292 setValue0
def setValue294 : Flapjack.NumSet := .bn setValue0 setValue293
def tree103 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5581] [5505])).val
theorem tree103_def : tree103 = (Flapjack.RegAlloc.ClashTree.delta [5581] [5505]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal103 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5581] [5505]
def live103 : Flapjack.NumSet := setValue286
def coloured103 : Flapjack.NumSet := setValue288
def result103 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree104 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree103 tree102)).val
theorem tree104_def : tree104 = (.seq tree103 tree102) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal104 : Flapjack.RegAlloc.ClashTree := .seq literal103 literal102
def live104 : Flapjack.NumSet := setValue0
def coloured104 : Flapjack.NumSet := setValue0
def result104 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree105 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree105_def : tree105 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal105 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live105 : Flapjack.NumSet := setValue294
def coloured105 : Flapjack.NumSet := setValue288
def result105 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree106 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree105 tree104)).val
theorem tree106_def : tree106 = (.seq tree105 tree104) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal106 : Flapjack.RegAlloc.ClashTree := .seq literal105 literal104
def live106 : Flapjack.NumSet := setValue0
def coloured106 : Flapjack.NumSet := setValue0
def result106 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree107 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree107_def : tree107 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal107 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live107 : Flapjack.NumSet := setValue294
def coloured107 : Flapjack.NumSet := setValue288
def result107 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree108 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree107 tree106)).val
theorem tree108_def : tree108 = (.seq tree107 tree106) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal108 : Flapjack.RegAlloc.ClashTree := .seq literal107 literal106
def live108 : Flapjack.NumSet := setValue0
def coloured108 : Flapjack.NumSet := setValue0
def result108 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def setValue295 : Flapjack.NumSet := .bn setValue1 setValue293
def tree109 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree109_def : tree109 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal109 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live109 : Flapjack.NumSet := setValue294
def coloured109 : Flapjack.NumSet := setValue288
def result109 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue295, setValue282)
def setValue296 : Flapjack.NumSet := .bn setValue265 setValue173
def setValue297 : Flapjack.NumSet := .bn setValue296 setValue0
def setValue298 : Flapjack.NumSet := .bn setValue297 setValue271
def setValue299 : Flapjack.NumSet := .bn setValue274 setValue298
def setValue300 : Flapjack.NumSet := .bn setValue290 setValue299
def setValue301 : Flapjack.NumSet := .bn setValue300 setValue0
def setValue302 : Flapjack.NumSet := .bn setValue0 setValue301
def tree110 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [5553])).val
theorem tree110_def : tree110 = (Flapjack.RegAlloc.ClashTree.delta [2] [5553]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal110 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [5553]
def live110 : Flapjack.NumSet := setValue295
def coloured110 : Flapjack.NumSet := setValue282
def result110 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue302, setValue282)
def tree111 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree110 tree109)).val
theorem tree111_def : tree111 = (.seq tree110 tree109) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal111 : Flapjack.RegAlloc.ClashTree := .seq literal110 literal109
def live111 : Flapjack.NumSet := setValue294
def coloured111 : Flapjack.NumSet := setValue288
def result111 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue302, setValue282)
def tree112 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5553] [])).val
theorem tree112_def : tree112 = (Flapjack.RegAlloc.ClashTree.delta [5553] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal112 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5553] []
def live112 : Flapjack.NumSet := setValue302
def coloured112 : Flapjack.NumSet := setValue282
def result112 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree113 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree112 tree111)).val
theorem tree113_def : tree113 = (.seq tree112 tree111) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal113 : Flapjack.RegAlloc.ClashTree := .seq literal112 literal111
def live113 : Flapjack.NumSet := setValue294
def coloured113 : Flapjack.NumSet := setValue288
def result113 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def setValue303 : Flapjack.NumSet := .bn setValue267 setValue297
def setValue304 : Flapjack.NumSet := .bn setValue303 setValue272
def setValue305 : Flapjack.NumSet := .bn setValue304 setValue291
def setValue306 : Flapjack.NumSet := .bn setValue305 setValue0
def setValue307 : Flapjack.NumSet := .bn setValue0 setValue306
def tree114 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5549])).val
theorem tree114_def : tree114 = (Flapjack.RegAlloc.ClashTree.delta [] [5549]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal114 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5549]
def live114 : Flapjack.NumSet := setValue294
def coloured114 : Flapjack.NumSet := setValue288
def result114 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue307, setValue282)
def tree115 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree114 tree113)).val
theorem tree115_def : tree115 = (.seq tree114 tree113) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal115 : Flapjack.RegAlloc.ClashTree := .seq literal114 literal113
def live115 : Flapjack.NumSet := setValue294
def coloured115 : Flapjack.NumSet := setValue288
def result115 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue307, setValue282)
def setValue308 : Flapjack.NumSet := .bn setValue270 setValue0
def setValue309 : Flapjack.NumSet := .bn setValue267 setValue308
def setValue310 : Flapjack.NumSet := .bn setValue309 setValue272
def setValue311 : Flapjack.NumSet := .bn setValue290 setValue310
def setValue312 : Flapjack.NumSet := .bn setValue311 setValue0
def setValue313 : Flapjack.NumSet := .bn setValue0 setValue312
def tree116 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5549] [5545])).val
theorem tree116_def : tree116 = (Flapjack.RegAlloc.ClashTree.delta [5549] [5545]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal116 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5549] [5545]
def live116 : Flapjack.NumSet := setValue307
def coloured116 : Flapjack.NumSet := setValue282
def result116 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue313, setValue282)
def tree117 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree116 tree115)).val
theorem tree117_def : tree117 = (.seq tree116 tree115) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal117 : Flapjack.RegAlloc.ClashTree := .seq literal116 literal115
def live117 : Flapjack.NumSet := setValue294
def coloured117 : Flapjack.NumSet := setValue288
def result117 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue313, setValue282)
def tree118 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5545] [])).val
theorem tree118_def : tree118 = (Flapjack.RegAlloc.ClashTree.delta [5545] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal118 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5545] []
def live118 : Flapjack.NumSet := setValue313
def coloured118 : Flapjack.NumSet := setValue282
def result118 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree119 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree118 tree117)).val
theorem tree119_def : tree119 = (.seq tree118 tree117) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal119 : Flapjack.RegAlloc.ClashTree := .seq literal118 literal117
def live119 : Flapjack.NumSet := setValue294
def coloured119 : Flapjack.NumSet := setValue288
def result119 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree120 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree120_def : tree120 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal120 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live120 : Flapjack.NumSet := setValue294
def coloured120 : Flapjack.NumSet := setValue288
def result120 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree121 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree120 tree119)).val
theorem tree121_def : tree121 = (.seq tree120 tree119) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal121 : Flapjack.RegAlloc.ClashTree := .seq literal120 literal119
def live121 : Flapjack.NumSet := setValue294
def coloured121 : Flapjack.NumSet := setValue288
def result121 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree122 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree122_def : tree122 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal122 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live122 : Flapjack.NumSet := setValue294
def coloured122 : Flapjack.NumSet := setValue288
def result122 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def tree123 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree121 tree122)).val
theorem tree123_def : tree123 = (.branch (none) tree121 tree122) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal123 : Flapjack.RegAlloc.ClashTree := .branch (none) literal121 literal122
def live123 : Flapjack.NumSet := setValue294
def coloured123 : Flapjack.NumSet := setValue288
def result123 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue294, setValue288)
def setValue314 : Flapjack.NumSet := .bn setValue266 setValue270
def setValue315 : Flapjack.NumSet := .bn setValue314 setValue267
def setValue316 : Flapjack.NumSet := .bn setValue315 setValue272
def setValue317 : Flapjack.NumSet := .bn setValue314 setValue0
def setValue318 : Flapjack.NumSet := .bn setValue317 setValue272
def setValue319 : Flapjack.NumSet := .bn setValue316 setValue318
def setValue320 : Flapjack.NumSet := .bn setValue319 setValue0
def setValue321 : Flapjack.NumSet := .bn setValue0 setValue320
def setValue322 : Flapjack.NumSet := .bs setValue116 () setValue280
def setValue323 : Flapjack.NumSet := .bs setValue322 () setValue0
def tree124 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5529, 5533])).val
theorem tree124_def : tree124 = (Flapjack.RegAlloc.ClashTree.delta [] [5529, 5533]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal124 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5529, 5533]
def live124 : Flapjack.NumSet := setValue294
def coloured124 : Flapjack.NumSet := setValue288
def result124 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue321, setValue323)
def tree125 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree124 tree123)).val
theorem tree125_def : tree125 = (.seq tree124 tree123) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal125 : Flapjack.RegAlloc.ClashTree := .seq literal124 literal123
def live125 : Flapjack.NumSet := setValue294
def coloured125 : Flapjack.NumSet := setValue288
def result125 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue321, setValue323)
def tree126 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree125 tree108)).val
theorem tree126_def : tree126 = (.seq tree125 tree108) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal126 : Flapjack.RegAlloc.ClashTree := .seq literal125 literal108
def live126 : Flapjack.NumSet := setValue0
def coloured126 : Flapjack.NumSet := setValue0
def result126 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue321, setValue323)
def setValue324 : Flapjack.NumSet := .bn setValue290 setValue318
def setValue325 : Flapjack.NumSet := .bn setValue324 setValue0
def setValue326 : Flapjack.NumSet := .bn setValue0 setValue325
def setValue327 : Flapjack.NumSet := .bn setValue116 setValue280
def setValue328 : Flapjack.NumSet := .bs setValue327 () setValue0
def tree127 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5533] [])).val
theorem tree127_def : tree127 = (Flapjack.RegAlloc.ClashTree.delta [5533] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal127 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5533] []
def live127 : Flapjack.NumSet := setValue321
def coloured127 : Flapjack.NumSet := setValue323
def result127 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue326, setValue328)
def tree128 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree127 tree126)).val
theorem tree128_def : tree128 = (.seq tree127 tree126) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal128 : Flapjack.RegAlloc.ClashTree := .seq literal127 literal126
def live128 : Flapjack.NumSet := setValue0
def coloured128 : Flapjack.NumSet := setValue0
def result128 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue326, setValue328)
def setValue329 : Flapjack.NumSet := .bn setValue314 setValue271
def setValue330 : Flapjack.NumSet := .bn setValue274 setValue329
def setValue331 : Flapjack.NumSet := .bn setValue290 setValue330
def setValue332 : Flapjack.NumSet := .bn setValue331 setValue0
def setValue333 : Flapjack.NumSet := .bn setValue0 setValue332
def tree129 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5529] [5521])).val
theorem tree129_def : tree129 = (Flapjack.RegAlloc.ClashTree.delta [5529] [5521]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal129 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5529] [5521]
def live129 : Flapjack.NumSet := setValue326
def coloured129 : Flapjack.NumSet := setValue328
def result129 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue333, setValue328)
def tree130 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree129 tree128)).val
theorem tree130_def : tree130 = (.seq tree129 tree128) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal130 : Flapjack.RegAlloc.ClashTree := .seq literal129 literal128
def live130 : Flapjack.NumSet := setValue0
def coloured130 : Flapjack.NumSet := setValue0
def result130 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue333, setValue328)
def tree131 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree131_def : tree131 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal131 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live131 : Flapjack.NumSet := setValue333
def coloured131 : Flapjack.NumSet := setValue328
def result131 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue333, setValue328)
def tree132 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree131 tree130)).val
theorem tree132_def : tree132 = (.seq tree131 tree130) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal132 : Flapjack.RegAlloc.ClashTree := .seq literal131 literal130
def live132 : Flapjack.NumSet := setValue0
def coloured132 : Flapjack.NumSet := setValue0
def result132 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue333, setValue328)
def setValue334 : Flapjack.NumSet := .bn setValue0 setValue266
def setValue335 : Flapjack.NumSet := .bn setValue334 setValue0
def setValue336 : Flapjack.NumSet := .bn setValue334 setValue267
def setValue337 : Flapjack.NumSet := .bn setValue335 setValue336
def setValue338 : Flapjack.NumSet := .bn setValue336 setValue336
def setValue339 : Flapjack.NumSet := .bn setValue337 setValue338
def setValue340 : Flapjack.NumSet := .bn setValue0 setValue339
def setValue341 : Flapjack.NumSet := .bn setValue1 setValue340
def tree133 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5521, 5485, 5489, 5493, 5497, 5501, 5505, 5509]
  [2, 5455, 5459, 5463, 5467, 5471, 5475, 5479])).val
theorem tree133_def : tree133 = (Flapjack.RegAlloc.ClashTree.delta [5521, 5485, 5489, 5493, 5497, 5501, 5505, 5509]
  [2, 5455, 5459, 5463, 5467, 5471, 5475, 5479]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal133 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5521, 5485, 5489, 5493, 5497, 5501, 5505, 5509]
  [2, 5455, 5459, 5463, 5467, 5471, 5475, 5479]
def live133 : Flapjack.NumSet := setValue333
def coloured133 : Flapjack.NumSet := setValue328
def result133 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue341, setValue158)
def tree134 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue341)).val
theorem tree134_def : tree134 = (.set setValue341) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal134 : Flapjack.RegAlloc.ClashTree := .set setValue341
def live134 : Flapjack.NumSet := setValue341
def coloured134 : Flapjack.NumSet := setValue158
def result134 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue341, setValue158)
def tree135 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree134 tree133)).val
theorem tree135_def : tree135 = (.seq tree134 tree133) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal135 : Flapjack.RegAlloc.ClashTree := .seq literal134 literal133
def live135 : Flapjack.NumSet := setValue333
def coloured135 : Flapjack.NumSet := setValue328
def result135 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue341, setValue158)
def setValue342 : Flapjack.NumSet := .bn setValue1 setValue332
def tree136 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree136_def : tree136 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal136 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live136 : Flapjack.NumSet := setValue333
def coloured136 : Flapjack.NumSet := setValue328
def result136 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue342, setValue323)
def setValue343 : Flapjack.NumSet := .bn setValue271 setValue0
def setValue344 : Flapjack.NumSet := .bn setValue0 setValue343
def setValue345 : Flapjack.NumSet := .bn setValue0 setValue344
def setValue346 : Flapjack.NumSet := .bn setValue345 setValue339
def setValue347 : Flapjack.NumSet := .bn setValue1 setValue346
def setValue348 : Flapjack.NumSet := .bs setValue103 () setValue156
def setValue349 : Flapjack.NumSet := .bn setValue348 setValue0
def tree137 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 5485, 5489, 5493, 5497, 5501, 5505, 5509]
  [2, 5455, 5459, 5463, 5467, 5471, 5475, 5479])).val
theorem tree137_def : tree137 = (Flapjack.RegAlloc.ClashTree.delta [2, 5485, 5489, 5493, 5497, 5501, 5505, 5509]
  [2, 5455, 5459, 5463, 5467, 5471, 5475, 5479]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal137 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 5485, 5489, 5493, 5497, 5501, 5505, 5509]
  [2, 5455, 5459, 5463, 5467, 5471, 5475, 5479]
def live137 : Flapjack.NumSet := setValue342
def coloured137 : Flapjack.NumSet := setValue323
def result137 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue347, setValue349)
def tree138 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree137 tree136)).val
theorem tree138_def : tree138 = (.seq tree137 tree136) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal138 : Flapjack.RegAlloc.ClashTree := .seq literal137 literal136
def live138 : Flapjack.NumSet := setValue333
def coloured138 : Flapjack.NumSet := setValue328
def result138 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue347, setValue349)
def tree139 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue341)).val
theorem tree139_def : tree139 = (.set setValue341) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal139 : Flapjack.RegAlloc.ClashTree := .set setValue341
def live139 : Flapjack.NumSet := setValue347
def coloured139 : Flapjack.NumSet := setValue349
def result139 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue341, setValue158)
def tree140 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree139 tree138)).val
theorem tree140_def : tree140 = (.seq tree139 tree138) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal140 : Flapjack.RegAlloc.ClashTree := .seq literal139 literal138
def live140 : Flapjack.NumSet := setValue333
def coloured140 : Flapjack.NumSet := setValue328
def result140 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue341, setValue158)
def setValue350 : Flapjack.NumSet := .bs setValue64 () setValue3
def setValue351 : Flapjack.NumSet := .bn setValue350 setValue340
def setValue352 : Flapjack.NumSet := .bs setValue0 () setValue85
def setValue353 : Flapjack.NumSet := .bs setValue98 () setValue352
def setValue354 : Flapjack.NumSet := .bs setValue1 () setValue0
def setValue355 : Flapjack.NumSet := .bs setValue85 () setValue354
def setValue356 : Flapjack.NumSet := .bs setValue98 () setValue355
def setValue357 : Flapjack.NumSet := .bs setValue353 () setValue356
def setValue358 : Flapjack.NumSet := .bn setValue357 setValue0
def tree141 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue351) tree135 tree140)).val
theorem tree141_def : tree141 = (.branch (some setValue351) tree135 tree140) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal141 : Flapjack.RegAlloc.ClashTree := .branch (some setValue351) literal135 literal140
def live141 : Flapjack.NumSet := setValue333
def coloured141 : Flapjack.NumSet := setValue328
def result141 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue351, setValue358)
def tree142 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree141 tree132)).val
theorem tree142_def : tree142 = (.seq tree141 tree132) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal142 : Flapjack.RegAlloc.ClashTree := .seq literal141 literal132
def live142 : Flapjack.NumSet := setValue0
def coloured142 : Flapjack.NumSet := setValue0
def result142 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue351, setValue358)
def setValue359 : Flapjack.NumSet := .bn setValue0 setValue171
def setValue360 : Flapjack.NumSet := .bn setValue359 setValue0
def setValue361 : Flapjack.NumSet := .bn setValue360 setValue360
def setValue362 : Flapjack.NumSet := .bn setValue0 setValue361
def setValue363 : Flapjack.NumSet := .bn setValue0 setValue360
def setValue364 : Flapjack.NumSet := .bn setValue363 setValue0
def setValue365 : Flapjack.NumSet := .bn setValue362 setValue364
def setValue366 : Flapjack.NumSet := .bn setValue359 setValue172
def setValue367 : Flapjack.NumSet := .bn setValue0 setValue366
def setValue368 : Flapjack.NumSet := .bn setValue360 setValue0
def setValue369 : Flapjack.NumSet := .bn setValue367 setValue368
def setValue370 : Flapjack.NumSet := .bn setValue361 setValue0
def setValue371 : Flapjack.NumSet := .bn setValue369 setValue370
def setValue372 : Flapjack.NumSet := .bn setValue365 setValue371
def setValue373 : Flapjack.NumSet := .bn setValue0 setValue265
def setValue374 : Flapjack.NumSet := .bn setValue373 setValue0
def setValue375 : Flapjack.NumSet := .bn setValue367 setValue0
def setValue376 : Flapjack.NumSet := .bn setValue374 setValue375
def setValue377 : Flapjack.NumSet := .bn setValue360 setValue366
def setValue378 : Flapjack.NumSet := .bn setValue377 setValue0
def setValue379 : Flapjack.NumSet := .bn setValue374 setValue378
def setValue380 : Flapjack.NumSet := .bn setValue376 setValue379
def setValue381 : Flapjack.NumSet := .bn setValue372 setValue380
def setValue382 : Flapjack.NumSet := .bn setValue381 setValue0
def setValue383 : Flapjack.NumSet := .bn setValue0 setValue382
def setValue384 : Flapjack.NumSet := .bs setValue4 () setValue0
def setValue385 : Flapjack.NumSet := .bs setValue384 () setValue352
def setValue386 : Flapjack.NumSet := .bs setValue385 () setValue356
def setValue387 : Flapjack.NumSet := .bs setValue386 () setValue0
def tree143 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8, 10, 12, 14, 16, 5455, 5459, 5463, 5467, 5471, 5475, 5479]
  [5409, 5417, 5425, 5433, 5333, 5345, 5349, 5341, 5277, 5281, 5285, 5289, 5293, 5429, 5301])).val
theorem tree143_def : tree143 = (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8, 10, 12, 14, 16, 5455, 5459, 5463, 5467, 5471, 5475, 5479]
  [5409, 5417, 5425, 5433, 5333, 5345, 5349, 5341, 5277, 5281, 5285, 5289, 5293, 5429, 5301]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal143 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8, 10, 12, 14, 16, 5455, 5459, 5463, 5467, 5471, 5475, 5479]
  [5409, 5417, 5425, 5433, 5333, 5345, 5349, 5341, 5277, 5281, 5285, 5289, 5293, 5429, 5301]
def live143 : Flapjack.NumSet := setValue351
def coloured143 : Flapjack.NumSet := setValue358
def result143 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue383, setValue387)
def tree144 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree143 tree142)).val
theorem tree144_def : tree144 = (.seq tree143 tree142) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal144 : Flapjack.RegAlloc.ClashTree := .seq literal143 literal142
def live144 : Flapjack.NumSet := setValue0
def coloured144 : Flapjack.NumSet := setValue0
def result144 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue383, setValue387)
def setValue388 : Flapjack.NumSet := .bn setValue0 setValue375
def setValue389 : Flapjack.NumSet := .bn setValue388 setValue379
def setValue390 : Flapjack.NumSet := .bn setValue372 setValue389
def setValue391 : Flapjack.NumSet := .bn setValue390 setValue0
def setValue392 : Flapjack.NumSet := .bn setValue0 setValue391
def setValue393 : Flapjack.NumSet := .bn setValue85 setValue354
def setValue394 : Flapjack.NumSet := .bs setValue98 () setValue393
def setValue395 : Flapjack.NumSet := .bs setValue385 () setValue394
def setValue396 : Flapjack.NumSet := .bs setValue395 () setValue0
def tree145 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5433] [5429])).val
theorem tree145_def : tree145 = (Flapjack.RegAlloc.ClashTree.delta [5433] [5429]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal145 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5433] [5429]
def live145 : Flapjack.NumSet := setValue383
def coloured145 : Flapjack.NumSet := setValue387
def result145 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue392, setValue396)
def tree146 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree145 tree144)).val
theorem tree146_def : tree146 = (.seq tree145 tree144) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal146 : Flapjack.RegAlloc.ClashTree := .seq literal145 literal144
def live146 : Flapjack.NumSet := setValue0
def coloured146 : Flapjack.NumSet := setValue0
def result146 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue392, setValue396)
def setValue397 : Flapjack.NumSet := .bn setValue362 setValue375
def setValue398 : Flapjack.NumSet := .bn setValue363 setValue368
def setValue399 : Flapjack.NumSet := .bn setValue398 setValue370
def setValue400 : Flapjack.NumSet := .bn setValue397 setValue399
def setValue401 : Flapjack.NumSet := .bn setValue400 setValue389
def setValue402 : Flapjack.NumSet := .bn setValue401 setValue0
def setValue403 : Flapjack.NumSet := .bn setValue0 setValue402
def tree147 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5429] [5421])).val
theorem tree147_def : tree147 = (Flapjack.RegAlloc.ClashTree.delta [5429] [5421]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal147 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5429] [5421]
def live147 : Flapjack.NumSet := setValue392
def coloured147 : Flapjack.NumSet := setValue396
def result147 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue403, setValue396)
def tree148 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree147 tree146)).val
theorem tree148_def : tree148 = (.seq tree147 tree146) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal148 : Flapjack.RegAlloc.ClashTree := .seq literal147 literal146
def live148 : Flapjack.NumSet := setValue0
def coloured148 : Flapjack.NumSet := setValue0
def result148 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue403, setValue396)
def setValue404 : Flapjack.NumSet := .bn setValue0 setValue378
def setValue405 : Flapjack.NumSet := .bn setValue388 setValue404
def setValue406 : Flapjack.NumSet := .bn setValue400 setValue405
def setValue407 : Flapjack.NumSet := .bn setValue406 setValue0
def setValue408 : Flapjack.NumSet := .bn setValue0 setValue407
def setValue409 : Flapjack.NumSet := .bn setValue384 setValue352
def setValue410 : Flapjack.NumSet := .bs setValue409 () setValue394
def setValue411 : Flapjack.NumSet := .bs setValue410 () setValue0
def tree149 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5425] [5421])).val
theorem tree149_def : tree149 = (Flapjack.RegAlloc.ClashTree.delta [5425] [5421]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal149 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5425] [5421]
def live149 : Flapjack.NumSet := setValue403
def coloured149 : Flapjack.NumSet := setValue396
def result149 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue408, setValue411)
def tree150 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree149 tree148)).val
theorem tree150_def : tree150 = (.seq tree149 tree148) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal150 : Flapjack.RegAlloc.ClashTree := .seq literal149 literal148
def live150 : Flapjack.NumSet := setValue0
def coloured150 : Flapjack.NumSet := setValue0
def result150 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue408, setValue411)
def setValue412 : Flapjack.NumSet := .bn setValue398 setValue378
def setValue413 : Flapjack.NumSet := .bn setValue365 setValue412
def setValue414 : Flapjack.NumSet := .bn setValue413 setValue405
def setValue415 : Flapjack.NumSet := .bn setValue414 setValue0
def setValue416 : Flapjack.NumSet := .bn setValue0 setValue415
def tree151 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5421] [5413])).val
theorem tree151_def : tree151 = (Flapjack.RegAlloc.ClashTree.delta [5421] [5413]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal151 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5421] [5413]
def live151 : Flapjack.NumSet := setValue408
def coloured151 : Flapjack.NumSet := setValue411
def result151 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue416, setValue411)
def tree152 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree151 tree150)).val
theorem tree152_def : tree152 = (.seq tree151 tree150) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal152 : Flapjack.RegAlloc.ClashTree := .seq literal151 literal150
def live152 : Flapjack.NumSet := setValue0
def coloured152 : Flapjack.NumSet := setValue0
def result152 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue416, setValue411)
def setValue417 : Flapjack.NumSet := .bn setValue0 setValue364
def setValue418 : Flapjack.NumSet := .bn setValue417 setValue404
def setValue419 : Flapjack.NumSet := .bn setValue413 setValue418
def setValue420 : Flapjack.NumSet := .bn setValue419 setValue0
def setValue421 : Flapjack.NumSet := .bn setValue0 setValue420
def setValue422 : Flapjack.NumSet := .bn setValue98 setValue393
def setValue423 : Flapjack.NumSet := .bs setValue409 () setValue422
def setValue424 : Flapjack.NumSet := .bs setValue423 () setValue0
def tree153 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5417] [5413])).val
theorem tree153_def : tree153 = (Flapjack.RegAlloc.ClashTree.delta [5417] [5413]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal153 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5417] [5413]
def live153 : Flapjack.NumSet := setValue416
def coloured153 : Flapjack.NumSet := setValue411
def result153 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue421, setValue424)
def tree154 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree153 tree152)).val
theorem tree154_def : tree154 = (.seq tree153 tree152) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal154 : Flapjack.RegAlloc.ClashTree := .seq literal153 literal152
def live154 : Flapjack.NumSet := setValue0
def coloured154 : Flapjack.NumSet := setValue0
def result154 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue421, setValue424)
def setValue425 : Flapjack.NumSet := .bn setValue0 setValue377
def setValue426 : Flapjack.NumSet := .bn setValue425 setValue364
def setValue427 : Flapjack.NumSet := .bn setValue426 setValue399
def setValue428 : Flapjack.NumSet := .bn setValue427 setValue418
def setValue429 : Flapjack.NumSet := .bn setValue428 setValue0
def setValue430 : Flapjack.NumSet := .bn setValue0 setValue429
def tree155 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5413] [5405])).val
theorem tree155_def : tree155 = (Flapjack.RegAlloc.ClashTree.delta [5413] [5405]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal155 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5413] [5405]
def live155 : Flapjack.NumSet := setValue421
def coloured155 : Flapjack.NumSet := setValue424
def result155 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue430, setValue424)
def tree156 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree155 tree154)).val
theorem tree156_def : tree156 = (.seq tree155 tree154) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal156 : Flapjack.RegAlloc.ClashTree := .seq literal155 literal154
def live156 : Flapjack.NumSet := setValue0
def coloured156 : Flapjack.NumSet := setValue0
def result156 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue430, setValue424)
def setValue431 : Flapjack.NumSet := .bn setValue0 setValue370
def setValue432 : Flapjack.NumSet := .bn setValue417 setValue431
def setValue433 : Flapjack.NumSet := .bn setValue427 setValue432
def setValue434 : Flapjack.NumSet := .bn setValue433 setValue0
def setValue435 : Flapjack.NumSet := .bn setValue0 setValue434
def setValue436 : Flapjack.NumSet := .bn setValue409 setValue422
def setValue437 : Flapjack.NumSet := .bs setValue436 () setValue0
def tree157 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5409] [5405])).val
theorem tree157_def : tree157 = (Flapjack.RegAlloc.ClashTree.delta [5409] [5405]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal157 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5409] [5405]
def live157 : Flapjack.NumSet := setValue430
def coloured157 : Flapjack.NumSet := setValue424
def result157 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue435, setValue437)
def tree158 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree157 tree156)).val
theorem tree158_def : tree158 = (.seq tree157 tree156) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal158 : Flapjack.RegAlloc.ClashTree := .seq literal157 literal156
def live158 : Flapjack.NumSet := setValue0
def coloured158 : Flapjack.NumSet := setValue0
def result158 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue435, setValue437)
def setValue438 : Flapjack.NumSet := .bn setValue365 setValue399
def setValue439 : Flapjack.NumSet := .bn setValue364 setValue370
def setValue440 : Flapjack.NumSet := .bn setValue417 setValue439
def setValue441 : Flapjack.NumSet := .bn setValue438 setValue440
def setValue442 : Flapjack.NumSet := .bn setValue441 setValue0
def setValue443 : Flapjack.NumSet := .bn setValue0 setValue442
def tree159 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5405] [5297])).val
theorem tree159_def : tree159 = (Flapjack.RegAlloc.ClashTree.delta [5405] [5297]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal159 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5405] [5297]
def live159 : Flapjack.NumSet := setValue435
def coloured159 : Flapjack.NumSet := setValue437
def result159 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree160 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree159 tree158)).val
theorem tree160_def : tree160 = (.seq tree159 tree158) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal160 : Flapjack.RegAlloc.ClashTree := .seq literal159 literal158
def live160 : Flapjack.NumSet := setValue0
def coloured160 : Flapjack.NumSet := setValue0
def result160 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree161 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree161_def : tree161 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal161 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live161 : Flapjack.NumSet := setValue443
def coloured161 : Flapjack.NumSet := setValue437
def result161 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree162 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree161 tree160)).val
theorem tree162_def : tree162 = (.seq tree161 tree160) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal162 : Flapjack.RegAlloc.ClashTree := .seq literal161 literal160
def live162 : Flapjack.NumSet := setValue0
def coloured162 : Flapjack.NumSet := setValue0
def result162 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree163 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree163_def : tree163 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal163 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live163 : Flapjack.NumSet := setValue443
def coloured163 : Flapjack.NumSet := setValue437
def result163 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree164 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree163 tree162)).val
theorem tree164_def : tree164 = (.seq tree163 tree162) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal164 : Flapjack.RegAlloc.ClashTree := .seq literal163 literal162
def live164 : Flapjack.NumSet := setValue0
def coloured164 : Flapjack.NumSet := setValue0
def result164 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def setValue444 : Flapjack.NumSet := .bn setValue1 setValue442
def tree165 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree165_def : tree165 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal165 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live165 : Flapjack.NumSet := setValue443
def coloured165 : Flapjack.NumSet := setValue437
def result165 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue444, setValue424)
def setValue445 : Flapjack.NumSet := .bn setValue361 setValue373
def setValue446 : Flapjack.NumSet := .bn setValue364 setValue445
def setValue447 : Flapjack.NumSet := .bn setValue417 setValue446
def setValue448 : Flapjack.NumSet := .bn setValue438 setValue447
def setValue449 : Flapjack.NumSet := .bn setValue448 setValue0
def setValue450 : Flapjack.NumSet := .bn setValue0 setValue449
def tree166 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [5377])).val
theorem tree166_def : tree166 = (Flapjack.RegAlloc.ClashTree.delta [2] [5377]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal166 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [5377]
def live166 : Flapjack.NumSet := setValue444
def coloured166 : Flapjack.NumSet := setValue424
def result166 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue450, setValue424)
def tree167 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree166 tree165)).val
theorem tree167_def : tree167 = (.seq tree166 tree165) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal167 : Flapjack.RegAlloc.ClashTree := .seq literal166 literal165
def live167 : Flapjack.NumSet := setValue443
def coloured167 : Flapjack.NumSet := setValue437
def result167 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue450, setValue424)
def tree168 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5377] [])).val
theorem tree168_def : tree168 = (Flapjack.RegAlloc.ClashTree.delta [5377] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal168 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5377] []
def live168 : Flapjack.NumSet := setValue450
def coloured168 : Flapjack.NumSet := setValue424
def result168 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree169 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree168 tree167)).val
theorem tree169_def : tree169 = (.seq tree168 tree167) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal169 : Flapjack.RegAlloc.ClashTree := .seq literal168 literal167
def live169 : Flapjack.NumSet := setValue443
def coloured169 : Flapjack.NumSet := setValue437
def result169 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def setValue451 : Flapjack.NumSet := .bn setValue368 setValue361
def setValue452 : Flapjack.NumSet := .bn setValue451 setValue364
def setValue453 : Flapjack.NumSet := .bn setValue452 setValue399
def setValue454 : Flapjack.NumSet := .bn setValue453 setValue440
def setValue455 : Flapjack.NumSet := .bn setValue454 setValue0
def setValue456 : Flapjack.NumSet := .bn setValue0 setValue455
def tree170 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5373])).val
theorem tree170_def : tree170 = (Flapjack.RegAlloc.ClashTree.delta [] [5373]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal170 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5373]
def live170 : Flapjack.NumSet := setValue443
def coloured170 : Flapjack.NumSet := setValue437
def result170 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue456, setValue424)
def tree171 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree170 tree169)).val
theorem tree171_def : tree171 = (.seq tree170 tree169) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal171 : Flapjack.RegAlloc.ClashTree := .seq literal170 literal169
def live171 : Flapjack.NumSet := setValue443
def coloured171 : Flapjack.NumSet := setValue437
def result171 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue456, setValue424)
def setValue457 : Flapjack.NumSet := .bn setValue368 setValue0
def setValue458 : Flapjack.NumSet := .bn setValue457 setValue364
def setValue459 : Flapjack.NumSet := .bn setValue458 setValue439
def setValue460 : Flapjack.NumSet := .bn setValue438 setValue459
def setValue461 : Flapjack.NumSet := .bn setValue460 setValue0
def setValue462 : Flapjack.NumSet := .bn setValue0 setValue461
def tree172 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5373] [5369])).val
theorem tree172_def : tree172 = (Flapjack.RegAlloc.ClashTree.delta [5373] [5369]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal172 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5373] [5369]
def live172 : Flapjack.NumSet := setValue456
def coloured172 : Flapjack.NumSet := setValue424
def result172 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue462, setValue424)
def tree173 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree172 tree171)).val
theorem tree173_def : tree173 = (.seq tree172 tree171) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal173 : Flapjack.RegAlloc.ClashTree := .seq literal172 literal171
def live173 : Flapjack.NumSet := setValue443
def coloured173 : Flapjack.NumSet := setValue437
def result173 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue462, setValue424)
def tree174 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5369] [])).val
theorem tree174_def : tree174 = (Flapjack.RegAlloc.ClashTree.delta [5369] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal174 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5369] []
def live174 : Flapjack.NumSet := setValue462
def coloured174 : Flapjack.NumSet := setValue424
def result174 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree175 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree174 tree173)).val
theorem tree175_def : tree175 = (.seq tree174 tree173) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal175 : Flapjack.RegAlloc.ClashTree := .seq literal174 literal173
def live175 : Flapjack.NumSet := setValue443
def coloured175 : Flapjack.NumSet := setValue437
def result175 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree176 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree176_def : tree176 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal176 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live176 : Flapjack.NumSet := setValue443
def coloured176 : Flapjack.NumSet := setValue437
def result176 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree177 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree176 tree175)).val
theorem tree177_def : tree177 = (.seq tree176 tree175) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal177 : Flapjack.RegAlloc.ClashTree := .seq literal176 literal175
def live177 : Flapjack.NumSet := setValue443
def coloured177 : Flapjack.NumSet := setValue437
def result177 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree178 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree178_def : tree178 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal178 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live178 : Flapjack.NumSet := setValue443
def coloured178 : Flapjack.NumSet := setValue437
def result178 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def tree179 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree177 tree178)).val
theorem tree179_def : tree179 = (.branch (none) tree177 tree178) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal179 : Flapjack.RegAlloc.ClashTree := .branch (none) literal177 literal178
def live179 : Flapjack.NumSet := setValue443
def coloured179 : Flapjack.NumSet := setValue437
def result179 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue443, setValue437)
def setValue463 : Flapjack.NumSet := .bn setValue362 setValue370
def setValue464 : Flapjack.NumSet := .bn setValue463 setValue399
def setValue465 : Flapjack.NumSet := .bn setValue431 setValue439
def setValue466 : Flapjack.NumSet := .bn setValue464 setValue465
def setValue467 : Flapjack.NumSet := .bn setValue466 setValue0
def setValue468 : Flapjack.NumSet := .bn setValue0 setValue467
def tree180 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5353, 5357])).val
theorem tree180_def : tree180 = (Flapjack.RegAlloc.ClashTree.delta [] [5353, 5357]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal180 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5353, 5357]
def live180 : Flapjack.NumSet := setValue443
def coloured180 : Flapjack.NumSet := setValue437
def result180 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue468, setValue411)
def tree181 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree180 tree179)).val
theorem tree181_def : tree181 = (.seq tree180 tree179) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal181 : Flapjack.RegAlloc.ClashTree := .seq literal180 literal179
def live181 : Flapjack.NumSet := setValue443
def coloured181 : Flapjack.NumSet := setValue437
def result181 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue468, setValue411)
def tree182 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree181 tree164)).val
theorem tree182_def : tree182 = (.seq tree181 tree164) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal182 : Flapjack.RegAlloc.ClashTree := .seq literal181 literal164
def live182 : Flapjack.NumSet := setValue0
def coloured182 : Flapjack.NumSet := setValue0
def result182 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue468, setValue411)
def setValue469 : Flapjack.NumSet := .bn setValue438 setValue465
def setValue470 : Flapjack.NumSet := .bn setValue469 setValue0
def setValue471 : Flapjack.NumSet := .bn setValue0 setValue470
def setValue472 : Flapjack.NumSet := .bn setValue409 setValue394
def setValue473 : Flapjack.NumSet := .bs setValue472 () setValue0
def tree183 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5357] [])).val
theorem tree183_def : tree183 = (Flapjack.RegAlloc.ClashTree.delta [5357] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal183 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5357] []
def live183 : Flapjack.NumSet := setValue468
def coloured183 : Flapjack.NumSet := setValue411
def result183 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue471, setValue473)
def tree184 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree183 tree182)).val
theorem tree184_def : tree184 = (.seq tree183 tree182) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal184 : Flapjack.RegAlloc.ClashTree := .seq literal183 literal182
def live184 : Flapjack.NumSet := setValue0
def coloured184 : Flapjack.NumSet := setValue0
def result184 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue471, setValue473)
def setValue474 : Flapjack.NumSet := .bn setValue417 setValue399
def setValue475 : Flapjack.NumSet := .bn setValue438 setValue474
def setValue476 : Flapjack.NumSet := .bn setValue475 setValue0
def setValue477 : Flapjack.NumSet := .bn setValue0 setValue476
def tree185 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5353] [5329])).val
theorem tree185_def : tree185 = (Flapjack.RegAlloc.ClashTree.delta [5353] [5329]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal185 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5353] [5329]
def live185 : Flapjack.NumSet := setValue471
def coloured185 : Flapjack.NumSet := setValue473
def result185 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue477, setValue473)
def tree186 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree185 tree184)).val
theorem tree186_def : tree186 = (.seq tree185 tree184) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal186 : Flapjack.RegAlloc.ClashTree := .seq literal185 literal184
def live186 : Flapjack.NumSet := setValue0
def coloured186 : Flapjack.NumSet := setValue0
def result186 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue477, setValue473)
def tree187 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree187_def : tree187 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal187 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live187 : Flapjack.NumSet := setValue477
def coloured187 : Flapjack.NumSet := setValue473
def result187 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue477, setValue473)
def tree188 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree187 tree186)).val
theorem tree188_def : tree188 = (.seq tree187 tree186) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal188 : Flapjack.RegAlloc.ClashTree := .seq literal187 literal186
def live188 : Flapjack.NumSet := setValue0
def coloured188 : Flapjack.NumSet := setValue0
def result188 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue477, setValue473)
def setValue478 : Flapjack.NumSet := .bn setValue0 setValue363
def setValue479 : Flapjack.NumSet := .bn setValue0 setValue478
def setValue480 : Flapjack.NumSet := .bn setValue478 setValue478
def setValue481 : Flapjack.NumSet := .bn setValue479 setValue480
def setValue482 : Flapjack.NumSet := .bn setValue480 setValue480
def setValue483 : Flapjack.NumSet := .bn setValue481 setValue482
def setValue484 : Flapjack.NumSet := .bn setValue0 setValue483
def setValue485 : Flapjack.NumSet := .bn setValue41 setValue484
def setValue486 : Flapjack.NumSet := .bs setValue88 () setValue352
def setValue487 : Flapjack.NumSet := .bs setValue88 () setValue190
def setValue488 : Flapjack.NumSet := .bs setValue486 () setValue487
def setValue489 : Flapjack.NumSet := .bn setValue488 setValue0
def tree189 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5349, 5345, 5341, 5333, 5329, 5277, 5281, 5285, 5289, 5293, 5297, 5301]
  [6, 4, 8, 2, 10, 5247, 5251, 5255, 5259, 5263, 5267, 5271])).val
theorem tree189_def : tree189 = (Flapjack.RegAlloc.ClashTree.delta [5349, 5345, 5341, 5333, 5329, 5277, 5281, 5285, 5289, 5293, 5297, 5301]
  [6, 4, 8, 2, 10, 5247, 5251, 5255, 5259, 5263, 5267, 5271]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal189 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5349, 5345, 5341, 5333, 5329, 5277, 5281, 5285, 5289, 5293, 5297, 5301]
  [6, 4, 8, 2, 10, 5247, 5251, 5255, 5259, 5263, 5267, 5271]
def live189 : Flapjack.NumSet := setValue477
def coloured189 : Flapjack.NumSet := setValue473
def result189 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue485, setValue489)
def tree190 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue485)).val
theorem tree190_def : tree190 = (.set setValue485) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal190 : Flapjack.RegAlloc.ClashTree := .set setValue485
def live190 : Flapjack.NumSet := setValue485
def coloured190 : Flapjack.NumSet := setValue489
def result190 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue485, setValue489)
def tree191 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree190 tree189)).val
theorem tree191_def : tree191 = (.seq tree190 tree189) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal191 : Flapjack.RegAlloc.ClashTree := .seq literal190 literal189
def live191 : Flapjack.NumSet := setValue477
def coloured191 : Flapjack.NumSet := setValue473
def result191 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue485, setValue489)
def setValue490 : Flapjack.NumSet := .bn setValue1 setValue476
def tree192 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree192_def : tree192 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal192 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live192 : Flapjack.NumSet := setValue477
def coloured192 : Flapjack.NumSet := setValue473
def result192 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue490, setValue411)
def setValue491 : Flapjack.NumSet := .bn setValue0 setValue368
def setValue492 : Flapjack.NumSet := .bn setValue491 setValue0
def setValue493 : Flapjack.NumSet := .bn setValue491 setValue457
def setValue494 : Flapjack.NumSet := .bn setValue492 setValue493
def setValue495 : Flapjack.NumSet := .bn setValue0 setValue493
def setValue496 : Flapjack.NumSet := .bn setValue494 setValue495
def setValue497 : Flapjack.NumSet := .bn setValue496 setValue483
def setValue498 : Flapjack.NumSet := .bn setValue1 setValue497
def setValue499 : Flapjack.NumSet := .bn setValue98 setValue352
def setValue500 : Flapjack.NumSet := .bs setValue499 () setValue394
def setValue501 : Flapjack.NumSet := .bn setValue500 setValue0
def tree193 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 5277, 5281, 5285, 5289, 5293, 5297, 5301]
  [2, 5247, 5251, 5255, 5259, 5263, 5267, 5271])).val
theorem tree193_def : tree193 = (Flapjack.RegAlloc.ClashTree.delta [2, 5277, 5281, 5285, 5289, 5293, 5297, 5301]
  [2, 5247, 5251, 5255, 5259, 5263, 5267, 5271]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal193 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 5277, 5281, 5285, 5289, 5293, 5297, 5301]
  [2, 5247, 5251, 5255, 5259, 5263, 5267, 5271]
def live193 : Flapjack.NumSet := setValue490
def coloured193 : Flapjack.NumSet := setValue411
def result193 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue498, setValue501)
def tree194 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree193 tree192)).val
theorem tree194_def : tree194 = (.seq tree193 tree192) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal194 : Flapjack.RegAlloc.ClashTree := .seq literal193 literal192
def live194 : Flapjack.NumSet := setValue477
def coloured194 : Flapjack.NumSet := setValue473
def result194 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue498, setValue501)
def setValue502 : Flapjack.NumSet := .bn setValue1 setValue484
def tree195 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue502)).val
theorem tree195_def : tree195 = (.set setValue502) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal195 : Flapjack.RegAlloc.ClashTree := .set setValue502
def live195 : Flapjack.NumSet := setValue498
def coloured195 : Flapjack.NumSet := setValue501
def result195 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue502, setValue158)
def tree196 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree195 tree194)).val
theorem tree196_def : tree196 = (.seq tree195 tree194) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal196 : Flapjack.RegAlloc.ClashTree := .seq literal195 literal194
def live196 : Flapjack.NumSet := setValue477
def coloured196 : Flapjack.NumSet := setValue473
def result196 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue502, setValue158)
def setValue503 : Flapjack.NumSet := .bn setValue350 setValue484
def tree197 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue503) tree191 tree196)).val
theorem tree197_def : tree197 = (.branch (some setValue503) tree191 tree196) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal197 : Flapjack.RegAlloc.ClashTree := .branch (some setValue503) literal191 literal196
def live197 : Flapjack.NumSet := setValue477
def coloured197 : Flapjack.NumSet := setValue473
def result197 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue503, setValue358)
def tree198 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree197 tree188)).val
theorem tree198_def : tree198 = (.seq tree197 tree188) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal198 : Flapjack.RegAlloc.ClashTree := .seq literal197 literal188
def live198 : Flapjack.NumSet := setValue0
def coloured198 : Flapjack.NumSet := setValue0
def result198 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue503, setValue358)
def setValue504 : Flapjack.NumSet := .bn setValue0 setValue4
def setValue505 : Flapjack.NumSet := .bn setValue504 setValue0
def setValue506 : Flapjack.NumSet := .bn setValue505 setValue0
def setValue507 : Flapjack.NumSet := .bn setValue0 setValue506
def setValue508 : Flapjack.NumSet := .bn setValue0 setValue507
def setValue509 : Flapjack.NumSet := .bn setValue507 setValue0
def setValue510 : Flapjack.NumSet := .bn setValue508 setValue509
def setValue511 : Flapjack.NumSet := .bn setValue0 setValue359
def setValue512 : Flapjack.NumSet := .bn setValue511 setValue0
def setValue513 : Flapjack.NumSet := .bn setValue508 setValue512
def setValue514 : Flapjack.NumSet := .bn setValue510 setValue513
def setValue515 : Flapjack.NumSet := .bn setValue507 setValue507
def setValue516 : Flapjack.NumSet := .bn setValue515 setValue512
def setValue517 : Flapjack.NumSet := .bn setValue516 setValue0
def setValue518 : Flapjack.NumSet := .bn setValue514 setValue517
def setValue519 : Flapjack.NumSet := .bn setValue511 setValue507
def setValue520 : Flapjack.NumSet := .bn setValue519 setValue512
def setValue521 : Flapjack.NumSet := .bn setValue512 setValue0
def setValue522 : Flapjack.NumSet := .bn setValue520 setValue521
def setValue523 : Flapjack.NumSet := .bn setValue522 setValue522
def setValue524 : Flapjack.NumSet := .bn setValue518 setValue523
def setValue525 : Flapjack.NumSet := .bn setValue524 setValue0
def setValue526 : Flapjack.NumSet := .bn setValue0 setValue525
def setValue527 : Flapjack.NumSet := .bs setValue4 () setValue354
def setValue528 : Flapjack.NumSet := .bs setValue527 () setValue355
def setValue529 : Flapjack.NumSet := .bs setValue385 () setValue528
def setValue530 : Flapjack.NumSet := .bn setValue529 setValue0
def tree199 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8, 10, 12, 14, 16, 5247, 5251, 5255, 5259, 5263, 5267, 5271]
  [5197, 5201, 5205, 5209, 5217, 5225, 5233, 5241, 4909, 4913, 4917, 4921, 4925, 4981, 4957])).val
theorem tree199_def : tree199 = (Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8, 10, 12, 14, 16, 5247, 5251, 5255, 5259, 5263, 5267, 5271]
  [5197, 5201, 5205, 5209, 5217, 5225, 5233, 5241, 4909, 4913, 4917, 4921, 4925, 4981, 4957]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal199 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4, 6, 8, 10, 12, 14, 16, 5247, 5251, 5255, 5259, 5263, 5267, 5271]
  [5197, 5201, 5205, 5209, 5217, 5225, 5233, 5241, 4909, 4913, 4917, 4921, 4925, 4981, 4957]
def live199 : Flapjack.NumSet := setValue503
def coloured199 : Flapjack.NumSet := setValue358
def result199 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue526, setValue530)
def tree200 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree199 tree198)).val
theorem tree200_def : tree200 = (.seq tree199 tree198) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal200 : Flapjack.RegAlloc.ClashTree := .seq literal199 literal198
def live200 : Flapjack.NumSet := setValue0
def coloured200 : Flapjack.NumSet := setValue0
def result200 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue526, setValue530)
def setValue531 : Flapjack.NumSet := .bn setValue505 setValue171
def setValue532 : Flapjack.NumSet := .bn setValue0 setValue531
def setValue533 : Flapjack.NumSet := .bn setValue532 setValue507
def setValue534 : Flapjack.NumSet := .bn setValue533 setValue512
def setValue535 : Flapjack.NumSet := .bn setValue534 setValue0
def setValue536 : Flapjack.NumSet := .bn setValue514 setValue535
def setValue537 : Flapjack.NumSet := .bn setValue513 setValue521
def setValue538 : Flapjack.NumSet := .bn setValue537 setValue522
def setValue539 : Flapjack.NumSet := .bn setValue536 setValue538
def setValue540 : Flapjack.NumSet := .bn setValue539 setValue0
def setValue541 : Flapjack.NumSet := .bn setValue0 setValue540
def setValue542 : Flapjack.NumSet := .bs setValue527 () setValue190
def setValue543 : Flapjack.NumSet := .bs setValue385 () setValue542
def setValue544 : Flapjack.NumSet := .bs setValue543 () setValue0
def tree201 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5241] [5237])).val
theorem tree201_def : tree201 = (Flapjack.RegAlloc.ClashTree.delta [5241] [5237]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal201 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5241] [5237]
def live201 : Flapjack.NumSet := setValue526
def coloured201 : Flapjack.NumSet := setValue530
def result201 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue541, setValue544)
def tree202 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree201 tree200)).val
theorem tree202_def : tree202 = (.seq tree201 tree200) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal202 : Flapjack.RegAlloc.ClashTree := .seq literal201 literal200
def live202 : Flapjack.NumSet := setValue0
def coloured202 : Flapjack.NumSet := setValue0
def result202 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue541, setValue544)
def setValue545 : Flapjack.NumSet := .bn setValue510 setValue520
def setValue546 : Flapjack.NumSet := .bn setValue545 setValue517
def setValue547 : Flapjack.NumSet := .bn setValue546 setValue538
def setValue548 : Flapjack.NumSet := .bn setValue547 setValue0
def setValue549 : Flapjack.NumSet := .bn setValue0 setValue548
def tree203 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5237] [5229])).val
theorem tree203_def : tree203 = (Flapjack.RegAlloc.ClashTree.delta [5237] [5229]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal203 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5237] [5229]
def live203 : Flapjack.NumSet := setValue541
def coloured203 : Flapjack.NumSet := setValue544
def result203 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue549, setValue544)
def tree204 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree203 tree202)).val
theorem tree204_def : tree204 = (.seq tree203 tree202) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal204 : Flapjack.RegAlloc.ClashTree := .seq literal203 literal202
def live204 : Flapjack.NumSet := setValue0
def coloured204 : Flapjack.NumSet := setValue0
def result204 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue549, setValue544)
def setValue550 : Flapjack.NumSet := .bn setValue537 setValue537
def setValue551 : Flapjack.NumSet := .bn setValue546 setValue550
def setValue552 : Flapjack.NumSet := .bn setValue551 setValue0
def setValue553 : Flapjack.NumSet := .bn setValue0 setValue552
def setValue554 : Flapjack.NumSet := .bs setValue5 () setValue352
def setValue555 : Flapjack.NumSet := .bs setValue554 () setValue542
def setValue556 : Flapjack.NumSet := .bs setValue555 () setValue0
def tree205 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5233] [5229])).val
theorem tree205_def : tree205 = (Flapjack.RegAlloc.ClashTree.delta [5233] [5229]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal205 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5233] [5229]
def live205 : Flapjack.NumSet := setValue549
def coloured205 : Flapjack.NumSet := setValue544
def result205 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue553, setValue556)
def tree206 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree205 tree204)).val
theorem tree206_def : tree206 = (.seq tree205 tree204) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal206 : Flapjack.RegAlloc.ClashTree := .seq literal205 literal204
def live206 : Flapjack.NumSet := setValue0
def coloured206 : Flapjack.NumSet := setValue0
def result206 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue553, setValue556)
def setValue557 : Flapjack.NumSet := .bn setValue516 setValue521
def setValue558 : Flapjack.NumSet := .bn setValue514 setValue557
def setValue559 : Flapjack.NumSet := .bn setValue558 setValue550
def setValue560 : Flapjack.NumSet := .bn setValue559 setValue0
def setValue561 : Flapjack.NumSet := .bn setValue0 setValue560
def tree207 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5229] [5221])).val
theorem tree207_def : tree207 = (Flapjack.RegAlloc.ClashTree.delta [5229] [5221]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal207 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5229] [5221]
def live207 : Flapjack.NumSet := setValue553
def coloured207 : Flapjack.NumSet := setValue556
def result207 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue561, setValue556)
def tree208 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree207 tree206)).val
theorem tree208_def : tree208 = (.seq tree207 tree206) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal208 : Flapjack.RegAlloc.ClashTree := .seq literal207 literal206
def live208 : Flapjack.NumSet := setValue0
def coloured208 : Flapjack.NumSet := setValue0
def result208 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue561, setValue556)
def setValue562 : Flapjack.NumSet := .bn setValue513 setValue0
def setValue563 : Flapjack.NumSet := .bn setValue562 setValue537
def setValue564 : Flapjack.NumSet := .bn setValue558 setValue563
def setValue565 : Flapjack.NumSet := .bn setValue564 setValue0
def setValue566 : Flapjack.NumSet := .bn setValue0 setValue565
def setValue567 : Flapjack.NumSet := .bn setValue4 setValue354
def setValue568 : Flapjack.NumSet := .bs setValue567 () setValue190
def setValue569 : Flapjack.NumSet := .bs setValue554 () setValue568
def setValue570 : Flapjack.NumSet := .bs setValue569 () setValue0
def tree209 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5225] [5221])).val
theorem tree209_def : tree209 = (Flapjack.RegAlloc.ClashTree.delta [5225] [5221]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal209 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5225] [5221]
def live209 : Flapjack.NumSet := setValue561
def coloured209 : Flapjack.NumSet := setValue556
def result209 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue566, setValue570)
def tree210 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree209 tree208)).val
theorem tree210_def : tree210 = (.seq tree209 tree208) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal210 : Flapjack.RegAlloc.ClashTree := .seq literal209 literal208
def live210 : Flapjack.NumSet := setValue0
def coloured210 : Flapjack.NumSet := setValue0
def result210 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue566, setValue570)
def setValue571 : Flapjack.NumSet := .bn setValue532 setValue0
def setValue572 : Flapjack.NumSet := .bn setValue508 setValue571
def setValue573 : Flapjack.NumSet := .bn setValue572 setValue513
def setValue574 : Flapjack.NumSet := .bn setValue573 setValue517
def setValue575 : Flapjack.NumSet := .bn setValue574 setValue563
def setValue576 : Flapjack.NumSet := .bn setValue575 setValue0
def setValue577 : Flapjack.NumSet := .bn setValue0 setValue576
def tree211 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5221] [5213])).val
theorem tree211_def : tree211 = (Flapjack.RegAlloc.ClashTree.delta [5221] [5213]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal211 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5221] [5213]
def live211 : Flapjack.NumSet := setValue566
def coloured211 : Flapjack.NumSet := setValue570
def result211 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue577, setValue570)
def tree212 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree211 tree210)).val
theorem tree212_def : tree212 = (.seq tree211 tree210) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal212 : Flapjack.RegAlloc.ClashTree := .seq literal211 literal210
def live212 : Flapjack.NumSet := setValue0
def coloured212 : Flapjack.NumSet := setValue0
def result212 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue577, setValue570)
def setValue578 : Flapjack.NumSet := .bn setValue562 setValue562
def setValue579 : Flapjack.NumSet := .bn setValue574 setValue578
def setValue580 : Flapjack.NumSet := .bn setValue579 setValue0
def setValue581 : Flapjack.NumSet := .bn setValue0 setValue580
def setValue582 : Flapjack.NumSet := .bs setValue116 () setValue568
def setValue583 : Flapjack.NumSet := .bs setValue582 () setValue0
def tree213 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5217] [5213])).val
theorem tree213_def : tree213 = (Flapjack.RegAlloc.ClashTree.delta [5217] [5213]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal213 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5217] [5213]
def live213 : Flapjack.NumSet := setValue577
def coloured213 : Flapjack.NumSet := setValue570
def result213 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue581, setValue583)
def tree214 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree213 tree212)).val
theorem tree214_def : tree214 = (.seq tree213 tree212) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal214 : Flapjack.RegAlloc.ClashTree := .seq literal213 literal212
def live214 : Flapjack.NumSet := setValue0
def coloured214 : Flapjack.NumSet := setValue0
def result214 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue581, setValue583)
def setValue584 : Flapjack.NumSet := .bn setValue510 setValue510
def setValue585 : Flapjack.NumSet := .bn setValue515 setValue0
def setValue586 : Flapjack.NumSet := .bn setValue585 setValue0
def setValue587 : Flapjack.NumSet := .bn setValue584 setValue586
def setValue588 : Flapjack.NumSet := .bn setValue0 setValue509
def setValue589 : Flapjack.NumSet := .bn setValue510 setValue588
def setValue590 : Flapjack.NumSet := .bn setValue509 setValue0
def setValue591 : Flapjack.NumSet := .bn setValue510 setValue590
def setValue592 : Flapjack.NumSet := .bn setValue589 setValue591
def setValue593 : Flapjack.NumSet := .bn setValue587 setValue592
def setValue594 : Flapjack.NumSet := .bn setValue593 setValue0
def setValue595 : Flapjack.NumSet := .bn setValue0 setValue594
def setValue596 : Flapjack.NumSet := .bn setValue0 setValue354
def setValue597 : Flapjack.NumSet := .bs setValue5 () setValue596
def setValue598 : Flapjack.NumSet := .bn setValue597 setValue568
def setValue599 : Flapjack.NumSet := .bs setValue598 () setValue0
def tree215 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5213, 5209, 5205, 5201, 5197] [4941, 4945, 4953, 4937, 4961])).val
theorem tree215_def : tree215 = (Flapjack.RegAlloc.ClashTree.delta [5213, 5209, 5205, 5201, 5197] [4941, 4945, 4953, 4937, 4961]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal215 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5213, 5209, 5205, 5201, 5197] [4941, 4945, 4953, 4937, 4961]
def live215 : Flapjack.NumSet := setValue581
def coloured215 : Flapjack.NumSet := setValue583
def result215 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree216 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree215 tree214)).val
theorem tree216_def : tree216 = (.seq tree215 tree214) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal216 : Flapjack.RegAlloc.ClashTree := .seq literal215 literal214
def live216 : Flapjack.NumSet := setValue0
def coloured216 : Flapjack.NumSet := setValue0
def result216 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree217 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree217_def : tree217 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal217 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live217 : Flapjack.NumSet := setValue595
def coloured217 : Flapjack.NumSet := setValue599
def result217 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree218 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree217 tree216)).val
theorem tree218_def : tree218 = (.seq tree217 tree216) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal218 : Flapjack.RegAlloc.ClashTree := .seq literal217 literal216
def live218 : Flapjack.NumSet := setValue0
def coloured218 : Flapjack.NumSet := setValue0
def result218 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree219 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree219_def : tree219 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal219 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live219 : Flapjack.NumSet := setValue595
def coloured219 : Flapjack.NumSet := setValue599
def result219 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree220 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree219 tree218)).val
theorem tree220_def : tree220 = (.seq tree219 tree218) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal220 : Flapjack.RegAlloc.ClashTree := .seq literal219 literal218
def live220 : Flapjack.NumSet := setValue0
def coloured220 : Flapjack.NumSet := setValue0
def result220 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def setValue600 : Flapjack.NumSet := .bn setValue1 setValue594
def setValue601 : Flapjack.NumSet := .bs setValue597 () setValue568
def setValue602 : Flapjack.NumSet := .bs setValue601 () setValue0
def tree221 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree221_def : tree221 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal221 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live221 : Flapjack.NumSet := setValue595
def coloured221 : Flapjack.NumSet := setValue599
def result221 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue600, setValue602)
def setValue603 : Flapjack.NumSet := .bn setValue0 setValue532
def setValue604 : Flapjack.NumSet := .bn setValue603 setValue509
def setValue605 : Flapjack.NumSet := .bn setValue604 setValue590
def setValue606 : Flapjack.NumSet := .bn setValue589 setValue605
def setValue607 : Flapjack.NumSet := .bn setValue587 setValue606
def setValue608 : Flapjack.NumSet := .bn setValue607 setValue0
def setValue609 : Flapjack.NumSet := .bn setValue0 setValue608
def tree222 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [5169])).val
theorem tree222_def : tree222 = (Flapjack.RegAlloc.ClashTree.delta [2] [5169]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal222 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [5169]
def live222 : Flapjack.NumSet := setValue600
def coloured222 : Flapjack.NumSet := setValue602
def result222 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue609, setValue602)
def tree223 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree222 tree221)).val
theorem tree223_def : tree223 = (.seq tree222 tree221) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal223 : Flapjack.RegAlloc.ClashTree := .seq literal222 literal221
def live223 : Flapjack.NumSet := setValue595
def coloured223 : Flapjack.NumSet := setValue599
def result223 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue609, setValue602)
def tree224 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5169] [])).val
theorem tree224_def : tree224 = (Flapjack.RegAlloc.ClashTree.delta [5169] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal224 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5169] []
def live224 : Flapjack.NumSet := setValue609
def coloured224 : Flapjack.NumSet := setValue602
def result224 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree225 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree224 tree223)).val
theorem tree225_def : tree225 = (.seq tree224 tree223) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal225 : Flapjack.RegAlloc.ClashTree := .seq literal224 literal223
def live225 : Flapjack.NumSet := setValue595
def coloured225 : Flapjack.NumSet := setValue599
def result225 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def setValue610 : Flapjack.NumSet := .bn setValue510 setValue604
def setValue611 : Flapjack.NumSet := .bn setValue610 setValue586
def setValue612 : Flapjack.NumSet := .bn setValue611 setValue592
def setValue613 : Flapjack.NumSet := .bn setValue612 setValue0
def setValue614 : Flapjack.NumSet := .bn setValue0 setValue613
def tree226 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5165])).val
theorem tree226_def : tree226 = (Flapjack.RegAlloc.ClashTree.delta [] [5165]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal226 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5165]
def live226 : Flapjack.NumSet := setValue595
def coloured226 : Flapjack.NumSet := setValue599
def result226 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue614, setValue602)
def tree227 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree226 tree225)).val
theorem tree227_def : tree227 = (.seq tree226 tree225) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal227 : Flapjack.RegAlloc.ClashTree := .seq literal226 literal225
def live227 : Flapjack.NumSet := setValue595
def coloured227 : Flapjack.NumSet := setValue599
def result227 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue614, setValue602)
def setValue615 : Flapjack.NumSet := .bn setValue0 setValue511
def setValue616 : Flapjack.NumSet := .bn setValue615 setValue509
def setValue617 : Flapjack.NumSet := .bn setValue510 setValue616
def setValue618 : Flapjack.NumSet := .bn setValue617 setValue591
def setValue619 : Flapjack.NumSet := .bn setValue587 setValue618
def setValue620 : Flapjack.NumSet := .bn setValue619 setValue0
def setValue621 : Flapjack.NumSet := .bn setValue0 setValue620
def tree228 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5165] [5161])).val
theorem tree228_def : tree228 = (Flapjack.RegAlloc.ClashTree.delta [5165] [5161]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal228 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5165] [5161]
def live228 : Flapjack.NumSet := setValue614
def coloured228 : Flapjack.NumSet := setValue602
def result228 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue621, setValue602)
def tree229 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree228 tree227)).val
theorem tree229_def : tree229 = (.seq tree228 tree227) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal229 : Flapjack.RegAlloc.ClashTree := .seq literal228 literal227
def live229 : Flapjack.NumSet := setValue595
def coloured229 : Flapjack.NumSet := setValue599
def result229 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue621, setValue602)
def tree230 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5161] [])).val
theorem tree230_def : tree230 = (Flapjack.RegAlloc.ClashTree.delta [5161] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal230 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5161] []
def live230 : Flapjack.NumSet := setValue621
def coloured230 : Flapjack.NumSet := setValue602
def result230 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree231 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree230 tree229)).val
theorem tree231_def : tree231 = (.seq tree230 tree229) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal231 : Flapjack.RegAlloc.ClashTree := .seq literal230 literal229
def live231 : Flapjack.NumSet := setValue595
def coloured231 : Flapjack.NumSet := setValue599
def result231 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree232 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree232_def : tree232 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal232 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live232 : Flapjack.NumSet := setValue595
def coloured232 : Flapjack.NumSet := setValue599
def result232 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree233 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree232 tree231)).val
theorem tree233_def : tree233 = (.seq tree232 tree231) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal233 : Flapjack.RegAlloc.ClashTree := .seq literal232 literal231
def live233 : Flapjack.NumSet := setValue595
def coloured233 : Flapjack.NumSet := setValue599
def result233 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree234 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree234_def : tree234 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal234 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live234 : Flapjack.NumSet := setValue595
def coloured234 : Flapjack.NumSet := setValue599
def result234 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def tree235 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree233 tree234)).val
theorem tree235_def : tree235 = (.branch (none) tree233 tree234) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal235 : Flapjack.RegAlloc.ClashTree := .branch (none) literal233 literal234
def live235 : Flapjack.NumSet := setValue595
def coloured235 : Flapjack.NumSet := setValue599
def result235 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue595, setValue599)
def setValue622 : Flapjack.NumSet := .bn setValue507 setValue511
def setValue623 : Flapjack.NumSet := .bn setValue508 setValue622
def setValue624 : Flapjack.NumSet := .bn setValue623 setValue510
def setValue625 : Flapjack.NumSet := .bn setValue624 setValue586
def setValue626 : Flapjack.NumSet := .bn setValue623 setValue588
def setValue627 : Flapjack.NumSet := .bn setValue626 setValue591
def setValue628 : Flapjack.NumSet := .bn setValue625 setValue627
def setValue629 : Flapjack.NumSet := .bn setValue628 setValue0
def setValue630 : Flapjack.NumSet := .bn setValue0 setValue629
def setValue631 : Flapjack.NumSet := .bs setValue0 () setValue354
def setValue632 : Flapjack.NumSet := .bs setValue5 () setValue631
def setValue633 : Flapjack.NumSet := .bs setValue632 () setValue568
def setValue634 : Flapjack.NumSet := .bs setValue633 () setValue0
def tree236 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5145, 5149])).val
theorem tree236_def : tree236 = (Flapjack.RegAlloc.ClashTree.delta [] [5145, 5149]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal236 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5145, 5149]
def live236 : Flapjack.NumSet := setValue595
def coloured236 : Flapjack.NumSet := setValue599
def result236 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue630, setValue634)
def tree237 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree236 tree235)).val
theorem tree237_def : tree237 = (.seq tree236 tree235) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal237 : Flapjack.RegAlloc.ClashTree := .seq literal236 literal235
def live237 : Flapjack.NumSet := setValue595
def coloured237 : Flapjack.NumSet := setValue599
def result237 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue630, setValue634)
def tree238 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree237 tree220)).val
theorem tree238_def : tree238 = (.seq tree237 tree220) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal238 : Flapjack.RegAlloc.ClashTree := .seq literal237 literal220
def live238 : Flapjack.NumSet := setValue0
def coloured238 : Flapjack.NumSet := setValue0
def result238 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue630, setValue634)
def setValue635 : Flapjack.NumSet := .bn setValue587 setValue627
def setValue636 : Flapjack.NumSet := .bn setValue635 setValue0
def setValue637 : Flapjack.NumSet := .bn setValue0 setValue636
def setValue638 : Flapjack.NumSet := .bn setValue632 setValue568
def setValue639 : Flapjack.NumSet := .bs setValue638 () setValue0
def tree239 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5149] [])).val
theorem tree239_def : tree239 = (Flapjack.RegAlloc.ClashTree.delta [5149] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal239 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5149] []
def live239 : Flapjack.NumSet := setValue630
def coloured239 : Flapjack.NumSet := setValue634
def result239 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue637, setValue639)
def tree240 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree239 tree238)).val
theorem tree240_def : tree240 = (.seq tree239 tree238) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal240 : Flapjack.RegAlloc.ClashTree := .seq literal239 literal238
def live240 : Flapjack.NumSet := setValue0
def coloured240 : Flapjack.NumSet := setValue0
def result240 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue637, setValue639)
def setValue640 : Flapjack.NumSet := .bn setValue585 setValue588
def setValue641 : Flapjack.NumSet := .bn setValue584 setValue640
def setValue642 : Flapjack.NumSet := .bn setValue641 setValue592
def setValue643 : Flapjack.NumSet := .bn setValue642 setValue0
def setValue644 : Flapjack.NumSet := .bn setValue0 setValue643
def tree241 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5145] [4933])).val
theorem tree241_def : tree241 = (Flapjack.RegAlloc.ClashTree.delta [5145] [4933]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal241 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5145] [4933]
def live241 : Flapjack.NumSet := setValue637
def coloured241 : Flapjack.NumSet := setValue639
def result241 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree242 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree241 tree240)).val
theorem tree242_def : tree242 = (.seq tree241 tree240) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal242 : Flapjack.RegAlloc.ClashTree := .seq literal241 literal240
def live242 : Flapjack.NumSet := setValue0
def coloured242 : Flapjack.NumSet := setValue0
def result242 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree243 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree243_def : tree243 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal243 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live243 : Flapjack.NumSet := setValue644
def coloured243 : Flapjack.NumSet := setValue639
def result243 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree244 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree243 tree242)).val
theorem tree244_def : tree244 = (.seq tree243 tree242) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal244 : Flapjack.RegAlloc.ClashTree := .seq literal243 literal242
def live244 : Flapjack.NumSet := setValue0
def coloured244 : Flapjack.NumSet := setValue0
def result244 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree245 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree245_def : tree245 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal245 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live245 : Flapjack.NumSet := setValue644
def coloured245 : Flapjack.NumSet := setValue639
def result245 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree246 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree245 tree244)).val
theorem tree246_def : tree246 = (.seq tree245 tree244) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal246 : Flapjack.RegAlloc.ClashTree := .seq literal245 literal244
def live246 : Flapjack.NumSet := setValue0
def coloured246 : Flapjack.NumSet := setValue0
def result246 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def setValue645 : Flapjack.NumSet := .bn setValue1 setValue643
def tree247 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree247_def : tree247 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal247 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live247 : Flapjack.NumSet := setValue644
def coloured247 : Flapjack.NumSet := setValue639
def result247 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue645, setValue634)
def setValue646 : Flapjack.NumSet := .bn setValue506 setValue0
def setValue647 : Flapjack.NumSet := .bn setValue646 setValue507
def setValue648 : Flapjack.NumSet := .bn setValue647 setValue509
def setValue649 : Flapjack.NumSet := .bn setValue648 setValue510
def setValue650 : Flapjack.NumSet := .bn setValue649 setValue640
def setValue651 : Flapjack.NumSet := .bn setValue650 setValue592
def setValue652 : Flapjack.NumSet := .bn setValue651 setValue0
def setValue653 : Flapjack.NumSet := .bn setValue0 setValue652
def tree248 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [5117])).val
theorem tree248_def : tree248 = (Flapjack.RegAlloc.ClashTree.delta [2] [5117]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal248 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [5117]
def live248 : Flapjack.NumSet := setValue645
def coloured248 : Flapjack.NumSet := setValue634
def result248 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue653, setValue634)
def tree249 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree248 tree247)).val
theorem tree249_def : tree249 = (.seq tree248 tree247) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal249 : Flapjack.RegAlloc.ClashTree := .seq literal248 literal247
def live249 : Flapjack.NumSet := setValue644
def coloured249 : Flapjack.NumSet := setValue639
def result249 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue653, setValue634)
def tree250 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5117] [])).val
theorem tree250_def : tree250 = (Flapjack.RegAlloc.ClashTree.delta [5117] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal250 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5117] []
def live250 : Flapjack.NumSet := setValue653
def coloured250 : Flapjack.NumSet := setValue634
def result250 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree251 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree250 tree249)).val
theorem tree251_def : tree251 = (.seq tree250 tree249) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal251 : Flapjack.RegAlloc.ClashTree := .seq literal250 literal249
def live251 : Flapjack.NumSet := setValue644
def coloured251 : Flapjack.NumSet := setValue639
def result251 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def setValue654 : Flapjack.NumSet := .bn setValue648 setValue588
def setValue655 : Flapjack.NumSet := .bn setValue654 setValue591
def setValue656 : Flapjack.NumSet := .bn setValue641 setValue655
def setValue657 : Flapjack.NumSet := .bn setValue656 setValue0
def setValue658 : Flapjack.NumSet := .bn setValue0 setValue657
def tree252 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5113])).val
theorem tree252_def : tree252 = (Flapjack.RegAlloc.ClashTree.delta [] [5113]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal252 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5113]
def live252 : Flapjack.NumSet := setValue644
def coloured252 : Flapjack.NumSet := setValue639
def result252 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue658, setValue634)
def tree253 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree252 tree251)).val
theorem tree253_def : tree253 = (.seq tree252 tree251) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal253 : Flapjack.RegAlloc.ClashTree := .seq literal252 literal251
def live253 : Flapjack.NumSet := setValue644
def coloured253 : Flapjack.NumSet := setValue639
def result253 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue658, setValue634)
def setValue659 : Flapjack.NumSet := .bn setValue506 setValue506
def setValue660 : Flapjack.NumSet := .bn setValue659 setValue507
def setValue661 : Flapjack.NumSet := .bn setValue660 setValue0
def setValue662 : Flapjack.NumSet := .bn setValue661 setValue588
def setValue663 : Flapjack.NumSet := .bn setValue584 setValue662
def setValue664 : Flapjack.NumSet := .bn setValue663 setValue592
def setValue665 : Flapjack.NumSet := .bn setValue664 setValue0
def setValue666 : Flapjack.NumSet := .bn setValue0 setValue665
def tree254 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5113] [5109])).val
theorem tree254_def : tree254 = (Flapjack.RegAlloc.ClashTree.delta [5113] [5109]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal254 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5113] [5109]
def live254 : Flapjack.NumSet := setValue658
def coloured254 : Flapjack.NumSet := setValue634
def result254 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue666, setValue634)
def tree255 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree254 tree253)).val
theorem tree255_def : tree255 = (.seq tree254 tree253) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal255 : Flapjack.RegAlloc.ClashTree := .seq literal254 literal253
def live255 : Flapjack.NumSet := setValue644
def coloured255 : Flapjack.NumSet := setValue639
def result255 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue666, setValue634)
def tree256 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5109] [])).val
theorem tree256_def : tree256 = (Flapjack.RegAlloc.ClashTree.delta [5109] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal256 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5109] []
def live256 : Flapjack.NumSet := setValue666
def coloured256 : Flapjack.NumSet := setValue634
def result256 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree257 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree256 tree255)).val
theorem tree257_def : tree257 = (.seq tree256 tree255) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal257 : Flapjack.RegAlloc.ClashTree := .seq literal256 literal255
def live257 : Flapjack.NumSet := setValue644
def coloured257 : Flapjack.NumSet := setValue639
def result257 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree258 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree258_def : tree258 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal258 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live258 : Flapjack.NumSet := setValue644
def coloured258 : Flapjack.NumSet := setValue639
def result258 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree259 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree258 tree257)).val
theorem tree259_def : tree259 = (.seq tree258 tree257) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal259 : Flapjack.RegAlloc.ClashTree := .seq literal258 literal257
def live259 : Flapjack.NumSet := setValue644
def coloured259 : Flapjack.NumSet := setValue639
def result259 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree260 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree260_def : tree260 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal260 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live260 : Flapjack.NumSet := setValue644
def coloured260 : Flapjack.NumSet := setValue639
def result260 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def tree261 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree259 tree260)).val
theorem tree261_def : tree261 = (.branch (none) tree259 tree260) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal261 : Flapjack.RegAlloc.ClashTree := .branch (none) literal259 literal260
def live261 : Flapjack.NumSet := setValue644
def coloured261 : Flapjack.NumSet := setValue639
def result261 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue644, setValue639)
def setValue667 : Flapjack.NumSet := .bn setValue646 setValue0
def setValue668 : Flapjack.NumSet := .bn setValue667 setValue509
def setValue669 : Flapjack.NumSet := .bn setValue585 setValue668
def setValue670 : Flapjack.NumSet := .bn setValue584 setValue669
def setValue671 : Flapjack.NumSet := .bn setValue510 setValue668
def setValue672 : Flapjack.NumSet := .bn setValue671 setValue591
def setValue673 : Flapjack.NumSet := .bn setValue670 setValue672
def setValue674 : Flapjack.NumSet := .bn setValue673 setValue0
def setValue675 : Flapjack.NumSet := .bn setValue0 setValue674
def setValue676 : Flapjack.NumSet := .bs setValue384 () setValue631
def setValue677 : Flapjack.NumSet := .bn setValue676 setValue542
def setValue678 : Flapjack.NumSet := .bs setValue677 () setValue0
def tree262 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5093, 5097])).val
theorem tree262_def : tree262 = (Flapjack.RegAlloc.ClashTree.delta [] [5093, 5097]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal262 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5093, 5097]
def live262 : Flapjack.NumSet := setValue644
def coloured262 : Flapjack.NumSet := setValue639
def result262 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue675, setValue678)
def tree263 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree262 tree261)).val
theorem tree263_def : tree263 = (.seq tree262 tree261) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal263 : Flapjack.RegAlloc.ClashTree := .seq literal262 literal261
def live263 : Flapjack.NumSet := setValue644
def coloured263 : Flapjack.NumSet := setValue639
def result263 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue675, setValue678)
def tree264 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree263 tree246)).val
theorem tree264_def : tree264 = (.seq tree263 tree246) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal264 : Flapjack.RegAlloc.ClashTree := .seq literal263 literal246
def live264 : Flapjack.NumSet := setValue0
def coloured264 : Flapjack.NumSet := setValue0
def result264 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue675, setValue678)
def setValue679 : Flapjack.NumSet := .bn setValue507 setValue659
def setValue680 : Flapjack.NumSet := .bn setValue679 setValue0
def setValue681 : Flapjack.NumSet := .bn setValue680 setValue588
def setValue682 : Flapjack.NumSet := .bn setValue584 setValue681
def setValue683 : Flapjack.NumSet := .bn setValue0 setValue659
def setValue684 : Flapjack.NumSet := .bn setValue683 setValue509
def setValue685 : Flapjack.NumSet := .bn setValue684 setValue590
def setValue686 : Flapjack.NumSet := .bn setValue589 setValue685
def setValue687 : Flapjack.NumSet := .bn setValue682 setValue686
def setValue688 : Flapjack.NumSet := .bn setValue687 setValue0
def setValue689 : Flapjack.NumSet := .bn setValue0 setValue688
def tree265 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5097, 5093] [5041, 5045])).val
theorem tree265_def : tree265 = (Flapjack.RegAlloc.ClashTree.delta [5097, 5093] [5041, 5045]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal265 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5097, 5093] [5041, 5045]
def live265 : Flapjack.NumSet := setValue675
def coloured265 : Flapjack.NumSet := setValue678
def result265 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree266 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree265 tree264)).val
theorem tree266_def : tree266 = (.seq tree265 tree264) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal266 : Flapjack.RegAlloc.ClashTree := .seq literal265 literal264
def live266 : Flapjack.NumSet := setValue0
def coloured266 : Flapjack.NumSet := setValue0
def result266 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree267 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree267_def : tree267 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal267 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live267 : Flapjack.NumSet := setValue689
def coloured267 : Flapjack.NumSet := setValue678
def result267 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree268 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree267 tree266)).val
theorem tree268_def : tree268 = (.seq tree267 tree266) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal268 : Flapjack.RegAlloc.ClashTree := .seq literal267 literal266
def live268 : Flapjack.NumSet := setValue0
def coloured268 : Flapjack.NumSet := setValue0
def result268 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree269 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree269_def : tree269 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal269 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live269 : Flapjack.NumSet := setValue689
def coloured269 : Flapjack.NumSet := setValue678
def result269 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree270 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree269 tree268)).val
theorem tree270_def : tree270 = (.seq tree269 tree268) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal270 : Flapjack.RegAlloc.ClashTree := .seq literal269 literal268
def live270 : Flapjack.NumSet := setValue0
def coloured270 : Flapjack.NumSet := setValue0
def result270 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def setValue690 : Flapjack.NumSet := .bn setValue1 setValue688
def setValue691 : Flapjack.NumSet := .bs setValue676 () setValue542
def setValue692 : Flapjack.NumSet := .bs setValue691 () setValue0
def tree271 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree271_def : tree271 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal271 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live271 : Flapjack.NumSet := setValue689
def coloured271 : Flapjack.NumSet := setValue678
def result271 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue690, setValue692)
def setValue693 : Flapjack.NumSet := .bn setValue659 setValue0
def setValue694 : Flapjack.NumSet := .bn setValue0 setValue693
def setValue695 : Flapjack.NumSet := .bn setValue510 setValue694
def setValue696 : Flapjack.NumSet := .bn setValue695 setValue685
def setValue697 : Flapjack.NumSet := .bn setValue682 setValue696
def setValue698 : Flapjack.NumSet := .bn setValue697 setValue0
def setValue699 : Flapjack.NumSet := .bn setValue0 setValue698
def tree272 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [5065])).val
theorem tree272_def : tree272 = (Flapjack.RegAlloc.ClashTree.delta [2] [5065]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal272 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [5065]
def live272 : Flapjack.NumSet := setValue690
def coloured272 : Flapjack.NumSet := setValue692
def result272 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue699, setValue692)
def tree273 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree272 tree271)).val
theorem tree273_def : tree273 = (.seq tree272 tree271) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal273 : Flapjack.RegAlloc.ClashTree := .seq literal272 literal271
def live273 : Flapjack.NumSet := setValue689
def coloured273 : Flapjack.NumSet := setValue678
def result273 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue699, setValue692)
def tree274 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5065] [])).val
theorem tree274_def : tree274 = (Flapjack.RegAlloc.ClashTree.delta [5065] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal274 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5065] []
def live274 : Flapjack.NumSet := setValue699
def coloured274 : Flapjack.NumSet := setValue692
def result274 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree275 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree274 tree273)).val
theorem tree275_def : tree275 = (.seq tree274 tree273) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal275 : Flapjack.RegAlloc.ClashTree := .seq literal274 literal273
def live275 : Flapjack.NumSet := setValue689
def coloured275 : Flapjack.NumSet := setValue678
def result275 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def setValue700 : Flapjack.NumSet := .bn setValue680 setValue694
def setValue701 : Flapjack.NumSet := .bn setValue584 setValue700
def setValue702 : Flapjack.NumSet := .bn setValue701 setValue686
def setValue703 : Flapjack.NumSet := .bn setValue702 setValue0
def setValue704 : Flapjack.NumSet := .bn setValue0 setValue703
def tree276 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5061])).val
theorem tree276_def : tree276 = (Flapjack.RegAlloc.ClashTree.delta [] [5061]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal276 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5061]
def live276 : Flapjack.NumSet := setValue689
def coloured276 : Flapjack.NumSet := setValue678
def result276 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue704, setValue692)
def tree277 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree276 tree275)).val
theorem tree277_def : tree277 = (.seq tree276 tree275) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal277 : Flapjack.RegAlloc.ClashTree := .seq literal276 literal275
def live277 : Flapjack.NumSet := setValue689
def coloured277 : Flapjack.NumSet := setValue678
def result277 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue704, setValue692)
def setValue705 : Flapjack.NumSet := .bn setValue509 setValue667
def setValue706 : Flapjack.NumSet := .bn setValue684 setValue705
def setValue707 : Flapjack.NumSet := .bn setValue589 setValue706
def setValue708 : Flapjack.NumSet := .bn setValue682 setValue707
def setValue709 : Flapjack.NumSet := .bn setValue708 setValue0
def setValue710 : Flapjack.NumSet := .bn setValue0 setValue709
def tree278 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5061] [5057])).val
theorem tree278_def : tree278 = (Flapjack.RegAlloc.ClashTree.delta [5061] [5057]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal278 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5061] [5057]
def live278 : Flapjack.NumSet := setValue704
def coloured278 : Flapjack.NumSet := setValue692
def result278 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue710, setValue692)
def tree279 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree278 tree277)).val
theorem tree279_def : tree279 = (.seq tree278 tree277) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal279 : Flapjack.RegAlloc.ClashTree := .seq literal278 literal277
def live279 : Flapjack.NumSet := setValue689
def coloured279 : Flapjack.NumSet := setValue678
def result279 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue710, setValue692)
def tree280 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5057] [])).val
theorem tree280_def : tree280 = (Flapjack.RegAlloc.ClashTree.delta [5057] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal280 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5057] []
def live280 : Flapjack.NumSet := setValue710
def coloured280 : Flapjack.NumSet := setValue692
def result280 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree281 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree280 tree279)).val
theorem tree281_def : tree281 = (.seq tree280 tree279) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal281 : Flapjack.RegAlloc.ClashTree := .seq literal280 literal279
def live281 : Flapjack.NumSet := setValue689
def coloured281 : Flapjack.NumSet := setValue678
def result281 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree282 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree282_def : tree282 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal282 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live282 : Flapjack.NumSet := setValue689
def coloured282 : Flapjack.NumSet := setValue678
def result282 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree283 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree282 tree281)).val
theorem tree283_def : tree283 = (.seq tree282 tree281) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal283 : Flapjack.RegAlloc.ClashTree := .seq literal282 literal281
def live283 : Flapjack.NumSet := setValue689
def coloured283 : Flapjack.NumSet := setValue678
def result283 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree284 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree284_def : tree284 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal284 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live284 : Flapjack.NumSet := setValue689
def coloured284 : Flapjack.NumSet := setValue678
def result284 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree285 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree283 tree284)).val
theorem tree285_def : tree285 = (.branch (none) tree283 tree284) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal285 : Flapjack.RegAlloc.ClashTree := .branch (none) literal283 literal284
def live285 : Flapjack.NumSet := setValue689
def coloured285 : Flapjack.NumSet := setValue678
def result285 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree286 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5041, 5045])).val
theorem tree286_def : tree286 = (Flapjack.RegAlloc.ClashTree.delta [] [5041, 5045]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal286 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5041, 5045]
def live286 : Flapjack.NumSet := setValue689
def coloured286 : Flapjack.NumSet := setValue678
def result286 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree287 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree286 tree285)).val
theorem tree287_def : tree287 = (.seq tree286 tree285) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal287 : Flapjack.RegAlloc.ClashTree := .seq literal286 literal285
def live287 : Flapjack.NumSet := setValue689
def coloured287 : Flapjack.NumSet := setValue678
def result287 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def tree288 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree287 tree270)).val
theorem tree288_def : tree288 = (.seq tree287 tree270) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal288 : Flapjack.RegAlloc.ClashTree := .seq literal287 literal270
def live288 : Flapjack.NumSet := setValue0
def coloured288 : Flapjack.NumSet := setValue0
def result288 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue689, setValue678)
def setValue711 : Flapjack.NumSet := .bn setValue515 setValue509
def setValue712 : Flapjack.NumSet := .bn setValue711 setValue588
def setValue713 : Flapjack.NumSet := .bn setValue509 setValue509
def setValue714 : Flapjack.NumSet := .bn setValue510 setValue713
def setValue715 : Flapjack.NumSet := .bn setValue712 setValue714
def setValue716 : Flapjack.NumSet := .bn setValue641 setValue715
def setValue717 : Flapjack.NumSet := .bn setValue716 setValue0
def setValue718 : Flapjack.NumSet := .bn setValue0 setValue717
def tree289 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5045, 5041] [4985, 4929])).val
theorem tree289_def : tree289 = (Flapjack.RegAlloc.ClashTree.delta [5045, 5041] [4985, 4929]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal289 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5045, 5041] [4985, 4929]
def live289 : Flapjack.NumSet := setValue689
def coloured289 : Flapjack.NumSet := setValue678
def result289 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree290 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree289 tree288)).val
theorem tree290_def : tree290 = (.seq tree289 tree288) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal290 : Flapjack.RegAlloc.ClashTree := .seq literal289 literal288
def live290 : Flapjack.NumSet := setValue0
def coloured290 : Flapjack.NumSet := setValue0
def result290 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree291 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree291_def : tree291 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal291 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live291 : Flapjack.NumSet := setValue718
def coloured291 : Flapjack.NumSet := setValue678
def result291 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree292 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree291 tree290)).val
theorem tree292_def : tree292 = (.seq tree291 tree290) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal292 : Flapjack.RegAlloc.ClashTree := .seq literal291 literal290
def live292 : Flapjack.NumSet := setValue0
def coloured292 : Flapjack.NumSet := setValue0
def result292 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree293 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree293_def : tree293 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal293 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live293 : Flapjack.NumSet := setValue718
def coloured293 : Flapjack.NumSet := setValue678
def result293 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree294 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree293 tree292)).val
theorem tree294_def : tree294 = (.seq tree293 tree292) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal294 : Flapjack.RegAlloc.ClashTree := .seq literal293 literal292
def live294 : Flapjack.NumSet := setValue0
def coloured294 : Flapjack.NumSet := setValue0
def result294 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def setValue719 : Flapjack.NumSet := .bn setValue1 setValue717
def tree295 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree295_def : tree295 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal295 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live295 : Flapjack.NumSet := setValue718
def coloured295 : Flapjack.NumSet := setValue678
def result295 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue719, setValue692)
def setValue720 : Flapjack.NumSet := .bn setValue0 setValue646
def setValue721 : Flapjack.NumSet := .bn setValue515 setValue720
def setValue722 : Flapjack.NumSet := .bn setValue721 setValue588
def setValue723 : Flapjack.NumSet := .bn setValue584 setValue722
def setValue724 : Flapjack.NumSet := .bn setValue723 setValue715
def setValue725 : Flapjack.NumSet := .bn setValue724 setValue0
def setValue726 : Flapjack.NumSet := .bn setValue0 setValue725
def tree296 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [5013])).val
theorem tree296_def : tree296 = (Flapjack.RegAlloc.ClashTree.delta [2] [5013]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal296 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [5013]
def live296 : Flapjack.NumSet := setValue719
def coloured296 : Flapjack.NumSet := setValue692
def result296 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue726, setValue692)
def tree297 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree296 tree295)).val
theorem tree297_def : tree297 = (.seq tree296 tree295) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal297 : Flapjack.RegAlloc.ClashTree := .seq literal296 literal295
def live297 : Flapjack.NumSet := setValue718
def coloured297 : Flapjack.NumSet := setValue678
def result297 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue726, setValue692)
def tree298 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5013] [])).val
theorem tree298_def : tree298 = (Flapjack.RegAlloc.ClashTree.delta [5013] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal298 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5013] []
def live298 : Flapjack.NumSet := setValue726
def coloured298 : Flapjack.NumSet := setValue692
def result298 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree299 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree298 tree297)).val
theorem tree299_def : tree299 = (.seq tree298 tree297) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal299 : Flapjack.RegAlloc.ClashTree := .seq literal298 literal297
def live299 : Flapjack.NumSet := setValue718
def coloured299 : Flapjack.NumSet := setValue678
def result299 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def setValue727 : Flapjack.NumSet := .bn setValue507 setValue646
def setValue728 : Flapjack.NumSet := .bn setValue508 setValue727
def setValue729 : Flapjack.NumSet := .bn setValue728 setValue713
def setValue730 : Flapjack.NumSet := .bn setValue712 setValue729
def setValue731 : Flapjack.NumSet := .bn setValue641 setValue730
def setValue732 : Flapjack.NumSet := .bn setValue731 setValue0
def setValue733 : Flapjack.NumSet := .bn setValue0 setValue732
def tree300 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [5009])).val
theorem tree300_def : tree300 = (Flapjack.RegAlloc.ClashTree.delta [] [5009]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal300 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [5009]
def live300 : Flapjack.NumSet := setValue718
def coloured300 : Flapjack.NumSet := setValue678
def result300 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue733, setValue692)
def tree301 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree300 tree299)).val
theorem tree301_def : tree301 = (.seq tree300 tree299) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal301 : Flapjack.RegAlloc.ClashTree := .seq literal300 literal299
def live301 : Flapjack.NumSet := setValue718
def coloured301 : Flapjack.NumSet := setValue678
def result301 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue733, setValue692)
def setValue734 : Flapjack.NumSet := .bn setValue510 setValue728
def setValue735 : Flapjack.NumSet := .bn setValue734 setValue640
def setValue736 : Flapjack.NumSet := .bn setValue735 setValue715
def setValue737 : Flapjack.NumSet := .bn setValue736 setValue0
def setValue738 : Flapjack.NumSet := .bn setValue0 setValue737
def tree302 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5009] [5005])).val
theorem tree302_def : tree302 = (Flapjack.RegAlloc.ClashTree.delta [5009] [5005]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal302 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5009] [5005]
def live302 : Flapjack.NumSet := setValue733
def coloured302 : Flapjack.NumSet := setValue692
def result302 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue738, setValue692)
def tree303 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree302 tree301)).val
theorem tree303_def : tree303 = (.seq tree302 tree301) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal303 : Flapjack.RegAlloc.ClashTree := .seq literal302 literal301
def live303 : Flapjack.NumSet := setValue718
def coloured303 : Flapjack.NumSet := setValue678
def result303 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue738, setValue692)
def tree304 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [5005] [])).val
theorem tree304_def : tree304 = (Flapjack.RegAlloc.ClashTree.delta [5005] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal304 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [5005] []
def live304 : Flapjack.NumSet := setValue738
def coloured304 : Flapjack.NumSet := setValue692
def result304 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree305 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree304 tree303)).val
theorem tree305_def : tree305 = (.seq tree304 tree303) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal305 : Flapjack.RegAlloc.ClashTree := .seq literal304 literal303
def live305 : Flapjack.NumSet := setValue718
def coloured305 : Flapjack.NumSet := setValue678
def result305 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree306 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree306_def : tree306 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal306 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live306 : Flapjack.NumSet := setValue718
def coloured306 : Flapjack.NumSet := setValue678
def result306 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree307 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree306 tree305)).val
theorem tree307_def : tree307 = (.seq tree306 tree305) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal307 : Flapjack.RegAlloc.ClashTree := .seq literal306 literal305
def live307 : Flapjack.NumSet := setValue718
def coloured307 : Flapjack.NumSet := setValue678
def result307 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree308 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree308_def : tree308 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal308 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live308 : Flapjack.NumSet := setValue718
def coloured308 : Flapjack.NumSet := setValue678
def result308 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def tree309 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree307 tree308)).val
theorem tree309_def : tree309 = (.branch (none) tree307 tree308) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal309 : Flapjack.RegAlloc.ClashTree := .branch (none) literal307 literal308
def live309 : Flapjack.NumSet := setValue718
def coloured309 : Flapjack.NumSet := setValue678
def result309 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue718, setValue678)
def setValue739 : Flapjack.NumSet := .bn setValue711 setValue510
def setValue740 : Flapjack.NumSet := .bn setValue739 setValue640
def setValue741 : Flapjack.NumSet := .bn setValue509 setValue727
def setValue742 : Flapjack.NumSet := .bn setValue510 setValue741
def setValue743 : Flapjack.NumSet := .bn setValue712 setValue742
def setValue744 : Flapjack.NumSet := .bn setValue740 setValue743
def setValue745 : Flapjack.NumSet := .bn setValue744 setValue0
def setValue746 : Flapjack.NumSet := .bn setValue0 setValue745
def setValue747 : Flapjack.NumSet := .bs setValue676 () setValue528
def setValue748 : Flapjack.NumSet := .bs setValue747 () setValue0
def tree310 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4989, 4993])).val
theorem tree310_def : tree310 = (Flapjack.RegAlloc.ClashTree.delta [] [4989, 4993]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal310 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4989, 4993]
def live310 : Flapjack.NumSet := setValue718
def coloured310 : Flapjack.NumSet := setValue678
def result310 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue746, setValue748)
def tree311 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree310 tree309)).val
theorem tree311_def : tree311 = (.seq tree310 tree309) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal311 : Flapjack.RegAlloc.ClashTree := .seq literal310 literal309
def live311 : Flapjack.NumSet := setValue718
def coloured311 : Flapjack.NumSet := setValue678
def result311 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue746, setValue748)
def tree312 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree311 tree294)).val
theorem tree312_def : tree312 = (.seq tree311 tree294) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal312 : Flapjack.RegAlloc.ClashTree := .seq literal311 literal294
def live312 : Flapjack.NumSet := setValue0
def coloured312 : Flapjack.NumSet := setValue0
def result312 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue746, setValue748)
def setValue749 : Flapjack.NumSet := .bn setValue740 setValue715
def setValue750 : Flapjack.NumSet := .bn setValue749 setValue0
def setValue751 : Flapjack.NumSet := .bn setValue0 setValue750
def setValue752 : Flapjack.NumSet := .bn setValue676 setValue528
def setValue753 : Flapjack.NumSet := .bs setValue752 () setValue0
def tree313 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4993] [])).val
theorem tree313_def : tree313 = (Flapjack.RegAlloc.ClashTree.delta [4993] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal313 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4993] []
def live313 : Flapjack.NumSet := setValue746
def coloured313 : Flapjack.NumSet := setValue748
def result313 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue751, setValue753)
def tree314 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree313 tree312)).val
theorem tree314_def : tree314 = (.seq tree313 tree312) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal314 : Flapjack.RegAlloc.ClashTree := .seq literal313 literal312
def live314 : Flapjack.NumSet := setValue0
def coloured314 : Flapjack.NumSet := setValue0
def result314 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue751, setValue753)
def setValue754 : Flapjack.NumSet := .bn setValue711 setValue713
def setValue755 : Flapjack.NumSet := .bn setValue712 setValue754
def setValue756 : Flapjack.NumSet := .bn setValue641 setValue755
def setValue757 : Flapjack.NumSet := .bn setValue756 setValue0
def setValue758 : Flapjack.NumSet := .bn setValue0 setValue757
def tree315 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4989] [4977])).val
theorem tree315_def : tree315 = (Flapjack.RegAlloc.ClashTree.delta [4989] [4977]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal315 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4989] [4977]
def live315 : Flapjack.NumSet := setValue751
def coloured315 : Flapjack.NumSet := setValue753
def result315 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue758, setValue753)
def tree316 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree315 tree314)).val
theorem tree316_def : tree316 = (.seq tree315 tree314) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal316 : Flapjack.RegAlloc.ClashTree := .seq literal315 literal314
def live316 : Flapjack.NumSet := setValue0
def coloured316 : Flapjack.NumSet := setValue0
def result316 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue758, setValue753)
def setValue759 : Flapjack.NumSet := .bn setValue589 setValue754
def setValue760 : Flapjack.NumSet := .bn setValue641 setValue759
def setValue761 : Flapjack.NumSet := .bn setValue760 setValue0
def setValue762 : Flapjack.NumSet := .bn setValue0 setValue761
def setValue763 : Flapjack.NumSet := .bs setValue567 () setValue355
def setValue764 : Flapjack.NumSet := .bn setValue676 setValue763
def setValue765 : Flapjack.NumSet := .bs setValue764 () setValue0
def tree317 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4985] [4981])).val
theorem tree317_def : tree317 = (Flapjack.RegAlloc.ClashTree.delta [4985] [4981]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal317 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4985] [4981]
def live317 : Flapjack.NumSet := setValue758
def coloured317 : Flapjack.NumSet := setValue753
def result317 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue762, setValue765)
def tree318 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree317 tree316)).val
theorem tree318_def : tree318 = (.seq tree317 tree316) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal318 : Flapjack.RegAlloc.ClashTree := .seq literal317 literal316
def live318 : Flapjack.NumSet := setValue0
def coloured318 : Flapjack.NumSet := setValue0
def result318 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue762, setValue765)
def setValue766 : Flapjack.NumSet := .bn setValue584 setValue589
def setValue767 : Flapjack.NumSet := .bn setValue766 setValue759
def setValue768 : Flapjack.NumSet := .bn setValue767 setValue0
def setValue769 : Flapjack.NumSet := .bn setValue0 setValue768
def tree319 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4981] [4949])).val
theorem tree319_def : tree319 = (Flapjack.RegAlloc.ClashTree.delta [4981] [4949]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal319 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4981] [4949]
def live319 : Flapjack.NumSet := setValue762
def coloured319 : Flapjack.NumSet := setValue765
def result319 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue769, setValue765)
def tree320 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree319 tree318)).val
theorem tree320_def : tree320 = (.seq tree319 tree318) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal320 : Flapjack.RegAlloc.ClashTree := .seq literal319 literal318
def live320 : Flapjack.NumSet := setValue0
def coloured320 : Flapjack.NumSet := setValue0
def result320 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue769, setValue765)
def tree321 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree321_def : tree321 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal321 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live321 : Flapjack.NumSet := setValue769
def coloured321 : Flapjack.NumSet := setValue765
def result321 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue769, setValue765)
def tree322 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree321 tree320)).val
theorem tree322_def : tree322 = (.seq tree321 tree320) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal322 : Flapjack.RegAlloc.ClashTree := .seq literal321 literal320
def live322 : Flapjack.NumSet := setValue0
def coloured322 : Flapjack.NumSet := setValue0
def result322 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue769, setValue765)
def setValue770 : Flapjack.NumSet := .bn setValue0 setValue505
def setValue771 : Flapjack.NumSet := .bn setValue770 setValue0
def setValue772 : Flapjack.NumSet := .bn setValue771 setValue0
def setValue773 : Flapjack.NumSet := .bn setValue772 setValue508
def setValue774 : Flapjack.NumSet := .bn setValue0 setValue508
def setValue775 : Flapjack.NumSet := .bn setValue773 setValue774
def setValue776 : Flapjack.NumSet := .bn setValue508 setValue508
def setValue777 : Flapjack.NumSet := .bn setValue773 setValue776
def setValue778 : Flapjack.NumSet := .bn setValue775 setValue777
def setValue779 : Flapjack.NumSet := .bn setValue774 setValue776
def setValue780 : Flapjack.NumSet := .bn setValue777 setValue779
def setValue781 : Flapjack.NumSet := .bn setValue778 setValue780
def setValue782 : Flapjack.NumSet := .bn setValue0 setValue781
def setValue783 : Flapjack.NumSet := .bn setValue1 setValue782
def setValue784 : Flapjack.NumSet := .bn setValue1 setValue1
def setValue785 : Flapjack.NumSet := .bn setValue1 setValue4
def setValue786 : Flapjack.NumSet := .bn setValue784 setValue785
def setValue787 : Flapjack.NumSet := .bn setValue85 setValue785
def setValue788 : Flapjack.NumSet := .bn setValue786 setValue787
def setValue789 : Flapjack.NumSet := .bs setValue788 () setValue788
def setValue790 : Flapjack.NumSet := .bn setValue789 setValue0
def tree323 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [4977, 4909, 4913, 4917, 4921, 4925, 4929, 4933, 4937, 4941, 4945, 4949, 4953, 4957, 4961]
  [2, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903])).val
theorem tree323_def : tree323 = (Flapjack.RegAlloc.ClashTree.delta
  [4977, 4909, 4913, 4917, 4921, 4925, 4929, 4933, 4937, 4941, 4945, 4949, 4953, 4957, 4961]
  [2, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal323 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [4977, 4909, 4913, 4917, 4921, 4925, 4929, 4933, 4937, 4941, 4945, 4949, 4953, 4957, 4961]
  [2, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903]
def live323 : Flapjack.NumSet := setValue769
def coloured323 : Flapjack.NumSet := setValue765
def result323 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue783, setValue790)
def tree324 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue783)).val
theorem tree324_def : tree324 = (.set setValue783) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal324 : Flapjack.RegAlloc.ClashTree := .set setValue783
def live324 : Flapjack.NumSet := setValue783
def coloured324 : Flapjack.NumSet := setValue790
def result324 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue783, setValue790)
def tree325 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree324 tree323)).val
theorem tree325_def : tree325 = (.seq tree324 tree323) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal325 : Flapjack.RegAlloc.ClashTree := .seq literal324 literal323
def live325 : Flapjack.NumSet := setValue769
def coloured325 : Flapjack.NumSet := setValue765
def result325 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue783, setValue790)
def setValue791 : Flapjack.NumSet := .bn setValue1 setValue768
def setValue792 : Flapjack.NumSet := .bs setValue676 () setValue763
def setValue793 : Flapjack.NumSet := .bs setValue792 () setValue0
def tree326 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree326_def : tree326 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal326 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live326 : Flapjack.NumSet := setValue769
def coloured326 : Flapjack.NumSet := setValue765
def result326 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue791, setValue793)
def setValue794 : Flapjack.NumSet := .bn setValue590 setValue0
def setValue795 : Flapjack.NumSet := .bn setValue0 setValue794
def setValue796 : Flapjack.NumSet := .bn setValue0 setValue795
def setValue797 : Flapjack.NumSet := .bn setValue796 setValue781
def setValue798 : Flapjack.NumSet := .bn setValue1 setValue797
def setValue799 : Flapjack.NumSet := .bs setValue1 () setValue4
def setValue800 : Flapjack.NumSet := .bn setValue85 setValue799
def setValue801 : Flapjack.NumSet := .bn setValue786 setValue800
def setValue802 : Flapjack.NumSet := .bs setValue788 () setValue801
def setValue803 : Flapjack.NumSet := .bn setValue802 setValue0
def tree327 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4909, 4913, 4917, 4921, 4925, 4929, 4933, 4937, 4941, 4945, 4949, 4953, 4957, 4961]
  [2, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903])).val
theorem tree327_def : tree327 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4909, 4913, 4917, 4921, 4925, 4929, 4933, 4937, 4941, 4945, 4949, 4953, 4957, 4961]
  [2, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal327 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4909, 4913, 4917, 4921, 4925, 4929, 4933, 4937, 4941, 4945, 4949, 4953, 4957, 4961]
  [2, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903]
def live327 : Flapjack.NumSet := setValue791
def coloured327 : Flapjack.NumSet := setValue793
def result327 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue798, setValue803)
def tree328 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree327 tree326)).val
theorem tree328_def : tree328 = (.seq tree327 tree326) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal328 : Flapjack.RegAlloc.ClashTree := .seq literal327 literal326
def live328 : Flapjack.NumSet := setValue769
def coloured328 : Flapjack.NumSet := setValue765
def result328 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue798, setValue803)
def tree329 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue783)).val
theorem tree329_def : tree329 = (.set setValue783) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal329 : Flapjack.RegAlloc.ClashTree := .set setValue783
def live329 : Flapjack.NumSet := setValue798
def coloured329 : Flapjack.NumSet := setValue803
def result329 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue783, setValue790)
def tree330 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree329 tree328)).val
theorem tree330_def : tree330 = (.seq tree329 tree328) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal330 : Flapjack.RegAlloc.ClashTree := .seq literal329 literal328
def live330 : Flapjack.NumSet := setValue769
def coloured330 : Flapjack.NumSet := setValue765
def result330 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue783, setValue790)
def setValue804 : Flapjack.NumSet := .bn setValue3 setValue782
def setValue805 : Flapjack.NumSet := .bs setValue786 () setValue787
def setValue806 : Flapjack.NumSet := .bs setValue85 () setValue785
def setValue807 : Flapjack.NumSet := .bs setValue786 () setValue806
def setValue808 : Flapjack.NumSet := .bs setValue805 () setValue807
def setValue809 : Flapjack.NumSet := .bn setValue808 setValue0
def tree331 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue804) tree325 tree330)).val
theorem tree331_def : tree331 = (.branch (some setValue804) tree325 tree330) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal331 : Flapjack.RegAlloc.ClashTree := .branch (some setValue804) literal325 literal330
def live331 : Flapjack.NumSet := setValue769
def coloured331 : Flapjack.NumSet := setValue765
def result331 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue804, setValue809)
def tree332 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree331 tree322)).val
theorem tree332_def : tree332 = (.seq tree331 tree322) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal332 : Flapjack.RegAlloc.ClashTree := .seq literal331 literal322
def live332 : Flapjack.NumSet := setValue0
def coloured332 : Flapjack.NumSet := setValue0
def result332 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue804, setValue809)
def setValue810 : Flapjack.NumSet := .bn setValue0 setValue504
def setValue811 : Flapjack.NumSet := .bn setValue810 setValue0
def setValue812 : Flapjack.NumSet := .bn setValue811 setValue0
def setValue813 : Flapjack.NumSet := .bn setValue0 setValue812
def setValue814 : Flapjack.NumSet := .bn setValue813 setValue772
def setValue815 : Flapjack.NumSet := .bn setValue810 setValue505
def setValue816 : Flapjack.NumSet := .bn setValue815 setValue0
def setValue817 : Flapjack.NumSet := .bn setValue816 setValue0
def setValue818 : Flapjack.NumSet := .bn setValue813 setValue817
def setValue819 : Flapjack.NumSet := .bn setValue814 setValue818
def setValue820 : Flapjack.NumSet := .bn setValue0 setValue817
def setValue821 : Flapjack.NumSet := .bn setValue820 setValue818
def setValue822 : Flapjack.NumSet := .bn setValue819 setValue821
def setValue823 : Flapjack.NumSet := .bn setValue812 setValue0
def setValue824 : Flapjack.NumSet := .bn setValue813 setValue823
def setValue825 : Flapjack.NumSet := .bn setValue814 setValue824
def setValue826 : Flapjack.NumSet := .bn setValue813 setValue0
def setValue827 : Flapjack.NumSet := .bn setValue824 setValue826
def setValue828 : Flapjack.NumSet := .bn setValue825 setValue827
def setValue829 : Flapjack.NumSet := .bn setValue822 setValue828
def setValue830 : Flapjack.NumSet := .bn setValue829 setValue0
def setValue831 : Flapjack.NumSet := .bn setValue0 setValue830
def setValue832 : Flapjack.NumSet := .bn setValue784 setValue504
def setValue833 : Flapjack.NumSet := .bs setValue832 () setValue787
def setValue834 : Flapjack.NumSet := .bn setValue4 setValue785
def setValue835 : Flapjack.NumSet := .bs setValue834 () setValue806
def setValue836 : Flapjack.NumSet := .bs setValue833 () setValue835
def setValue837 : Flapjack.NumSet := .bs setValue836 () setValue0
def tree333 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903]
  [4805, 4813, 4821, 4829, 4565, 4561, 4557, 4553, 4549, 4805, 4541, 4537, 4825, 4529, 4525, 4521, 4517, 4513])).val
theorem tree333_def : tree333 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903]
  [4805, 4813, 4821, 4829, 4565, 4561, 4557, 4553, 4549, 4805, 4541, 4537, 4825, 4529, 4525, 4521, 4517, 4513]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal333 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 4851, 4855, 4859, 4863, 4867, 4871, 4875, 4879, 4883, 4887, 4891, 4895, 4899, 4903]
  [4805, 4813, 4821, 4829, 4565, 4561, 4557, 4553, 4549, 4805, 4541, 4537, 4825, 4529, 4525, 4521, 4517, 4513]
def live333 : Flapjack.NumSet := setValue804
def coloured333 : Flapjack.NumSet := setValue809
def result333 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue831, setValue837)
def tree334 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree333 tree332)).val
theorem tree334_def : tree334 = (.seq tree333 tree332) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal334 : Flapjack.RegAlloc.ClashTree := .seq literal333 literal332
def live334 : Flapjack.NumSet := setValue0
def coloured334 : Flapjack.NumSet := setValue0
def result334 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue831, setValue837)
def setValue838 : Flapjack.NumSet := .bn setValue826 setValue818
def setValue839 : Flapjack.NumSet := .bn setValue838 setValue821
def setValue840 : Flapjack.NumSet := .bn setValue839 setValue828
def setValue841 : Flapjack.NumSet := .bn setValue840 setValue0
def setValue842 : Flapjack.NumSet := .bn setValue0 setValue841
def setValue843 : Flapjack.NumSet := .bs setValue834 () setValue787
def setValue844 : Flapjack.NumSet := .bs setValue833 () setValue843
def setValue845 : Flapjack.NumSet := .bs setValue844 () setValue0
def tree335 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4829] [4825])).val
theorem tree335_def : tree335 = (Flapjack.RegAlloc.ClashTree.delta [4829] [4825]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal335 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4829] [4825]
def live335 : Flapjack.NumSet := setValue831
def coloured335 : Flapjack.NumSet := setValue837
def result335 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue842, setValue845)
def tree336 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree335 tree334)).val
theorem tree336_def : tree336 = (.seq tree335 tree334) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal336 : Flapjack.RegAlloc.ClashTree := .seq literal335 literal334
def live336 : Flapjack.NumSet := setValue0
def coloured336 : Flapjack.NumSet := setValue0
def result336 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue842, setValue845)
def setValue846 : Flapjack.NumSet := .bn setValue826 setValue824
def setValue847 : Flapjack.NumSet := .bn setValue818 setValue826
def setValue848 : Flapjack.NumSet := .bn setValue846 setValue847
def setValue849 : Flapjack.NumSet := .bn setValue839 setValue848
def setValue850 : Flapjack.NumSet := .bn setValue849 setValue0
def setValue851 : Flapjack.NumSet := .bn setValue0 setValue850
def tree337 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4825] [4817])).val
theorem tree337_def : tree337 = (Flapjack.RegAlloc.ClashTree.delta [4825] [4817]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal337 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4825] [4817]
def live337 : Flapjack.NumSet := setValue842
def coloured337 : Flapjack.NumSet := setValue845
def result337 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue851, setValue845)
def tree338 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree337 tree336)).val
theorem tree338_def : tree338 = (.seq tree337 tree336) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal338 : Flapjack.RegAlloc.ClashTree := .seq literal337 literal336
def live338 : Flapjack.NumSet := setValue0
def coloured338 : Flapjack.NumSet := setValue0
def result338 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue851, setValue845)
def setValue852 : Flapjack.NumSet := .bn setValue0 setValue823
def setValue853 : Flapjack.NumSet := .bn setValue852 setValue818
def setValue854 : Flapjack.NumSet := .bn setValue838 setValue853
def setValue855 : Flapjack.NumSet := .bn setValue854 setValue848
def setValue856 : Flapjack.NumSet := .bn setValue855 setValue0
def setValue857 : Flapjack.NumSet := .bn setValue0 setValue856
def setValue858 : Flapjack.NumSet := .bn setValue832 setValue787
def setValue859 : Flapjack.NumSet := .bs setValue858 () setValue843
def setValue860 : Flapjack.NumSet := .bs setValue859 () setValue0
def tree339 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4821] [4817])).val
theorem tree339_def : tree339 = (Flapjack.RegAlloc.ClashTree.delta [4821] [4817]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal339 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4821] [4817]
def live339 : Flapjack.NumSet := setValue851
def coloured339 : Flapjack.NumSet := setValue845
def result339 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue857, setValue860)
def tree340 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree339 tree338)).val
theorem tree340_def : tree340 = (.seq tree339 tree338) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal340 : Flapjack.RegAlloc.ClashTree := .seq literal339 literal338
def live340 : Flapjack.NumSet := setValue0
def coloured340 : Flapjack.NumSet := setValue0
def result340 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue857, setValue860)
def setValue861 : Flapjack.NumSet := .bn setValue838 setValue827
def setValue862 : Flapjack.NumSet := .bn setValue854 setValue861
def setValue863 : Flapjack.NumSet := .bn setValue862 setValue0
def setValue864 : Flapjack.NumSet := .bn setValue0 setValue863
def tree341 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4817] [4809])).val
theorem tree341_def : tree341 = (Flapjack.RegAlloc.ClashTree.delta [4817] [4809]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal341 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4817] [4809]
def live341 : Flapjack.NumSet := setValue857
def coloured341 : Flapjack.NumSet := setValue860
def result341 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue864, setValue860)
def tree342 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree341 tree340)).val
theorem tree342_def : tree342 = (.seq tree341 tree340) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal342 : Flapjack.RegAlloc.ClashTree := .seq literal341 literal340
def live342 : Flapjack.NumSet := setValue0
def coloured342 : Flapjack.NumSet := setValue0
def result342 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue864, setValue860)
def setValue865 : Flapjack.NumSet := .bn setValue846 setValue853
def setValue866 : Flapjack.NumSet := .bn setValue865 setValue861
def setValue867 : Flapjack.NumSet := .bn setValue866 setValue0
def setValue868 : Flapjack.NumSet := .bn setValue0 setValue867
def setValue869 : Flapjack.NumSet := .bn setValue834 setValue787
def setValue870 : Flapjack.NumSet := .bs setValue858 () setValue869
def setValue871 : Flapjack.NumSet := .bs setValue870 () setValue0
def tree343 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4813] [4809])).val
theorem tree343_def : tree343 = (Flapjack.RegAlloc.ClashTree.delta [4813] [4809]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal343 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4813] [4809]
def live343 : Flapjack.NumSet := setValue864
def coloured343 : Flapjack.NumSet := setValue860
def result343 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue868, setValue871)
def tree344 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree343 tree342)).val
theorem tree344_def : tree344 = (.seq tree343 tree342) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal344 : Flapjack.RegAlloc.ClashTree := .seq literal343 literal342
def live344 : Flapjack.NumSet := setValue0
def coloured344 : Flapjack.NumSet := setValue0
def result344 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue868, setValue871)
def setValue872 : Flapjack.NumSet := .bn setValue824 setValue814
def setValue873 : Flapjack.NumSet := .bn setValue846 setValue872
def setValue874 : Flapjack.NumSet := .bn setValue865 setValue873
def setValue875 : Flapjack.NumSet := .bn setValue874 setValue0
def setValue876 : Flapjack.NumSet := .bn setValue0 setValue875
def tree345 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4809] [4801])).val
theorem tree345_def : tree345 = (Flapjack.RegAlloc.ClashTree.delta [4809] [4801]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal345 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4809] [4801]
def live345 : Flapjack.NumSet := setValue868
def coloured345 : Flapjack.NumSet := setValue871
def result345 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue876, setValue871)
def tree346 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree345 tree344)).val
theorem tree346_def : tree346 = (.seq tree345 tree344) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal346 : Flapjack.RegAlloc.ClashTree := .seq literal345 literal344
def live346 : Flapjack.NumSet := setValue0
def coloured346 : Flapjack.NumSet := setValue0
def result346 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue876, setValue871)
def setValue877 : Flapjack.NumSet := .bn setValue852 setValue824
def setValue878 : Flapjack.NumSet := .bn setValue846 setValue877
def setValue879 : Flapjack.NumSet := .bn setValue878 setValue873
def setValue880 : Flapjack.NumSet := .bn setValue879 setValue0
def setValue881 : Flapjack.NumSet := .bn setValue0 setValue880
def setValue882 : Flapjack.NumSet := .bn setValue858 setValue869
def setValue883 : Flapjack.NumSet := .bs setValue882 () setValue0
def tree347 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4805] [4801])).val
theorem tree347_def : tree347 = (Flapjack.RegAlloc.ClashTree.delta [4805] [4801]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal347 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4805] [4801]
def live347 : Flapjack.NumSet := setValue876
def coloured347 : Flapjack.NumSet := setValue871
def result347 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue881, setValue883)
def tree348 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree347 tree346)).val
theorem tree348_def : tree348 = (.seq tree347 tree346) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal348 : Flapjack.RegAlloc.ClashTree := .seq literal347 literal346
def live348 : Flapjack.NumSet := setValue0
def coloured348 : Flapjack.NumSet := setValue0
def result348 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue881, setValue883)
def setValue884 : Flapjack.NumSet := .bn setValue0 setValue771
def setValue885 : Flapjack.NumSet := .bn setValue884 setValue823
def setValue886 : Flapjack.NumSet := .bn setValue885 setValue824
def setValue887 : Flapjack.NumSet := .bn setValue846 setValue886
def setValue888 : Flapjack.NumSet := .bn setValue846 setValue827
def setValue889 : Flapjack.NumSet := .bn setValue887 setValue888
def setValue890 : Flapjack.NumSet := .bn setValue889 setValue0
def setValue891 : Flapjack.NumSet := .bn setValue0 setValue890
def tree349 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4801] [4789])).val
theorem tree349_def : tree349 = (Flapjack.RegAlloc.ClashTree.delta [4801] [4789]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal349 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4801] [4789]
def live349 : Flapjack.NumSet := setValue881
def coloured349 : Flapjack.NumSet := setValue883
def result349 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue891, setValue883)
def tree350 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree349 tree348)).val
theorem tree350_def : tree350 = (.seq tree349 tree348) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal350 : Flapjack.RegAlloc.ClashTree := .seq literal349 literal348
def live350 : Flapjack.NumSet := setValue0
def coloured350 : Flapjack.NumSet := setValue0
def result350 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue891, setValue883)
def tree351 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree351_def : tree351 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal351 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live351 : Flapjack.NumSet := setValue891
def coloured351 : Flapjack.NumSet := setValue883
def result351 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue891, setValue883)
def tree352 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree351 tree350)).val
theorem tree352_def : tree352 = (.seq tree351 tree350) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal352 : Flapjack.RegAlloc.ClashTree := .seq literal351 literal350
def live352 : Flapjack.NumSet := setValue0
def coloured352 : Flapjack.NumSet := setValue0
def result352 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue891, setValue883)
def setValue892 : Flapjack.NumSet := .bn setValue0 setValue770
def setValue893 : Flapjack.NumSet := .bn setValue892 setValue812
def setValue894 : Flapjack.NumSet := .bn setValue893 setValue823
def setValue895 : Flapjack.NumSet := .bn setValue826 setValue894
def setValue896 : Flapjack.NumSet := .bn setValue895 setValue827
def setValue897 : Flapjack.NumSet := .bn setValue878 setValue896
def setValue898 : Flapjack.NumSet := .bn setValue897 setValue0
def setValue899 : Flapjack.NumSet := .bn setValue0 setValue898
def tree353 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4789] [4713])).val
theorem tree353_def : tree353 = (Flapjack.RegAlloc.ClashTree.delta [4789] [4713]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal353 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4789] [4713]
def live353 : Flapjack.NumSet := setValue891
def coloured353 : Flapjack.NumSet := setValue883
def result353 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree354 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree354_def : tree354 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal354 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live354 : Flapjack.NumSet := setValue899
def coloured354 : Flapjack.NumSet := setValue883
def result354 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree355 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree354 tree353)).val
theorem tree355_def : tree355 = (.seq tree354 tree353) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal355 : Flapjack.RegAlloc.ClashTree := .seq literal354 literal353
def live355 : Flapjack.NumSet := setValue891
def coloured355 : Flapjack.NumSet := setValue883
def result355 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree356 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree356_def : tree356 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal356 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live356 : Flapjack.NumSet := setValue899
def coloured356 : Flapjack.NumSet := setValue883
def result356 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree357 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree356 tree355)).val
theorem tree357_def : tree357 = (.seq tree356 tree355) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal357 : Flapjack.RegAlloc.ClashTree := .seq literal356 literal355
def live357 : Flapjack.NumSet := setValue891
def coloured357 : Flapjack.NumSet := setValue883
def result357 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def setValue900 : Flapjack.NumSet := .bn setValue1 setValue898
def tree358 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree358_def : tree358 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal358 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live358 : Flapjack.NumSet := setValue899
def coloured358 : Flapjack.NumSet := setValue883
def result358 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue900, setValue871)
def setValue901 : Flapjack.NumSet := .bn setValue812 setValue771
def setValue902 : Flapjack.NumSet := .bn setValue813 setValue901
def setValue903 : Flapjack.NumSet := .bn setValue852 setValue902
def setValue904 : Flapjack.NumSet := .bn setValue846 setValue903
def setValue905 : Flapjack.NumSet := .bn setValue904 setValue896
def setValue906 : Flapjack.NumSet := .bn setValue905 setValue0
def setValue907 : Flapjack.NumSet := .bn setValue0 setValue906
def tree359 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [4741])).val
theorem tree359_def : tree359 = (Flapjack.RegAlloc.ClashTree.delta [2] [4741]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal359 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [4741]
def live359 : Flapjack.NumSet := setValue900
def coloured359 : Flapjack.NumSet := setValue871
def result359 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue907, setValue871)
def tree360 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree359 tree358)).val
theorem tree360_def : tree360 = (.seq tree359 tree358) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal360 : Flapjack.RegAlloc.ClashTree := .seq literal359 literal358
def live360 : Flapjack.NumSet := setValue899
def coloured360 : Flapjack.NumSet := setValue883
def result360 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue907, setValue871)
def tree361 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4741] [])).val
theorem tree361_def : tree361 = (Flapjack.RegAlloc.ClashTree.delta [4741] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal361 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4741] []
def live361 : Flapjack.NumSet := setValue907
def coloured361 : Flapjack.NumSet := setValue871
def result361 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree362 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree361 tree360)).val
theorem tree362_def : tree362 = (.seq tree361 tree360) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal362 : Flapjack.RegAlloc.ClashTree := .seq literal361 literal360
def live362 : Flapjack.NumSet := setValue899
def coloured362 : Flapjack.NumSet := setValue883
def result362 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def setValue908 : Flapjack.NumSet := .bn setValue813 setValue884
def setValue909 : Flapjack.NumSet := .bn setValue824 setValue908
def setValue910 : Flapjack.NumSet := .bn setValue895 setValue909
def setValue911 : Flapjack.NumSet := .bn setValue878 setValue910
def setValue912 : Flapjack.NumSet := .bn setValue911 setValue0
def setValue913 : Flapjack.NumSet := .bn setValue0 setValue912
def tree363 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4737])).val
theorem tree363_def : tree363 = (Flapjack.RegAlloc.ClashTree.delta [] [4737]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal363 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4737]
def live363 : Flapjack.NumSet := setValue899
def coloured363 : Flapjack.NumSet := setValue883
def result363 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue913, setValue871)
def tree364 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree363 tree362)).val
theorem tree364_def : tree364 = (.seq tree363 tree362) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal364 : Flapjack.RegAlloc.ClashTree := .seq literal363 literal362
def live364 : Flapjack.NumSet := setValue899
def coloured364 : Flapjack.NumSet := setValue883
def result364 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue913, setValue871)
def setValue914 : Flapjack.NumSet := .bn setValue893 setValue0
def setValue915 : Flapjack.NumSet := .bn setValue914 setValue824
def setValue916 : Flapjack.NumSet := .bn setValue915 setValue877
def setValue917 : Flapjack.NumSet := .bn setValue916 setValue896
def setValue918 : Flapjack.NumSet := .bn setValue917 setValue0
def setValue919 : Flapjack.NumSet := .bn setValue0 setValue918
def tree365 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4737] [4733])).val
theorem tree365_def : tree365 = (Flapjack.RegAlloc.ClashTree.delta [4737] [4733]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal365 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4737] [4733]
def live365 : Flapjack.NumSet := setValue913
def coloured365 : Flapjack.NumSet := setValue871
def result365 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue919, setValue871)
def tree366 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree365 tree364)).val
theorem tree366_def : tree366 = (.seq tree365 tree364) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal366 : Flapjack.RegAlloc.ClashTree := .seq literal365 literal364
def live366 : Flapjack.NumSet := setValue899
def coloured366 : Flapjack.NumSet := setValue883
def result366 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue919, setValue871)
def tree367 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4733] [])).val
theorem tree367_def : tree367 = (Flapjack.RegAlloc.ClashTree.delta [4733] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal367 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4733] []
def live367 : Flapjack.NumSet := setValue919
def coloured367 : Flapjack.NumSet := setValue871
def result367 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree368 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree367 tree366)).val
theorem tree368_def : tree368 = (.seq tree367 tree366) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal368 : Flapjack.RegAlloc.ClashTree := .seq literal367 literal366
def live368 : Flapjack.NumSet := setValue899
def coloured368 : Flapjack.NumSet := setValue883
def result368 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree369 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree369_def : tree369 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal369 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live369 : Flapjack.NumSet := setValue899
def coloured369 : Flapjack.NumSet := setValue883
def result369 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree370 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree369 tree368)).val
theorem tree370_def : tree370 = (.seq tree369 tree368) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal370 : Flapjack.RegAlloc.ClashTree := .seq literal369 literal368
def live370 : Flapjack.NumSet := setValue899
def coloured370 : Flapjack.NumSet := setValue883
def result370 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree371 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree371_def : tree371 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal371 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live371 : Flapjack.NumSet := setValue899
def coloured371 : Flapjack.NumSet := setValue883
def result371 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree372 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree370 tree371)).val
theorem tree372_def : tree372 = (.branch (none) tree370 tree371) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal372 : Flapjack.RegAlloc.ClashTree := .branch (none) literal370 literal371
def live372 : Flapjack.NumSet := setValue899
def coloured372 : Flapjack.NumSet := setValue883
def result372 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def setValue920 : Flapjack.NumSet := .bn setValue895 setValue877
def setValue921 : Flapjack.NumSet := .bn setValue894 setValue826
def setValue922 : Flapjack.NumSet := .bn setValue895 setValue921
def setValue923 : Flapjack.NumSet := .bn setValue920 setValue922
def setValue924 : Flapjack.NumSet := .bn setValue923 setValue0
def setValue925 : Flapjack.NumSet := .bn setValue0 setValue924
def tree373 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4717, 4721])).val
theorem tree373_def : tree373 = (Flapjack.RegAlloc.ClashTree.delta [] [4717, 4721]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal373 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4717, 4721]
def live373 : Flapjack.NumSet := setValue899
def coloured373 : Flapjack.NumSet := setValue883
def result373 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue925, setValue860)
def tree374 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree373 tree372)).val
theorem tree374_def : tree374 = (.seq tree373 tree372) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal374 : Flapjack.RegAlloc.ClashTree := .seq literal373 literal372
def live374 : Flapjack.NumSet := setValue899
def coloured374 : Flapjack.NumSet := setValue883
def result374 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue925, setValue860)
def tree375 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree374 tree357)).val
theorem tree375_def : tree375 = (.seq tree374 tree357) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal375 : Flapjack.RegAlloc.ClashTree := .seq literal374 literal357
def live375 : Flapjack.NumSet := setValue891
def coloured375 : Flapjack.NumSet := setValue883
def result375 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue925, setValue860)
def setValue926 : Flapjack.NumSet := .bn setValue920 setValue896
def setValue927 : Flapjack.NumSet := .bn setValue926 setValue0
def setValue928 : Flapjack.NumSet := .bn setValue0 setValue927
def tree376 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4721] [])).val
theorem tree376_def : tree376 = (Flapjack.RegAlloc.ClashTree.delta [4721] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal376 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4721] []
def live376 : Flapjack.NumSet := setValue925
def coloured376 : Flapjack.NumSet := setValue860
def result376 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue928, setValue871)
def tree377 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree376 tree375)).val
theorem tree377_def : tree377 = (.seq tree376 tree375) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal377 : Flapjack.RegAlloc.ClashTree := .seq literal376 literal375
def live377 : Flapjack.NumSet := setValue891
def coloured377 : Flapjack.NumSet := setValue883
def result377 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue928, setValue871)
def tree378 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4717] [4713])).val
theorem tree378_def : tree378 = (Flapjack.RegAlloc.ClashTree.delta [4717] [4713]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal378 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4717] [4713]
def live378 : Flapjack.NumSet := setValue928
def coloured378 : Flapjack.NumSet := setValue871
def result378 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def tree379 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree378 tree377)).val
theorem tree379_def : tree379 = (.seq tree378 tree377) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal379 : Flapjack.RegAlloc.ClashTree := .seq literal378 literal377
def live379 : Flapjack.NumSet := setValue891
def coloured379 : Flapjack.NumSet := setValue883
def result379 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue899, setValue883)
def setValue929 : Flapjack.NumSet := .bn setValue824 setValue824
def setValue930 : Flapjack.NumSet := .bn setValue846 setValue929
def setValue931 : Flapjack.NumSet := .bn setValue930 setValue888
def setValue932 : Flapjack.NumSet := .bn setValue931 setValue0
def setValue933 : Flapjack.NumSet := .bn setValue0 setValue932
def tree380 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4713] [4533])).val
theorem tree380_def : tree380 = (Flapjack.RegAlloc.ClashTree.delta [4713] [4533]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal380 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4713] [4533]
def live380 : Flapjack.NumSet := setValue899
def coloured380 : Flapjack.NumSet := setValue883
def result380 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def tree381 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree380 tree379)).val
theorem tree381_def : tree381 = (.seq tree380 tree379) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal381 : Flapjack.RegAlloc.ClashTree := .seq literal380 literal379
def live381 : Flapjack.NumSet := setValue891
def coloured381 : Flapjack.NumSet := setValue883
def result381 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def tree382 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree382_def : tree382 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal382 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live382 : Flapjack.NumSet := setValue933
def coloured382 : Flapjack.NumSet := setValue883
def result382 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def tree383 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree382 tree381)).val
theorem tree383_def : tree383 = (.seq tree382 tree381) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal383 : Flapjack.RegAlloc.ClashTree := .seq literal382 literal381
def live383 : Flapjack.NumSet := setValue891
def coloured383 : Flapjack.NumSet := setValue883
def result383 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def tree384 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4789] [4533])).val
theorem tree384_def : tree384 = (Flapjack.RegAlloc.ClashTree.delta [4789] [4533]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal384 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4789] [4533]
def live384 : Flapjack.NumSet := setValue891
def coloured384 : Flapjack.NumSet := setValue883
def result384 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def tree385 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree385_def : tree385 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal385 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live385 : Flapjack.NumSet := setValue933
def coloured385 : Flapjack.NumSet := setValue883
def result385 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def tree386 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree385 tree384)).val
theorem tree386_def : tree386 = (.seq tree385 tree384) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal386 : Flapjack.RegAlloc.ClashTree := .seq literal385 literal384
def live386 : Flapjack.NumSet := setValue891
def coloured386 : Flapjack.NumSet := setValue883
def result386 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def tree387 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree383 tree386)).val
theorem tree387_def : tree387 = (.branch (none) tree383 tree386) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal387 : Flapjack.RegAlloc.ClashTree := .branch (none) literal383 literal386
def live387 : Flapjack.NumSet := setValue891
def coloured387 : Flapjack.NumSet := setValue883
def result387 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue933, setValue883)
def setValue934 : Flapjack.NumSet := .bn setValue892 setValue0
def setValue935 : Flapjack.NumSet := .bn setValue813 setValue934
def setValue936 : Flapjack.NumSet := .bn setValue935 setValue824
def setValue937 : Flapjack.NumSet := .bn setValue936 setValue929
def setValue938 : Flapjack.NumSet := .bn setValue936 setValue827
def setValue939 : Flapjack.NumSet := .bn setValue937 setValue938
def setValue940 : Flapjack.NumSet := .bn setValue939 setValue0
def setValue941 : Flapjack.NumSet := .bn setValue0 setValue940
def setValue942 : Flapjack.NumSet := .bs setValue4 () setValue785
def setValue943 : Flapjack.NumSet := .bn setValue942 setValue787
def setValue944 : Flapjack.NumSet := .bs setValue858 () setValue943
def setValue945 : Flapjack.NumSet := .bs setValue944 () setValue0
def tree388 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4697, 4701])).val
theorem tree388_def : tree388 = (Flapjack.RegAlloc.ClashTree.delta [] [4697, 4701]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal388 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4697, 4701]
def live388 : Flapjack.NumSet := setValue933
def coloured388 : Flapjack.NumSet := setValue883
def result388 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue941, setValue945)
def tree389 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree388 tree387)).val
theorem tree389_def : tree389 = (.seq tree388 tree387) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal389 : Flapjack.RegAlloc.ClashTree := .seq literal388 literal387
def live389 : Flapjack.NumSet := setValue891
def coloured389 : Flapjack.NumSet := setValue883
def result389 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue941, setValue945)
def tree390 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree389 tree352)).val
theorem tree390_def : tree390 = (.seq tree389 tree352) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal390 : Flapjack.RegAlloc.ClashTree := .seq literal389 literal352
def live390 : Flapjack.NumSet := setValue0
def coloured390 : Flapjack.NumSet := setValue0
def result390 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue941, setValue945)
def setValue946 : Flapjack.NumSet := .bn setValue930 setValue938
def setValue947 : Flapjack.NumSet := .bn setValue946 setValue0
def setValue948 : Flapjack.NumSet := .bn setValue0 setValue947
def setValue949 : Flapjack.NumSet := .bn setValue858 setValue943
def setValue950 : Flapjack.NumSet := .bs setValue949 () setValue0
def tree391 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4701] [])).val
theorem tree391_def : tree391 = (Flapjack.RegAlloc.ClashTree.delta [4701] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal391 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4701] []
def live391 : Flapjack.NumSet := setValue941
def coloured391 : Flapjack.NumSet := setValue945
def result391 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue948, setValue950)
def tree392 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree391 tree390)).val
theorem tree392_def : tree392 = (.seq tree391 tree390) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal392 : Flapjack.RegAlloc.ClashTree := .seq literal391 literal390
def live392 : Flapjack.NumSet := setValue0
def coloured392 : Flapjack.NumSet := setValue0
def result392 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue948, setValue950)
def setValue951 : Flapjack.NumSet := .bn setValue930 setValue930
def setValue952 : Flapjack.NumSet := .bn setValue951 setValue0
def setValue953 : Flapjack.NumSet := .bn setValue0 setValue952
def tree393 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4697] [4545])).val
theorem tree393_def : tree393 = (Flapjack.RegAlloc.ClashTree.delta [4697] [4545]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal393 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4697] [4545]
def live393 : Flapjack.NumSet := setValue948
def coloured393 : Flapjack.NumSet := setValue950
def result393 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue953, setValue950)
def tree394 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree393 tree392)).val
theorem tree394_def : tree394 = (.seq tree393 tree392) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal394 : Flapjack.RegAlloc.ClashTree := .seq literal393 literal392
def live394 : Flapjack.NumSet := setValue0
def coloured394 : Flapjack.NumSet := setValue0
def result394 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue953, setValue950)
def tree395 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree395_def : tree395 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal395 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live395 : Flapjack.NumSet := setValue953
def coloured395 : Flapjack.NumSet := setValue950
def result395 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue953, setValue950)
def tree396 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree395 tree394)).val
theorem tree396_def : tree396 = (.seq tree395 tree394) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal396 : Flapjack.RegAlloc.ClashTree := .seq literal395 literal394
def live396 : Flapjack.NumSet := setValue0
def coloured396 : Flapjack.NumSet := setValue0
def result396 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue953, setValue950)
def setValue954 : Flapjack.NumSet := .bn setValue0 setValue811
def setValue955 : Flapjack.NumSet := .bn setValue954 setValue954
def setValue956 : Flapjack.NumSet := .bn setValue0 setValue955
def setValue957 : Flapjack.NumSet := .bn setValue0 setValue954
def setValue958 : Flapjack.NumSet := .bn setValue957 setValue955
def setValue959 : Flapjack.NumSet := .bn setValue956 setValue958
def setValue960 : Flapjack.NumSet := .bn setValue957 setValue0
def setValue961 : Flapjack.NumSet := .bn setValue956 setValue960
def setValue962 : Flapjack.NumSet := .bn setValue959 setValue961
def setValue963 : Flapjack.NumSet := .bn setValue0 setValue957
def setValue964 : Flapjack.NumSet := .bn setValue957 setValue957
def setValue965 : Flapjack.NumSet := .bn setValue963 setValue964
def setValue966 : Flapjack.NumSet := .bn setValue0 setValue813
def setValue967 : Flapjack.NumSet := .bn setValue956 setValue966
def setValue968 : Flapjack.NumSet := .bn setValue965 setValue967
def setValue969 : Flapjack.NumSet := .bn setValue962 setValue968
def setValue970 : Flapjack.NumSet := .bn setValue969 setValue0
def setValue971 : Flapjack.NumSet := .bn setValue0 setValue970
def setValue972 : Flapjack.NumSet := .bs setValue384 () setValue86
def setValue973 : Flapjack.NumSet := .bs setValue942 () setValue806
def setValue974 : Flapjack.NumSet := .bn setValue972 setValue973
def setValue975 : Flapjack.NumSet := .bs setValue974 () setValue0
def tree397 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4565, 4561, 4557, 4553, 4549, 4545, 4541, 4537, 4533, 4529, 4525, 4521, 4517, 4513]
  [4361, 4365, 4369, 4373, 4377, 4381, 4481, 4433, 4389, 4429, 4393, 4437, 4397, 4445])).val
theorem tree397_def : tree397 = (Flapjack.RegAlloc.ClashTree.delta [4565, 4561, 4557, 4553, 4549, 4545, 4541, 4537, 4533, 4529, 4525, 4521, 4517, 4513]
  [4361, 4365, 4369, 4373, 4377, 4381, 4481, 4433, 4389, 4429, 4393, 4437, 4397, 4445]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal397 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4565, 4561, 4557, 4553, 4549, 4545, 4541, 4537, 4533, 4529, 4525, 4521, 4517, 4513]
  [4361, 4365, 4369, 4373, 4377, 4381, 4481, 4433, 4389, 4429, 4393, 4437, 4397, 4445]
def live397 : Flapjack.NumSet := setValue953
def coloured397 : Flapjack.NumSet := setValue950
def result397 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue971, setValue975)
def tree398 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree398_def : tree398 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal398 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live398 : Flapjack.NumSet := setValue971
def coloured398 : Flapjack.NumSet := setValue975
def result398 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue971, setValue975)
def tree399 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree398 tree397)).val
theorem tree399_def : tree399 = (.seq tree398 tree397) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal399 : Flapjack.RegAlloc.ClashTree := .seq literal398 literal397
def live399 : Flapjack.NumSet := setValue953
def coloured399 : Flapjack.NumSet := setValue950
def result399 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue971, setValue975)
def setValue976 : Flapjack.NumSet := .bn setValue954 setValue0
def setValue977 : Flapjack.NumSet := .bn setValue976 setValue955
def setValue978 : Flapjack.NumSet := .bn setValue977 setValue0
def setValue979 : Flapjack.NumSet := .bn setValue965 setValue978
def setValue980 : Flapjack.NumSet := .bn setValue962 setValue979
def setValue981 : Flapjack.NumSet := .bn setValue980 setValue0
def setValue982 : Flapjack.NumSet := .bn setValue0 setValue981
def setValue983 : Flapjack.NumSet := .bs setValue0 () setValue785
def setValue984 : Flapjack.NumSet := .bs setValue942 () setValue983
def setValue985 : Flapjack.NumSet := .bs setValue972 () setValue984
def setValue986 : Flapjack.NumSet := .bs setValue985 () setValue0
def tree400 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4481] [4465])).val
theorem tree400_def : tree400 = (Flapjack.RegAlloc.ClashTree.delta [4481] [4465]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal400 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4481] [4465]
def live400 : Flapjack.NumSet := setValue971
def coloured400 : Flapjack.NumSet := setValue975
def result400 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue982, setValue986)
def setValue987 : Flapjack.NumSet := .bn setValue956 setValue0
def setValue988 : Flapjack.NumSet := .bn setValue965 setValue987
def setValue989 : Flapjack.NumSet := .bn setValue962 setValue988
def setValue990 : Flapjack.NumSet := .bn setValue989 setValue0
def setValue991 : Flapjack.NumSet := .bn setValue0 setValue990
def setValue992 : Flapjack.NumSet := .bn setValue972 setValue984
def setValue993 : Flapjack.NumSet := .bs setValue992 () setValue0
def tree401 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4465] [])).val
theorem tree401_def : tree401 = (Flapjack.RegAlloc.ClashTree.delta [4465] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal401 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4465] []
def live401 : Flapjack.NumSet := setValue982
def coloured401 : Flapjack.NumSet := setValue986
def result401 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue991, setValue993)
def tree402 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree401 tree400)).val
theorem tree402_def : tree402 = (.seq tree401 tree400) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal402 : Flapjack.RegAlloc.ClashTree := .seq literal401 literal400
def live402 : Flapjack.NumSet := setValue971
def coloured402 : Flapjack.NumSet := setValue975
def result402 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue991, setValue993)
def tree403 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree403_def : tree403 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal403 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live403 : Flapjack.NumSet := setValue991
def coloured403 : Flapjack.NumSet := setValue993
def result403 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue991, setValue993)
def tree404 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree403 tree402)).val
theorem tree404_def : tree404 = (.seq tree403 tree402) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal404 : Flapjack.RegAlloc.ClashTree := .seq literal403 literal402
def live404 : Flapjack.NumSet := setValue971
def coloured404 : Flapjack.NumSet := setValue975
def result404 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue991, setValue993)
def setValue994 : Flapjack.NumSet := .bn setValue965 setValue961
def setValue995 : Flapjack.NumSet := .bn setValue962 setValue994
def setValue996 : Flapjack.NumSet := .bn setValue995 setValue0
def setValue997 : Flapjack.NumSet := .bn setValue0 setValue996
def tree405 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4481] [4385])).val
theorem tree405_def : tree405 = (Flapjack.RegAlloc.ClashTree.delta [4481] [4385]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal405 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4481] [4385]
def live405 : Flapjack.NumSet := setValue971
def coloured405 : Flapjack.NumSet := setValue975
def result405 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue997, setValue975)
def tree406 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree406_def : tree406 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal406 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live406 : Flapjack.NumSet := setValue997
def coloured406 : Flapjack.NumSet := setValue975
def result406 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue997, setValue975)
def tree407 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree406 tree405)).val
theorem tree407_def : tree407 = (.seq tree406 tree405) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal407 : Flapjack.RegAlloc.ClashTree := .seq literal406 literal405
def live407 : Flapjack.NumSet := setValue971
def coloured407 : Flapjack.NumSet := setValue975
def result407 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue997, setValue975)
def tree408 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree404 tree407)).val
theorem tree408_def : tree408 = (.branch (none) tree404 tree407) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal408 : Flapjack.RegAlloc.ClashTree := .branch (none) literal404 literal407
def live408 : Flapjack.NumSet := setValue971
def coloured408 : Flapjack.NumSet := setValue975
def result408 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue997, setValue975)
def setValue998 : Flapjack.NumSet := .bn setValue955 setValue0
def setValue999 : Flapjack.NumSet := .bn setValue956 setValue998
def setValue1000 : Flapjack.NumSet := .bn setValue959 setValue999
def setValue1001 : Flapjack.NumSet := .bn setValue965 setValue999
def setValue1002 : Flapjack.NumSet := .bn setValue1000 setValue1001
def setValue1003 : Flapjack.NumSet := .bn setValue1002 setValue0
def setValue1004 : Flapjack.NumSet := .bn setValue0 setValue1003
def setValue1005 : Flapjack.NumSet := .bs setValue385 () setValue973
def setValue1006 : Flapjack.NumSet := .bs setValue1005 () setValue0
def tree409 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4449, 4453])).val
theorem tree409_def : tree409 = (Flapjack.RegAlloc.ClashTree.delta [] [4449, 4453]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal409 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4449, 4453]
def live409 : Flapjack.NumSet := setValue997
def coloured409 : Flapjack.NumSet := setValue975
def result409 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1004, setValue1006)
def tree410 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree409 tree408)).val
theorem tree410_def : tree410 = (.seq tree409 tree408) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal410 : Flapjack.RegAlloc.ClashTree := .seq literal409 literal408
def live410 : Flapjack.NumSet := setValue971
def coloured410 : Flapjack.NumSet := setValue975
def result410 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1004, setValue1006)
def tree411 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree410 tree399)).val
theorem tree411_def : tree411 = (.seq tree410 tree399) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal411 : Flapjack.RegAlloc.ClashTree := .seq literal410 literal399
def live411 : Flapjack.NumSet := setValue953
def coloured411 : Flapjack.NumSet := setValue950
def result411 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1004, setValue1006)
def setValue1007 : Flapjack.NumSet := .bn setValue962 setValue1001
def setValue1008 : Flapjack.NumSet := .bn setValue1007 setValue0
def setValue1009 : Flapjack.NumSet := .bn setValue0 setValue1008
def setValue1010 : Flapjack.NumSet := .bn setValue385 setValue973
def setValue1011 : Flapjack.NumSet := .bs setValue1010 () setValue0
def tree412 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4453] [])).val
theorem tree412_def : tree412 = (Flapjack.RegAlloc.ClashTree.delta [4453] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal412 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4453] []
def live412 : Flapjack.NumSet := setValue1004
def coloured412 : Flapjack.NumSet := setValue1006
def result412 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1009, setValue1011)
def tree413 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree412 tree411)).val
theorem tree413_def : tree413 = (.seq tree412 tree411) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal413 : Flapjack.RegAlloc.ClashTree := .seq literal412 literal411
def live413 : Flapjack.NumSet := setValue953
def coloured413 : Flapjack.NumSet := setValue950
def result413 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1009, setValue1011)
def setValue1012 : Flapjack.NumSet := .bn setValue956 setValue964
def setValue1013 : Flapjack.NumSet := .bn setValue1012 setValue961
def setValue1014 : Flapjack.NumSet := .bn setValue962 setValue1013
def setValue1015 : Flapjack.NumSet := .bn setValue1014 setValue0
def setValue1016 : Flapjack.NumSet := .bn setValue0 setValue1015
def tree414 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4449] [4441])).val
theorem tree414_def : tree414 = (Flapjack.RegAlloc.ClashTree.delta [4449] [4441]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal414 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4449] [4441]
def live414 : Flapjack.NumSet := setValue1009
def coloured414 : Flapjack.NumSet := setValue1011
def result414 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1016, setValue1011)
def tree415 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree414 tree413)).val
theorem tree415_def : tree415 = (.seq tree414 tree413) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal415 : Flapjack.RegAlloc.ClashTree := .seq literal414 literal413
def live415 : Flapjack.NumSet := setValue953
def coloured415 : Flapjack.NumSet := setValue950
def result415 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1016, setValue1011)
def tree416 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree416_def : tree416 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal416 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live416 : Flapjack.NumSet := setValue1016
def coloured416 : Flapjack.NumSet := setValue1011
def result416 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1016, setValue1011)
def tree417 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree416 tree415)).val
theorem tree417_def : tree417 = (.seq tree416 tree415) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal417 : Flapjack.RegAlloc.ClashTree := .seq literal416 literal415
def live417 : Flapjack.NumSet := setValue953
def coloured417 : Flapjack.NumSet := setValue950
def result417 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1016, setValue1011)
def setValue1017 : Flapjack.NumSet := .bn setValue0 setValue810
def setValue1018 : Flapjack.NumSet := .bn setValue1017 setValue0
def setValue1019 : Flapjack.NumSet := .bn setValue1018 setValue0
def setValue1020 : Flapjack.NumSet := .bn setValue1019 setValue0
def setValue1021 : Flapjack.NumSet := .bn setValue1020 setValue1020
def setValue1022 : Flapjack.NumSet := .bn setValue1019 setValue957
def setValue1023 : Flapjack.NumSet := .bn setValue1020 setValue1022
def setValue1024 : Flapjack.NumSet := .bn setValue1021 setValue1023
def setValue1025 : Flapjack.NumSet := .bn setValue1024 setValue1024
def setValue1026 : Flapjack.NumSet := .bn setValue0 setValue1025
def setValue1027 : Flapjack.NumSet := .bn setValue41 setValue1026
def setValue1028 : Flapjack.NumSet := .bs setValue487 () setValue835
def setValue1029 : Flapjack.NumSet := .bn setValue1028 setValue0
def tree418 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [4445, 4441, 4437, 4433, 4429, 4361, 4365, 4369, 4373, 4377, 4381, 4385, 4389, 4393, 4397]
  [2, 10, 6, 4, 8, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355])).val
theorem tree418_def : tree418 = (Flapjack.RegAlloc.ClashTree.delta
  [4445, 4441, 4437, 4433, 4429, 4361, 4365, 4369, 4373, 4377, 4381, 4385, 4389, 4393, 4397]
  [2, 10, 6, 4, 8, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal418 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [4445, 4441, 4437, 4433, 4429, 4361, 4365, 4369, 4373, 4377, 4381, 4385, 4389, 4393, 4397]
  [2, 10, 6, 4, 8, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355]
def live418 : Flapjack.NumSet := setValue1016
def coloured418 : Flapjack.NumSet := setValue1011
def result418 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1027, setValue1029)
def tree419 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1027)).val
theorem tree419_def : tree419 = (.set setValue1027) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal419 : Flapjack.RegAlloc.ClashTree := .set setValue1027
def live419 : Flapjack.NumSet := setValue1027
def coloured419 : Flapjack.NumSet := setValue1029
def result419 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1027, setValue1029)
def tree420 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree419 tree418)).val
theorem tree420_def : tree420 = (.seq tree419 tree418) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal420 : Flapjack.RegAlloc.ClashTree := .seq literal419 literal418
def live420 : Flapjack.NumSet := setValue1016
def coloured420 : Flapjack.NumSet := setValue1011
def result420 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1027, setValue1029)
def setValue1030 : Flapjack.NumSet := .bn setValue1 setValue1015
def tree421 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree421_def : tree421 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal421 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live421 : Flapjack.NumSet := setValue1016
def coloured421 : Flapjack.NumSet := setValue1011
def result421 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1030, setValue1006)
def setValue1031 : Flapjack.NumSet := .bn setValue0 setValue976
def setValue1032 : Flapjack.NumSet := .bn setValue1031 setValue1031
def setValue1033 : Flapjack.NumSet := .bn setValue1031 setValue0
def setValue1034 : Flapjack.NumSet := .bn setValue1032 setValue1033
def setValue1035 : Flapjack.NumSet := .bn setValue1033 setValue1033
def setValue1036 : Flapjack.NumSet := .bn setValue1034 setValue1035
def setValue1037 : Flapjack.NumSet := .bn setValue1036 setValue1025
def setValue1038 : Flapjack.NumSet := .bn setValue1 setValue1037
def setValue1039 : Flapjack.NumSet := .bs setValue98 () setValue190
def setValue1040 : Flapjack.NumSet := .bs setValue1039 () setValue835
def setValue1041 : Flapjack.NumSet := .bn setValue1040 setValue0
def tree422 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4361, 4365, 4369, 4373, 4377, 4381, 4385, 4389, 4393, 4397]
  [2, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355])).val
theorem tree422_def : tree422 = (Flapjack.RegAlloc.ClashTree.delta [2, 4361, 4365, 4369, 4373, 4377, 4381, 4385, 4389, 4393, 4397]
  [2, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal422 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4361, 4365, 4369, 4373, 4377, 4381, 4385, 4389, 4393, 4397]
  [2, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355]
def live422 : Flapjack.NumSet := setValue1030
def coloured422 : Flapjack.NumSet := setValue1006
def result422 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1038, setValue1041)
def tree423 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree422 tree421)).val
theorem tree423_def : tree423 = (.seq tree422 tree421) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal423 : Flapjack.RegAlloc.ClashTree := .seq literal422 literal421
def live423 : Flapjack.NumSet := setValue1016
def coloured423 : Flapjack.NumSet := setValue1011
def result423 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1038, setValue1041)
def setValue1042 : Flapjack.NumSet := .bn setValue1 setValue1026
def setValue1043 : Flapjack.NumSet := .bs setValue156 () setValue869
def setValue1044 : Flapjack.NumSet := .bn setValue1043 setValue0
def tree424 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1042)).val
theorem tree424_def : tree424 = (.set setValue1042) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal424 : Flapjack.RegAlloc.ClashTree := .set setValue1042
def live424 : Flapjack.NumSet := setValue1038
def coloured424 : Flapjack.NumSet := setValue1041
def result424 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1042, setValue1044)
def tree425 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree424 tree423)).val
theorem tree425_def : tree425 = (.seq tree424 tree423) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal425 : Flapjack.RegAlloc.ClashTree := .seq literal424 literal423
def live425 : Flapjack.NumSet := setValue1016
def coloured425 : Flapjack.NumSet := setValue1011
def result425 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1042, setValue1044)
def setValue1045 : Flapjack.NumSet := .bn setValue350 setValue1026
def setValue1046 : Flapjack.NumSet := .bs setValue85 () setValue799
def setValue1047 : Flapjack.NumSet := .bs setValue942 () setValue1046
def setValue1048 : Flapjack.NumSet := .bs setValue1039 () setValue1047
def setValue1049 : Flapjack.NumSet := .bn setValue1048 setValue0
def tree426 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1045) tree420 tree425)).val
theorem tree426_def : tree426 = (.branch (some setValue1045) tree420 tree425) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal426 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1045) literal420 literal425
def live426 : Flapjack.NumSet := setValue1016
def coloured426 : Flapjack.NumSet := setValue1011
def result426 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1045, setValue1049)
def tree427 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree426 tree417)).val
theorem tree427_def : tree427 = (.seq tree426 tree417) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal427 : Flapjack.RegAlloc.ClashTree := .seq literal426 literal417
def live427 : Flapjack.NumSet := setValue953
def coloured427 : Flapjack.NumSet := setValue950
def result427 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1045, setValue1049)
def setValue1050 : Flapjack.NumSet := .bn setValue0 setValue1017
def setValue1051 : Flapjack.NumSet := .bn setValue1050 setValue1050
def setValue1052 : Flapjack.NumSet := .bn setValue1050 setValue0
def setValue1053 : Flapjack.NumSet := .bn setValue1051 setValue1052
def setValue1054 : Flapjack.NumSet := .bn setValue0 setValue1050
def setValue1055 : Flapjack.NumSet := .bn setValue1050 setValue1018
def setValue1056 : Flapjack.NumSet := .bn setValue1054 setValue1055
def setValue1057 : Flapjack.NumSet := .bn setValue1053 setValue1056
def setValue1058 : Flapjack.NumSet := .bn setValue1054 setValue1052
def setValue1059 : Flapjack.NumSet := .bn setValue1058 setValue0
def setValue1060 : Flapjack.NumSet := .bn setValue1057 setValue1059
def setValue1061 : Flapjack.NumSet := .bn setValue1017 setValue1017
def setValue1062 : Flapjack.NumSet := .bn setValue0 setValue1061
def setValue1063 : Flapjack.NumSet := .bn setValue1062 setValue1052
def setValue1064 : Flapjack.NumSet := .bn setValue0 setValue1055
def setValue1065 : Flapjack.NumSet := .bn setValue1063 setValue1064
def setValue1066 : Flapjack.NumSet := .bn setValue1052 setValue1055
def setValue1067 : Flapjack.NumSet := .bn setValue1058 setValue1066
def setValue1068 : Flapjack.NumSet := .bn setValue1065 setValue1067
def setValue1069 : Flapjack.NumSet := .bn setValue1060 setValue1068
def setValue1070 : Flapjack.NumSet := .bn setValue1069 setValue0
def setValue1071 : Flapjack.NumSet := .bn setValue0 setValue1070
def setValue1072 : Flapjack.NumSet := .bn setValue356 setValue1047
def setValue1073 : Flapjack.NumSet := .bn setValue1072 setValue0
def tree428 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355]
  [4193, 4169, 4185, 4177, 4237, 4225, 4233, 4221, 4141, 4145, 4149, 4153, 4157, 4161, 4281, 4173, 4181, 4189])).val
theorem tree428_def : tree428 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355]
  [4193, 4169, 4185, 4177, 4237, 4225, 4233, 4221, 4141, 4145, 4149, 4153, 4157, 4161, 4281, 4173, 4181, 4189]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal428 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 4319, 4323, 4327, 4331, 4335, 4339, 4343, 4347, 4351, 4355]
  [4193, 4169, 4185, 4177, 4237, 4225, 4233, 4221, 4141, 4145, 4149, 4153, 4157, 4161, 4281, 4173, 4181, 4189]
def live428 : Flapjack.NumSet := setValue1045
def coloured428 : Flapjack.NumSet := setValue1049
def result428 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1071, setValue1073)
def tree429 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree428 tree427)).val
theorem tree429_def : tree429 = (.seq tree428 tree427) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal429 : Flapjack.RegAlloc.ClashTree := .seq literal428 literal427
def live429 : Flapjack.NumSet := setValue953
def coloured429 : Flapjack.NumSet := setValue950
def result429 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1071, setValue1073)
def tree430 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree430_def : tree430 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal430 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live430 : Flapjack.NumSet := setValue1071
def coloured430 : Flapjack.NumSet := setValue1073
def result430 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1071, setValue1073)
def tree431 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree430 tree429)).val
theorem tree431_def : tree431 = (.seq tree430 tree429) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal431 : Flapjack.RegAlloc.ClashTree := .seq literal430 literal429
def live431 : Flapjack.NumSet := setValue953
def coloured431 : Flapjack.NumSet := setValue950
def result431 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1071, setValue1073)
def setValue1074 : Flapjack.NumSet := .bn setValue0 setValue1018
def setValue1075 : Flapjack.NumSet := .bn setValue1074 setValue0
def setValue1076 : Flapjack.NumSet := .bn setValue1058 setValue1075
def setValue1077 : Flapjack.NumSet := .bn setValue1057 setValue1076
def setValue1078 : Flapjack.NumSet := .bn setValue1058 setValue1064
def setValue1079 : Flapjack.NumSet := .bn setValue1078 setValue1067
def setValue1080 : Flapjack.NumSet := .bn setValue1077 setValue1079
def setValue1081 : Flapjack.NumSet := .bn setValue1080 setValue0
def setValue1082 : Flapjack.NumSet := .bn setValue0 setValue1081
def setValue1083 : Flapjack.NumSet := .bs setValue0 () setValue799
def setValue1084 : Flapjack.NumSet := .bs setValue942 () setValue1083
def setValue1085 : Flapjack.NumSet := .bn setValue356 setValue1084
def setValue1086 : Flapjack.NumSet := .bs setValue1085 () setValue0
def tree432 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4281] [4261])).val
theorem tree432_def : tree432 = (Flapjack.RegAlloc.ClashTree.delta [4281] [4261]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal432 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4281] [4261]
def live432 : Flapjack.NumSet := setValue1071
def coloured432 : Flapjack.NumSet := setValue1073
def result432 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1082, setValue1086)
def setValue1087 : Flapjack.NumSet := .bn setValue1060 setValue1079
def setValue1088 : Flapjack.NumSet := .bn setValue1087 setValue0
def setValue1089 : Flapjack.NumSet := .bn setValue0 setValue1088
def setValue1090 : Flapjack.NumSet := .bn setValue1085 setValue0
def tree433 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4261] [])).val
theorem tree433_def : tree433 = (Flapjack.RegAlloc.ClashTree.delta [4261] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal433 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4261] []
def live433 : Flapjack.NumSet := setValue1082
def coloured433 : Flapjack.NumSet := setValue1086
def result433 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1089, setValue1090)
def tree434 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree433 tree432)).val
theorem tree434_def : tree434 = (.seq tree433 tree432) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal434 : Flapjack.RegAlloc.ClashTree := .seq literal433 literal432
def live434 : Flapjack.NumSet := setValue1071
def coloured434 : Flapjack.NumSet := setValue1073
def result434 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1089, setValue1090)
def tree435 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree435_def : tree435 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal435 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live435 : Flapjack.NumSet := setValue1089
def coloured435 : Flapjack.NumSet := setValue1090
def result435 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1089, setValue1090)
def tree436 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree435 tree434)).val
theorem tree436_def : tree436 = (.seq tree435 tree434) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal436 : Flapjack.RegAlloc.ClashTree := .seq literal435 literal434
def live436 : Flapjack.NumSet := setValue1071
def coloured436 : Flapjack.NumSet := setValue1073
def result436 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1089, setValue1090)
def setValue1091 : Flapjack.NumSet := .bn setValue0 setValue1052
def setValue1092 : Flapjack.NumSet := .bn setValue1058 setValue1091
def setValue1093 : Flapjack.NumSet := .bn setValue1057 setValue1092
def setValue1094 : Flapjack.NumSet := .bn setValue1093 setValue1079
def setValue1095 : Flapjack.NumSet := .bn setValue1094 setValue0
def setValue1096 : Flapjack.NumSet := .bn setValue0 setValue1095
def tree437 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4281] [4165])).val
theorem tree437_def : tree437 = (Flapjack.RegAlloc.ClashTree.delta [4281] [4165]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal437 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4281] [4165]
def live437 : Flapjack.NumSet := setValue1071
def coloured437 : Flapjack.NumSet := setValue1073
def result437 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1096, setValue1073)
def tree438 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree438_def : tree438 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal438 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live438 : Flapjack.NumSet := setValue1096
def coloured438 : Flapjack.NumSet := setValue1073
def result438 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1096, setValue1073)
def tree439 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree438 tree437)).val
theorem tree439_def : tree439 = (.seq tree438 tree437) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal439 : Flapjack.RegAlloc.ClashTree := .seq literal438 literal437
def live439 : Flapjack.NumSet := setValue1071
def coloured439 : Flapjack.NumSet := setValue1073
def result439 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1096, setValue1073)
def tree440 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree436 tree439)).val
theorem tree440_def : tree440 = (.branch (none) tree436 tree439) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal440 : Flapjack.RegAlloc.ClashTree := .branch (none) literal436 literal439
def live440 : Flapjack.NumSet := setValue1071
def coloured440 : Flapjack.NumSet := setValue1073
def result440 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1096, setValue1073)
def setValue1097 : Flapjack.NumSet := .bn setValue1056 setValue1091
def setValue1098 : Flapjack.NumSet := .bn setValue1057 setValue1097
def setValue1099 : Flapjack.NumSet := .bn setValue1056 setValue1064
def setValue1100 : Flapjack.NumSet := .bn setValue1099 setValue1067
def setValue1101 : Flapjack.NumSet := .bn setValue1098 setValue1100
def setValue1102 : Flapjack.NumSet := .bn setValue1101 setValue0
def setValue1103 : Flapjack.NumSet := .bn setValue0 setValue1102
def setValue1104 : Flapjack.NumSet := .bs setValue356 () setValue1047
def setValue1105 : Flapjack.NumSet := .bs setValue1104 () setValue0
def tree441 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4245, 4249])).val
theorem tree441_def : tree441 = (Flapjack.RegAlloc.ClashTree.delta [] [4245, 4249]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal441 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4245, 4249]
def live441 : Flapjack.NumSet := setValue1096
def coloured441 : Flapjack.NumSet := setValue1073
def result441 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1103, setValue1105)
def tree442 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree441 tree440)).val
theorem tree442_def : tree442 = (.seq tree441 tree440) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal442 : Flapjack.RegAlloc.ClashTree := .seq literal441 literal440
def live442 : Flapjack.NumSet := setValue1071
def coloured442 : Flapjack.NumSet := setValue1073
def result442 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1103, setValue1105)
def tree443 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree442 tree431)).val
theorem tree443_def : tree443 = (.seq tree442 tree431) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal443 : Flapjack.RegAlloc.ClashTree := .seq literal442 literal431
def live443 : Flapjack.NumSet := setValue953
def coloured443 : Flapjack.NumSet := setValue950
def result443 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1103, setValue1105)
def setValue1106 : Flapjack.NumSet := .bn setValue1098 setValue1079
def setValue1107 : Flapjack.NumSet := .bn setValue1106 setValue0
def setValue1108 : Flapjack.NumSet := .bn setValue0 setValue1107
def setValue1109 : Flapjack.NumSet := .bs setValue1072 () setValue0
def tree444 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4249] [])).val
theorem tree444_def : tree444 = (Flapjack.RegAlloc.ClashTree.delta [4249] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal444 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4249] []
def live444 : Flapjack.NumSet := setValue1103
def coloured444 : Flapjack.NumSet := setValue1105
def result444 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1108, setValue1109)
def tree445 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree444 tree443)).val
theorem tree445_def : tree445 = (.seq tree444 tree443) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal445 : Flapjack.RegAlloc.ClashTree := .seq literal444 literal443
def live445 : Flapjack.NumSet := setValue953
def coloured445 : Flapjack.NumSet := setValue950
def result445 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1108, setValue1109)
def setValue1110 : Flapjack.NumSet := .bn setValue1057 setValue1078
def setValue1111 : Flapjack.NumSet := .bn setValue1110 setValue1079
def setValue1112 : Flapjack.NumSet := .bn setValue1111 setValue0
def setValue1113 : Flapjack.NumSet := .bn setValue0 setValue1112
def tree446 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4245] [4229])).val
theorem tree446_def : tree446 = (Flapjack.RegAlloc.ClashTree.delta [4245] [4229]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal446 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4245] [4229]
def live446 : Flapjack.NumSet := setValue1108
def coloured446 : Flapjack.NumSet := setValue1109
def result446 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1113, setValue1109)
def tree447 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree446 tree445)).val
theorem tree447_def : tree447 = (.seq tree446 tree445) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal447 : Flapjack.RegAlloc.ClashTree := .seq literal446 literal445
def live447 : Flapjack.NumSet := setValue953
def coloured447 : Flapjack.NumSet := setValue950
def result447 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1113, setValue1109)
def tree448 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree448_def : tree448 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal448 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live448 : Flapjack.NumSet := setValue1113
def coloured448 : Flapjack.NumSet := setValue1109
def result448 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1113, setValue1109)
def tree449 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree448 tree447)).val
theorem tree449_def : tree449 = (.seq tree448 tree447) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal449 : Flapjack.RegAlloc.ClashTree := .seq literal448 literal447
def live449 : Flapjack.NumSet := setValue953
def coloured449 : Flapjack.NumSet := setValue950
def result449 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1113, setValue1109)
def setValue1114 : Flapjack.NumSet := .bn setValue85 setValue0
def setValue1115 : Flapjack.NumSet := .bn setValue1114 setValue0
def setValue1116 : Flapjack.NumSet := .bn setValue1115 setValue0
def setValue1117 : Flapjack.NumSet := .bn setValue1116 setValue0
def setValue1118 : Flapjack.NumSet := .bn setValue1117 setValue1054
def setValue1119 : Flapjack.NumSet := .bn setValue0 setValue1054
def setValue1120 : Flapjack.NumSet := .bn setValue1118 setValue1119
def setValue1121 : Flapjack.NumSet := .bn setValue1054 setValue1054
def setValue1122 : Flapjack.NumSet := .bn setValue1118 setValue1121
def setValue1123 : Flapjack.NumSet := .bn setValue1120 setValue1122
def setValue1124 : Flapjack.NumSet := .bn setValue1119 setValue1121
def setValue1125 : Flapjack.NumSet := .bn setValue1122 setValue1124
def setValue1126 : Flapjack.NumSet := .bn setValue1123 setValue1125
def setValue1127 : Flapjack.NumSet := .bn setValue0 setValue1126
def setValue1128 : Flapjack.NumSet := .bn setValue41 setValue1127
def setValue1129 : Flapjack.NumSet := .bs setValue807 () setValue807
def setValue1130 : Flapjack.NumSet := .bn setValue1129 setValue0
def tree450 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [4237, 4233, 4229, 4225, 4221, 4141, 4145, 4149, 4153, 4157, 4161, 4165, 4169, 4173, 4177, 4181, 4185, 4189, 4193]
  [4, 8, 2, 6, 10, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135])).val
theorem tree450_def : tree450 = (Flapjack.RegAlloc.ClashTree.delta
  [4237, 4233, 4229, 4225, 4221, 4141, 4145, 4149, 4153, 4157, 4161, 4165, 4169, 4173, 4177, 4181, 4185, 4189, 4193]
  [4, 8, 2, 6, 10, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal450 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [4237, 4233, 4229, 4225, 4221, 4141, 4145, 4149, 4153, 4157, 4161, 4165, 4169, 4173, 4177, 4181, 4185, 4189, 4193]
  [4, 8, 2, 6, 10, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135]
def live450 : Flapjack.NumSet := setValue1113
def coloured450 : Flapjack.NumSet := setValue1109
def result450 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1128, setValue1130)
def tree451 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1128)).val
theorem tree451_def : tree451 = (.set setValue1128) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal451 : Flapjack.RegAlloc.ClashTree := .set setValue1128
def live451 : Flapjack.NumSet := setValue1128
def coloured451 : Flapjack.NumSet := setValue1130
def result451 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1128, setValue1130)
def tree452 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree451 tree450)).val
theorem tree452_def : tree452 = (.seq tree451 tree450) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal452 : Flapjack.RegAlloc.ClashTree := .seq literal451 literal450
def live452 : Flapjack.NumSet := setValue1113
def coloured452 : Flapjack.NumSet := setValue1109
def result452 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1128, setValue1130)
def setValue1131 : Flapjack.NumSet := .bn setValue1 setValue1112
def tree453 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree453_def : tree453 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal453 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live453 : Flapjack.NumSet := setValue1113
def coloured453 : Flapjack.NumSet := setValue1109
def result453 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1131, setValue1105)
def setValue1132 : Flapjack.NumSet := .bn setValue1052 setValue0
def setValue1133 : Flapjack.NumSet := .bn setValue0 setValue1074
def setValue1134 : Flapjack.NumSet := .bn setValue1132 setValue1133
def setValue1135 : Flapjack.NumSet := .bn setValue0 setValue1133
def setValue1136 : Flapjack.NumSet := .bn setValue1134 setValue1135
def setValue1137 : Flapjack.NumSet := .bn setValue1135 setValue1135
def setValue1138 : Flapjack.NumSet := .bn setValue1136 setValue1137
def setValue1139 : Flapjack.NumSet := .bn setValue1138 setValue1126
def setValue1140 : Flapjack.NumSet := .bn setValue1 setValue1139
def setValue1141 : Flapjack.NumSet := .bs setValue784 () setValue785
def setValue1142 : Flapjack.NumSet := .bn setValue1141 setValue806
def setValue1143 : Flapjack.NumSet := .bn setValue1141 setValue800
def setValue1144 : Flapjack.NumSet := .bs setValue1142 () setValue1143
def setValue1145 : Flapjack.NumSet := .bs setValue1144 () setValue0
def tree454 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4141, 4145, 4149, 4153, 4157, 4161, 4165, 4169, 4173, 4177, 4181, 4185, 4189, 4193]
  [2, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135])).val
theorem tree454_def : tree454 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4141, 4145, 4149, 4153, 4157, 4161, 4165, 4169, 4173, 4177, 4181, 4185, 4189, 4193]
  [2, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal454 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4141, 4145, 4149, 4153, 4157, 4161, 4165, 4169, 4173, 4177, 4181, 4185, 4189, 4193]
  [2, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135]
def live454 : Flapjack.NumSet := setValue1131
def coloured454 : Flapjack.NumSet := setValue1105
def result454 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1140, setValue1145)
def tree455 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree454 tree453)).val
theorem tree455_def : tree455 = (.seq tree454 tree453) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal455 : Flapjack.RegAlloc.ClashTree := .seq literal454 literal453
def live455 : Flapjack.NumSet := setValue1113
def coloured455 : Flapjack.NumSet := setValue1109
def result455 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1140, setValue1145)
def setValue1146 : Flapjack.NumSet := .bn setValue1 setValue1127
def tree456 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1146)).val
theorem tree456_def : tree456 = (.set setValue1146) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal456 : Flapjack.RegAlloc.ClashTree := .set setValue1146
def live456 : Flapjack.NumSet := setValue1140
def coloured456 : Flapjack.NumSet := setValue1145
def result456 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1146, setValue790)
def tree457 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree456 tree455)).val
theorem tree457_def : tree457 = (.seq tree456 tree455) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal457 : Flapjack.RegAlloc.ClashTree := .seq literal456 literal455
def live457 : Flapjack.NumSet := setValue1113
def coloured457 : Flapjack.NumSet := setValue1109
def result457 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1146, setValue790)
def tree458 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1128) tree452 tree457)).val
theorem tree458_def : tree458 = (.branch (some setValue1128) tree452 tree457) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal458 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1128) literal452 literal457
def live458 : Flapjack.NumSet := setValue1113
def coloured458 : Flapjack.NumSet := setValue1109
def result458 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1128, setValue1130)
def tree459 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree458 tree449)).val
theorem tree459_def : tree459 = (.seq tree458 tree449) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal459 : Flapjack.RegAlloc.ClashTree := .seq literal458 literal449
def live459 : Flapjack.NumSet := setValue953
def coloured459 : Flapjack.NumSet := setValue950
def result459 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1128, setValue1130)
def setValue1147 : Flapjack.NumSet := .bn setValue0 setValue1115
def setValue1148 : Flapjack.NumSet := .bn setValue1147 setValue0
def setValue1149 : Flapjack.NumSet := .bn setValue1148 setValue1148
def setValue1150 : Flapjack.NumSet := .bn setValue1147 setValue1116
def setValue1151 : Flapjack.NumSet := .bn setValue1148 setValue1150
def setValue1152 : Flapjack.NumSet := .bn setValue1149 setValue1151
def setValue1153 : Flapjack.NumSet := .bn setValue0 setValue1116
def setValue1154 : Flapjack.NumSet := .bn setValue1148 setValue1153
def setValue1155 : Flapjack.NumSet := .bn setValue1151 setValue1154
def setValue1156 : Flapjack.NumSet := .bn setValue1152 setValue1155
def setValue1157 : Flapjack.NumSet := .bn setValue1149 setValue1154
def setValue1158 : Flapjack.NumSet := .bn setValue1157 setValue1155
def setValue1159 : Flapjack.NumSet := .bn setValue1156 setValue1158
def setValue1160 : Flapjack.NumSet := .bn setValue1159 setValue0
def setValue1161 : Flapjack.NumSet := .bn setValue0 setValue1160
def setValue1162 : Flapjack.NumSet := .bs setValue1141 () setValue806
def setValue1163 : Flapjack.NumSet := .bn setValue807 setValue1162
def setValue1164 : Flapjack.NumSet := .bn setValue1163 setValue0
def tree460 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135]
  [3925, 3985, 3965, 3945, 3973, 3917, 3921, 3929, 3933, 3937, 3941, 3949, 3953, 3957, 3961, 3969, 3977, 3981, 3989])).val
theorem tree460_def : tree460 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135]
  [3925, 3985, 3965, 3945, 3973, 3917, 3921, 3929, 3933, 3937, 3941, 3949, 3953, 3957, 3961, 3969, 3977, 3981, 3989]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal460 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135]
  [3925, 3985, 3965, 3945, 3973, 3917, 3921, 3929, 3933, 3937, 3941, 3949, 3953, 3957, 3961, 3969, 3977, 3981, 3989]
def live460 : Flapjack.NumSet := setValue1128
def coloured460 : Flapjack.NumSet := setValue1130
def result460 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree461 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree460 tree459)).val
theorem tree461_def : tree461 = (.seq tree460 tree459) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal461 : Flapjack.RegAlloc.ClashTree := .seq literal460 literal459
def live461 : Flapjack.NumSet := setValue953
def coloured461 : Flapjack.NumSet := setValue950
def result461 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree462 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree462_def : tree462 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal462 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live462 : Flapjack.NumSet := setValue1161
def coloured462 : Flapjack.NumSet := setValue1164
def result462 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree463 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree462 tree461)).val
theorem tree463_def : tree463 = (.seq tree462 tree461) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal463 : Flapjack.RegAlloc.ClashTree := .seq literal462 literal461
def live463 : Flapjack.NumSet := setValue953
def coloured463 : Flapjack.NumSet := setValue950
def result463 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree464 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree464_def : tree464 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal464 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live464 : Flapjack.NumSet := setValue1161
def coloured464 : Flapjack.NumSet := setValue1164
def result464 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree465 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree464 tree463)).val
theorem tree465_def : tree465 = (.seq tree464 tree463) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal465 : Flapjack.RegAlloc.ClashTree := .seq literal464 literal463
def live465 : Flapjack.NumSet := setValue953
def coloured465 : Flapjack.NumSet := setValue950
def result465 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def setValue1165 : Flapjack.NumSet := .bn setValue1 setValue1160
def setValue1166 : Flapjack.NumSet := .bs setValue807 () setValue1162
def setValue1167 : Flapjack.NumSet := .bn setValue1166 setValue0
def tree466 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree466_def : tree466 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal466 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live466 : Flapjack.NumSet := setValue1161
def coloured466 : Flapjack.NumSet := setValue1164
def result466 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1165, setValue1167)
def setValue1168 : Flapjack.NumSet := .bn setValue1116 setValue1116
def setValue1169 : Flapjack.NumSet := .bn setValue1148 setValue1168
def setValue1170 : Flapjack.NumSet := .bn setValue1151 setValue1169
def setValue1171 : Flapjack.NumSet := .bn setValue1157 setValue1170
def setValue1172 : Flapjack.NumSet := .bn setValue1156 setValue1171
def setValue1173 : Flapjack.NumSet := .bn setValue1172 setValue0
def setValue1174 : Flapjack.NumSet := .bn setValue0 setValue1173
def tree467 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [4033])).val
theorem tree467_def : tree467 = (Flapjack.RegAlloc.ClashTree.delta [2] [4033]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal467 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [4033]
def live467 : Flapjack.NumSet := setValue1165
def coloured467 : Flapjack.NumSet := setValue1167
def result467 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1174, setValue1167)
def tree468 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree467 tree466)).val
theorem tree468_def : tree468 = (.seq tree467 tree466) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal468 : Flapjack.RegAlloc.ClashTree := .seq literal467 literal466
def live468 : Flapjack.NumSet := setValue1161
def coloured468 : Flapjack.NumSet := setValue1164
def result468 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1174, setValue1167)
def tree469 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4033] [])).val
theorem tree469_def : tree469 = (Flapjack.RegAlloc.ClashTree.delta [4033] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal469 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4033] []
def live469 : Flapjack.NumSet := setValue1174
def coloured469 : Flapjack.NumSet := setValue1167
def result469 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree470 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree469 tree468)).val
theorem tree470_def : tree470 = (.seq tree469 tree468) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal470 : Flapjack.RegAlloc.ClashTree := .seq literal469 literal468
def live470 : Flapjack.NumSet := setValue1161
def coloured470 : Flapjack.NumSet := setValue1164
def result470 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def setValue1175 : Flapjack.NumSet := .bn setValue1150 setValue1148
def setValue1176 : Flapjack.NumSet := .bn setValue1175 setValue1151
def setValue1177 : Flapjack.NumSet := .bn setValue1176 setValue1155
def setValue1178 : Flapjack.NumSet := .bn setValue1177 setValue1158
def setValue1179 : Flapjack.NumSet := .bn setValue1178 setValue0
def setValue1180 : Flapjack.NumSet := .bn setValue0 setValue1179
def setValue1181 : Flapjack.NumSet := .bs setValue1163 () setValue0
def tree471 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4029])).val
theorem tree471_def : tree471 = (Flapjack.RegAlloc.ClashTree.delta [] [4029]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal471 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4029]
def live471 : Flapjack.NumSet := setValue1161
def coloured471 : Flapjack.NumSet := setValue1164
def result471 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1180, setValue1181)
def tree472 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree471 tree470)).val
theorem tree472_def : tree472 = (.seq tree471 tree470) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal472 : Flapjack.RegAlloc.ClashTree := .seq literal471 literal470
def live472 : Flapjack.NumSet := setValue1161
def coloured472 : Flapjack.NumSet := setValue1164
def result472 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1180, setValue1181)
def setValue1182 : Flapjack.NumSet := .bn setValue1175 setValue1154
def setValue1183 : Flapjack.NumSet := .bn setValue1182 setValue1155
def setValue1184 : Flapjack.NumSet := .bn setValue1156 setValue1183
def setValue1185 : Flapjack.NumSet := .bn setValue1184 setValue0
def setValue1186 : Flapjack.NumSet := .bn setValue0 setValue1185
def tree473 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4029] [4025])).val
theorem tree473_def : tree473 = (Flapjack.RegAlloc.ClashTree.delta [4029] [4025]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal473 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4029] [4025]
def live473 : Flapjack.NumSet := setValue1180
def coloured473 : Flapjack.NumSet := setValue1181
def result473 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1186, setValue1181)
def tree474 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree473 tree472)).val
theorem tree474_def : tree474 = (.seq tree473 tree472) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal474 : Flapjack.RegAlloc.ClashTree := .seq literal473 literal472
def live474 : Flapjack.NumSet := setValue1161
def coloured474 : Flapjack.NumSet := setValue1164
def result474 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1186, setValue1181)
def tree475 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4025] [])).val
theorem tree475_def : tree475 = (Flapjack.RegAlloc.ClashTree.delta [4025] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal475 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4025] []
def live475 : Flapjack.NumSet := setValue1186
def coloured475 : Flapjack.NumSet := setValue1181
def result475 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree476 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree475 tree474)).val
theorem tree476_def : tree476 = (.seq tree475 tree474) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal476 : Flapjack.RegAlloc.ClashTree := .seq literal475 literal474
def live476 : Flapjack.NumSet := setValue1161
def coloured476 : Flapjack.NumSet := setValue1164
def result476 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree477 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree477_def : tree477 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal477 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live477 : Flapjack.NumSet := setValue1161
def coloured477 : Flapjack.NumSet := setValue1164
def result477 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree478 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree477 tree476)).val
theorem tree478_def : tree478 = (.seq tree477 tree476) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal478 : Flapjack.RegAlloc.ClashTree := .seq literal477 literal476
def live478 : Flapjack.NumSet := setValue1161
def coloured478 : Flapjack.NumSet := setValue1164
def result478 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree479 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree479_def : tree479 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal479 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live479 : Flapjack.NumSet := setValue1161
def coloured479 : Flapjack.NumSet := setValue1164
def result479 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def tree480 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree478 tree479)).val
theorem tree480_def : tree480 = (.branch (none) tree478 tree479) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal480 : Flapjack.RegAlloc.ClashTree := .branch (none) literal478 literal479
def live480 : Flapjack.NumSet := setValue1161
def coloured480 : Flapjack.NumSet := setValue1164
def result480 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1161, setValue1164)
def setValue1187 : Flapjack.NumSet := .bn setValue1150 setValue1150
def setValue1188 : Flapjack.NumSet := .bn setValue1149 setValue1187
def setValue1189 : Flapjack.NumSet := .bn setValue1188 setValue1155
def setValue1190 : Flapjack.NumSet := .bn setValue1150 setValue1153
def setValue1191 : Flapjack.NumSet := .bn setValue1149 setValue1190
def setValue1192 : Flapjack.NumSet := .bn setValue1191 setValue1155
def setValue1193 : Flapjack.NumSet := .bn setValue1189 setValue1192
def setValue1194 : Flapjack.NumSet := .bn setValue1193 setValue0
def setValue1195 : Flapjack.NumSet := .bn setValue0 setValue1194
def setValue1196 : Flapjack.NumSet := .bs setValue1166 () setValue0
def tree481 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4009, 4013])).val
theorem tree481_def : tree481 = (Flapjack.RegAlloc.ClashTree.delta [] [4009, 4013]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal481 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4009, 4013]
def live481 : Flapjack.NumSet := setValue1161
def coloured481 : Flapjack.NumSet := setValue1164
def result481 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1195, setValue1196)
def tree482 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree481 tree480)).val
theorem tree482_def : tree482 = (.seq tree481 tree480) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal482 : Flapjack.RegAlloc.ClashTree := .seq literal481 literal480
def live482 : Flapjack.NumSet := setValue1161
def coloured482 : Flapjack.NumSet := setValue1164
def result482 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1195, setValue1196)
def tree483 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree482 tree465)).val
theorem tree483_def : tree483 = (.seq tree482 tree465) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal483 : Flapjack.RegAlloc.ClashTree := .seq literal482 literal465
def live483 : Flapjack.NumSet := setValue953
def coloured483 : Flapjack.NumSet := setValue950
def result483 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1195, setValue1196)
def setValue1197 : Flapjack.NumSet := .bn setValue1156 setValue1192
def setValue1198 : Flapjack.NumSet := .bn setValue1197 setValue0
def setValue1199 : Flapjack.NumSet := .bn setValue0 setValue1198
def tree484 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4013] [])).val
theorem tree484_def : tree484 = (Flapjack.RegAlloc.ClashTree.delta [4013] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal484 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4013] []
def live484 : Flapjack.NumSet := setValue1195
def coloured484 : Flapjack.NumSet := setValue1196
def result484 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1199, setValue1181)
def tree485 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree484 tree483)).val
theorem tree485_def : tree485 = (.seq tree484 tree483) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal485 : Flapjack.RegAlloc.ClashTree := .seq literal484 literal483
def live485 : Flapjack.NumSet := setValue953
def coloured485 : Flapjack.NumSet := setValue950
def result485 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1199, setValue1181)
def setValue1200 : Flapjack.NumSet := .bn setValue1151 setValue1190
def setValue1201 : Flapjack.NumSet := .bn setValue1157 setValue1200
def setValue1202 : Flapjack.NumSet := .bn setValue1156 setValue1201
def setValue1203 : Flapjack.NumSet := .bn setValue1202 setValue0
def setValue1204 : Flapjack.NumSet := .bn setValue0 setValue1203
def tree486 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4009] [4001])).val
theorem tree486_def : tree486 = (Flapjack.RegAlloc.ClashTree.delta [4009] [4001]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal486 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4009] [4001]
def live486 : Flapjack.NumSet := setValue1199
def coloured486 : Flapjack.NumSet := setValue1181
def result486 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1204, setValue1181)
def tree487 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree486 tree485)).val
theorem tree487_def : tree487 = (.seq tree486 tree485) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal487 : Flapjack.RegAlloc.ClashTree := .seq literal486 literal485
def live487 : Flapjack.NumSet := setValue953
def coloured487 : Flapjack.NumSet := setValue950
def result487 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1204, setValue1181)
def tree488 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree488_def : tree488 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal488 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live488 : Flapjack.NumSet := setValue1204
def coloured488 : Flapjack.NumSet := setValue1181
def result488 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1204, setValue1181)
def tree489 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree488 tree487)).val
theorem tree489_def : tree489 = (.seq tree488 tree487) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal489 : Flapjack.RegAlloc.ClashTree := .seq literal488 literal487
def live489 : Flapjack.NumSet := setValue953
def coloured489 : Flapjack.NumSet := setValue950
def result489 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1204, setValue1181)
def setValue1205 : Flapjack.NumSet := .bn setValue0 setValue1147
def setValue1206 : Flapjack.NumSet := .bn setValue1205 setValue1205
def setValue1207 : Flapjack.NumSet := .bn setValue1206 setValue1206
def setValue1208 : Flapjack.NumSet := .bn setValue1147 setValue1147
def setValue1209 : Flapjack.NumSet := .bn setValue1205 setValue1208
def setValue1210 : Flapjack.NumSet := .bn setValue1206 setValue1209
def setValue1211 : Flapjack.NumSet := .bn setValue1207 setValue1210
def setValue1212 : Flapjack.NumSet := .bn setValue1210 setValue1210
def setValue1213 : Flapjack.NumSet := .bn setValue1211 setValue1212
def setValue1214 : Flapjack.NumSet := .bn setValue0 setValue1213
def setValue1215 : Flapjack.NumSet := .bn setValue1 setValue1214
def setValue1216 : Flapjack.NumSet := .bn setValue1 setValue2
def setValue1217 : Flapjack.NumSet := .bn setValue1216 setValue785
def setValue1218 : Flapjack.NumSet := .bn setValue785 setValue785
def setValue1219 : Flapjack.NumSet := .bn setValue1217 setValue1218
def setValue1220 : Flapjack.NumSet := .bn setValue2 setValue4
def setValue1221 : Flapjack.NumSet := .bn setValue785 setValue1220
def setValue1222 : Flapjack.NumSet := .bn setValue1217 setValue1221
def setValue1223 : Flapjack.NumSet := .bs setValue1219 () setValue1222
def setValue1224 : Flapjack.NumSet := .bn setValue1223 setValue0
def tree490 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [4001, 3917, 3921, 3925, 3929, 3933, 3937, 3941, 3945, 3949, 3953, 3957, 3961, 3965, 3969, 3973, 3977, 3981, 3985,
    3989]
  [2, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895, 3899, 3903, 3907, 3911])).val
theorem tree490_def : tree490 = (Flapjack.RegAlloc.ClashTree.delta
  [4001, 3917, 3921, 3925, 3929, 3933, 3937, 3941, 3945, 3949, 3953, 3957, 3961, 3965, 3969, 3973, 3977, 3981, 3985,
    3989]
  [2, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895, 3899, 3903, 3907, 3911]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal490 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [4001, 3917, 3921, 3925, 3929, 3933, 3937, 3941, 3945, 3949, 3953, 3957, 3961, 3965, 3969, 3973, 3977, 3981, 3985,
    3989]
  [2, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895, 3899, 3903, 3907, 3911]
def live490 : Flapjack.NumSet := setValue1204
def coloured490 : Flapjack.NumSet := setValue1181
def result490 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1215, setValue1224)
def tree491 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1215)).val
theorem tree491_def : tree491 = (.set setValue1215) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal491 : Flapjack.RegAlloc.ClashTree := .set setValue1215
def live491 : Flapjack.NumSet := setValue1215
def coloured491 : Flapjack.NumSet := setValue1224
def result491 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1215, setValue1224)
def tree492 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree491 tree490)).val
theorem tree492_def : tree492 = (.seq tree491 tree490) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal492 : Flapjack.RegAlloc.ClashTree := .seq literal491 literal490
def live492 : Flapjack.NumSet := setValue1204
def coloured492 : Flapjack.NumSet := setValue1181
def result492 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1215, setValue1224)
def setValue1225 : Flapjack.NumSet := .bn setValue1 setValue1203
def tree493 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree493_def : tree493 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal493 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live493 : Flapjack.NumSet := setValue1204
def coloured493 : Flapjack.NumSet := setValue1181
def result493 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1225, setValue1196)
def setValue1226 : Flapjack.NumSet := .bn setValue1153 setValue0
def setValue1227 : Flapjack.NumSet := .bn setValue0 setValue1226
def setValue1228 : Flapjack.NumSet := .bn setValue0 setValue1227
def setValue1229 : Flapjack.NumSet := .bn setValue0 setValue1228
def setValue1230 : Flapjack.NumSet := .bn setValue1229 setValue1213
def setValue1231 : Flapjack.NumSet := .bn setValue1 setValue1230
def setValue1232 : Flapjack.NumSet := .bs setValue1223 () setValue0
def tree494 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 3917, 3921, 3925, 3929, 3933, 3937, 3941, 3945, 3949, 3953, 3957, 3961, 3965, 3969, 3973, 3977, 3981, 3985, 3989]
  [2, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895, 3899, 3903, 3907, 3911])).val
theorem tree494_def : tree494 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 3917, 3921, 3925, 3929, 3933, 3937, 3941, 3945, 3949, 3953, 3957, 3961, 3965, 3969, 3973, 3977, 3981, 3985, 3989]
  [2, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895, 3899, 3903, 3907, 3911]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal494 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 3917, 3921, 3925, 3929, 3933, 3937, 3941, 3945, 3949, 3953, 3957, 3961, 3965, 3969, 3973, 3977, 3981, 3985, 3989]
  [2, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895, 3899, 3903, 3907, 3911]
def live494 : Flapjack.NumSet := setValue1225
def coloured494 : Flapjack.NumSet := setValue1196
def result494 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1231, setValue1232)
def tree495 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree494 tree493)).val
theorem tree495_def : tree495 = (.seq tree494 tree493) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal495 : Flapjack.RegAlloc.ClashTree := .seq literal494 literal493
def live495 : Flapjack.NumSet := setValue1204
def coloured495 : Flapjack.NumSet := setValue1181
def result495 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1231, setValue1232)
def tree496 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1215)).val
theorem tree496_def : tree496 = (.set setValue1215) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal496 : Flapjack.RegAlloc.ClashTree := .set setValue1215
def live496 : Flapjack.NumSet := setValue1231
def coloured496 : Flapjack.NumSet := setValue1232
def result496 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1215, setValue1224)
def tree497 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree496 tree495)).val
theorem tree497_def : tree497 = (.seq tree496 tree495) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal497 : Flapjack.RegAlloc.ClashTree := .seq literal496 literal495
def live497 : Flapjack.NumSet := setValue1204
def coloured497 : Flapjack.NumSet := setValue1181
def result497 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1215, setValue1224)
def setValue1233 : Flapjack.NumSet := .bn setValue350 setValue1214
def setValue1234 : Flapjack.NumSet := .bs setValue1216 () setValue785
def setValue1235 : Flapjack.NumSet := .bs setValue785 () setValue785
def setValue1236 : Flapjack.NumSet := .bs setValue1234 () setValue1235
def setValue1237 : Flapjack.NumSet := .bs setValue2 () setValue4
def setValue1238 : Flapjack.NumSet := .bs setValue785 () setValue1237
def setValue1239 : Flapjack.NumSet := .bs setValue1234 () setValue1238
def setValue1240 : Flapjack.NumSet := .bs setValue1236 () setValue1239
def setValue1241 : Flapjack.NumSet := .bn setValue1240 setValue0
def tree498 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1233) tree492 tree497)).val
theorem tree498_def : tree498 = (.branch (some setValue1233) tree492 tree497) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal498 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1233) literal492 literal497
def live498 : Flapjack.NumSet := setValue1204
def coloured498 : Flapjack.NumSet := setValue1181
def result498 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1233, setValue1241)
def tree499 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree498 tree489)).val
theorem tree499_def : tree499 = (.seq tree498 tree489) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal499 : Flapjack.RegAlloc.ClashTree := .seq literal498 literal489
def live499 : Flapjack.NumSet := setValue953
def coloured499 : Flapjack.NumSet := setValue950
def result499 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1233, setValue1241)
def setValue1242 : Flapjack.NumSet := .bn setValue0 setValue1114
def setValue1243 : Flapjack.NumSet := .bn setValue0 setValue1242
def setValue1244 : Flapjack.NumSet := .bn setValue1243 setValue0
def setValue1245 : Flapjack.NumSet := .bn setValue0 setValue1244
def setValue1246 : Flapjack.NumSet := .bn setValue1242 setValue0
def setValue1247 : Flapjack.NumSet := .bn setValue1243 setValue1246
def setValue1248 : Flapjack.NumSet := .bn setValue0 setValue1246
def setValue1249 : Flapjack.NumSet := .bn setValue1247 setValue1248
def setValue1250 : Flapjack.NumSet := .bn setValue1245 setValue1249
def setValue1251 : Flapjack.NumSet := .bn setValue1246 setValue0
def setValue1252 : Flapjack.NumSet := .bn setValue1247 setValue1251
def setValue1253 : Flapjack.NumSet := .bn setValue1244 setValue1248
def setValue1254 : Flapjack.NumSet := .bn setValue1252 setValue1253
def setValue1255 : Flapjack.NumSet := .bn setValue1250 setValue1254
def setValue1256 : Flapjack.NumSet := .bn setValue1242 setValue1242
def setValue1257 : Flapjack.NumSet := .bn setValue1256 setValue0
def setValue1258 : Flapjack.NumSet := .bn setValue1247 setValue1257
def setValue1259 : Flapjack.NumSet := .bn setValue1246 setValue1246
def setValue1260 : Flapjack.NumSet := .bn setValue1244 setValue1259
def setValue1261 : Flapjack.NumSet := .bn setValue1258 setValue1260
def setValue1262 : Flapjack.NumSet := .bn setValue1247 setValue1259
def setValue1263 : Flapjack.NumSet := .bn setValue1262 setValue1260
def setValue1264 : Flapjack.NumSet := .bn setValue1261 setValue1263
def setValue1265 : Flapjack.NumSet := .bn setValue1255 setValue1264
def setValue1266 : Flapjack.NumSet := .bn setValue1265 setValue0
def setValue1267 : Flapjack.NumSet := .bn setValue0 setValue1266
def setValue1268 : Flapjack.NumSet := .bs setValue504 () setValue785
def setValue1269 : Flapjack.NumSet := .bs setValue1141 () setValue1268
def setValue1270 : Flapjack.NumSet := .bs setValue1216 () setValue85
def setValue1271 : Flapjack.NumSet := .bs setValue2 () setValue0
def setValue1272 : Flapjack.NumSet := .bs setValue85 () setValue1271
def setValue1273 : Flapjack.NumSet := .bs setValue1270 () setValue1272
def setValue1274 : Flapjack.NumSet := .bs setValue1269 () setValue1273
def setValue1275 : Flapjack.NumSet := .bs setValue1274 () setValue0
def tree500 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895,
    3899, 3903, 3907, 3911]
  [3777, 3785, 3793, 3801, 3757, 3765, 3769, 3761, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3793, 3701, 3705, 3797,
    3713, 3785, 3717, 3801, 3721, 3725, 3777, 3729])).val
theorem tree500_def : tree500 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895,
    3899, 3903, 3907, 3911]
  [3777, 3785, 3793, 3801, 3757, 3765, 3769, 3761, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3793, 3701, 3705, 3797,
    3713, 3785, 3717, 3801, 3721, 3725, 3777, 3729]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal500 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 3839, 3843, 3847, 3851, 3855, 3859, 3863, 3867, 3871, 3875, 3879, 3883, 3887, 3891, 3895,
    3899, 3903, 3907, 3911]
  [3777, 3785, 3793, 3801, 3757, 3765, 3769, 3761, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3793, 3701, 3705, 3797,
    3713, 3785, 3717, 3801, 3721, 3725, 3777, 3729]
def live500 : Flapjack.NumSet := setValue1233
def coloured500 : Flapjack.NumSet := setValue1241
def result500 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1267, setValue1275)
def tree501 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree500 tree499)).val
theorem tree501_def : tree501 = (.seq tree500 tree499) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal501 : Flapjack.RegAlloc.ClashTree := .seq literal500 literal499
def live501 : Flapjack.NumSet := setValue953
def coloured501 : Flapjack.NumSet := setValue950
def result501 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1267, setValue1275)
def setValue1276 : Flapjack.NumSet := .bn setValue1247 setValue1244
def setValue1277 : Flapjack.NumSet := .bn setValue1276 setValue1260
def setValue1278 : Flapjack.NumSet := .bn setValue1277 setValue1263
def setValue1279 : Flapjack.NumSet := .bn setValue1255 setValue1278
def setValue1280 : Flapjack.NumSet := .bn setValue1279 setValue0
def setValue1281 : Flapjack.NumSet := .bn setValue0 setValue1280
def setValue1282 : Flapjack.NumSet := .bn setValue85 setValue1271
def setValue1283 : Flapjack.NumSet := .bs setValue1270 () setValue1282
def setValue1284 : Flapjack.NumSet := .bs setValue1269 () setValue1283
def setValue1285 : Flapjack.NumSet := .bs setValue1284 () setValue0
def tree502 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3801] [3797])).val
theorem tree502_def : tree502 = (Flapjack.RegAlloc.ClashTree.delta [3801] [3797]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal502 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3801] [3797]
def live502 : Flapjack.NumSet := setValue1267
def coloured502 : Flapjack.NumSet := setValue1275
def result502 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1281, setValue1285)
def tree503 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree502 tree501)).val
theorem tree503_def : tree503 = (.seq tree502 tree501) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal503 : Flapjack.RegAlloc.ClashTree := .seq literal502 literal501
def live503 : Flapjack.NumSet := setValue953
def coloured503 : Flapjack.NumSet := setValue950
def result503 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1281, setValue1285)
def setValue1286 : Flapjack.NumSet := .bn setValue1245 setValue1262
def setValue1287 : Flapjack.NumSet := .bn setValue1247 setValue0
def setValue1288 : Flapjack.NumSet := .bn setValue1287 setValue1253
def setValue1289 : Flapjack.NumSet := .bn setValue1286 setValue1288
def setValue1290 : Flapjack.NumSet := .bn setValue1289 setValue1278
def setValue1291 : Flapjack.NumSet := .bn setValue1290 setValue0
def setValue1292 : Flapjack.NumSet := .bn setValue0 setValue1291
def tree504 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3797] [3789])).val
theorem tree504_def : tree504 = (Flapjack.RegAlloc.ClashTree.delta [3797] [3789]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal504 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3797] [3789]
def live504 : Flapjack.NumSet := setValue1281
def coloured504 : Flapjack.NumSet := setValue1285
def result504 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1292, setValue1285)
def tree505 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree504 tree503)).val
theorem tree505_def : tree505 = (.seq tree504 tree503) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal505 : Flapjack.RegAlloc.ClashTree := .seq literal504 literal503
def live505 : Flapjack.NumSet := setValue953
def coloured505 : Flapjack.NumSet := setValue950
def result505 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1292, setValue1285)
def setValue1293 : Flapjack.NumSet := .bn setValue1249 setValue1260
def setValue1294 : Flapjack.NumSet := .bn setValue1277 setValue1293
def setValue1295 : Flapjack.NumSet := .bn setValue1289 setValue1294
def setValue1296 : Flapjack.NumSet := .bn setValue1295 setValue0
def setValue1297 : Flapjack.NumSet := .bn setValue0 setValue1296
def setValue1298 : Flapjack.NumSet := .bn setValue1141 setValue1268
def setValue1299 : Flapjack.NumSet := .bs setValue1298 () setValue1283
def setValue1300 : Flapjack.NumSet := .bs setValue1299 () setValue0
def tree506 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3793] [3789])).val
theorem tree506_def : tree506 = (Flapjack.RegAlloc.ClashTree.delta [3793] [3789]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal506 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3793] [3789]
def live506 : Flapjack.NumSet := setValue1292
def coloured506 : Flapjack.NumSet := setValue1285
def result506 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1297, setValue1300)
def tree507 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree506 tree505)).val
theorem tree507_def : tree507 = (.seq tree506 tree505) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal507 : Flapjack.RegAlloc.ClashTree := .seq literal506 literal505
def live507 : Flapjack.NumSet := setValue953
def coloured507 : Flapjack.NumSet := setValue950
def result507 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1297, setValue1300)
def setValue1301 : Flapjack.NumSet := .bn setValue1287 setValue1260
def setValue1302 : Flapjack.NumSet := .bn setValue1250 setValue1301
def setValue1303 : Flapjack.NumSet := .bn setValue1302 setValue1294
def setValue1304 : Flapjack.NumSet := .bn setValue1303 setValue0
def setValue1305 : Flapjack.NumSet := .bn setValue0 setValue1304
def tree508 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3789] [3781])).val
theorem tree508_def : tree508 = (Flapjack.RegAlloc.ClashTree.delta [3789] [3781]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal508 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3789] [3781]
def live508 : Flapjack.NumSet := setValue1297
def coloured508 : Flapjack.NumSet := setValue1300
def result508 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1305, setValue1300)
def tree509 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree508 tree507)).val
theorem tree509_def : tree509 = (.seq tree508 tree507) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal509 : Flapjack.RegAlloc.ClashTree := .seq literal508 literal507
def live509 : Flapjack.NumSet := setValue953
def coloured509 : Flapjack.NumSet := setValue950
def result509 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1305, setValue1300)
def setValue1306 : Flapjack.NumSet := .bn setValue1276 setValue1253
def setValue1307 : Flapjack.NumSet := .bn setValue1306 setValue1293
def setValue1308 : Flapjack.NumSet := .bn setValue1302 setValue1307
def setValue1309 : Flapjack.NumSet := .bn setValue1308 setValue0
def setValue1310 : Flapjack.NumSet := .bn setValue0 setValue1309
def setValue1311 : Flapjack.NumSet := .bn setValue1270 setValue1282
def setValue1312 : Flapjack.NumSet := .bs setValue1298 () setValue1311
def setValue1313 : Flapjack.NumSet := .bs setValue1312 () setValue0
def tree510 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3785] [3781])).val
theorem tree510_def : tree510 = (Flapjack.RegAlloc.ClashTree.delta [3785] [3781]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal510 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3785] [3781]
def live510 : Flapjack.NumSet := setValue1305
def coloured510 : Flapjack.NumSet := setValue1300
def result510 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1310, setValue1313)
def tree511 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree510 tree509)).val
theorem tree511_def : tree511 = (.seq tree510 tree509) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal511 : Flapjack.RegAlloc.ClashTree := .seq literal510 literal509
def live511 : Flapjack.NumSet := setValue953
def coloured511 : Flapjack.NumSet := setValue950
def result511 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1310, setValue1313)
def setValue1314 : Flapjack.NumSet := .bn setValue1248 setValue1244
def setValue1315 : Flapjack.NumSet := .bn setValue1314 setValue1249
def setValue1316 : Flapjack.NumSet := .bn setValue1315 setValue1288
def setValue1317 : Flapjack.NumSet := .bn setValue1316 setValue1307
def setValue1318 : Flapjack.NumSet := .bn setValue1317 setValue0
def setValue1319 : Flapjack.NumSet := .bn setValue0 setValue1318
def tree512 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3781] [3773])).val
theorem tree512_def : tree512 = (Flapjack.RegAlloc.ClashTree.delta [3781] [3773]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal512 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3781] [3773]
def live512 : Flapjack.NumSet := setValue1310
def coloured512 : Flapjack.NumSet := setValue1313
def result512 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1319, setValue1313)
def tree513 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree512 tree511)).val
theorem tree513_def : tree513 = (.seq tree512 tree511) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal513 : Flapjack.RegAlloc.ClashTree := .seq literal512 literal511
def live513 : Flapjack.NumSet := setValue953
def coloured513 : Flapjack.NumSet := setValue950
def result513 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1319, setValue1313)
def setValue1320 : Flapjack.NumSet := .bn setValue1249 setValue1253
def setValue1321 : Flapjack.NumSet := .bn setValue1306 setValue1320
def setValue1322 : Flapjack.NumSet := .bn setValue1316 setValue1321
def setValue1323 : Flapjack.NumSet := .bn setValue1322 setValue0
def setValue1324 : Flapjack.NumSet := .bn setValue0 setValue1323
def setValue1325 : Flapjack.NumSet := .bn setValue1298 setValue1311
def setValue1326 : Flapjack.NumSet := .bs setValue1325 () setValue0
def tree514 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3777] [3773])).val
theorem tree514_def : tree514 = (Flapjack.RegAlloc.ClashTree.delta [3777] [3773]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal514 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3777] [3773]
def live514 : Flapjack.NumSet := setValue1319
def coloured514 : Flapjack.NumSet := setValue1313
def result514 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1324, setValue1326)
def tree515 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree514 tree513)).val
theorem tree515_def : tree515 = (.seq tree514 tree513) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal515 : Flapjack.RegAlloc.ClashTree := .seq literal514 literal513
def live515 : Flapjack.NumSet := setValue953
def coloured515 : Flapjack.NumSet := setValue950
def result515 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1324, setValue1326)
def setValue1327 : Flapjack.NumSet := .bn setValue1244 setValue1244
def setValue1328 : Flapjack.NumSet := .bn setValue1327 setValue1249
def setValue1329 : Flapjack.NumSet := .bn setValue1328 setValue1288
def setValue1330 : Flapjack.NumSet := .bn setValue1329 setValue1321
def setValue1331 : Flapjack.NumSet := .bn setValue1330 setValue0
def setValue1332 : Flapjack.NumSet := .bn setValue0 setValue1331
def tree516 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3773] [3709])).val
theorem tree516_def : tree516 = (Flapjack.RegAlloc.ClashTree.delta [3773] [3709]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal516 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3773] [3709]
def live516 : Flapjack.NumSet := setValue1324
def coloured516 : Flapjack.NumSet := setValue1326
def result516 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1332, setValue1326)
def tree517 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree516 tree515)).val
theorem tree517_def : tree517 = (.seq tree516 tree515) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal517 : Flapjack.RegAlloc.ClashTree := .seq literal516 literal515
def live517 : Flapjack.NumSet := setValue953
def coloured517 : Flapjack.NumSet := setValue950
def result517 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1332, setValue1326)
def tree518 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree518_def : tree518 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal518 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live518 : Flapjack.NumSet := setValue1332
def coloured518 : Flapjack.NumSet := setValue1326
def result518 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1332, setValue1326)
def tree519 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree518 tree517)).val
theorem tree519_def : tree519 = (.seq tree518 tree517) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal519 : Flapjack.RegAlloc.ClashTree := .seq literal518 literal517
def live519 : Flapjack.NumSet := setValue953
def coloured519 : Flapjack.NumSet := setValue950
def result519 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1332, setValue1326)
def setValue1333 : Flapjack.NumSet := .bn setValue0 setValue1243
def setValue1334 : Flapjack.NumSet := .bn setValue1333 setValue1333
def setValue1335 : Flapjack.NumSet := .bn setValue1333 setValue1244
def setValue1336 : Flapjack.NumSet := .bn setValue1334 setValue1335
def setValue1337 : Flapjack.NumSet := .bn setValue1335 setValue1335
def setValue1338 : Flapjack.NumSet := .bn setValue1336 setValue1337
def setValue1339 : Flapjack.NumSet := .bn setValue1333 setValue0
def setValue1340 : Flapjack.NumSet := .bn setValue1339 setValue1335
def setValue1341 : Flapjack.NumSet := .bn setValue1340 setValue1337
def setValue1342 : Flapjack.NumSet := .bn setValue1338 setValue1341
def setValue1343 : Flapjack.NumSet := .bn setValue0 setValue1342
def setValue1344 : Flapjack.NumSet := .bn setValue3 setValue1343
def setValue1345 : Flapjack.NumSet := .bs setValue786 () setValue1218
def setValue1346 : Flapjack.NumSet := .bn setValue1216 setValue85
def setValue1347 : Flapjack.NumSet := .bn setValue2 setValue0
def setValue1348 : Flapjack.NumSet := .bs setValue85 () setValue1347
def setValue1349 : Flapjack.NumSet := .bs setValue1346 () setValue1348
def setValue1350 : Flapjack.NumSet := .bs setValue1345 () setValue1349
def setValue1351 : Flapjack.NumSet := .bn setValue1350 setValue0
def tree520 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [3769, 3765, 3761, 3757, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3701, 3705, 3709, 3713, 3717, 3721, 3725, 3729]
  [6, 4, 8, 2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667])).val
theorem tree520_def : tree520 = (Flapjack.RegAlloc.ClashTree.delta
  [3769, 3765, 3761, 3757, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3701, 3705, 3709, 3713, 3717, 3721, 3725, 3729]
  [6, 4, 8, 2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal520 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [3769, 3765, 3761, 3757, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3701, 3705, 3709, 3713, 3717, 3721, 3725, 3729]
  [6, 4, 8, 2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667]
def live520 : Flapjack.NumSet := setValue1332
def coloured520 : Flapjack.NumSet := setValue1326
def result520 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1344, setValue1351)
def tree521 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1344)).val
theorem tree521_def : tree521 = (.set setValue1344) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal521 : Flapjack.RegAlloc.ClashTree := .set setValue1344
def live521 : Flapjack.NumSet := setValue1344
def coloured521 : Flapjack.NumSet := setValue1351
def result521 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1344, setValue1351)
def tree522 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree521 tree520)).val
theorem tree522_def : tree522 = (.seq tree521 tree520) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal522 : Flapjack.RegAlloc.ClashTree := .seq literal521 literal520
def live522 : Flapjack.NumSet := setValue1332
def coloured522 : Flapjack.NumSet := setValue1326
def result522 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1344, setValue1351)
def setValue1352 : Flapjack.NumSet := .bn setValue1 setValue1331
def tree523 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree523_def : tree523 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal523 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live523 : Flapjack.NumSet := setValue1332
def coloured523 : Flapjack.NumSet := setValue1326
def result523 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1352, setValue1313)
def setValue1353 : Flapjack.NumSet := .bn setValue1248 setValue0
def setValue1354 : Flapjack.NumSet := .bn setValue0 setValue1353
def setValue1355 : Flapjack.NumSet := .bn setValue1353 setValue0
def setValue1356 : Flapjack.NumSet := .bn setValue1354 setValue1355
def setValue1357 : Flapjack.NumSet := .bn setValue1355 setValue1355
def setValue1358 : Flapjack.NumSet := .bn setValue1356 setValue1357
def setValue1359 : Flapjack.NumSet := .bn setValue1358 setValue1342
def setValue1360 : Flapjack.NumSet := .bn setValue1 setValue1359
def setValue1361 : Flapjack.NumSet := .bn setValue1141 setValue1235
def setValue1362 : Flapjack.NumSet := .bs setValue1361 () setValue1311
def setValue1363 : Flapjack.NumSet := .bn setValue1362 setValue0
def tree524 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3701, 3705, 3709, 3713, 3717, 3721, 3725, 3729]
  [2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667])).val
theorem tree524_def : tree524 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3701, 3705, 3709, 3713, 3717, 3721, 3725, 3729]
  [2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal524 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 3673, 3677, 3681, 3685, 3689, 3693, 3697, 3701, 3705, 3709, 3713, 3717, 3721, 3725, 3729]
  [2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667]
def live524 : Flapjack.NumSet := setValue1352
def coloured524 : Flapjack.NumSet := setValue1313
def result524 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1360, setValue1363)
def tree525 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree524 tree523)).val
theorem tree525_def : tree525 = (.seq tree524 tree523) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal525 : Flapjack.RegAlloc.ClashTree := .seq literal524 literal523
def live525 : Flapjack.NumSet := setValue1332
def coloured525 : Flapjack.NumSet := setValue1326
def result525 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1360, setValue1363)
def setValue1364 : Flapjack.NumSet := .bn setValue1 setValue1343
def setValue1365 : Flapjack.NumSet := .bn setValue786 setValue1218
def setValue1366 : Flapjack.NumSet := .bn setValue85 setValue1347
def setValue1367 : Flapjack.NumSet := .bn setValue1346 setValue1366
def setValue1368 : Flapjack.NumSet := .bs setValue1365 () setValue1367
def setValue1369 : Flapjack.NumSet := .bn setValue1368 setValue0
def tree526 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1364)).val
theorem tree526_def : tree526 = (.set setValue1364) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal526 : Flapjack.RegAlloc.ClashTree := .set setValue1364
def live526 : Flapjack.NumSet := setValue1360
def coloured526 : Flapjack.NumSet := setValue1363
def result526 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1364, setValue1369)
def tree527 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree526 tree525)).val
theorem tree527_def : tree527 = (.seq tree526 tree525) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal527 : Flapjack.RegAlloc.ClashTree := .seq literal526 literal525
def live527 : Flapjack.NumSet := setValue1332
def coloured527 : Flapjack.NumSet := setValue1326
def result527 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1364, setValue1369)
def tree528 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1364) tree522 tree527)).val
theorem tree528_def : tree528 = (.branch (some setValue1364) tree522 tree527) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal528 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1364) literal522 literal527
def live528 : Flapjack.NumSet := setValue1332
def coloured528 : Flapjack.NumSet := setValue1326
def result528 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1364, setValue1369)
def tree529 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree528 tree519)).val
theorem tree529_def : tree529 = (.seq tree528 tree519) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal529 : Flapjack.RegAlloc.ClashTree := .seq literal528 literal519
def live529 : Flapjack.NumSet := setValue953
def coloured529 : Flapjack.NumSet := setValue950
def result529 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1364, setValue1369)
def setValue1370 : Flapjack.NumSet := .bn setValue0 setValue86
def setValue1371 : Flapjack.NumSet := .bn setValue1370 setValue0
def setValue1372 : Flapjack.NumSet := .bn setValue86 setValue0
def setValue1373 : Flapjack.NumSet := .bn setValue0 setValue1372
def setValue1374 : Flapjack.NumSet := .bn setValue1371 setValue1373
def setValue1375 : Flapjack.NumSet := .bn setValue1373 setValue0
def setValue1376 : Flapjack.NumSet := .bn setValue1374 setValue1375
def setValue1377 : Flapjack.NumSet := .bn setValue0 setValue1373
def setValue1378 : Flapjack.NumSet := .bn setValue1375 setValue1377
def setValue1379 : Flapjack.NumSet := .bn setValue1376 setValue1378
def setValue1380 : Flapjack.NumSet := .bn setValue86 setValue1114
def setValue1381 : Flapjack.NumSet := .bn setValue0 setValue1380
def setValue1382 : Flapjack.NumSet := .bn setValue1373 setValue1381
def setValue1383 : Flapjack.NumSet := .bn setValue0 setValue1382
def setValue1384 : Flapjack.NumSet := .bn setValue0 setValue1375
def setValue1385 : Flapjack.NumSet := .bn setValue1383 setValue1384
def setValue1386 : Flapjack.NumSet := .bn setValue1379 setValue1385
def setValue1387 : Flapjack.NumSet := .bn setValue1371 setValue0
def setValue1388 : Flapjack.NumSet := .bn setValue1387 setValue0
def setValue1389 : Flapjack.NumSet := .bn setValue1377 setValue1375
def setValue1390 : Flapjack.NumSet := .bn setValue1388 setValue1389
def setValue1391 : Flapjack.NumSet := .bn setValue0 setValue1377
def setValue1392 : Flapjack.NumSet := .bn setValue1370 setValue1372
def setValue1393 : Flapjack.NumSet := .bn setValue1392 setValue0
def setValue1394 : Flapjack.NumSet := .bn setValue1393 setValue1375
def setValue1395 : Flapjack.NumSet := .bn setValue1391 setValue1394
def setValue1396 : Flapjack.NumSet := .bn setValue1390 setValue1395
def setValue1397 : Flapjack.NumSet := .bn setValue1386 setValue1396
def setValue1398 : Flapjack.NumSet := .bn setValue1397 setValue0
def setValue1399 : Flapjack.NumSet := .bn setValue0 setValue1398
def tree530 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667]
  [3605, 3297, 3321, 3325, 3341, 3345, 3349, 3369, 3389, 3393, 3397, 3401, 3413, 3421, 3425, 3437])).val
theorem tree530_def : tree530 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667]
  [3605, 3297, 3321, 3325, 3341, 3345, 3349, 3369, 3389, 3393, 3397, 3401, 3413, 3421, 3425, 3437]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal530 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667]
  [3605, 3297, 3321, 3325, 3341, 3345, 3349, 3369, 3389, 3393, 3397, 3401, 3413, 3421, 3425, 3437]
def live530 : Flapjack.NumSet := setValue1364
def coloured530 : Flapjack.NumSet := setValue1369
def result530 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1399, setValue1369)
def tree531 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree530 tree529)).val
theorem tree531_def : tree531 = (.seq tree530 tree529) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal531 : Flapjack.RegAlloc.ClashTree := .seq literal530 literal529
def live531 : Flapjack.NumSet := setValue953
def coloured531 : Flapjack.NumSet := setValue950
def result531 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1399, setValue1369)
def setValue1400 : Flapjack.NumSet := .bn setValue1373 setValue1373
def setValue1401 : Flapjack.NumSet := .bn setValue0 setValue1400
def setValue1402 : Flapjack.NumSet := .bn setValue1401 setValue1384
def setValue1403 : Flapjack.NumSet := .bn setValue1379 setValue1402
def setValue1404 : Flapjack.NumSet := .bn setValue0 setValue1381
def setValue1405 : Flapjack.NumSet := .bn setValue0 setValue1404
def setValue1406 : Flapjack.NumSet := .bn setValue1405 setValue1394
def setValue1407 : Flapjack.NumSet := .bn setValue1390 setValue1406
def setValue1408 : Flapjack.NumSet := .bn setValue1403 setValue1407
def setValue1409 : Flapjack.NumSet := .bn setValue1408 setValue0
def setValue1410 : Flapjack.NumSet := .bn setValue0 setValue1409
def setValue1411 : Flapjack.NumSet := .bn setValue1365 setValue1367
def setValue1412 : Flapjack.NumSet := .bs setValue1411 () setValue0
def tree532 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3605] [3601])).val
theorem tree532_def : tree532 = (Flapjack.RegAlloc.ClashTree.delta [3605] [3601]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal532 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3605] [3601]
def live532 : Flapjack.NumSet := setValue1399
def coloured532 : Flapjack.NumSet := setValue1369
def result532 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1410, setValue1412)
def tree533 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree532 tree531)).val
theorem tree533_def : tree533 = (.seq tree532 tree531) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal533 : Flapjack.RegAlloc.ClashTree := .seq literal532 literal531
def live533 : Flapjack.NumSet := setValue953
def coloured533 : Flapjack.NumSet := setValue950
def result533 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1410, setValue1412)
def setValue1413 : Flapjack.NumSet := .bn setValue1375 setValue1404
def setValue1414 : Flapjack.NumSet := .bn setValue1376 setValue1413
def setValue1415 : Flapjack.NumSet := .bn setValue1414 setValue1402
def setValue1416 : Flapjack.NumSet := .bn setValue1415 setValue1396
def setValue1417 : Flapjack.NumSet := .bn setValue1416 setValue0
def setValue1418 : Flapjack.NumSet := .bn setValue0 setValue1417
def tree534 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3601] [3597])).val
theorem tree534_def : tree534 = (Flapjack.RegAlloc.ClashTree.delta [3601] [3597]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal534 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3601] [3597]
def live534 : Flapjack.NumSet := setValue1410
def coloured534 : Flapjack.NumSet := setValue1412
def result534 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1418, setValue1412)
def tree535 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree534 tree533)).val
theorem tree535_def : tree535 = (.seq tree534 tree533) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal535 : Flapjack.RegAlloc.ClashTree := .seq literal534 literal533
def live535 : Flapjack.NumSet := setValue953
def coloured535 : Flapjack.NumSet := setValue950
def result535 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1418, setValue1412)
def setValue1419 : Flapjack.NumSet := .bn setValue1373 setValue1243
def setValue1420 : Flapjack.NumSet := .bn setValue1377 setValue1419
def setValue1421 : Flapjack.NumSet := .bn setValue1388 setValue1420
def setValue1422 : Flapjack.NumSet := .bn setValue1421 setValue1395
def setValue1423 : Flapjack.NumSet := .bn setValue1403 setValue1422
def setValue1424 : Flapjack.NumSet := .bn setValue1423 setValue0
def setValue1425 : Flapjack.NumSet := .bn setValue0 setValue1424
def tree536 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3597] [3593])).val
theorem tree536_def : tree536 = (Flapjack.RegAlloc.ClashTree.delta [3597] [3593]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal536 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3597] [3593]
def live536 : Flapjack.NumSet := setValue1418
def coloured536 : Flapjack.NumSet := setValue1412
def result536 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1425, setValue1412)
def tree537 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree536 tree535)).val
theorem tree537_def : tree537 = (.seq tree536 tree535) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal537 : Flapjack.RegAlloc.ClashTree := .seq literal536 literal535
def live537 : Flapjack.NumSet := setValue953
def coloured537 : Flapjack.NumSet := setValue950
def result537 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1425, setValue1412)
def setValue1426 : Flapjack.NumSet := .bn setValue0 setValue1419
def setValue1427 : Flapjack.NumSet := .bn setValue1401 setValue1426
def setValue1428 : Flapjack.NumSet := .bn setValue1379 setValue1427
def setValue1429 : Flapjack.NumSet := .bn setValue1428 setValue1396
def setValue1430 : Flapjack.NumSet := .bn setValue1429 setValue0
def setValue1431 : Flapjack.NumSet := .bn setValue0 setValue1430
def tree538 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3593] [3589])).val
theorem tree538_def : tree538 = (Flapjack.RegAlloc.ClashTree.delta [3593] [3589]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal538 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3593] [3589]
def live538 : Flapjack.NumSet := setValue1425
def coloured538 : Flapjack.NumSet := setValue1412
def result538 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1431, setValue1412)
def tree539 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree538 tree537)).val
theorem tree539_def : tree539 = (.seq tree538 tree537) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal539 : Flapjack.RegAlloc.ClashTree := .seq literal538 literal537
def live539 : Flapjack.NumSet := setValue953
def coloured539 : Flapjack.NumSet := setValue950
def result539 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1431, setValue1412)
def setValue1432 : Flapjack.NumSet := .bn setValue1403 setValue1396
def setValue1433 : Flapjack.NumSet := .bn setValue1432 setValue0
def setValue1434 : Flapjack.NumSet := .bn setValue0 setValue1433
def setValue1435 : Flapjack.NumSet := .bn setValue1411 setValue0
def tree540 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3589] [])).val
theorem tree540_def : tree540 = (Flapjack.RegAlloc.ClashTree.delta [3589] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal540 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3589] []
def live540 : Flapjack.NumSet := setValue1431
def coloured540 : Flapjack.NumSet := setValue1412
def result540 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree541 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree540 tree539)).val
theorem tree541_def : tree541 = (.seq tree540 tree539) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal541 : Flapjack.RegAlloc.ClashTree := .seq literal540 literal539
def live541 : Flapjack.NumSet := setValue953
def coloured541 : Flapjack.NumSet := setValue950
def result541 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree542 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree542_def : tree542 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal542 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live542 : Flapjack.NumSet := setValue1434
def coloured542 : Flapjack.NumSet := setValue1435
def result542 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree543 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree542 tree541)).val
theorem tree543_def : tree543 = (.seq tree542 tree541) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal543 : Flapjack.RegAlloc.ClashTree := .seq literal542 literal541
def live543 : Flapjack.NumSet := setValue953
def coloured543 : Flapjack.NumSet := setValue950
def result543 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def setValue1436 : Flapjack.NumSet := .bn setValue1374 setValue1400
def setValue1437 : Flapjack.NumSet := .bn setValue1392 setValue1373
def setValue1438 : Flapjack.NumSet := .bn setValue1437 setValue1400
def setValue1439 : Flapjack.NumSet := .bn setValue1436 setValue1438
def setValue1440 : Flapjack.NumSet := .bn setValue1439 setValue1439
def setValue1441 : Flapjack.NumSet := .bn setValue1440 setValue1440
def setValue1442 : Flapjack.NumSet := .bn setValue1441 setValue0
def setValue1443 : Flapjack.NumSet := .bn setValue0 setValue1442
def setValue1444 : Flapjack.NumSet := .bs setValue799 () setValue3
def setValue1445 : Flapjack.NumSet := .bs setValue350 () setValue1444
def setValue1446 : Flapjack.NumSet := .bs setValue3 () setValue3
def setValue1447 : Flapjack.NumSet := .bs setValue64 () setValue41
def setValue1448 : Flapjack.NumSet := .bn setValue1446 setValue1447
def setValue1449 : Flapjack.NumSet := .bn setValue1445 setValue1448
def setValue1450 : Flapjack.NumSet := .bs setValue1449 () setValue0
def tree544 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1443)).val
theorem tree544_def : tree544 = (.set setValue1443) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal544 : Flapjack.RegAlloc.ClashTree := .set setValue1443
def live544 : Flapjack.NumSet := setValue1434
def coloured544 : Flapjack.NumSet := setValue1435
def result544 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def setValue1451 : Flapjack.NumSet := .bn setValue86 setValue86
def setValue1452 : Flapjack.NumSet := .bn setValue1451 setValue1372
def setValue1453 : Flapjack.NumSet := .bn setValue1452 setValue1373
def setValue1454 : Flapjack.NumSet := .bn setValue1453 setValue1377
def setValue1455 : Flapjack.NumSet := .bn setValue1436 setValue1454
def setValue1456 : Flapjack.NumSet := .bn setValue1437 setValue1377
def setValue1457 : Flapjack.NumSet := .bn setValue1438 setValue1456
def setValue1458 : Flapjack.NumSet := .bn setValue1455 setValue1457
def setValue1459 : Flapjack.NumSet := .bn setValue1453 setValue1400
def setValue1460 : Flapjack.NumSet := .bn setValue1376 setValue1459
def setValue1461 : Flapjack.NumSet := .bn setValue1460 setValue1439
def setValue1462 : Flapjack.NumSet := .bn setValue1458 setValue1461
def setValue1463 : Flapjack.NumSet := .bn setValue1462 setValue0
def setValue1464 : Flapjack.NumSet := .bn setValue0 setValue1463
def setValue1465 : Flapjack.NumSet := .bs setValue0 () setValue4
def setValue1466 : Flapjack.NumSet := .bs setValue1465 () setValue3
def setValue1467 : Flapjack.NumSet := .bs setValue350 () setValue1466
def setValue1468 : Flapjack.NumSet := .bs setValue1467 () setValue1448
def setValue1469 : Flapjack.NumSet := .bs setValue1468 () setValue0
def tree545 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3353, 3397, 3405] [3445, 3565, 3561])).val
theorem tree545_def : tree545 = (Flapjack.RegAlloc.ClashTree.delta [3353, 3397, 3405] [3445, 3565, 3561]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal545 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3353, 3397, 3405] [3445, 3565, 3561]
def live545 : Flapjack.NumSet := setValue1443
def coloured545 : Flapjack.NumSet := setValue1450
def result545 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1464, setValue1469)
def tree546 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree546_def : tree546 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal546 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live546 : Flapjack.NumSet := setValue1464
def coloured546 : Flapjack.NumSet := setValue1469
def result546 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1464, setValue1469)
def tree547 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree546 tree545)).val
theorem tree547_def : tree547 = (.seq tree546 tree545) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal547 : Flapjack.RegAlloc.ClashTree := .seq literal546 literal545
def live547 : Flapjack.NumSet := setValue1443
def coloured547 : Flapjack.NumSet := setValue1450
def result547 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1464, setValue1469)
def tree548 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1443)).val
theorem tree548_def : tree548 = (.set setValue1443) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal548 : Flapjack.RegAlloc.ClashTree := .set setValue1443
def live548 : Flapjack.NumSet := setValue1464
def coloured548 : Flapjack.NumSet := setValue1469
def result548 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def setValue1470 : Flapjack.NumSet := .bn setValue1436 setValue1456
def setValue1471 : Flapjack.NumSet := .bn setValue1470 setValue1457
def setValue1472 : Flapjack.NumSet := .bn setValue1372 setValue1372
def setValue1473 : Flapjack.NumSet := .bn setValue1373 setValue1472
def setValue1474 : Flapjack.NumSet := .bn setValue1437 setValue1473
def setValue1475 : Flapjack.NumSet := .bn setValue1376 setValue1474
def setValue1476 : Flapjack.NumSet := .bn setValue1472 setValue1373
def setValue1477 : Flapjack.NumSet := .bn setValue1374 setValue1476
def setValue1478 : Flapjack.NumSet := .bn setValue1477 setValue1438
def setValue1479 : Flapjack.NumSet := .bn setValue1475 setValue1478
def setValue1480 : Flapjack.NumSet := .bn setValue1471 setValue1479
def setValue1481 : Flapjack.NumSet := .bn setValue1480 setValue0
def setValue1482 : Flapjack.NumSet := .bn setValue0 setValue1481
def setValue1483 : Flapjack.NumSet := .bs setValue1446 () setValue1447
def setValue1484 : Flapjack.NumSet := .bn setValue1467 setValue1483
def setValue1485 : Flapjack.NumSet := .bs setValue1484 () setValue0
def tree549 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3353, 3397, 3405] [3445, 3465, 3537])).val
theorem tree549_def : tree549 = (Flapjack.RegAlloc.ClashTree.delta [3353, 3397, 3405] [3445, 3465, 3537]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal549 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3353, 3397, 3405] [3445, 3465, 3537]
def live549 : Flapjack.NumSet := setValue1443
def coloured549 : Flapjack.NumSet := setValue1450
def result549 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1482, setValue1485)
def tree550 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree549 tree548)).val
theorem tree550_def : tree550 = (.seq tree549 tree548) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal550 : Flapjack.RegAlloc.ClashTree := .seq literal549 literal548
def live550 : Flapjack.NumSet := setValue1464
def coloured550 : Flapjack.NumSet := setValue1469
def result550 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1482, setValue1485)
def setValue1486 : Flapjack.NumSet := .bn setValue1372 setValue0
def setValue1487 : Flapjack.NumSet := .bn setValue1486 setValue1373
def setValue1488 : Flapjack.NumSet := .bn setValue1437 setValue1487
def setValue1489 : Flapjack.NumSet := .bn setValue1436 setValue1488
def setValue1490 : Flapjack.NumSet := .bn setValue1489 setValue1457
def setValue1491 : Flapjack.NumSet := .bn setValue1475 setValue1439
def setValue1492 : Flapjack.NumSet := .bn setValue1490 setValue1491
def setValue1493 : Flapjack.NumSet := .bn setValue1492 setValue0
def setValue1494 : Flapjack.NumSet := .bn setValue0 setValue1493
def tree551 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3537] [3533])).val
theorem tree551_def : tree551 = (Flapjack.RegAlloc.ClashTree.delta [3537] [3533]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal551 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3537] [3533]
def live551 : Flapjack.NumSet := setValue1482
def coloured551 : Flapjack.NumSet := setValue1485
def result551 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1494, setValue1485)
def tree552 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree551 tree550)).val
theorem tree552_def : tree552 = (.seq tree551 tree550) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal552 : Flapjack.RegAlloc.ClashTree := .seq literal551 literal550
def live552 : Flapjack.NumSet := setValue1464
def coloured552 : Flapjack.NumSet := setValue1469
def result552 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1494, setValue1485)
def setValue1495 : Flapjack.NumSet := .bn setValue1436 setValue1474
def setValue1496 : Flapjack.NumSet := .bn setValue1475 setValue1495
def setValue1497 : Flapjack.NumSet := .bn setValue1471 setValue1496
def setValue1498 : Flapjack.NumSet := .bn setValue1497 setValue0
def setValue1499 : Flapjack.NumSet := .bn setValue0 setValue1498
def tree553 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3533] [3457])).val
theorem tree553_def : tree553 = (Flapjack.RegAlloc.ClashTree.delta [3533] [3457]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal553 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3533] [3457]
def live553 : Flapjack.NumSet := setValue1494
def coloured553 : Flapjack.NumSet := setValue1485
def result553 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree554 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree553 tree552)).val
theorem tree554_def : tree554 = (.seq tree553 tree552) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal554 : Flapjack.RegAlloc.ClashTree := .seq literal553 literal552
def live554 : Flapjack.NumSet := setValue1464
def coloured554 : Flapjack.NumSet := setValue1469
def result554 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree555 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree555_def : tree555 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal555 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live555 : Flapjack.NumSet := setValue1499
def coloured555 : Flapjack.NumSet := setValue1485
def result555 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree556 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree555 tree554)).val
theorem tree556_def : tree556 = (.seq tree555 tree554) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal556 : Flapjack.RegAlloc.ClashTree := .seq literal555 literal554
def live556 : Flapjack.NumSet := setValue1464
def coloured556 : Flapjack.NumSet := setValue1469
def result556 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree557 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree557_def : tree557 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal557 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live557 : Flapjack.NumSet := setValue1499
def coloured557 : Flapjack.NumSet := setValue1485
def result557 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree558 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree557 tree556)).val
theorem tree558_def : tree558 = (.seq tree557 tree556) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal558 : Flapjack.RegAlloc.ClashTree := .seq literal557 literal556
def live558 : Flapjack.NumSet := setValue1464
def coloured558 : Flapjack.NumSet := setValue1469
def result558 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def setValue1500 : Flapjack.NumSet := .bn setValue1 setValue1498
def setValue1501 : Flapjack.NumSet := .bs setValue1467 () setValue1483
def setValue1502 : Flapjack.NumSet := .bs setValue1501 () setValue0
def tree559 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree559_def : tree559 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal559 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live559 : Flapjack.NumSet := setValue1499
def coloured559 : Flapjack.NumSet := setValue1485
def result559 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1500, setValue1502)
def setValue1503 : Flapjack.NumSet := .bn setValue1371 setValue1472
def setValue1504 : Flapjack.NumSet := .bn setValue1503 setValue1400
def setValue1505 : Flapjack.NumSet := .bn setValue1504 setValue1474
def setValue1506 : Flapjack.NumSet := .bn setValue1475 setValue1505
def setValue1507 : Flapjack.NumSet := .bn setValue1471 setValue1506
def setValue1508 : Flapjack.NumSet := .bn setValue1507 setValue0
def setValue1509 : Flapjack.NumSet := .bn setValue0 setValue1508
def tree560 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [3505])).val
theorem tree560_def : tree560 = (Flapjack.RegAlloc.ClashTree.delta [2] [3505]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal560 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [3505]
def live560 : Flapjack.NumSet := setValue1500
def coloured560 : Flapjack.NumSet := setValue1502
def result560 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1509, setValue1502)
def tree561 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree560 tree559)).val
theorem tree561_def : tree561 = (.seq tree560 tree559) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal561 : Flapjack.RegAlloc.ClashTree := .seq literal560 literal559
def live561 : Flapjack.NumSet := setValue1499
def coloured561 : Flapjack.NumSet := setValue1485
def result561 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1509, setValue1502)
def tree562 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3505] [])).val
theorem tree562_def : tree562 = (Flapjack.RegAlloc.ClashTree.delta [3505] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal562 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3505] []
def live562 : Flapjack.NumSet := setValue1509
def coloured562 : Flapjack.NumSet := setValue1502
def result562 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree563 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree562 tree561)).val
theorem tree563_def : tree563 = (.seq tree562 tree561) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal563 : Flapjack.RegAlloc.ClashTree := .seq literal562 literal561
def live563 : Flapjack.NumSet := setValue1499
def coloured563 : Flapjack.NumSet := setValue1485
def result563 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def setValue1510 : Flapjack.NumSet := .bn setValue1392 setValue1472
def setValue1511 : Flapjack.NumSet := .bn setValue1510 setValue1377
def setValue1512 : Flapjack.NumSet := .bn setValue1436 setValue1511
def setValue1513 : Flapjack.NumSet := .bn setValue1512 setValue1457
def setValue1514 : Flapjack.NumSet := .bn setValue1513 setValue1496
def setValue1515 : Flapjack.NumSet := .bn setValue1514 setValue0
def setValue1516 : Flapjack.NumSet := .bn setValue0 setValue1515
def tree564 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3501])).val
theorem tree564_def : tree564 = (Flapjack.RegAlloc.ClashTree.delta [] [3501]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal564 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3501]
def live564 : Flapjack.NumSet := setValue1499
def coloured564 : Flapjack.NumSet := setValue1485
def result564 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1516, setValue1502)
def tree565 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree564 tree563)).val
theorem tree565_def : tree565 = (.seq tree564 tree563) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal565 : Flapjack.RegAlloc.ClashTree := .seq literal564 literal563
def live565 : Flapjack.NumSet := setValue1499
def coloured565 : Flapjack.NumSet := setValue1485
def result565 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1516, setValue1502)
def setValue1517 : Flapjack.NumSet := .bn setValue1510 setValue1473
def setValue1518 : Flapjack.NumSet := .bn setValue1376 setValue1517
def setValue1519 : Flapjack.NumSet := .bn setValue1518 setValue1495
def setValue1520 : Flapjack.NumSet := .bn setValue1471 setValue1519
def setValue1521 : Flapjack.NumSet := .bn setValue1520 setValue0
def setValue1522 : Flapjack.NumSet := .bn setValue0 setValue1521
def tree566 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3501] [3497])).val
theorem tree566_def : tree566 = (Flapjack.RegAlloc.ClashTree.delta [3501] [3497]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal566 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3501] [3497]
def live566 : Flapjack.NumSet := setValue1516
def coloured566 : Flapjack.NumSet := setValue1502
def result566 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1522, setValue1502)
def tree567 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree566 tree565)).val
theorem tree567_def : tree567 = (.seq tree566 tree565) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal567 : Flapjack.RegAlloc.ClashTree := .seq literal566 literal565
def live567 : Flapjack.NumSet := setValue1499
def coloured567 : Flapjack.NumSet := setValue1485
def result567 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1522, setValue1502)
def tree568 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3497] [])).val
theorem tree568_def : tree568 = (Flapjack.RegAlloc.ClashTree.delta [3497] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal568 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3497] []
def live568 : Flapjack.NumSet := setValue1522
def coloured568 : Flapjack.NumSet := setValue1502
def result568 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree569 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree568 tree567)).val
theorem tree569_def : tree569 = (.seq tree568 tree567) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal569 : Flapjack.RegAlloc.ClashTree := .seq literal568 literal567
def live569 : Flapjack.NumSet := setValue1499
def coloured569 : Flapjack.NumSet := setValue1485
def result569 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree570 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree570_def : tree570 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal570 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live570 : Flapjack.NumSet := setValue1499
def coloured570 : Flapjack.NumSet := setValue1485
def result570 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree571 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree570 tree569)).val
theorem tree571_def : tree571 = (.seq tree570 tree569) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal571 : Flapjack.RegAlloc.ClashTree := .seq literal570 literal569
def live571 : Flapjack.NumSet := setValue1499
def coloured571 : Flapjack.NumSet := setValue1485
def result571 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree572 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree572_def : tree572 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal572 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live572 : Flapjack.NumSet := setValue1499
def coloured572 : Flapjack.NumSet := setValue1485
def result572 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def tree573 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree571 tree572)).val
theorem tree573_def : tree573 = (.branch (none) tree571 tree572) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal573 : Flapjack.RegAlloc.ClashTree := .branch (none) literal571 literal572
def live573 : Flapjack.NumSet := setValue1499
def coloured573 : Flapjack.NumSet := setValue1485
def result573 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1499, setValue1485)
def setValue1523 : Flapjack.NumSet := .bn setValue1374 setValue1473
def setValue1524 : Flapjack.NumSet := .bn setValue1523 setValue1456
def setValue1525 : Flapjack.NumSet := .bn setValue1524 setValue1457
def setValue1526 : Flapjack.NumSet := .bn setValue1373 setValue1486
def setValue1527 : Flapjack.NumSet := .bn setValue1374 setValue1526
def setValue1528 : Flapjack.NumSet := .bn setValue1527 setValue1474
def setValue1529 : Flapjack.NumSet := .bn setValue1528 setValue1495
def setValue1530 : Flapjack.NumSet := .bn setValue1525 setValue1529
def setValue1531 : Flapjack.NumSet := .bn setValue1530 setValue0
def setValue1532 : Flapjack.NumSet := .bn setValue0 setValue1531
def setValue1533 : Flapjack.NumSet := .bs setValue0 () setValue2
def setValue1534 : Flapjack.NumSet := .bs setValue1533 () setValue3
def setValue1535 : Flapjack.NumSet := .bs setValue350 () setValue1534
def setValue1536 : Flapjack.NumSet := .bs setValue1535 () setValue1483
def setValue1537 : Flapjack.NumSet := .bs setValue1536 () setValue0
def tree574 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3481, 3485])).val
theorem tree574_def : tree574 = (Flapjack.RegAlloc.ClashTree.delta [] [3481, 3485]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal574 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3481, 3485]
def live574 : Flapjack.NumSet := setValue1499
def coloured574 : Flapjack.NumSet := setValue1485
def result574 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1532, setValue1537)
def tree575 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree574 tree573)).val
theorem tree575_def : tree575 = (.seq tree574 tree573) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal575 : Flapjack.RegAlloc.ClashTree := .seq literal574 literal573
def live575 : Flapjack.NumSet := setValue1499
def coloured575 : Flapjack.NumSet := setValue1485
def result575 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1532, setValue1537)
def tree576 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree575 tree558)).val
theorem tree576_def : tree576 = (.seq tree575 tree558) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal576 : Flapjack.RegAlloc.ClashTree := .seq literal575 literal558
def live576 : Flapjack.NumSet := setValue1464
def coloured576 : Flapjack.NumSet := setValue1469
def result576 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1532, setValue1537)
def setValue1538 : Flapjack.NumSet := .bn setValue1471 setValue1529
def setValue1539 : Flapjack.NumSet := .bn setValue1538 setValue0
def setValue1540 : Flapjack.NumSet := .bn setValue0 setValue1539
def tree577 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3485] [])).val
theorem tree577_def : tree577 = (Flapjack.RegAlloc.ClashTree.delta [3485] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal577 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3485] []
def live577 : Flapjack.NumSet := setValue1532
def coloured577 : Flapjack.NumSet := setValue1537
def result577 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1540, setValue1502)
def tree578 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree577 tree576)).val
theorem tree578_def : tree578 = (.seq tree577 tree576) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal578 : Flapjack.RegAlloc.ClashTree := .seq literal577 literal576
def live578 : Flapjack.NumSet := setValue1464
def coloured578 : Flapjack.NumSet := setValue1469
def result578 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1540, setValue1502)
def setValue1541 : Flapjack.NumSet := .bn setValue1474 setValue1456
def setValue1542 : Flapjack.NumSet := .bn setValue1470 setValue1541
def setValue1543 : Flapjack.NumSet := .bn setValue1542 setValue1496
def setValue1544 : Flapjack.NumSet := .bn setValue1543 setValue0
def setValue1545 : Flapjack.NumSet := .bn setValue0 setValue1544
def tree579 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3481] [3477])).val
theorem tree579_def : tree579 = (Flapjack.RegAlloc.ClashTree.delta [3481] [3477]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal579 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3481] [3477]
def live579 : Flapjack.NumSet := setValue1540
def coloured579 : Flapjack.NumSet := setValue1502
def result579 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1545, setValue1502)
def tree580 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree579 tree578)).val
theorem tree580_def : tree580 = (.seq tree579 tree578) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal580 : Flapjack.RegAlloc.ClashTree := .seq literal579 literal578
def live580 : Flapjack.NumSet := setValue1464
def coloured580 : Flapjack.NumSet := setValue1469
def result580 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1545, setValue1502)
def setValue1546 : Flapjack.NumSet := .bn setValue1523 setValue1474
def setValue1547 : Flapjack.NumSet := .bn setValue1475 setValue1546
def setValue1548 : Flapjack.NumSet := .bn setValue1471 setValue1547
def setValue1549 : Flapjack.NumSet := .bn setValue1548 setValue0
def setValue1550 : Flapjack.NumSet := .bn setValue0 setValue1549
def tree581 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3477] [3473])).val
theorem tree581_def : tree581 = (Flapjack.RegAlloc.ClashTree.delta [3477] [3473]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal581 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3477] [3473]
def live581 : Flapjack.NumSet := setValue1545
def coloured581 : Flapjack.NumSet := setValue1502
def result581 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1550, setValue1502)
def tree582 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree581 tree580)).val
theorem tree582_def : tree582 = (.seq tree581 tree580) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal582 : Flapjack.RegAlloc.ClashTree := .seq literal581 literal580
def live582 : Flapjack.NumSet := setValue1464
def coloured582 : Flapjack.NumSet := setValue1469
def result582 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1550, setValue1502)
def setValue1551 : Flapjack.NumSet := .bn setValue0 setValue1472
def setValue1552 : Flapjack.NumSet := .bn setValue1437 setValue1551
def setValue1553 : Flapjack.NumSet := .bn setValue1436 setValue1552
def setValue1554 : Flapjack.NumSet := .bn setValue1438 setValue1552
def setValue1555 : Flapjack.NumSet := .bn setValue1553 setValue1554
def setValue1556 : Flapjack.NumSet := .bn setValue1555 setValue1496
def setValue1557 : Flapjack.NumSet := .bn setValue1556 setValue0
def setValue1558 : Flapjack.NumSet := .bn setValue0 setValue1557
def tree583 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3473] [3461, 3469])).val
theorem tree583_def : tree583 = (Flapjack.RegAlloc.ClashTree.delta [3473] [3461, 3469]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal583 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3473] [3461, 3469]
def live583 : Flapjack.NumSet := setValue1550
def coloured583 : Flapjack.NumSet := setValue1502
def result583 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1558, setValue1537)
def tree584 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree583 tree582)).val
theorem tree584_def : tree584 = (.seq tree583 tree582) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal584 : Flapjack.RegAlloc.ClashTree := .seq literal583 literal582
def live584 : Flapjack.NumSet := setValue1464
def coloured584 : Flapjack.NumSet := setValue1469
def result584 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1558, setValue1537)
def setValue1559 : Flapjack.NumSet := .bn setValue1470 setValue1554
def setValue1560 : Flapjack.NumSet := .bn setValue1559 setValue1496
def setValue1561 : Flapjack.NumSet := .bn setValue1560 setValue0
def setValue1562 : Flapjack.NumSet := .bn setValue0 setValue1561
def tree585 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3469] [3465])).val
theorem tree585_def : tree585 = (Flapjack.RegAlloc.ClashTree.delta [3469] [3465]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal585 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3469] [3465]
def live585 : Flapjack.NumSet := setValue1558
def coloured585 : Flapjack.NumSet := setValue1537
def result585 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1562, setValue1502)
def tree586 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree585 tree584)).val
theorem tree586_def : tree586 = (.seq tree585 tree584) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal586 : Flapjack.RegAlloc.ClashTree := .seq literal585 literal584
def live586 : Flapjack.NumSet := setValue1464
def coloured586 : Flapjack.NumSet := setValue1469
def result586 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1562, setValue1502)
def setValue1563 : Flapjack.NumSet := .bn setValue1438 setValue1474
def setValue1564 : Flapjack.NumSet := .bn setValue1470 setValue1563
def setValue1565 : Flapjack.NumSet := .bn setValue1376 setValue1438
def setValue1566 : Flapjack.NumSet := .bn setValue1565 setValue1495
def setValue1567 : Flapjack.NumSet := .bn setValue1564 setValue1566
def setValue1568 : Flapjack.NumSet := .bn setValue1567 setValue0
def setValue1569 : Flapjack.NumSet := .bn setValue0 setValue1568
def setValue1570 : Flapjack.NumSet := .bs setValue1445 () setValue1448
def setValue1571 : Flapjack.NumSet := .bs setValue1570 () setValue0
def tree587 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3465] [3397])).val
theorem tree587_def : tree587 = (Flapjack.RegAlloc.ClashTree.delta [3465] [3397]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal587 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3465] [3397]
def live587 : Flapjack.NumSet := setValue1562
def coloured587 : Flapjack.NumSet := setValue1502
def result587 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1569, setValue1571)
def tree588 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree587 tree586)).val
theorem tree588_def : tree588 = (.seq tree587 tree586) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal588 : Flapjack.RegAlloc.ClashTree := .seq literal587 literal586
def live588 : Flapjack.NumSet := setValue1464
def coloured588 : Flapjack.NumSet := setValue1469
def result588 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1569, setValue1571)
def setValue1572 : Flapjack.NumSet := .bn setValue1438 setValue1438
def setValue1573 : Flapjack.NumSet := .bn setValue1470 setValue1572
def setValue1574 : Flapjack.NumSet := .bn setValue1573 setValue1566
def setValue1575 : Flapjack.NumSet := .bn setValue1574 setValue0
def setValue1576 : Flapjack.NumSet := .bn setValue0 setValue1575
def tree589 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3461] [3457])).val
theorem tree589_def : tree589 = (Flapjack.RegAlloc.ClashTree.delta [3461] [3457]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal589 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3461] [3457]
def live589 : Flapjack.NumSet := setValue1569
def coloured589 : Flapjack.NumSet := setValue1571
def result589 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1576, setValue1450)
def tree590 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree589 tree588)).val
theorem tree590_def : tree590 = (.seq tree589 tree588) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal590 : Flapjack.RegAlloc.ClashTree := .seq literal589 literal588
def live590 : Flapjack.NumSet := setValue1464
def coloured590 : Flapjack.NumSet := setValue1469
def result590 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1576, setValue1450)
def setValue1577 : Flapjack.NumSet := .bn setValue1565 setValue1572
def setValue1578 : Flapjack.NumSet := .bn setValue1573 setValue1577
def setValue1579 : Flapjack.NumSet := .bn setValue1578 setValue0
def setValue1580 : Flapjack.NumSet := .bn setValue0 setValue1579
def tree591 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3457] [3441])).val
theorem tree591_def : tree591 = (Flapjack.RegAlloc.ClashTree.delta [3457] [3441]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal591 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3457] [3441]
def live591 : Flapjack.NumSet := setValue1576
def coloured591 : Flapjack.NumSet := setValue1450
def result591 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree592 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree591 tree590)).val
theorem tree592_def : tree592 = (.seq tree591 tree590) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal592 : Flapjack.RegAlloc.ClashTree := .seq literal591 literal590
def live592 : Flapjack.NumSet := setValue1464
def coloured592 : Flapjack.NumSet := setValue1469
def result592 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree593 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree593_def : tree593 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal593 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live593 : Flapjack.NumSet := setValue1580
def coloured593 : Flapjack.NumSet := setValue1450
def result593 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree594 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree593 tree592)).val
theorem tree594_def : tree594 = (.seq tree593 tree592) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal594 : Flapjack.RegAlloc.ClashTree := .seq literal593 literal592
def live594 : Flapjack.NumSet := setValue1464
def coloured594 : Flapjack.NumSet := setValue1469
def result594 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree595 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1434)).val
theorem tree595_def : tree595 = (.set setValue1434) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal595 : Flapjack.RegAlloc.ClashTree := .set setValue1434
def live595 : Flapjack.NumSet := setValue1464
def coloured595 : Flapjack.NumSet := setValue1469
def result595 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree596 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree596_def : tree596 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal596 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live596 : Flapjack.NumSet := setValue1434
def coloured596 : Flapjack.NumSet := setValue1435
def result596 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree597 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree596 tree595)).val
theorem tree597_def : tree597 = (.seq tree596 tree595) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal597 : Flapjack.RegAlloc.ClashTree := .seq literal596 literal595
def live597 : Flapjack.NumSet := setValue1464
def coloured597 : Flapjack.NumSet := setValue1469
def result597 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree598 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree594 tree597)).val
theorem tree598_def : tree598 = (.branch (none) tree594 tree597) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal598 : Flapjack.RegAlloc.ClashTree := .branch (none) literal594 literal597
def live598 : Flapjack.NumSet := setValue1464
def coloured598 : Flapjack.NumSet := setValue1469
def result598 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree599 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3441, 3445])).val
theorem tree599_def : tree599 = (Flapjack.RegAlloc.ClashTree.delta [] [3441, 3445]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal599 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3441, 3445]
def live599 : Flapjack.NumSet := setValue1580
def coloured599 : Flapjack.NumSet := setValue1450
def result599 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree600 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree599 tree598)).val
theorem tree600_def : tree600 = (.seq tree599 tree598) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal600 : Flapjack.RegAlloc.ClashTree := .seq literal599 literal598
def live600 : Flapjack.NumSet := setValue1464
def coloured600 : Flapjack.NumSet := setValue1469
def result600 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree601 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree600 tree547)).val
theorem tree601_def : tree601 = (.seq tree600 tree547) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal601 : Flapjack.RegAlloc.ClashTree := .seq literal600 literal547
def live601 : Flapjack.NumSet := setValue1443
def coloured601 : Flapjack.NumSet := setValue1450
def result601 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1580, setValue1450)
def tree602 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3445, 3441] [3353, 3405])).val
theorem tree602_def : tree602 = (Flapjack.RegAlloc.ClashTree.delta [3445, 3441] [3353, 3405]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal602 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3445, 3441] [3353, 3405]
def live602 : Flapjack.NumSet := setValue1580
def coloured602 : Flapjack.NumSet := setValue1450
def result602 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def tree603 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree602 tree601)).val
theorem tree603_def : tree603 = (.seq tree602 tree601) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal603 : Flapjack.RegAlloc.ClashTree := .seq literal602 literal601
def live603 : Flapjack.NumSet := setValue1443
def coloured603 : Flapjack.NumSet := setValue1450
def result603 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def tree604 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree603 tree544)).val
theorem tree604_def : tree604 = (.seq tree603 tree544) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal604 : Flapjack.RegAlloc.ClashTree := .seq literal603 literal544
def live604 : Flapjack.NumSet := setValue1434
def coloured604 : Flapjack.NumSet := setValue1435
def result604 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def tree605 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1434)).val
theorem tree605_def : tree605 = (.set setValue1434) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal605 : Flapjack.RegAlloc.ClashTree := .set setValue1434
def live605 : Flapjack.NumSet := setValue1443
def coloured605 : Flapjack.NumSet := setValue1450
def result605 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree606 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree605 tree604)).val
theorem tree606_def : tree606 = (.seq tree605 tree604) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal606 : Flapjack.RegAlloc.ClashTree := .seq literal605 literal604
def live606 : Flapjack.NumSet := setValue1434
def coloured606 : Flapjack.NumSet := setValue1435
def result606 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1434, setValue1435)
def tree607 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1443)).val
theorem tree607_def : tree607 = (.set setValue1443) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal607 : Flapjack.RegAlloc.ClashTree := .set setValue1443
def live607 : Flapjack.NumSet := setValue1434
def coloured607 : Flapjack.NumSet := setValue1435
def result607 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def tree608 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree607 tree606)).val
theorem tree608_def : tree608 = (.seq tree607 tree606) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal608 : Flapjack.RegAlloc.ClashTree := .seq literal607 literal606
def live608 : Flapjack.NumSet := setValue1434
def coloured608 : Flapjack.NumSet := setValue1435
def result608 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def tree609 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree608 tree543)).val
theorem tree609_def : tree609 = (.seq tree608 tree543) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal609 : Flapjack.RegAlloc.ClashTree := .seq literal608 literal543
def live609 : Flapjack.NumSet := setValue953
def coloured609 : Flapjack.NumSet := setValue950
def result609 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1443, setValue1450)
def setValue1581 : Flapjack.NumSet := .bn setValue7 setValue7
def setValue1582 : Flapjack.NumSet := .bn setValue87 setValue1370
def setValue1583 : Flapjack.NumSet := .bn setValue1582 setValue0
def setValue1584 : Flapjack.NumSet := .bn setValue1581 setValue1583
def setValue1585 : Flapjack.NumSet := .bn setValue6 setValue1370
def setValue1586 : Flapjack.NumSet := .bn setValue1585 setValue1371
def setValue1587 : Flapjack.NumSet := .bn setValue0 setValue1370
def setValue1588 : Flapjack.NumSet := .bn setValue1585 setValue1587
def setValue1589 : Flapjack.NumSet := .bn setValue1586 setValue1588
def setValue1590 : Flapjack.NumSet := .bn setValue1584 setValue1589
def setValue1591 : Flapjack.NumSet := .bn setValue0 setValue1588
def setValue1592 : Flapjack.NumSet := .bn setValue7 setValue0
def setValue1593 : Flapjack.NumSet := .bn setValue7 setValue1587
def setValue1594 : Flapjack.NumSet := .bn setValue1592 setValue1593
def setValue1595 : Flapjack.NumSet := .bn setValue1591 setValue1594
def setValue1596 : Flapjack.NumSet := .bn setValue1590 setValue1595
def setValue1597 : Flapjack.NumSet := .bn setValue1585 setValue0
def setValue1598 : Flapjack.NumSet := .bn setValue1581 setValue1597
def setValue1599 : Flapjack.NumSet := .bn setValue1592 setValue1588
def setValue1600 : Flapjack.NumSet := .bn setValue1598 setValue1599
def setValue1601 : Flapjack.NumSet := .bn setValue1592 setValue1592
def setValue1602 : Flapjack.NumSet := .bn setValue1599 setValue1601
def setValue1603 : Flapjack.NumSet := .bn setValue1600 setValue1602
def setValue1604 : Flapjack.NumSet := .bn setValue1596 setValue1603
def setValue1605 : Flapjack.NumSet := .bn setValue1604 setValue0
def setValue1606 : Flapjack.NumSet := .bn setValue0 setValue1605
def setValue1607 : Flapjack.NumSet := .bn setValue354 setValue3
def setValue1608 : Flapjack.NumSet := .bs setValue350 () setValue1607
def setValue1609 : Flapjack.NumSet := .bs setValue2 () setValue3
def setValue1610 : Flapjack.NumSet := .bn setValue64 setValue3
def setValue1611 : Flapjack.NumSet := .bn setValue1609 setValue1610
def setValue1612 : Flapjack.NumSet := .bs setValue1608 () setValue1611
def setValue1613 : Flapjack.NumSet := .bs setValue1612 () setValue0
def tree610 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369,
    3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437]
  [3001, 3161, 3005, 3145, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3245, 3049, 3053, 3057, 3165,
    3065, 3149, 3157, 3069, 3145, 3153, 3181, 3161, 3293, 3077, 3081, 3085, 3157, 3089, 3093, 3153, 3149])).val
theorem tree610_def : tree610 = (Flapjack.RegAlloc.ClashTree.delta
  [3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369,
    3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437]
  [3001, 3161, 3005, 3145, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3245, 3049, 3053, 3057, 3165,
    3065, 3149, 3157, 3069, 3145, 3153, 3181, 3161, 3293, 3077, 3081, 3085, 3157, 3089, 3093, 3153, 3149]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal610 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369,
    3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437]
  [3001, 3161, 3005, 3145, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3245, 3049, 3053, 3057, 3165,
    3065, 3149, 3157, 3069, 3145, 3153, 3181, 3161, 3293, 3077, 3081, 3085, 3157, 3089, 3093, 3153, 3149]
def live610 : Flapjack.NumSet := setValue1443
def coloured610 : Flapjack.NumSet := setValue1450
def result610 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1606, setValue1613)
def tree611 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree610 tree609)).val
theorem tree611_def : tree611 = (.seq tree610 tree609) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal611 : Flapjack.RegAlloc.ClashTree := .seq literal610 literal609
def live611 : Flapjack.NumSet := setValue953
def coloured611 : Flapjack.NumSet := setValue950
def result611 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1606, setValue1613)
def tree612 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree612_def : tree612 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal612 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live612 : Flapjack.NumSet := setValue1606
def coloured612 : Flapjack.NumSet := setValue1613
def result612 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1606, setValue1613)
def tree613 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree612 tree611)).val
theorem tree613_def : tree613 = (.seq tree612 tree611) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal613 : Flapjack.RegAlloc.ClashTree := .seq literal612 literal611
def live613 : Flapjack.NumSet := setValue953
def coloured613 : Flapjack.NumSet := setValue950
def result613 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1606, setValue1613)
def setValue1614 : Flapjack.NumSet := .bn setValue1598 setValue1589
def setValue1615 : Flapjack.NumSet := .bn setValue1614 setValue1595
def setValue1616 : Flapjack.NumSet := .bn setValue1615 setValue1603
def setValue1617 : Flapjack.NumSet := .bn setValue1616 setValue0
def setValue1618 : Flapjack.NumSet := .bn setValue0 setValue1617
def setValue1619 : Flapjack.NumSet := .bn setValue1608 setValue1611
def setValue1620 : Flapjack.NumSet := .bs setValue1619 () setValue0
def tree614 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3293] [])).val
theorem tree614_def : tree614 = (Flapjack.RegAlloc.ClashTree.delta [3293] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal614 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3293] []
def live614 : Flapjack.NumSet := setValue1606
def coloured614 : Flapjack.NumSet := setValue1613
def result614 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree615 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree614 tree613)).val
theorem tree615_def : tree615 = (.seq tree614 tree613) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal615 : Flapjack.RegAlloc.ClashTree := .seq literal614 literal613
def live615 : Flapjack.NumSet := setValue953
def coloured615 : Flapjack.NumSet := setValue950
def result615 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree616 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree616_def : tree616 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal616 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live616 : Flapjack.NumSet := setValue1618
def coloured616 : Flapjack.NumSet := setValue1620
def result616 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree617 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree616 tree615)).val
theorem tree617_def : tree617 = (.seq tree616 tree615) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal617 : Flapjack.RegAlloc.ClashTree := .seq literal616 literal615
def live617 : Flapjack.NumSet := setValue953
def coloured617 : Flapjack.NumSet := setValue950
def result617 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree618 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree618_def : tree618 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal618 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live618 : Flapjack.NumSet := setValue1618
def coloured618 : Flapjack.NumSet := setValue1620
def result618 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree619 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree618 tree617)).val
theorem tree619_def : tree619 = (.seq tree618 tree617) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal619 : Flapjack.RegAlloc.ClashTree := .seq literal618 literal617
def live619 : Flapjack.NumSet := setValue953
def coloured619 : Flapjack.NumSet := setValue950
def result619 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def setValue1621 : Flapjack.NumSet := .bn setValue1 setValue1617
def tree620 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree620_def : tree620 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal620 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live620 : Flapjack.NumSet := setValue1618
def coloured620 : Flapjack.NumSet := setValue1620
def result620 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1621, setValue1613)
def setValue1622 : Flapjack.NumSet := .bn setValue87 setValue0
def setValue1623 : Flapjack.NumSet := .bn setValue1622 setValue0
def setValue1624 : Flapjack.NumSet := .bn setValue1592 setValue1623
def setValue1625 : Flapjack.NumSet := .bn setValue1599 setValue1624
def setValue1626 : Flapjack.NumSet := .bn setValue1600 setValue1625
def setValue1627 : Flapjack.NumSet := .bn setValue1615 setValue1626
def setValue1628 : Flapjack.NumSet := .bn setValue1627 setValue0
def setValue1629 : Flapjack.NumSet := .bn setValue0 setValue1628
def tree621 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [3265])).val
theorem tree621_def : tree621 = (Flapjack.RegAlloc.ClashTree.delta [2] [3265]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal621 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [3265]
def live621 : Flapjack.NumSet := setValue1621
def coloured621 : Flapjack.NumSet := setValue1613
def result621 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1629, setValue1613)
def tree622 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree621 tree620)).val
theorem tree622_def : tree622 = (.seq tree621 tree620) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal622 : Flapjack.RegAlloc.ClashTree := .seq literal621 literal620
def live622 : Flapjack.NumSet := setValue1618
def coloured622 : Flapjack.NumSet := setValue1620
def result622 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1629, setValue1613)
def tree623 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3265] [])).val
theorem tree623_def : tree623 = (Flapjack.RegAlloc.ClashTree.delta [3265] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal623 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3265] []
def live623 : Flapjack.NumSet := setValue1629
def coloured623 : Flapjack.NumSet := setValue1613
def result623 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree624 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree623 tree622)).val
theorem tree624_def : tree624 = (.seq tree623 tree622) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal624 : Flapjack.RegAlloc.ClashTree := .seq literal623 literal622
def live624 : Flapjack.NumSet := setValue1618
def coloured624 : Flapjack.NumSet := setValue1620
def result624 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def setValue1630 : Flapjack.NumSet := .bn setValue7 setValue1622
def setValue1631 : Flapjack.NumSet := .bn setValue1630 setValue1597
def setValue1632 : Flapjack.NumSet := .bn setValue1631 setValue1589
def setValue1633 : Flapjack.NumSet := .bn setValue1632 setValue1595
def setValue1634 : Flapjack.NumSet := .bn setValue1633 setValue1603
def setValue1635 : Flapjack.NumSet := .bn setValue1634 setValue0
def setValue1636 : Flapjack.NumSet := .bn setValue0 setValue1635
def tree625 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3261])).val
theorem tree625_def : tree625 = (Flapjack.RegAlloc.ClashTree.delta [] [3261]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal625 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3261]
def live625 : Flapjack.NumSet := setValue1618
def coloured625 : Flapjack.NumSet := setValue1620
def result625 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1636, setValue1613)
def tree626 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree625 tree624)).val
theorem tree626_def : tree626 = (.seq tree625 tree624) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal626 : Flapjack.RegAlloc.ClashTree := .seq literal625 literal624
def live626 : Flapjack.NumSet := setValue1618
def coloured626 : Flapjack.NumSet := setValue1620
def result626 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1636, setValue1613)
def setValue1637 : Flapjack.NumSet := .bn setValue1631 setValue1599
def setValue1638 : Flapjack.NumSet := .bn setValue1637 setValue1602
def setValue1639 : Flapjack.NumSet := .bn setValue1615 setValue1638
def setValue1640 : Flapjack.NumSet := .bn setValue1639 setValue0
def setValue1641 : Flapjack.NumSet := .bn setValue0 setValue1640
def tree627 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3261] [3257])).val
theorem tree627_def : tree627 = (Flapjack.RegAlloc.ClashTree.delta [3261] [3257]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal627 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3261] [3257]
def live627 : Flapjack.NumSet := setValue1636
def coloured627 : Flapjack.NumSet := setValue1613
def result627 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1641, setValue1613)
def tree628 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree627 tree626)).val
theorem tree628_def : tree628 = (.seq tree627 tree626) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal628 : Flapjack.RegAlloc.ClashTree := .seq literal627 literal626
def live628 : Flapjack.NumSet := setValue1618
def coloured628 : Flapjack.NumSet := setValue1620
def result628 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1641, setValue1613)
def tree629 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3257] [])).val
theorem tree629_def : tree629 = (Flapjack.RegAlloc.ClashTree.delta [3257] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal629 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3257] []
def live629 : Flapjack.NumSet := setValue1641
def coloured629 : Flapjack.NumSet := setValue1613
def result629 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree630 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree629 tree628)).val
theorem tree630_def : tree630 = (.seq tree629 tree628) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal630 : Flapjack.RegAlloc.ClashTree := .seq literal629 literal628
def live630 : Flapjack.NumSet := setValue1618
def coloured630 : Flapjack.NumSet := setValue1620
def result630 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree631 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree631_def : tree631 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal631 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live631 : Flapjack.NumSet := setValue1618
def coloured631 : Flapjack.NumSet := setValue1620
def result631 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree632 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree631 tree630)).val
theorem tree632_def : tree632 = (.seq tree631 tree630) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal632 : Flapjack.RegAlloc.ClashTree := .seq literal631 literal630
def live632 : Flapjack.NumSet := setValue1618
def coloured632 : Flapjack.NumSet := setValue1620
def result632 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree633 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree633_def : tree633 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal633 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live633 : Flapjack.NumSet := setValue1618
def coloured633 : Flapjack.NumSet := setValue1620
def result633 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def tree634 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree632 tree633)).val
theorem tree634_def : tree634 = (.branch (none) tree632 tree633) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal634 : Flapjack.RegAlloc.ClashTree := .branch (none) literal632 literal633
def live634 : Flapjack.NumSet := setValue1618
def coloured634 : Flapjack.NumSet := setValue1620
def result634 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1618, setValue1620)
def setValue1642 : Flapjack.NumSet := .bn setValue7 setValue1371
def setValue1643 : Flapjack.NumSet := .bn setValue1642 setValue1588
def setValue1644 : Flapjack.NumSet := .bn setValue1598 setValue1643
def setValue1645 : Flapjack.NumSet := .bn setValue1644 setValue1602
def setValue1646 : Flapjack.NumSet := .bn setValue1615 setValue1645
def setValue1647 : Flapjack.NumSet := .bn setValue1646 setValue0
def setValue1648 : Flapjack.NumSet := .bn setValue0 setValue1647
def tree635 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3241, 3245])).val
theorem tree635_def : tree635 = (Flapjack.RegAlloc.ClashTree.delta [] [3241, 3245]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal635 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3241, 3245]
def live635 : Flapjack.NumSet := setValue1618
def coloured635 : Flapjack.NumSet := setValue1620
def result635 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1648, setValue1613)
def tree636 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree635 tree634)).val
theorem tree636_def : tree636 = (.seq tree635 tree634) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal636 : Flapjack.RegAlloc.ClashTree := .seq literal635 literal634
def live636 : Flapjack.NumSet := setValue1618
def coloured636 : Flapjack.NumSet := setValue1620
def result636 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1648, setValue1613)
def tree637 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree636 tree619)).val
theorem tree637_def : tree637 = (.seq tree636 tree619) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal637 : Flapjack.RegAlloc.ClashTree := .seq literal636 literal619
def live637 : Flapjack.NumSet := setValue953
def coloured637 : Flapjack.NumSet := setValue950
def result637 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1648, setValue1613)
def setValue1649 : Flapjack.NumSet := .bn setValue1597 setValue1588
def setValue1650 : Flapjack.NumSet := .bn setValue1598 setValue1649
def setValue1651 : Flapjack.NumSet := .bn setValue1587 setValue0
def setValue1652 : Flapjack.NumSet := .bn setValue1651 setValue1588
def setValue1653 : Flapjack.NumSet := .bn setValue1652 setValue1594
def setValue1654 : Flapjack.NumSet := .bn setValue1650 setValue1653
def setValue1655 : Flapjack.NumSet := .bn setValue1654 setValue1645
def setValue1656 : Flapjack.NumSet := .bn setValue1655 setValue0
def setValue1657 : Flapjack.NumSet := .bn setValue0 setValue1656
def tree638 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3245] [3189])).val
theorem tree638_def : tree638 = (Flapjack.RegAlloc.ClashTree.delta [3245] [3189]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal638 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3245] [3189]
def live638 : Flapjack.NumSet := setValue1648
def coloured638 : Flapjack.NumSet := setValue1613
def result638 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1657, setValue1613)
def tree639 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree638 tree637)).val
theorem tree639_def : tree639 = (.seq tree638 tree637) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal639 : Flapjack.RegAlloc.ClashTree := .seq literal638 literal637
def live639 : Flapjack.NumSet := setValue953
def coloured639 : Flapjack.NumSet := setValue950
def result639 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1657, setValue1613)
def setValue1658 : Flapjack.NumSet := .bn setValue1654 setValue1603
def setValue1659 : Flapjack.NumSet := .bn setValue1658 setValue0
def setValue1660 : Flapjack.NumSet := .bn setValue0 setValue1659
def tree640 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3241] [])).val
theorem tree640_def : tree640 = (Flapjack.RegAlloc.ClashTree.delta [3241] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal640 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3241] []
def live640 : Flapjack.NumSet := setValue1657
def coloured640 : Flapjack.NumSet := setValue1613
def result640 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree641 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree640 tree639)).val
theorem tree641_def : tree641 = (.seq tree640 tree639) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal641 : Flapjack.RegAlloc.ClashTree := .seq literal640 literal639
def live641 : Flapjack.NumSet := setValue953
def coloured641 : Flapjack.NumSet := setValue950
def result641 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree642 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree642_def : tree642 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal642 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live642 : Flapjack.NumSet := setValue1660
def coloured642 : Flapjack.NumSet := setValue1620
def result642 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree643 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree642 tree641)).val
theorem tree643_def : tree643 = (.seq tree642 tree641) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal643 : Flapjack.RegAlloc.ClashTree := .seq literal642 literal641
def live643 : Flapjack.NumSet := setValue953
def coloured643 : Flapjack.NumSet := setValue950
def result643 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree644 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree644_def : tree644 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal644 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live644 : Flapjack.NumSet := setValue1660
def coloured644 : Flapjack.NumSet := setValue1620
def result644 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree645 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree644 tree643)).val
theorem tree645_def : tree645 = (.seq tree644 tree643) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal645 : Flapjack.RegAlloc.ClashTree := .seq literal644 literal643
def live645 : Flapjack.NumSet := setValue953
def coloured645 : Flapjack.NumSet := setValue950
def result645 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def setValue1661 : Flapjack.NumSet := .bn setValue1 setValue1659
def tree646 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree646_def : tree646 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal646 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live646 : Flapjack.NumSet := setValue1660
def coloured646 : Flapjack.NumSet := setValue1620
def result646 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1661, setValue1613)
def setValue1662 : Flapjack.NumSet := .bn setValue1370 setValue1370
def setValue1663 : Flapjack.NumSet := .bn setValue1585 setValue1662
def setValue1664 : Flapjack.NumSet := .bn setValue1597 setValue1663
def setValue1665 : Flapjack.NumSet := .bn setValue1598 setValue1664
def setValue1666 : Flapjack.NumSet := .bn setValue1665 setValue1653
def setValue1667 : Flapjack.NumSet := .bn setValue1666 setValue1603
def setValue1668 : Flapjack.NumSet := .bn setValue1667 setValue0
def setValue1669 : Flapjack.NumSet := .bn setValue0 setValue1668
def tree647 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [3213])).val
theorem tree647_def : tree647 = (Flapjack.RegAlloc.ClashTree.delta [2] [3213]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal647 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [3213]
def live647 : Flapjack.NumSet := setValue1661
def coloured647 : Flapjack.NumSet := setValue1613
def result647 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1669, setValue1613)
def tree648 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree647 tree646)).val
theorem tree648_def : tree648 = (.seq tree647 tree646) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal648 : Flapjack.RegAlloc.ClashTree := .seq literal647 literal646
def live648 : Flapjack.NumSet := setValue1660
def coloured648 : Flapjack.NumSet := setValue1620
def result648 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1669, setValue1613)
def tree649 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3213] [])).val
theorem tree649_def : tree649 = (Flapjack.RegAlloc.ClashTree.delta [3213] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal649 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3213] []
def live649 : Flapjack.NumSet := setValue1669
def coloured649 : Flapjack.NumSet := setValue1613
def result649 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree650 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree649 tree648)).val
theorem tree650_def : tree650 = (.seq tree649 tree648) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal650 : Flapjack.RegAlloc.ClashTree := .seq literal649 literal648
def live650 : Flapjack.NumSet := setValue1660
def coloured650 : Flapjack.NumSet := setValue1620
def result650 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def setValue1670 : Flapjack.NumSet := .bn setValue1592 setValue1663
def setValue1671 : Flapjack.NumSet := .bn setValue1598 setValue1670
def setValue1672 : Flapjack.NumSet := .bn setValue1671 setValue1602
def setValue1673 : Flapjack.NumSet := .bn setValue1654 setValue1672
def setValue1674 : Flapjack.NumSet := .bn setValue1673 setValue0
def setValue1675 : Flapjack.NumSet := .bn setValue0 setValue1674
def tree651 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3209])).val
theorem tree651_def : tree651 = (Flapjack.RegAlloc.ClashTree.delta [] [3209]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal651 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3209]
def live651 : Flapjack.NumSet := setValue1660
def coloured651 : Flapjack.NumSet := setValue1620
def result651 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1675, setValue1613)
def tree652 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree651 tree650)).val
theorem tree652_def : tree652 = (.seq tree651 tree650) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal652 : Flapjack.RegAlloc.ClashTree := .seq literal651 literal650
def live652 : Flapjack.NumSet := setValue1660
def coloured652 : Flapjack.NumSet := setValue1620
def result652 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1675, setValue1613)
def setValue1676 : Flapjack.NumSet := .bn setValue7 setValue1662
def setValue1677 : Flapjack.NumSet := .bn setValue1592 setValue1676
def setValue1678 : Flapjack.NumSet := .bn setValue1652 setValue1677
def setValue1679 : Flapjack.NumSet := .bn setValue1650 setValue1678
def setValue1680 : Flapjack.NumSet := .bn setValue1679 setValue1603
def setValue1681 : Flapjack.NumSet := .bn setValue1680 setValue0
def setValue1682 : Flapjack.NumSet := .bn setValue0 setValue1681
def tree653 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3209] [3205])).val
theorem tree653_def : tree653 = (Flapjack.RegAlloc.ClashTree.delta [3209] [3205]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal653 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3209] [3205]
def live653 : Flapjack.NumSet := setValue1675
def coloured653 : Flapjack.NumSet := setValue1613
def result653 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1682, setValue1613)
def tree654 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree653 tree652)).val
theorem tree654_def : tree654 = (.seq tree653 tree652) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal654 : Flapjack.RegAlloc.ClashTree := .seq literal653 literal652
def live654 : Flapjack.NumSet := setValue1660
def coloured654 : Flapjack.NumSet := setValue1620
def result654 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1682, setValue1613)
def tree655 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3205] [])).val
theorem tree655_def : tree655 = (Flapjack.RegAlloc.ClashTree.delta [3205] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal655 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3205] []
def live655 : Flapjack.NumSet := setValue1682
def coloured655 : Flapjack.NumSet := setValue1613
def result655 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree656 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree655 tree654)).val
theorem tree656_def : tree656 = (.seq tree655 tree654) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal656 : Flapjack.RegAlloc.ClashTree := .seq literal655 literal654
def live656 : Flapjack.NumSet := setValue1660
def coloured656 : Flapjack.NumSet := setValue1620
def result656 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree657 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree657_def : tree657 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal657 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live657 : Flapjack.NumSet := setValue1660
def coloured657 : Flapjack.NumSet := setValue1620
def result657 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree658 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree657 tree656)).val
theorem tree658_def : tree658 = (.seq tree657 tree656) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal658 : Flapjack.RegAlloc.ClashTree := .seq literal657 literal656
def live658 : Flapjack.NumSet := setValue1660
def coloured658 : Flapjack.NumSet := setValue1620
def result658 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree659 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree659_def : tree659 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal659 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live659 : Flapjack.NumSet := setValue1660
def coloured659 : Flapjack.NumSet := setValue1620
def result659 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree660 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree658 tree659)).val
theorem tree660_def : tree660 = (.branch (none) tree658 tree659) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal660 : Flapjack.RegAlloc.ClashTree := .branch (none) literal658 literal659
def live660 : Flapjack.NumSet := setValue1660
def coloured660 : Flapjack.NumSet := setValue1620
def result660 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def setValue1683 : Flapjack.NumSet := .bn setValue1585 setValue7
def setValue1684 : Flapjack.NumSet := .bn setValue1683 setValue1597
def setValue1685 : Flapjack.NumSet := .bn setValue1684 setValue1599
def setValue1686 : Flapjack.NumSet := .bn setValue1685 setValue1602
def setValue1687 : Flapjack.NumSet := .bn setValue1654 setValue1686
def setValue1688 : Flapjack.NumSet := .bn setValue1687 setValue0
def setValue1689 : Flapjack.NumSet := .bn setValue0 setValue1688
def tree661 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3189, 3193])).val
theorem tree661_def : tree661 = (Flapjack.RegAlloc.ClashTree.delta [] [3189, 3193]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal661 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3189, 3193]
def live661 : Flapjack.NumSet := setValue1660
def coloured661 : Flapjack.NumSet := setValue1620
def result661 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1689, setValue1613)
def tree662 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree661 tree660)).val
theorem tree662_def : tree662 = (.seq tree661 tree660) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal662 : Flapjack.RegAlloc.ClashTree := .seq literal661 literal660
def live662 : Flapjack.NumSet := setValue1660
def coloured662 : Flapjack.NumSet := setValue1620
def result662 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1689, setValue1613)
def tree663 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree662 tree645)).val
theorem tree663_def : tree663 = (.seq tree662 tree645) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal663 : Flapjack.RegAlloc.ClashTree := .seq literal662 literal645
def live663 : Flapjack.NumSet := setValue953
def coloured663 : Flapjack.NumSet := setValue950
def result663 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1689, setValue1613)
def tree664 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3193] [])).val
theorem tree664_def : tree664 = (Flapjack.RegAlloc.ClashTree.delta [3193] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal664 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3193] []
def live664 : Flapjack.NumSet := setValue1689
def coloured664 : Flapjack.NumSet := setValue1613
def result664 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def tree665 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree664 tree663)).val
theorem tree665_def : tree665 = (.seq tree664 tree663) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal665 : Flapjack.RegAlloc.ClashTree := .seq literal664 literal663
def live665 : Flapjack.NumSet := setValue953
def coloured665 : Flapjack.NumSet := setValue950
def result665 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1660, setValue1620)
def setValue1690 : Flapjack.NumSet := .bn setValue1650 setValue1595
def setValue1691 : Flapjack.NumSet := .bn setValue1649 setValue1601
def setValue1692 : Flapjack.NumSet := .bn setValue1600 setValue1691
def setValue1693 : Flapjack.NumSet := .bn setValue1690 setValue1692
def setValue1694 : Flapjack.NumSet := .bn setValue1693 setValue0
def setValue1695 : Flapjack.NumSet := .bn setValue0 setValue1694
def tree666 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3189] [3185])).val
theorem tree666_def : tree666 = (Flapjack.RegAlloc.ClashTree.delta [3189] [3185]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal666 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3189] [3185]
def live666 : Flapjack.NumSet := setValue1660
def coloured666 : Flapjack.NumSet := setValue1620
def result666 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1695, setValue1620)
def tree667 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree666 tree665)).val
theorem tree667_def : tree667 = (.seq tree666 tree665) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal667 : Flapjack.RegAlloc.ClashTree := .seq literal666 literal665
def live667 : Flapjack.NumSet := setValue953
def coloured667 : Flapjack.NumSet := setValue950
def result667 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1695, setValue1620)
def setValue1696 : Flapjack.NumSet := .bn setValue1690 setValue1603
def setValue1697 : Flapjack.NumSet := .bn setValue1696 setValue0
def setValue1698 : Flapjack.NumSet := .bn setValue0 setValue1697
def setValue1699 : Flapjack.NumSet := .bn setValue350 setValue1607
def setValue1700 : Flapjack.NumSet := .bn setValue1699 setValue1611
def setValue1701 : Flapjack.NumSet := .bs setValue1700 () setValue0
def tree668 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3185] [3181])).val
theorem tree668_def : tree668 = (Flapjack.RegAlloc.ClashTree.delta [3185] [3181]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal668 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3185] [3181]
def live668 : Flapjack.NumSet := setValue1695
def coloured668 : Flapjack.NumSet := setValue1620
def result668 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1698, setValue1701)
def tree669 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree668 tree667)).val
theorem tree669_def : tree669 = (.seq tree668 tree667) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal669 : Flapjack.RegAlloc.ClashTree := .seq literal668 literal667
def live669 : Flapjack.NumSet := setValue953
def coloured669 : Flapjack.NumSet := setValue950
def result669 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1698, setValue1701)
def setValue1702 : Flapjack.NumSet := .bn setValue1600 setValue1595
def setValue1703 : Flapjack.NumSet := .bn setValue1599 setValue1594
def setValue1704 : Flapjack.NumSet := .bn setValue1600 setValue1703
def setValue1705 : Flapjack.NumSet := .bn setValue1702 setValue1704
def setValue1706 : Flapjack.NumSet := .bn setValue1705 setValue0
def setValue1707 : Flapjack.NumSet := .bn setValue0 setValue1706
def tree670 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3181] [3073])).val
theorem tree670_def : tree670 = (Flapjack.RegAlloc.ClashTree.delta [3181] [3073]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal670 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3181] [3073]
def live670 : Flapjack.NumSet := setValue1698
def coloured670 : Flapjack.NumSet := setValue1701
def result670 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1707, setValue1701)
def tree671 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree670 tree669)).val
theorem tree671_def : tree671 = (.seq tree670 tree669) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal671 : Flapjack.RegAlloc.ClashTree := .seq literal670 literal669
def live671 : Flapjack.NumSet := setValue953
def coloured671 : Flapjack.NumSet := setValue950
def result671 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1707, setValue1701)
def tree672 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree672_def : tree672 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal672 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live672 : Flapjack.NumSet := setValue1707
def coloured672 : Flapjack.NumSet := setValue1701
def result672 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1707, setValue1701)
def tree673 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree672 tree671)).val
theorem tree673_def : tree673 = (.seq tree672 tree671) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal673 : Flapjack.RegAlloc.ClashTree := .seq literal672 literal671
def live673 : Flapjack.NumSet := setValue953
def coloured673 : Flapjack.NumSet := setValue950
def result673 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1707, setValue1701)
def setValue1708 : Flapjack.NumSet := .bn setValue0 setValue1597
def setValue1709 : Flapjack.NumSet := .bn setValue0 setValue1651
def setValue1710 : Flapjack.NumSet := .bn setValue1708 setValue1709
def setValue1711 : Flapjack.NumSet := .bn setValue1592 setValue0
def setValue1712 : Flapjack.NumSet := .bn setValue1709 setValue1711
def setValue1713 : Flapjack.NumSet := .bn setValue1710 setValue1712
def setValue1714 : Flapjack.NumSet := .bn setValue8 setValue1651
def setValue1715 : Flapjack.NumSet := .bn setValue1714 setValue1591
def setValue1716 : Flapjack.NumSet := .bn setValue1587 setValue1587
def setValue1717 : Flapjack.NumSet := .bn setValue0 setValue1716
def setValue1718 : Flapjack.NumSet := .bn setValue0 setValue1587
def setValue1719 : Flapjack.NumSet := .bn setValue1592 setValue1718
def setValue1720 : Flapjack.NumSet := .bn setValue1717 setValue1719
def setValue1721 : Flapjack.NumSet := .bn setValue1715 setValue1720
def setValue1722 : Flapjack.NumSet := .bn setValue1713 setValue1721
def setValue1723 : Flapjack.NumSet := .bn setValue1722 setValue0
def setValue1724 : Flapjack.NumSet := .bn setValue0 setValue1723
def setValue1725 : Flapjack.NumSet := .bn setValue85 setValue504
def setValue1726 : Flapjack.NumSet := .bn setValue942 setValue1725
def setValue1727 : Flapjack.NumSet := .bn setValue788 setValue1726
def setValue1728 : Flapjack.NumSet := .bs setValue1727 () setValue0
def tree674 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4565, 4561, 4557, 4553, 4549, 4545, 4541, 4537, 4533, 4529, 4525, 4521, 4517, 4513]
  [3001, 3017, 3037, 3041, 3045, 3165, 3145, 3153, 3073, 3161, 3081, 3157, 3089, 3149])).val
theorem tree674_def : tree674 = (Flapjack.RegAlloc.ClashTree.delta [4565, 4561, 4557, 4553, 4549, 4545, 4541, 4537, 4533, 4529, 4525, 4521, 4517, 4513]
  [3001, 3017, 3037, 3041, 3045, 3165, 3145, 3153, 3073, 3161, 3081, 3157, 3089, 3149]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal674 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4565, 4561, 4557, 4553, 4549, 4545, 4541, 4537, 4533, 4529, 4525, 4521, 4517, 4513]
  [3001, 3017, 3037, 3041, 3045, 3165, 3145, 3153, 3073, 3161, 3081, 3157, 3089, 3149]
def live674 : Flapjack.NumSet := setValue953
def coloured674 : Flapjack.NumSet := setValue950
def result674 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1724, setValue1728)
def tree675 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree675_def : tree675 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal675 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live675 : Flapjack.NumSet := setValue1724
def coloured675 : Flapjack.NumSet := setValue1728
def result675 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1724, setValue1728)
def tree676 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree675 tree674)).val
theorem tree676_def : tree676 = (.seq tree675 tree674) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal676 : Flapjack.RegAlloc.ClashTree := .seq literal675 literal674
def live676 : Flapjack.NumSet := setValue953
def coloured676 : Flapjack.NumSet := setValue950
def result676 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1724, setValue1728)
def tree677 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree673 tree676)).val
theorem tree677_def : tree677 = (.branch (none) tree673 tree676) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal677 : Flapjack.RegAlloc.ClashTree := .branch (none) literal673 literal676
def live677 : Flapjack.NumSet := setValue953
def coloured677 : Flapjack.NumSet := setValue950
def result677 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1707, setValue1701)
def setValue1729 : Flapjack.NumSet := .bn setValue1597 setValue1593
def setValue1730 : Flapjack.NumSet := .bn setValue1599 setValue1729
def setValue1731 : Flapjack.NumSet := .bn setValue1600 setValue1730
def setValue1732 : Flapjack.NumSet := .bn setValue1702 setValue1731
def setValue1733 : Flapjack.NumSet := .bn setValue1732 setValue0
def setValue1734 : Flapjack.NumSet := .bn setValue0 setValue1733
def setValue1735 : Flapjack.NumSet := .bs setValue1699 () setValue1611
def setValue1736 : Flapjack.NumSet := .bs setValue1735 () setValue0
def tree678 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [3165, 3169])).val
theorem tree678_def : tree678 = (Flapjack.RegAlloc.ClashTree.delta [] [3165, 3169]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal678 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [3165, 3169]
def live678 : Flapjack.NumSet := setValue1707
def coloured678 : Flapjack.NumSet := setValue1701
def result678 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1734, setValue1736)
def tree679 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree678 tree677)).val
theorem tree679_def : tree679 = (.seq tree678 tree677) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal679 : Flapjack.RegAlloc.ClashTree := .seq literal678 literal677
def live679 : Flapjack.NumSet := setValue953
def coloured679 : Flapjack.NumSet := setValue950
def result679 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1734, setValue1736)
def tree680 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree679 tree396)).val
theorem tree680_def : tree680 = (.seq tree679 tree396) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal680 : Flapjack.RegAlloc.ClashTree := .seq literal679 literal396
def live680 : Flapjack.NumSet := setValue0
def coloured680 : Flapjack.NumSet := setValue0
def result680 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1734, setValue1736)
def tree681 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3169] [])).val
theorem tree681_def : tree681 = (Flapjack.RegAlloc.ClashTree.delta [3169] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal681 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3169] []
def live681 : Flapjack.NumSet := setValue1734
def coloured681 : Flapjack.NumSet := setValue1736
def result681 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1707, setValue1701)
def tree682 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree681 tree680)).val
theorem tree682_def : tree682 = (.seq tree681 tree680) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal682 : Flapjack.RegAlloc.ClashTree := .seq literal681 literal680
def live682 : Flapjack.NumSet := setValue0
def coloured682 : Flapjack.NumSet := setValue0
def result682 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1707, setValue1701)
def setValue1737 : Flapjack.NumSet := .bn setValue7 setValue1585
def setValue1738 : Flapjack.NumSet := .bn setValue1737 setValue1592
def setValue1739 : Flapjack.NumSet := .bn setValue1738 setValue1594
def setValue1740 : Flapjack.NumSet := .bn setValue1594 setValue1599
def setValue1741 : Flapjack.NumSet := .bn setValue1739 setValue1740
def setValue1742 : Flapjack.NumSet := .bn setValue1593 setValue1593
def setValue1743 : Flapjack.NumSet := .bn setValue1742 setValue1599
def setValue1744 : Flapjack.NumSet := .bn setValue1739 setValue1743
def setValue1745 : Flapjack.NumSet := .bn setValue1741 setValue1744
def setValue1746 : Flapjack.NumSet := .bn setValue1745 setValue0
def setValue1747 : Flapjack.NumSet := .bn setValue0 setValue1746
def setValue1748 : Flapjack.NumSet := .bs setValue65 () setValue65
def setValue1749 : Flapjack.NumSet := .bs setValue1609 () setValue1609
def setValue1750 : Flapjack.NumSet := .bn setValue1748 setValue1749
def setValue1751 : Flapjack.NumSet := .bs setValue1750 () setValue0
def tree683 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3165, 3161, 3157, 3153, 3149, 3145] [3061, 3141, 3129, 3121, 3133, 3137])).val
theorem tree683_def : tree683 = (Flapjack.RegAlloc.ClashTree.delta [3165, 3161, 3157, 3153, 3149, 3145] [3061, 3141, 3129, 3121, 3133, 3137]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal683 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3165, 3161, 3157, 3153, 3149, 3145] [3061, 3141, 3129, 3121, 3133, 3137]
def live683 : Flapjack.NumSet := setValue1707
def coloured683 : Flapjack.NumSet := setValue1701
def result683 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1747, setValue1751)
def tree684 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree683 tree682)).val
theorem tree684_def : tree684 = (.seq tree683 tree682) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal684 : Flapjack.RegAlloc.ClashTree := .seq literal683 literal682
def live684 : Flapjack.NumSet := setValue0
def coloured684 : Flapjack.NumSet := setValue0
def result684 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1747, setValue1751)
def tree685 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree685_def : tree685 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal685 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live685 : Flapjack.NumSet := setValue1747
def coloured685 : Flapjack.NumSet := setValue1751
def result685 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1747, setValue1751)
def tree686 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree685 tree684)).val
theorem tree686_def : tree686 = (.seq tree685 tree684) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal686 : Flapjack.RegAlloc.ClashTree := .seq literal685 literal684
def live686 : Flapjack.NumSet := setValue0
def coloured686 : Flapjack.NumSet := setValue0
def result686 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1747, setValue1751)
def setValue1752 : Flapjack.NumSet := .bn setValue29 setValue7
def setValue1753 : Flapjack.NumSet := .bn setValue30 setValue1752
def setValue1754 : Flapjack.NumSet := .bn setValue1752 setValue8
def setValue1755 : Flapjack.NumSet := .bn setValue1753 setValue1754
def setValue1756 : Flapjack.NumSet := .bn setValue1754 setValue1754
def setValue1757 : Flapjack.NumSet := .bn setValue1755 setValue1756
def setValue1758 : Flapjack.NumSet := .bn setValue1757 setValue1757
def setValue1759 : Flapjack.NumSet := .bn setValue0 setValue1758
def setValue1760 : Flapjack.NumSet := .bn setValue41 setValue1759
def setValue1761 : Flapjack.NumSet := .bn setValue1216 setValue1220
def setValue1762 : Flapjack.NumSet := .bs setValue1220 () setValue1220
def setValue1763 : Flapjack.NumSet := .bs setValue1761 () setValue1762
def setValue1764 : Flapjack.NumSet := .bs setValue1763 () setValue1763
def setValue1765 : Flapjack.NumSet := .bn setValue1764 setValue0
def tree687 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [3141, 3137, 3133, 3129, 3121, 3001, 3005, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3049, 3053,
    3057, 3061, 3065, 3069, 3073, 3077, 3081, 3085, 3089, 3093]
  [10, 2, 4, 8, 6, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967,
    2971, 2975, 2979, 2983, 2987, 2991, 2995])).val
theorem tree687_def : tree687 = (Flapjack.RegAlloc.ClashTree.delta
  [3141, 3137, 3133, 3129, 3121, 3001, 3005, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3049, 3053,
    3057, 3061, 3065, 3069, 3073, 3077, 3081, 3085, 3089, 3093]
  [10, 2, 4, 8, 6, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967,
    2971, 2975, 2979, 2983, 2987, 2991, 2995]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal687 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [3141, 3137, 3133, 3129, 3121, 3001, 3005, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3049, 3053,
    3057, 3061, 3065, 3069, 3073, 3077, 3081, 3085, 3089, 3093]
  [10, 2, 4, 8, 6, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967,
    2971, 2975, 2979, 2983, 2987, 2991, 2995]
def live687 : Flapjack.NumSet := setValue1747
def coloured687 : Flapjack.NumSet := setValue1751
def result687 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1760, setValue1765)
def tree688 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1760)).val
theorem tree688_def : tree688 = (.set setValue1760) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal688 : Flapjack.RegAlloc.ClashTree := .set setValue1760
def live688 : Flapjack.NumSet := setValue1760
def coloured688 : Flapjack.NumSet := setValue1765
def result688 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1760, setValue1765)
def tree689 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree688 tree687)).val
theorem tree689_def : tree689 = (.seq tree688 tree687) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal689 : Flapjack.RegAlloc.ClashTree := .seq literal688 literal687
def live689 : Flapjack.NumSet := setValue1747
def coloured689 : Flapjack.NumSet := setValue1751
def result689 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1760, setValue1765)
def setValue1766 : Flapjack.NumSet := .bn setValue1 setValue1746
def setValue1767 : Flapjack.NumSet := .bs setValue1748 () setValue1749
def setValue1768 : Flapjack.NumSet := .bs setValue1767 () setValue0
def tree690 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree690_def : tree690 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal690 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live690 : Flapjack.NumSet := setValue1747
def coloured690 : Flapjack.NumSet := setValue1751
def result690 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1766, setValue1768)
def setValue1769 : Flapjack.NumSet := .bn setValue1718 setValue0
def setValue1770 : Flapjack.NumSet := .bn setValue1769 setValue0
def setValue1771 : Flapjack.NumSet := .bn setValue0 setValue1709
def setValue1772 : Flapjack.NumSet := .bn setValue1770 setValue1771
def setValue1773 : Flapjack.NumSet := .bn setValue1769 setValue1709
def setValue1774 : Flapjack.NumSet := .bn setValue1770 setValue1773
def setValue1775 : Flapjack.NumSet := .bn setValue1772 setValue1774
def setValue1776 : Flapjack.NumSet := .bn setValue1775 setValue1758
def setValue1777 : Flapjack.NumSet := .bn setValue1 setValue1776
def setValue1778 : Flapjack.NumSet := .bs setValue27 () setValue1220
def setValue1779 : Flapjack.NumSet := .bs setValue1761 () setValue1778
def setValue1780 : Flapjack.NumSet := .bs setValue1779 () setValue1763
def setValue1781 : Flapjack.NumSet := .bn setValue1780 setValue0
def tree691 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 3001, 3005, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3049, 3053, 3057, 3061, 3065, 3069, 3073,
    3077, 3081, 3085, 3089, 3093]
  [2, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967, 2971, 2975,
    2979, 2983, 2987, 2991, 2995])).val
theorem tree691_def : tree691 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 3001, 3005, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3049, 3053, 3057, 3061, 3065, 3069, 3073,
    3077, 3081, 3085, 3089, 3093]
  [2, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967, 2971, 2975,
    2979, 2983, 2987, 2991, 2995]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal691 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 3001, 3005, 3009, 3013, 3017, 3021, 3025, 3029, 3033, 3037, 3041, 3045, 3049, 3053, 3057, 3061, 3065, 3069, 3073,
    3077, 3081, 3085, 3089, 3093]
  [2, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967, 2971, 2975,
    2979, 2983, 2987, 2991, 2995]
def live691 : Flapjack.NumSet := setValue1766
def coloured691 : Flapjack.NumSet := setValue1768
def result691 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1777, setValue1781)
def tree692 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree691 tree690)).val
theorem tree692_def : tree692 = (.seq tree691 tree690) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal692 : Flapjack.RegAlloc.ClashTree := .seq literal691 literal690
def live692 : Flapjack.NumSet := setValue1747
def coloured692 : Flapjack.NumSet := setValue1751
def result692 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1777, setValue1781)
def setValue1782 : Flapjack.NumSet := .bn setValue1 setValue1759
def setValue1783 : Flapjack.NumSet := .bn setValue1220 setValue1220
def setValue1784 : Flapjack.NumSet := .bn setValue1761 setValue1783
def setValue1785 : Flapjack.NumSet := .bs setValue1784 () setValue1784
def setValue1786 : Flapjack.NumSet := .bn setValue1785 setValue0
def tree693 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1782)).val
theorem tree693_def : tree693 = (.set setValue1782) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal693 : Flapjack.RegAlloc.ClashTree := .set setValue1782
def live693 : Flapjack.NumSet := setValue1777
def coloured693 : Flapjack.NumSet := setValue1781
def result693 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1782, setValue1786)
def tree694 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree693 tree692)).val
theorem tree694_def : tree694 = (.seq tree693 tree692) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal694 : Flapjack.RegAlloc.ClashTree := .seq literal693 literal692
def live694 : Flapjack.NumSet := setValue1747
def coloured694 : Flapjack.NumSet := setValue1751
def result694 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1782, setValue1786)
def tree695 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1760) tree689 tree694)).val
theorem tree695_def : tree695 = (.branch (some setValue1760) tree689 tree694) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal695 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1760) literal689 literal694
def live695 : Flapjack.NumSet := setValue1747
def coloured695 : Flapjack.NumSet := setValue1751
def result695 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1760, setValue1765)
def tree696 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree695 tree686)).val
theorem tree696_def : tree696 = (.seq tree695 tree686) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal696 : Flapjack.RegAlloc.ClashTree := .seq literal695 literal686
def live696 : Flapjack.NumSet := setValue0
def coloured696 : Flapjack.NumSet := setValue0
def result696 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1760, setValue1765)
def setValue1787 : Flapjack.NumSet := .bn setValue172 setValue172
def setValue1788 : Flapjack.NumSet := .bn setValue172 setValue29
def setValue1789 : Flapjack.NumSet := .bn setValue1787 setValue1788
def setValue1790 : Flapjack.NumSet := .bn setValue173 setValue1788
def setValue1791 : Flapjack.NumSet := .bn setValue1789 setValue1790
def setValue1792 : Flapjack.NumSet := .bn setValue178 setValue1790
def setValue1793 : Flapjack.NumSet := .bn setValue1791 setValue1792
def setValue1794 : Flapjack.NumSet := .bn setValue1787 setValue0
def setValue1795 : Flapjack.NumSet := .bn setValue1794 setValue1790
def setValue1796 : Flapjack.NumSet := .bn setValue1788 setValue1788
def setValue1797 : Flapjack.NumSet := .bn setValue1790 setValue1796
def setValue1798 : Flapjack.NumSet := .bn setValue1795 setValue1797
def setValue1799 : Flapjack.NumSet := .bn setValue1793 setValue1798
def setValue1800 : Flapjack.NumSet := .bn setValue1799 setValue0
def setValue1801 : Flapjack.NumSet := .bn setValue0 setValue1800
def setValue1802 : Flapjack.NumSet := .bn setValue4 setValue4
def setValue1803 : Flapjack.NumSet := .bs setValue504 () setValue1802
def setValue1804 : Flapjack.NumSet := .bs setValue1761 () setValue1803
def setValue1805 : Flapjack.NumSet := .bn setValue1216 setValue1347
def setValue1806 : Flapjack.NumSet := .bs setValue1347 () setValue1220
def setValue1807 : Flapjack.NumSet := .bs setValue1805 () setValue1806
def setValue1808 : Flapjack.NumSet := .bn setValue1804 setValue1807
def setValue1809 : Flapjack.NumSet := .bs setValue1808 () setValue0
def tree697 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967,
    2971, 2975, 2979, 2983, 2987, 2991, 2995]
  [2833, 2797, 2817, 2789, 2745, 2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793,
    2789, 2785, 2781, 2769, 2765, 2761, 2757, 2753, 2749, 2745])).val
theorem tree697_def : tree697 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967,
    2971, 2975, 2979, 2983, 2987, 2991, 2995]
  [2833, 2797, 2817, 2789, 2745, 2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793,
    2789, 2785, 2781, 2769, 2765, 2761, 2757, 2753, 2749, 2745]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal697 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 2903, 2907, 2911, 2915, 2919, 2923, 2927, 2931, 2935, 2939, 2943, 2947, 2951, 2955, 2959, 2963, 2967,
    2971, 2975, 2979, 2983, 2987, 2991, 2995]
  [2833, 2797, 2817, 2789, 2745, 2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793,
    2789, 2785, 2781, 2769, 2765, 2761, 2757, 2753, 2749, 2745]
def live697 : Flapjack.NumSet := setValue1760
def coloured697 : Flapjack.NumSet := setValue1765
def result697 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1801, setValue1809)
def tree698 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree697 tree696)).val
theorem tree698_def : tree698 = (.seq tree697 tree696) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal698 : Flapjack.RegAlloc.ClashTree := .seq literal697 literal696
def live698 : Flapjack.NumSet := setValue0
def coloured698 : Flapjack.NumSet := setValue0
def result698 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1801, setValue1809)
def tree699 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree699_def : tree699 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal699 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live699 : Flapjack.NumSet := setValue1801
def coloured699 : Flapjack.NumSet := setValue1809
def result699 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1801, setValue1809)
def tree700 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree699 tree698)).val
theorem tree700_def : tree700 = (.seq tree699 tree698) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal700 : Flapjack.RegAlloc.ClashTree := .seq literal699 literal698
def live700 : Flapjack.NumSet := setValue0
def coloured700 : Flapjack.NumSet := setValue0
def result700 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1801, setValue1809)
def setValue1810 : Flapjack.NumSet := .bn setValue1115 setValue1017
def setValue1811 : Flapjack.NumSet := .bn setValue1114 setValue810
def setValue1812 : Flapjack.NumSet := .bn setValue1811 setValue1017
def setValue1813 : Flapjack.NumSet := .bn setValue1810 setValue1812
def setValue1814 : Flapjack.NumSet := .bn setValue1812 setValue1061
def setValue1815 : Flapjack.NumSet := .bn setValue1813 setValue1814
def setValue1816 : Flapjack.NumSet := .bn setValue1814 setValue1814
def setValue1817 : Flapjack.NumSet := .bn setValue1815 setValue1816
def setValue1818 : Flapjack.NumSet := .bn setValue1817 setValue0
def setValue1819 : Flapjack.NumSet := .bn setValue0 setValue1818
def setValue1820 : Flapjack.NumSet := .bn setValue504 setValue1802
def setValue1821 : Flapjack.NumSet := .bn setValue1761 setValue1820
def setValue1822 : Flapjack.NumSet := .bn setValue1347 setValue1220
def setValue1823 : Flapjack.NumSet := .bn setValue1805 setValue1822
def setValue1824 : Flapjack.NumSet := .bn setValue1821 setValue1823
def setValue1825 : Flapjack.NumSet := .bs setValue1824 () setValue0
def tree701 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793, 2789, 2785, 2781, 2769, 2765,
    2761, 2757, 2753, 2749, 2745]
  [1005, 1009, 1017, 1021, 1053, 1025, 1029, 1053, 1033, 1013, 1037, 1081, 1013, 1041, 1081, 1045, 1049, 1061, 1065,
    1069, 1073, 1077, 1057, 1057])).val
theorem tree701_def : tree701 = (Flapjack.RegAlloc.ClashTree.delta
  [2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793, 2789, 2785, 2781, 2769, 2765,
    2761, 2757, 2753, 2749, 2745]
  [1005, 1009, 1017, 1021, 1053, 1025, 1029, 1053, 1033, 1013, 1037, 1081, 1013, 1041, 1081, 1045, 1049, 1061, 1065,
    1069, 1073, 1077, 1057, 1057]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal701 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793, 2789, 2785, 2781, 2769, 2765,
    2761, 2757, 2753, 2749, 2745]
  [1005, 1009, 1017, 1021, 1053, 1025, 1029, 1053, 1033, 1013, 1037, 1081, 1013, 1041, 1081, 1045, 1049, 1061, 1065,
    1069, 1073, 1077, 1057, 1057]
def live701 : Flapjack.NumSet := setValue1801
def coloured701 : Flapjack.NumSet := setValue1809
def result701 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree702 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree702_def : tree702 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal702 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live702 : Flapjack.NumSet := setValue1819
def coloured702 : Flapjack.NumSet := setValue1825
def result702 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree703 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree702 tree701)).val
theorem tree703_def : tree703 = (.seq tree702 tree701) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal703 : Flapjack.RegAlloc.ClashTree := .seq literal702 literal701
def live703 : Flapjack.NumSet := setValue1801
def coloured703 : Flapjack.NumSet := setValue1809
def result703 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree704 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree704_def : tree704 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal704 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live704 : Flapjack.NumSet := setValue1819
def coloured704 : Flapjack.NumSet := setValue1825
def result704 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree705 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree704 tree703)).val
theorem tree705_def : tree705 = (.seq tree704 tree703) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal705 : Flapjack.RegAlloc.ClashTree := .seq literal704 literal703
def live705 : Flapjack.NumSet := setValue1801
def coloured705 : Flapjack.NumSet := setValue1809
def result705 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def setValue1826 : Flapjack.NumSet := .bn setValue1 setValue1818
def setValue1827 : Flapjack.NumSet := .bs setValue1821 () setValue1823
def setValue1828 : Flapjack.NumSet := .bs setValue1827 () setValue0
def tree706 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree706_def : tree706 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal706 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live706 : Flapjack.NumSet := setValue1819
def coloured706 : Flapjack.NumSet := setValue1825
def result706 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1826, setValue1828)
def setValue1829 : Flapjack.NumSet := .bn setValue810 setValue810
def setValue1830 : Flapjack.NumSet := .bn setValue1829 setValue1017
def setValue1831 : Flapjack.NumSet := .bn setValue1812 setValue1830
def setValue1832 : Flapjack.NumSet := .bn setValue1813 setValue1831
def setValue1833 : Flapjack.NumSet := .bn setValue1832 setValue1816
def setValue1834 : Flapjack.NumSet := .bn setValue1833 setValue0
def setValue1835 : Flapjack.NumSet := .bn setValue0 setValue1834
def tree707 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [1125])).val
theorem tree707_def : tree707 = (Flapjack.RegAlloc.ClashTree.delta [2] [1125]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal707 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [1125]
def live707 : Flapjack.NumSet := setValue1826
def coloured707 : Flapjack.NumSet := setValue1828
def result707 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1835, setValue1828)
def tree708 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree707 tree706)).val
theorem tree708_def : tree708 = (.seq tree707 tree706) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal708 : Flapjack.RegAlloc.ClashTree := .seq literal707 literal706
def live708 : Flapjack.NumSet := setValue1819
def coloured708 : Flapjack.NumSet := setValue1825
def result708 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1835, setValue1828)
def tree709 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1125] [])).val
theorem tree709_def : tree709 = (Flapjack.RegAlloc.ClashTree.delta [1125] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal709 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1125] []
def live709 : Flapjack.NumSet := setValue1835
def coloured709 : Flapjack.NumSet := setValue1828
def result709 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree710 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree709 tree708)).val
theorem tree710_def : tree710 = (.seq tree709 tree708) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal710 : Flapjack.RegAlloc.ClashTree := .seq literal709 literal708
def live710 : Flapjack.NumSet := setValue1819
def coloured710 : Flapjack.NumSet := setValue1825
def result710 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def setValue1836 : Flapjack.NumSet := .bn setValue1814 setValue1831
def setValue1837 : Flapjack.NumSet := .bn setValue1815 setValue1836
def setValue1838 : Flapjack.NumSet := .bn setValue1837 setValue0
def setValue1839 : Flapjack.NumSet := .bn setValue0 setValue1838
def tree711 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [1121])).val
theorem tree711_def : tree711 = (Flapjack.RegAlloc.ClashTree.delta [] [1121]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal711 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [1121]
def live711 : Flapjack.NumSet := setValue1819
def coloured711 : Flapjack.NumSet := setValue1825
def result711 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1839, setValue1828)
def tree712 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree711 tree710)).val
theorem tree712_def : tree712 = (.seq tree711 tree710) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal712 : Flapjack.RegAlloc.ClashTree := .seq literal711 literal710
def live712 : Flapjack.NumSet := setValue1819
def coloured712 : Flapjack.NumSet := setValue1825
def result712 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1839, setValue1828)
def setValue1840 : Flapjack.NumSet := .bn setValue1115 setValue1829
def setValue1841 : Flapjack.NumSet := .bn setValue1840 setValue1812
def setValue1842 : Flapjack.NumSet := .bn setValue1841 setValue1814
def setValue1843 : Flapjack.NumSet := .bn setValue1842 setValue1816
def setValue1844 : Flapjack.NumSet := .bn setValue1843 setValue0
def setValue1845 : Flapjack.NumSet := .bn setValue0 setValue1844
def tree713 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1121] [1117])).val
theorem tree713_def : tree713 = (Flapjack.RegAlloc.ClashTree.delta [1121] [1117]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal713 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1121] [1117]
def live713 : Flapjack.NumSet := setValue1839
def coloured713 : Flapjack.NumSet := setValue1828
def result713 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1845, setValue1828)
def tree714 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree713 tree712)).val
theorem tree714_def : tree714 = (.seq tree713 tree712) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal714 : Flapjack.RegAlloc.ClashTree := .seq literal713 literal712
def live714 : Flapjack.NumSet := setValue1819
def coloured714 : Flapjack.NumSet := setValue1825
def result714 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1845, setValue1828)
def tree715 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1117] [])).val
theorem tree715_def : tree715 = (Flapjack.RegAlloc.ClashTree.delta [1117] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal715 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1117] []
def live715 : Flapjack.NumSet := setValue1845
def coloured715 : Flapjack.NumSet := setValue1828
def result715 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree716 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree715 tree714)).val
theorem tree716_def : tree716 = (.seq tree715 tree714) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal716 : Flapjack.RegAlloc.ClashTree := .seq literal715 literal714
def live716 : Flapjack.NumSet := setValue1819
def coloured716 : Flapjack.NumSet := setValue1825
def result716 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree717 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree717_def : tree717 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal717 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live717 : Flapjack.NumSet := setValue1819
def coloured717 : Flapjack.NumSet := setValue1825
def result717 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree718 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree717 tree716)).val
theorem tree718_def : tree718 = (.seq tree717 tree716) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal718 : Flapjack.RegAlloc.ClashTree := .seq literal717 literal716
def live718 : Flapjack.NumSet := setValue1819
def coloured718 : Flapjack.NumSet := setValue1825
def result718 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree719 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree719_def : tree719 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal719 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live719 : Flapjack.NumSet := setValue1819
def coloured719 : Flapjack.NumSet := setValue1825
def result719 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def tree720 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree718 tree719)).val
theorem tree720_def : tree720 = (.branch (none) tree718 tree719) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal720 : Flapjack.RegAlloc.ClashTree := .branch (none) literal718 literal719
def live720 : Flapjack.NumSet := setValue1819
def coloured720 : Flapjack.NumSet := setValue1825
def result720 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1819, setValue1825)
def setValue1846 : Flapjack.NumSet := .bn setValue1811 setValue1829
def setValue1847 : Flapjack.NumSet := .bn setValue1810 setValue1846
def setValue1848 : Flapjack.NumSet := .bn setValue1847 setValue1814
def setValue1849 : Flapjack.NumSet := .bn setValue1846 setValue1061
def setValue1850 : Flapjack.NumSet := .bn setValue1814 setValue1849
def setValue1851 : Flapjack.NumSet := .bn setValue1848 setValue1850
def setValue1852 : Flapjack.NumSet := .bn setValue1851 setValue0
def setValue1853 : Flapjack.NumSet := .bn setValue0 setValue1852
def setValue1854 : Flapjack.NumSet := .bs setValue1805 () setValue1822
def setValue1855 : Flapjack.NumSet := .bs setValue1821 () setValue1854
def setValue1856 : Flapjack.NumSet := .bs setValue1855 () setValue0
def tree721 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [1101, 1105])).val
theorem tree721_def : tree721 = (Flapjack.RegAlloc.ClashTree.delta [] [1101, 1105]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal721 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [1101, 1105]
def live721 : Flapjack.NumSet := setValue1819
def coloured721 : Flapjack.NumSet := setValue1825
def result721 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1853, setValue1856)
def tree722 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree721 tree720)).val
theorem tree722_def : tree722 = (.seq tree721 tree720) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal722 : Flapjack.RegAlloc.ClashTree := .seq literal721 literal720
def live722 : Flapjack.NumSet := setValue1819
def coloured722 : Flapjack.NumSet := setValue1825
def result722 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1853, setValue1856)
def tree723 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree722 tree705)).val
theorem tree723_def : tree723 = (.seq tree722 tree705) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal723 : Flapjack.RegAlloc.ClashTree := .seq literal722 literal705
def live723 : Flapjack.NumSet := setValue1801
def coloured723 : Flapjack.NumSet := setValue1809
def result723 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1853, setValue1856)
def setValue1857 : Flapjack.NumSet := .bn setValue1848 setValue1816
def setValue1858 : Flapjack.NumSet := .bn setValue1857 setValue0
def setValue1859 : Flapjack.NumSet := .bn setValue0 setValue1858
def setValue1860 : Flapjack.NumSet := .bn setValue1821 setValue1854
def setValue1861 : Flapjack.NumSet := .bs setValue1860 () setValue0
def tree724 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1105] [])).val
theorem tree724_def : tree724 = (Flapjack.RegAlloc.ClashTree.delta [1105] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal724 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1105] []
def live724 : Flapjack.NumSet := setValue1853
def coloured724 : Flapjack.NumSet := setValue1856
def result724 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1859, setValue1861)
def tree725 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree724 tree723)).val
theorem tree725_def : tree725 = (.seq tree724 tree723) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal725 : Flapjack.RegAlloc.ClashTree := .seq literal724 literal723
def live725 : Flapjack.NumSet := setValue1801
def coloured725 : Flapjack.NumSet := setValue1809
def result725 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1859, setValue1861)
def setValue1862 : Flapjack.NumSet := .bn setValue1017 setValue1829
def setValue1863 : Flapjack.NumSet := .bn setValue1812 setValue1862
def setValue1864 : Flapjack.NumSet := .bn setValue1863 setValue1814
def setValue1865 : Flapjack.NumSet := .bn setValue1815 setValue1864
def setValue1866 : Flapjack.NumSet := .bn setValue1865 setValue0
def setValue1867 : Flapjack.NumSet := .bn setValue0 setValue1866
def tree726 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1101] [1097])).val
theorem tree726_def : tree726 = (Flapjack.RegAlloc.ClashTree.delta [1101] [1097]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal726 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1101] [1097]
def live726 : Flapjack.NumSet := setValue1859
def coloured726 : Flapjack.NumSet := setValue1861
def result726 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1867, setValue1861)
def tree727 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree726 tree725)).val
theorem tree727_def : tree727 = (.seq tree726 tree725) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal727 : Flapjack.RegAlloc.ClashTree := .seq literal726 literal725
def live727 : Flapjack.NumSet := setValue1801
def coloured727 : Flapjack.NumSet := setValue1809
def result727 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1867, setValue1861)
def tree728 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree728_def : tree728 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal728 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live728 : Flapjack.NumSet := setValue1867
def coloured728 : Flapjack.NumSet := setValue1861
def result728 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1867, setValue1861)
def tree729 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree728 tree727)).val
theorem tree729_def : tree729 = (.seq tree728 tree727) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal729 : Flapjack.RegAlloc.ClashTree := .seq literal728 literal727
def live729 : Flapjack.NumSet := setValue1801
def coloured729 : Flapjack.NumSet := setValue1809
def result729 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1867, setValue1861)
def setValue1868 : Flapjack.NumSet := .bn setValue1114 setValue1114
def setValue1869 : Flapjack.NumSet := .bn setValue1242 setValue1868
def setValue1870 : Flapjack.NumSet := .bn setValue1242 setValue1115
def setValue1871 : Flapjack.NumSet := .bn setValue1869 setValue1870
def setValue1872 : Flapjack.NumSet := .bn setValue1868 setValue1115
def setValue1873 : Flapjack.NumSet := .bn setValue1870 setValue1872
def setValue1874 : Flapjack.NumSet := .bn setValue1871 setValue1873
def setValue1875 : Flapjack.NumSet := .bn setValue1873 setValue1873
def setValue1876 : Flapjack.NumSet := .bn setValue1874 setValue1875
def setValue1877 : Flapjack.NumSet := .bn setValue0 setValue1876
def setValue1878 : Flapjack.NumSet := .bn setValue1 setValue1877
def setValue1879 : Flapjack.NumSet := .bn setValue504 setValue1220
def setValue1880 : Flapjack.NumSet := .bn setValue1761 setValue1879
def setValue1881 : Flapjack.NumSet := .bs setValue1880 () setValue1823
def setValue1882 : Flapjack.NumSet := .bn setValue1881 setValue0
def tree730 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [1097, 1005, 1009, 1013, 1017, 1021, 1025, 1029, 1033, 1037, 1041, 1045, 1049, 1053, 1057, 1061, 1065, 1069, 1073,
    1077, 1081]
  [2, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991, 995, 999])).val
theorem tree730_def : tree730 = (Flapjack.RegAlloc.ClashTree.delta
  [1097, 1005, 1009, 1013, 1017, 1021, 1025, 1029, 1033, 1037, 1041, 1045, 1049, 1053, 1057, 1061, 1065, 1069, 1073,
    1077, 1081]
  [2, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991, 995, 999]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal730 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [1097, 1005, 1009, 1013, 1017, 1021, 1025, 1029, 1033, 1037, 1041, 1045, 1049, 1053, 1057, 1061, 1065, 1069, 1073,
    1077, 1081]
  [2, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991, 995, 999]
def live730 : Flapjack.NumSet := setValue1867
def coloured730 : Flapjack.NumSet := setValue1861
def result730 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1878, setValue1882)
def tree731 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1878)).val
theorem tree731_def : tree731 = (.set setValue1878) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal731 : Flapjack.RegAlloc.ClashTree := .set setValue1878
def live731 : Flapjack.NumSet := setValue1878
def coloured731 : Flapjack.NumSet := setValue1882
def result731 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1878, setValue1882)
def tree732 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree731 tree730)).val
theorem tree732_def : tree732 = (.seq tree731 tree730) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal732 : Flapjack.RegAlloc.ClashTree := .seq literal731 literal730
def live732 : Flapjack.NumSet := setValue1867
def coloured732 : Flapjack.NumSet := setValue1861
def result732 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1878, setValue1882)
def setValue1883 : Flapjack.NumSet := .bn setValue1 setValue1866
def tree733 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree733_def : tree733 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal733 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live733 : Flapjack.NumSet := setValue1867
def coloured733 : Flapjack.NumSet := setValue1861
def result733 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1883, setValue1856)
def setValue1884 : Flapjack.NumSet := .bn setValue0 setValue960
def setValue1885 : Flapjack.NumSet := .bn setValue1884 setValue1876
def setValue1886 : Flapjack.NumSet := .bn setValue1 setValue1885
def setValue1887 : Flapjack.NumSet := .bs setValue1880 () setValue1854
def setValue1888 : Flapjack.NumSet := .bn setValue1887 setValue0
def tree734 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 1005, 1009, 1013, 1017, 1021, 1025, 1029, 1033, 1037, 1041, 1045, 1049, 1053, 1057, 1061, 1065, 1069, 1073, 1077,
    1081]
  [2, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991, 995, 999])).val
theorem tree734_def : tree734 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 1005, 1009, 1013, 1017, 1021, 1025, 1029, 1033, 1037, 1041, 1045, 1049, 1053, 1057, 1061, 1065, 1069, 1073, 1077,
    1081]
  [2, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991, 995, 999]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal734 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 1005, 1009, 1013, 1017, 1021, 1025, 1029, 1033, 1037, 1041, 1045, 1049, 1053, 1057, 1061, 1065, 1069, 1073, 1077,
    1081]
  [2, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991, 995, 999]
def live734 : Flapjack.NumSet := setValue1883
def coloured734 : Flapjack.NumSet := setValue1856
def result734 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1886, setValue1888)
def tree735 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree734 tree733)).val
theorem tree735_def : tree735 = (.seq tree734 tree733) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal735 : Flapjack.RegAlloc.ClashTree := .seq literal734 literal733
def live735 : Flapjack.NumSet := setValue1867
def coloured735 : Flapjack.NumSet := setValue1861
def result735 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1886, setValue1888)
def tree736 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1878)).val
theorem tree736_def : tree736 = (.set setValue1878) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal736 : Flapjack.RegAlloc.ClashTree := .set setValue1878
def live736 : Flapjack.NumSet := setValue1886
def coloured736 : Flapjack.NumSet := setValue1888
def result736 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1878, setValue1882)
def tree737 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree736 tree735)).val
theorem tree737_def : tree737 = (.seq tree736 tree735) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal737 : Flapjack.RegAlloc.ClashTree := .seq literal736 literal735
def live737 : Flapjack.NumSet := setValue1867
def coloured737 : Flapjack.NumSet := setValue1861
def result737 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1878, setValue1882)
def setValue1889 : Flapjack.NumSet := .bn setValue350 setValue1877
def setValue1890 : Flapjack.NumSet := .bs setValue1216 () setValue1220
def setValue1891 : Flapjack.NumSet := .bs setValue504 () setValue1220
def setValue1892 : Flapjack.NumSet := .bs setValue1890 () setValue1891
def setValue1893 : Flapjack.NumSet := .bs setValue1216 () setValue1347
def setValue1894 : Flapjack.NumSet := .bs setValue1347 () setValue1237
def setValue1895 : Flapjack.NumSet := .bs setValue1893 () setValue1894
def setValue1896 : Flapjack.NumSet := .bs setValue1892 () setValue1895
def setValue1897 : Flapjack.NumSet := .bn setValue1896 setValue0
def tree738 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1889) tree732 tree737)).val
theorem tree738_def : tree738 = (.branch (some setValue1889) tree732 tree737) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal738 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1889) literal732 literal737
def live738 : Flapjack.NumSet := setValue1867
def coloured738 : Flapjack.NumSet := setValue1861
def result738 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1889, setValue1897)
def tree739 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree738 tree729)).val
theorem tree739_def : tree739 = (.seq tree738 tree729) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal739 : Flapjack.RegAlloc.ClashTree := .seq literal738 literal729
def live739 : Flapjack.NumSet := setValue1801
def coloured739 : Flapjack.NumSet := setValue1809
def result739 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1889, setValue1897)
def setValue1898 : Flapjack.NumSet := .bn setValue86 setValue5
def setValue1899 : Flapjack.NumSet := .bn setValue0 setValue1898
def setValue1900 : Flapjack.NumSet := .bn setValue86 setValue88
def setValue1901 : Flapjack.NumSet := .bn setValue0 setValue88
def setValue1902 : Flapjack.NumSet := .bn setValue1900 setValue1901
def setValue1903 : Flapjack.NumSet := .bn setValue1899 setValue1902
def setValue1904 : Flapjack.NumSet := .bn setValue1372 setValue171
def setValue1905 : Flapjack.NumSet := .bn setValue88 setValue5
def setValue1906 : Flapjack.NumSet := .bn setValue1905 setValue0
def setValue1907 : Flapjack.NumSet := .bn setValue1904 setValue1906
def setValue1908 : Flapjack.NumSet := .bn setValue1903 setValue1907
def setValue1909 : Flapjack.NumSet := .bn setValue5 setValue5
def setValue1910 : Flapjack.NumSet := .bn setValue1909 setValue171
def setValue1911 : Flapjack.NumSet := .bn setValue1910 setValue359
def setValue1912 : Flapjack.NumSet := .bn setValue1372 setValue1909
def setValue1913 : Flapjack.NumSet := .bn setValue1912 setValue172
def setValue1914 : Flapjack.NumSet := .bn setValue1911 setValue1913
def setValue1915 : Flapjack.NumSet := .bn setValue1908 setValue1914
def setValue1916 : Flapjack.NumSet := .bn setValue1915 setValue0
def setValue1917 : Flapjack.NumSet := .bn setValue0 setValue1916
def setValue1918 : Flapjack.NumSet := .bn setValue4 setValue799
def setValue1919 : Flapjack.NumSet := .bn setValue1 setValue1271
def setValue1920 : Flapjack.NumSet := .bs setValue1918 () setValue1919
def setValue1921 : Flapjack.NumSet := .bn setValue1533 setValue1
def setValue1922 : Flapjack.NumSet := .bs setValue1 () setValue785
def setValue1923 : Flapjack.NumSet := .bs setValue1921 () setValue1922
def setValue1924 : Flapjack.NumSet := .bs setValue1920 () setValue1923
def setValue1925 : Flapjack.NumSet := .bs setValue1924 () setValue0
def tree740 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991,
    995, 999]
  [861, 869, 877, 885, 721, 741, 761, 781, 649, 653, 861, 657, 661, 665, 721, 761, 669, 673, 813, 677, 869, 885, 741,
    881, 685, 697, 781, 877])).val
theorem tree740_def : tree740 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991,
    995, 999]
  [861, 869, 877, 885, 721, 741, 761, 781, 649, 653, 861, 657, 661, 665, 721, 761, 669, 673, 813, 677, 869, 885, 741,
    881, 685, 697, 781, 877]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal740 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 923, 927, 931, 935, 939, 943, 947, 951, 955, 959, 963, 967, 971, 975, 979, 983, 987, 991,
    995, 999]
  [861, 869, 877, 885, 721, 741, 761, 781, 649, 653, 861, 657, 661, 665, 721, 761, 669, 673, 813, 677, 869, 885, 741,
    881, 685, 697, 781, 877]
def live740 : Flapjack.NumSet := setValue1889
def coloured740 : Flapjack.NumSet := setValue1897
def result740 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1917, setValue1925)
def tree741 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree740 tree739)).val
theorem tree741_def : tree741 = (.seq tree740 tree739) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal741 : Flapjack.RegAlloc.ClashTree := .seq literal740 literal739
def live741 : Flapjack.NumSet := setValue1801
def coloured741 : Flapjack.NumSet := setValue1809
def result741 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1917, setValue1925)
def setValue1926 : Flapjack.NumSet := .bn setValue359 setValue1906
def setValue1927 : Flapjack.NumSet := .bn setValue1903 setValue1926
def setValue1928 : Flapjack.NumSet := .bn setValue1927 setValue1914
def setValue1929 : Flapjack.NumSet := .bn setValue1928 setValue0
def setValue1930 : Flapjack.NumSet := .bn setValue0 setValue1929
def setValue1931 : Flapjack.NumSet := .bn setValue1 setValue785
def setValue1932 : Flapjack.NumSet := .bs setValue1921 () setValue1931
def setValue1933 : Flapjack.NumSet := .bs setValue1920 () setValue1932
def setValue1934 : Flapjack.NumSet := .bs setValue1933 () setValue0
def tree742 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [885] [881])).val
theorem tree742_def : tree742 = (Flapjack.RegAlloc.ClashTree.delta [885] [881]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal742 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [885] [881]
def live742 : Flapjack.NumSet := setValue1917
def coloured742 : Flapjack.NumSet := setValue1925
def result742 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1930, setValue1934)
def tree743 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree742 tree741)).val
theorem tree743_def : tree743 = (.seq tree742 tree741) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal743 : Flapjack.RegAlloc.ClashTree := .seq literal742 literal741
def live743 : Flapjack.NumSet := setValue1801
def coloured743 : Flapjack.NumSet := setValue1809
def result743 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1930, setValue1934)
def setValue1935 : Flapjack.NumSet := .bn setValue1910 setValue1904
def setValue1936 : Flapjack.NumSet := .bn setValue0 setValue1909
def setValue1937 : Flapjack.NumSet := .bn setValue1936 setValue172
def setValue1938 : Flapjack.NumSet := .bn setValue1935 setValue1937
def setValue1939 : Flapjack.NumSet := .bn setValue1927 setValue1938
def setValue1940 : Flapjack.NumSet := .bn setValue1939 setValue0
def setValue1941 : Flapjack.NumSet := .bn setValue0 setValue1940
def tree744 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [881] [873])).val
theorem tree744_def : tree744 = (Flapjack.RegAlloc.ClashTree.delta [881] [873]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal744 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [881] [873]
def live744 : Flapjack.NumSet := setValue1930
def coloured744 : Flapjack.NumSet := setValue1934
def result744 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1941, setValue1934)
def tree745 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree744 tree743)).val
theorem tree745_def : tree745 = (.seq tree744 tree743) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal745 : Flapjack.RegAlloc.ClashTree := .seq literal744 literal743
def live745 : Flapjack.NumSet := setValue1801
def coloured745 : Flapjack.NumSet := setValue1809
def result745 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1941, setValue1934)
def setValue1942 : Flapjack.NumSet := .bn setValue1901 setValue1901
def setValue1943 : Flapjack.NumSet := .bn setValue1899 setValue1942
def setValue1944 : Flapjack.NumSet := .bn setValue1943 setValue1926
def setValue1945 : Flapjack.NumSet := .bn setValue1944 setValue1938
def setValue1946 : Flapjack.NumSet := .bn setValue1945 setValue0
def setValue1947 : Flapjack.NumSet := .bn setValue0 setValue1946
def setValue1948 : Flapjack.NumSet := .bn setValue1918 setValue1919
def setValue1949 : Flapjack.NumSet := .bs setValue1948 () setValue1932
def setValue1950 : Flapjack.NumSet := .bs setValue1949 () setValue0
def tree746 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [877] [873])).val
theorem tree746_def : tree746 = (Flapjack.RegAlloc.ClashTree.delta [877] [873]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal746 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [877] [873]
def live746 : Flapjack.NumSet := setValue1941
def coloured746 : Flapjack.NumSet := setValue1934
def result746 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1947, setValue1950)
def tree747 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree746 tree745)).val
theorem tree747_def : tree747 = (.seq tree746 tree745) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal747 : Flapjack.RegAlloc.ClashTree := .seq literal746 literal745
def live747 : Flapjack.NumSet := setValue1801
def coloured747 : Flapjack.NumSet := setValue1809
def result747 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1947, setValue1950)
def setValue1951 : Flapjack.NumSet := .bn setValue1898 setValue0
def setValue1952 : Flapjack.NumSet := .bn setValue1936 setValue1951
def setValue1953 : Flapjack.NumSet := .bn setValue1911 setValue1952
def setValue1954 : Flapjack.NumSet := .bn setValue1944 setValue1953
def setValue1955 : Flapjack.NumSet := .bn setValue1954 setValue0
def setValue1956 : Flapjack.NumSet := .bn setValue0 setValue1955
def tree748 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [873] [865])).val
theorem tree748_def : tree748 = (Flapjack.RegAlloc.ClashTree.delta [873] [865]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal748 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [873] [865]
def live748 : Flapjack.NumSet := setValue1947
def coloured748 : Flapjack.NumSet := setValue1950
def result748 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1956, setValue1950)
def tree749 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree748 tree747)).val
theorem tree749_def : tree749 = (.seq tree748 tree747) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal749 : Flapjack.RegAlloc.ClashTree := .seq literal748 literal747
def live749 : Flapjack.NumSet := setValue1801
def coloured749 : Flapjack.NumSet := setValue1809
def result749 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1956, setValue1950)
def setValue1957 : Flapjack.NumSet := .bn setValue1909 setValue0
def setValue1958 : Flapjack.NumSet := .bn setValue359 setValue1957
def setValue1959 : Flapjack.NumSet := .bn setValue1943 setValue1958
def setValue1960 : Flapjack.NumSet := .bn setValue1959 setValue1953
def setValue1961 : Flapjack.NumSet := .bn setValue1960 setValue0
def setValue1962 : Flapjack.NumSet := .bn setValue0 setValue1961
def setValue1963 : Flapjack.NumSet := .bn setValue1921 setValue1931
def setValue1964 : Flapjack.NumSet := .bs setValue1948 () setValue1963
def setValue1965 : Flapjack.NumSet := .bs setValue1964 () setValue0
def tree750 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [869] [865])).val
theorem tree750_def : tree750 = (Flapjack.RegAlloc.ClashTree.delta [869] [865]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal750 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [869] [865]
def live750 : Flapjack.NumSet := setValue1956
def coloured750 : Flapjack.NumSet := setValue1950
def result750 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1962, setValue1965)
def tree751 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree750 tree749)).val
theorem tree751_def : tree751 = (.seq tree750 tree749) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal751 : Flapjack.RegAlloc.ClashTree := .seq literal750 literal749
def live751 : Flapjack.NumSet := setValue1801
def coloured751 : Flapjack.NumSet := setValue1809
def result751 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1962, setValue1965)
def setValue1966 : Flapjack.NumSet := .bn setValue1909 setValue1898
def setValue1967 : Flapjack.NumSet := .bn setValue1966 setValue359
def setValue1968 : Flapjack.NumSet := .bn setValue1967 setValue1937
def setValue1969 : Flapjack.NumSet := .bn setValue1959 setValue1968
def setValue1970 : Flapjack.NumSet := .bn setValue1969 setValue0
def setValue1971 : Flapjack.NumSet := .bn setValue0 setValue1970
def tree752 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [865] [857])).val
theorem tree752_def : tree752 = (Flapjack.RegAlloc.ClashTree.delta [865] [857]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal752 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [865] [857]
def live752 : Flapjack.NumSet := setValue1962
def coloured752 : Flapjack.NumSet := setValue1965
def result752 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1971, setValue1965)
def tree753 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree752 tree751)).val
theorem tree753_def : tree753 = (.seq tree752 tree751) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal753 : Flapjack.RegAlloc.ClashTree := .seq literal752 literal751
def live753 : Flapjack.NumSet := setValue1801
def coloured753 : Flapjack.NumSet := setValue1809
def result753 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1971, setValue1965)
def setValue1972 : Flapjack.NumSet := .bn setValue359 setValue1942
def setValue1973 : Flapjack.NumSet := .bn setValue1972 setValue1958
def setValue1974 : Flapjack.NumSet := .bn setValue1973 setValue1968
def setValue1975 : Flapjack.NumSet := .bn setValue1974 setValue0
def setValue1976 : Flapjack.NumSet := .bn setValue0 setValue1975
def setValue1977 : Flapjack.NumSet := .bn setValue1948 setValue1963
def setValue1978 : Flapjack.NumSet := .bs setValue1977 () setValue0
def tree754 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [861] [857])).val
theorem tree754_def : tree754 = (Flapjack.RegAlloc.ClashTree.delta [861] [857]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal754 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [861] [857]
def live754 : Flapjack.NumSet := setValue1971
def coloured754 : Flapjack.NumSet := setValue1965
def result754 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1976, setValue1978)
def tree755 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree754 tree753)).val
theorem tree755_def : tree755 = (.seq tree754 tree753) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal755 : Flapjack.RegAlloc.ClashTree := .seq literal754 literal753
def live755 : Flapjack.NumSet := setValue1801
def coloured755 : Flapjack.NumSet := setValue1809
def result755 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1976, setValue1978)
def setValue1979 : Flapjack.NumSet := .bn setValue5 setValue88
def setValue1980 : Flapjack.NumSet := .bn setValue0 setValue1979
def setValue1981 : Flapjack.NumSet := .bn setValue1980 setValue172
def setValue1982 : Flapjack.NumSet := .bn setValue1911 setValue1981
def setValue1983 : Flapjack.NumSet := .bn setValue1973 setValue1982
def setValue1984 : Flapjack.NumSet := .bn setValue1983 setValue0
def setValue1985 : Flapjack.NumSet := .bn setValue0 setValue1984
def tree756 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [857] [785])).val
theorem tree756_def : tree756 = (Flapjack.RegAlloc.ClashTree.delta [857] [785]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal756 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [857] [785]
def live756 : Flapjack.NumSet := setValue1976
def coloured756 : Flapjack.NumSet := setValue1978
def result756 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def tree757 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree756 tree755)).val
theorem tree757_def : tree757 = (.seq tree756 tree755) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal757 : Flapjack.RegAlloc.ClashTree := .seq literal756 literal755
def live757 : Flapjack.NumSet := setValue1801
def coloured757 : Flapjack.NumSet := setValue1809
def result757 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def tree758 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree758_def : tree758 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal758 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live758 : Flapjack.NumSet := setValue1985
def coloured758 : Flapjack.NumSet := setValue1978
def result758 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def tree759 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree758 tree757)).val
theorem tree759_def : tree759 = (.seq tree758 tree757) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal759 : Flapjack.RegAlloc.ClashTree := .seq literal758 literal757
def live759 : Flapjack.NumSet := setValue1801
def coloured759 : Flapjack.NumSet := setValue1809
def result759 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def setValue1986 : Flapjack.NumSet := .bn setValue511 setValue366
def setValue1987 : Flapjack.NumSet := .bn setValue359 setValue359
def setValue1988 : Flapjack.NumSet := .bn setValue1987 setValue360
def setValue1989 : Flapjack.NumSet := .bn setValue1986 setValue1988
def setValue1990 : Flapjack.NumSet := .bn setValue1988 setValue361
def setValue1991 : Flapjack.NumSet := .bn setValue1989 setValue1990
def setValue1992 : Flapjack.NumSet := .bn setValue1987 setValue366
def setValue1993 : Flapjack.NumSet := .bn setValue1992 setValue361
def setValue1994 : Flapjack.NumSet := .bn setValue366 setValue360
def setValue1995 : Flapjack.NumSet := .bn setValue1992 setValue1994
def setValue1996 : Flapjack.NumSet := .bn setValue1993 setValue1995
def setValue1997 : Flapjack.NumSet := .bn setValue1991 setValue1996
def setValue1998 : Flapjack.NumSet := .bn setValue1997 setValue0
def setValue1999 : Flapjack.NumSet := .bn setValue0 setValue1998
def setValue2000 : Flapjack.NumSet := .bn setValue0 setValue2
def setValue2001 : Flapjack.NumSet := .bs setValue2000 () setValue1220
def setValue2002 : Flapjack.NumSet := .bs setValue504 () setValue384
def setValue2003 : Flapjack.NumSet := .bs setValue2001 () setValue2002
def setValue2004 : Flapjack.NumSet := .bs setValue1216 () setValue5
def setValue2005 : Flapjack.NumSet := .bs setValue85 () setValue1237
def setValue2006 : Flapjack.NumSet := .bs setValue2004 () setValue2005
def setValue2007 : Flapjack.NumSet := .bn setValue2003 setValue2006
def setValue2008 : Flapjack.NumSet := .bs setValue2007 () setValue0
def tree760 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793, 2789, 2785, 2781, 2769, 2765,
    2761, 2757, 2753, 2749, 2745]
  [2605, 2609, 2617, 2621, 2721, 2625, 2629, 2653, 2633, 2717, 2637, 2713, 2613, 2641, 2681, 2645, 2649, 2661, 2665,
    2669, 2673, 2677, 2705, 2657])).val
theorem tree760_def : tree760 = (Flapjack.RegAlloc.ClashTree.delta
  [2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793, 2789, 2785, 2781, 2769, 2765,
    2761, 2757, 2753, 2749, 2745]
  [2605, 2609, 2617, 2621, 2721, 2625, 2629, 2653, 2633, 2717, 2637, 2713, 2613, 2641, 2681, 2645, 2649, 2661, 2665,
    2669, 2673, 2677, 2705, 2657]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal760 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2849, 2845, 2837, 2833, 2829, 2825, 2821, 2817, 2813, 2809, 2805, 2801, 2797, 2793, 2789, 2785, 2781, 2769, 2765,
    2761, 2757, 2753, 2749, 2745]
  [2605, 2609, 2617, 2621, 2721, 2625, 2629, 2653, 2633, 2717, 2637, 2713, 2613, 2641, 2681, 2645, 2649, 2661, 2665,
    2669, 2673, 2677, 2705, 2657]
def live760 : Flapjack.NumSet := setValue1801
def coloured760 : Flapjack.NumSet := setValue1809
def result760 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1999, setValue2008)
def tree761 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree761_def : tree761 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal761 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live761 : Flapjack.NumSet := setValue1999
def coloured761 : Flapjack.NumSet := setValue2008
def result761 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1999, setValue2008)
def tree762 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree761 tree760)).val
theorem tree762_def : tree762 = (.seq tree761 tree760) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal762 : Flapjack.RegAlloc.ClashTree := .seq literal761 literal760
def live762 : Flapjack.NumSet := setValue1801
def coloured762 : Flapjack.NumSet := setValue1809
def result762 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1999, setValue2008)
def setValue2009 : Flapjack.NumSet := .bn setValue506 setValue359
def setValue2010 : Flapjack.NumSet := .bn setValue646 setValue2009
def setValue2011 : Flapjack.NumSet := .bn setValue646 setValue511
def setValue2012 : Flapjack.NumSet := .bn setValue2010 setValue2011
def setValue2013 : Flapjack.NumSet := .bn setValue2009 setValue511
def setValue2014 : Flapjack.NumSet := .bn setValue2011 setValue2013
def setValue2015 : Flapjack.NumSet := .bn setValue2012 setValue2014
def setValue2016 : Flapjack.NumSet := .bn setValue2014 setValue2014
def setValue2017 : Flapjack.NumSet := .bn setValue2015 setValue2016
def setValue2018 : Flapjack.NumSet := .bn setValue0 setValue2017
def setValue2019 : Flapjack.NumSet := .bn setValue3 setValue2018
def setValue2020 : Flapjack.NumSet := .bs setValue1761 () setValue1221
def setValue2021 : Flapjack.NumSet := .bs setValue85 () setValue1220
def setValue2022 : Flapjack.NumSet := .bs setValue1805 () setValue2021
def setValue2023 : Flapjack.NumSet := .bs setValue2020 () setValue2022
def setValue2024 : Flapjack.NumSet := .bn setValue2023 setValue0
def tree763 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2721, 2717, 2713, 2705, 2605, 2609, 2613, 2617, 2621, 2625, 2629, 2633, 2637, 2641, 2645, 2649, 2653, 2657, 2661,
    2665, 2669, 2673, 2677, 2681]
  [4, 2, 6, 8, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579, 2583, 2587,
    2591, 2595, 2599])).val
theorem tree763_def : tree763 = (Flapjack.RegAlloc.ClashTree.delta
  [2721, 2717, 2713, 2705, 2605, 2609, 2613, 2617, 2621, 2625, 2629, 2633, 2637, 2641, 2645, 2649, 2653, 2657, 2661,
    2665, 2669, 2673, 2677, 2681]
  [4, 2, 6, 8, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579, 2583, 2587,
    2591, 2595, 2599]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal763 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2721, 2717, 2713, 2705, 2605, 2609, 2613, 2617, 2621, 2625, 2629, 2633, 2637, 2641, 2645, 2649, 2653, 2657, 2661,
    2665, 2669, 2673, 2677, 2681]
  [4, 2, 6, 8, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579, 2583, 2587,
    2591, 2595, 2599]
def live763 : Flapjack.NumSet := setValue1999
def coloured763 : Flapjack.NumSet := setValue2008
def result763 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2019, setValue2024)
def tree764 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2019)).val
theorem tree764_def : tree764 = (.set setValue2019) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal764 : Flapjack.RegAlloc.ClashTree := .set setValue2019
def live764 : Flapjack.NumSet := setValue2019
def coloured764 : Flapjack.NumSet := setValue2024
def result764 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2019, setValue2024)
def tree765 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree764 tree763)).val
theorem tree765_def : tree765 = (.seq tree764 tree763) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal765 : Flapjack.RegAlloc.ClashTree := .seq literal764 literal763
def live765 : Flapjack.NumSet := setValue1999
def coloured765 : Flapjack.NumSet := setValue2008
def result765 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2019, setValue2024)
def setValue2025 : Flapjack.NumSet := .bn setValue1 setValue1998
def setValue2026 : Flapjack.NumSet := .bs setValue2003 () setValue2006
def setValue2027 : Flapjack.NumSet := .bs setValue2026 () setValue0
def tree766 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree766_def : tree766 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal766 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live766 : Flapjack.NumSet := setValue1999
def coloured766 : Flapjack.NumSet := setValue2008
def result766 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2025, setValue2027)
def setValue2028 : Flapjack.NumSet := .bn setValue374 setValue0
def setValue2029 : Flapjack.NumSet := .bn setValue373 setValue266
def setValue2030 : Flapjack.NumSet := .bn setValue374 setValue2029
def setValue2031 : Flapjack.NumSet := .bn setValue2028 setValue2030
def setValue2032 : Flapjack.NumSet := .bn setValue2031 setValue2017
def setValue2033 : Flapjack.NumSet := .bn setValue1 setValue2032
def setValue2034 : Flapjack.NumSet := .bn setValue785 setValue1237
def setValue2035 : Flapjack.NumSet := .bn setValue1890 setValue2034
def setValue2036 : Flapjack.NumSet := .bn setValue85 setValue1237
def setValue2037 : Flapjack.NumSet := .bn setValue1893 setValue2036
def setValue2038 : Flapjack.NumSet := .bs setValue2035 () setValue2037
def setValue2039 : Flapjack.NumSet := .bn setValue2038 setValue0
def tree767 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 2605, 2609, 2613, 2617, 2621, 2625, 2629, 2633, 2637, 2641, 2645, 2649, 2653, 2657, 2661, 2665, 2669, 2673, 2677,
    2681]
  [2, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579, 2583, 2587, 2591, 2595,
    2599])).val
theorem tree767_def : tree767 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 2605, 2609, 2613, 2617, 2621, 2625, 2629, 2633, 2637, 2641, 2645, 2649, 2653, 2657, 2661, 2665, 2669, 2673, 2677,
    2681]
  [2, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579, 2583, 2587, 2591, 2595,
    2599]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal767 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 2605, 2609, 2613, 2617, 2621, 2625, 2629, 2633, 2637, 2641, 2645, 2649, 2653, 2657, 2661, 2665, 2669, 2673, 2677,
    2681]
  [2, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579, 2583, 2587, 2591, 2595,
    2599]
def live767 : Flapjack.NumSet := setValue2025
def coloured767 : Flapjack.NumSet := setValue2027
def result767 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2033, setValue2039)
def tree768 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree767 tree766)).val
theorem tree768_def : tree768 = (.seq tree767 tree766) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal768 : Flapjack.RegAlloc.ClashTree := .seq literal767 literal766
def live768 : Flapjack.NumSet := setValue1999
def coloured768 : Flapjack.NumSet := setValue2008
def result768 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2033, setValue2039)
def setValue2040 : Flapjack.NumSet := .bn setValue1 setValue2018
def setValue2041 : Flapjack.NumSet := .bn setValue1761 setValue1221
def setValue2042 : Flapjack.NumSet := .bn setValue85 setValue1220
def setValue2043 : Flapjack.NumSet := .bn setValue1805 setValue2042
def setValue2044 : Flapjack.NumSet := .bs setValue2041 () setValue2043
def setValue2045 : Flapjack.NumSet := .bn setValue2044 setValue0
def tree769 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2040)).val
theorem tree769_def : tree769 = (.set setValue2040) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal769 : Flapjack.RegAlloc.ClashTree := .set setValue2040
def live769 : Flapjack.NumSet := setValue2033
def coloured769 : Flapjack.NumSet := setValue2039
def result769 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2040, setValue2045)
def tree770 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree769 tree768)).val
theorem tree770_def : tree770 = (.seq tree769 tree768) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal770 : Flapjack.RegAlloc.ClashTree := .seq literal769 literal768
def live770 : Flapjack.NumSet := setValue1999
def coloured770 : Flapjack.NumSet := setValue2008
def result770 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2040, setValue2045)
def setValue2046 : Flapjack.NumSet := .bn setValue350 setValue2018
def setValue2047 : Flapjack.NumSet := .bs setValue785 () setValue1220
def setValue2048 : Flapjack.NumSet := .bs setValue1890 () setValue2047
def setValue2049 : Flapjack.NumSet := .bs setValue1893 () setValue2005
def setValue2050 : Flapjack.NumSet := .bs setValue2048 () setValue2049
def setValue2051 : Flapjack.NumSet := .bn setValue2050 setValue0
def tree771 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2046) tree765 tree770)).val
theorem tree771_def : tree771 = (.branch (some setValue2046) tree765 tree770) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal771 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2046) literal765 literal770
def live771 : Flapjack.NumSet := setValue1999
def coloured771 : Flapjack.NumSet := setValue2008
def result771 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2046, setValue2051)
def tree772 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree771 tree762)).val
theorem tree772_def : tree772 = (.seq tree771 tree762) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal772 : Flapjack.RegAlloc.ClashTree := .seq literal771 literal762
def live772 : Flapjack.NumSet := setValue1801
def coloured772 : Flapjack.NumSet := setValue1809
def result772 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2046, setValue2051)
def setValue2052 : Flapjack.NumSet := .bn setValue812 setValue507
def setValue2053 : Flapjack.NumSet := .bn setValue812 setValue892
def setValue2054 : Flapjack.NumSet := .bn setValue2052 setValue2053
def setValue2055 : Flapjack.NumSet := .bn setValue811 setValue770
def setValue2056 : Flapjack.NumSet := .bn setValue2055 setValue892
def setValue2057 : Flapjack.NumSet := .bn setValue2056 setValue2056
def setValue2058 : Flapjack.NumSet := .bn setValue2054 setValue2057
def setValue2059 : Flapjack.NumSet := .bn setValue505 setValue505
def setValue2060 : Flapjack.NumSet := .bn setValue811 setValue2059
def setValue2061 : Flapjack.NumSet := .bn setValue2055 setValue2060
def setValue2062 : Flapjack.NumSet := .bn setValue2061 setValue2053
def setValue2063 : Flapjack.NumSet := .bn setValue2060 setValue892
def setValue2064 : Flapjack.NumSet := .bn setValue811 setValue506
def setValue2065 : Flapjack.NumSet := .bn setValue2064 setValue771
def setValue2066 : Flapjack.NumSet := .bn setValue2063 setValue2065
def setValue2067 : Flapjack.NumSet := .bn setValue2062 setValue2066
def setValue2068 : Flapjack.NumSet := .bn setValue2058 setValue2067
def setValue2069 : Flapjack.NumSet := .bn setValue2068 setValue0
def setValue2070 : Flapjack.NumSet := .bn setValue0 setValue2069
def setValue2071 : Flapjack.NumSet := .bs setValue1141 () setValue2047
def setValue2072 : Flapjack.NumSet := .bs setValue2000 () setValue1347
def setValue2073 : Flapjack.NumSet := .bs setValue0 () setValue1237
def setValue2074 : Flapjack.NumSet := .bs setValue2072 () setValue2073
def setValue2075 : Flapjack.NumSet := .bs setValue2071 () setValue2074
def setValue2076 : Flapjack.NumSet := .bn setValue2075 setValue0
def tree773 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579,
    2583, 2587, 2591, 2595, 2599]
  [2465, 2457, 2461, 2481, 2293, 2329, 2297, 2361, 2265, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2309, 2313,
    2317, 2321, 2325, 2329, 2341, 2353, 2357, 2361, 2369])).val
theorem tree773_def : tree773 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579,
    2583, 2587, 2591, 2595, 2599]
  [2465, 2457, 2461, 2481, 2293, 2329, 2297, 2361, 2265, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2309, 2313,
    2317, 2321, 2325, 2329, 2341, 2353, 2357, 2361, 2369]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal773 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 2523, 2527, 2531, 2535, 2539, 2543, 2547, 2551, 2555, 2559, 2563, 2567, 2571, 2575, 2579,
    2583, 2587, 2591, 2595, 2599]
  [2465, 2457, 2461, 2481, 2293, 2329, 2297, 2361, 2265, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2309, 2313,
    2317, 2321, 2325, 2329, 2341, 2353, 2357, 2361, 2369]
def live773 : Flapjack.NumSet := setValue2046
def coloured773 : Flapjack.NumSet := setValue2051
def result773 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2070, setValue2076)
def tree774 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree773 tree772)).val
theorem tree774_def : tree774 = (.seq tree773 tree772) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal774 : Flapjack.RegAlloc.ClashTree := .seq literal773 literal772
def live774 : Flapjack.NumSet := setValue1801
def coloured774 : Flapjack.NumSet := setValue1809
def result774 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2070, setValue2076)
def tree775 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree775_def : tree775 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal775 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live775 : Flapjack.NumSet := setValue2070
def coloured775 : Flapjack.NumSet := setValue2076
def result775 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2070, setValue2076)
def tree776 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree775 tree774)).val
theorem tree776_def : tree776 = (.seq tree775 tree774) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal776 : Flapjack.RegAlloc.ClashTree := .seq literal775 literal774
def live776 : Flapjack.NumSet := setValue1801
def coloured776 : Flapjack.NumSet := setValue1809
def result776 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2070, setValue2076)
def setValue2077 : Flapjack.NumSet := .bn setValue812 setValue2055
def setValue2078 : Flapjack.NumSet := .bn setValue2077 setValue2053
def setValue2079 : Flapjack.NumSet := .bn setValue770 setValue770
def setValue2080 : Flapjack.NumSet := .bn setValue2055 setValue2079
def setValue2081 : Flapjack.NumSet := .bn setValue2056 setValue2080
def setValue2082 : Flapjack.NumSet := .bn setValue2078 setValue2081
def setValue2083 : Flapjack.NumSet := .bn setValue2055 setValue2055
def setValue2084 : Flapjack.NumSet := .bn setValue2083 setValue2053
def setValue2085 : Flapjack.NumSet := .bn setValue2055 setValue771
def setValue2086 : Flapjack.NumSet := .bn setValue2056 setValue2085
def setValue2087 : Flapjack.NumSet := .bn setValue2084 setValue2086
def setValue2088 : Flapjack.NumSet := .bn setValue2082 setValue2087
def setValue2089 : Flapjack.NumSet := .bn setValue2088 setValue0
def setValue2090 : Flapjack.NumSet := .bn setValue0 setValue2089
def setValue2091 : Flapjack.NumSet := .bs setValue784 () setValue799
def setValue2092 : Flapjack.NumSet := .bn setValue2091 setValue1238
def setValue2093 : Flapjack.NumSet := .bs setValue2000 () setValue1271
def setValue2094 : Flapjack.NumSet := .bn setValue0 setValue1237
def setValue2095 : Flapjack.NumSet := .bn setValue2093 setValue2094
def setValue2096 : Flapjack.NumSet := .bn setValue2092 setValue2095
def setValue2097 : Flapjack.NumSet := .bs setValue2096 () setValue0
def tree777 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2481, 2465, 2461, 2457] [2337, 2269, 2373, 2333])).val
theorem tree777_def : tree777 = (Flapjack.RegAlloc.ClashTree.delta [2481, 2465, 2461, 2457] [2337, 2269, 2373, 2333]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal777 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2481, 2465, 2461, 2457] [2337, 2269, 2373, 2333]
def live777 : Flapjack.NumSet := setValue2070
def coloured777 : Flapjack.NumSet := setValue2076
def result777 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2090, setValue2097)
def tree778 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree778_def : tree778 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal778 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live778 : Flapjack.NumSet := setValue2090
def coloured778 : Flapjack.NumSet := setValue2097
def result778 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2090, setValue2097)
def tree779 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree778 tree777)).val
theorem tree779_def : tree779 = (.seq tree778 tree777) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal779 : Flapjack.RegAlloc.ClashTree := .seq literal778 literal777
def live779 : Flapjack.NumSet := setValue2070
def coloured779 : Flapjack.NumSet := setValue2076
def result779 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2090, setValue2097)
def setValue2098 : Flapjack.NumSet := .bn setValue901 setValue2053
def setValue2099 : Flapjack.NumSet := .bn setValue815 setValue770
def setValue2100 : Flapjack.NumSet := .bn setValue2099 setValue892
def setValue2101 : Flapjack.NumSet := .bn setValue2056 setValue2100
def setValue2102 : Flapjack.NumSet := .bn setValue2098 setValue2101
def setValue2103 : Flapjack.NumSet := .bn setValue2055 setValue2099
def setValue2104 : Flapjack.NumSet := .bn setValue2103 setValue2053
def setValue2105 : Flapjack.NumSet := .bn setValue816 setValue771
def setValue2106 : Flapjack.NumSet := .bn setValue2056 setValue2105
def setValue2107 : Flapjack.NumSet := .bn setValue2104 setValue2106
def setValue2108 : Flapjack.NumSet := .bn setValue2102 setValue2107
def setValue2109 : Flapjack.NumSet := .bn setValue2108 setValue0
def setValue2110 : Flapjack.NumSet := .bn setValue0 setValue2109
def tree780 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2481, 2465, 2461, 2457] [2405, 2393, 2401, 2397])).val
theorem tree780_def : tree780 = (Flapjack.RegAlloc.ClashTree.delta [2481, 2465, 2461, 2457] [2405, 2393, 2401, 2397]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal780 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2481, 2465, 2461, 2457] [2405, 2393, 2401, 2397]
def live780 : Flapjack.NumSet := setValue2070
def coloured780 : Flapjack.NumSet := setValue2076
def result780 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2110, setValue2076)
def tree781 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree781_def : tree781 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal781 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live781 : Flapjack.NumSet := setValue2110
def coloured781 : Flapjack.NumSet := setValue2076
def result781 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2110, setValue2076)
def tree782 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree781 tree780)).val
theorem tree782_def : tree782 = (.seq tree781 tree780) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal782 : Flapjack.RegAlloc.ClashTree := .seq literal781 literal780
def live782 : Flapjack.NumSet := setValue2070
def coloured782 : Flapjack.NumSet := setValue2076
def result782 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2110, setValue2076)
def setValue2111 : Flapjack.NumSet := .bn setValue812 setValue2099
def setValue2112 : Flapjack.NumSet := .bn setValue2111 setValue2053
def setValue2113 : Flapjack.NumSet := .bn setValue2099 setValue2079
def setValue2114 : Flapjack.NumSet := .bn setValue2056 setValue2113
def setValue2115 : Flapjack.NumSet := .bn setValue2112 setValue2114
def setValue2116 : Flapjack.NumSet := .bn setValue2099 setValue771
def setValue2117 : Flapjack.NumSet := .bn setValue2056 setValue2116
def setValue2118 : Flapjack.NumSet := .bn setValue2104 setValue2117
def setValue2119 : Flapjack.NumSet := .bn setValue2115 setValue2118
def setValue2120 : Flapjack.NumSet := .bn setValue2119 setValue0
def setValue2121 : Flapjack.NumSet := .bn setValue0 setValue2120
def setValue2122 : Flapjack.NumSet := .bs setValue2091 () setValue1238
def setValue2123 : Flapjack.NumSet := .bs setValue2093 () setValue2073
def setValue2124 : Flapjack.NumSet := .bs setValue2122 () setValue2123
def setValue2125 : Flapjack.NumSet := .bs setValue2124 () setValue0
def tree783 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree779 tree782)).val
theorem tree783_def : tree783 = (.branch (none) tree779 tree782) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal783 : Flapjack.RegAlloc.ClashTree := .branch (none) literal779 literal782
def live783 : Flapjack.NumSet := setValue2070
def coloured783 : Flapjack.NumSet := setValue2076
def result783 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2121, setValue2125)
def setValue2126 : Flapjack.NumSet := .bn setValue816 setValue892
def setValue2127 : Flapjack.NumSet := .bn setValue2111 setValue2126
def setValue2128 : Flapjack.NumSet := .bn setValue2127 setValue2114
def setValue2129 : Flapjack.NumSet := .bn setValue2103 setValue2126
def setValue2130 : Flapjack.NumSet := .bn setValue2129 setValue2117
def setValue2131 : Flapjack.NumSet := .bn setValue2128 setValue2130
def setValue2132 : Flapjack.NumSet := .bn setValue2131 setValue0
def setValue2133 : Flapjack.NumSet := .bn setValue0 setValue2132
def setValue2134 : Flapjack.NumSet := .bs setValue799 () setValue1237
def setValue2135 : Flapjack.NumSet := .bs setValue2091 () setValue2134
def setValue2136 : Flapjack.NumSet := .bs setValue1 () setValue1237
def setValue2137 : Flapjack.NumSet := .bs setValue2093 () setValue2136
def setValue2138 : Flapjack.NumSet := .bs setValue2135 () setValue2137
def setValue2139 : Flapjack.NumSet := .bs setValue2138 () setValue0
def tree784 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2409, 2413])).val
theorem tree784_def : tree784 = (Flapjack.RegAlloc.ClashTree.delta [] [2409, 2413]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal784 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2409, 2413]
def live784 : Flapjack.NumSet := setValue2121
def coloured784 : Flapjack.NumSet := setValue2125
def result784 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2133, setValue2139)
def tree785 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree784 tree783)).val
theorem tree785_def : tree785 = (.seq tree784 tree783) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal785 : Flapjack.RegAlloc.ClashTree := .seq literal784 literal783
def live785 : Flapjack.NumSet := setValue2070
def coloured785 : Flapjack.NumSet := setValue2076
def result785 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2133, setValue2139)
def tree786 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree785 tree776)).val
theorem tree786_def : tree786 = (.seq tree785 tree776) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal786 : Flapjack.RegAlloc.ClashTree := .seq literal785 literal776
def live786 : Flapjack.NumSet := setValue1801
def coloured786 : Flapjack.NumSet := setValue1809
def result786 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2133, setValue2139)
def setValue2140 : Flapjack.NumSet := .bn setValue2115 setValue2130
def setValue2141 : Flapjack.NumSet := .bn setValue2140 setValue0
def setValue2142 : Flapjack.NumSet := .bn setValue0 setValue2141
def setValue2143 : Flapjack.NumSet := .bs setValue2122 () setValue2137
def setValue2144 : Flapjack.NumSet := .bs setValue2143 () setValue0
def tree787 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2413] [])).val
theorem tree787_def : tree787 = (Flapjack.RegAlloc.ClashTree.delta [2413] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal787 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2413] []
def live787 : Flapjack.NumSet := setValue2133
def coloured787 : Flapjack.NumSet := setValue2139
def result787 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2142, setValue2144)
def tree788 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree787 tree786)).val
theorem tree788_def : tree788 = (.seq tree787 tree786) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal788 : Flapjack.RegAlloc.ClashTree := .seq literal787 literal786
def live788 : Flapjack.NumSet := setValue1801
def coloured788 : Flapjack.NumSet := setValue1809
def result788 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2142, setValue2144)
def setValue2145 : Flapjack.NumSet := .bn setValue2083 setValue2056
def setValue2146 : Flapjack.NumSet := .bn setValue2080 setValue2080
def setValue2147 : Flapjack.NumSet := .bn setValue2145 setValue2146
def setValue2148 : Flapjack.NumSet := .bn setValue2145 setValue2081
def setValue2149 : Flapjack.NumSet := .bn setValue2147 setValue2148
def setValue2150 : Flapjack.NumSet := .bn setValue2149 setValue0
def setValue2151 : Flapjack.NumSet := .bn setValue0 setValue2150
def setValue2152 : Flapjack.NumSet := .bn setValue2135 setValue2137
def setValue2153 : Flapjack.NumSet := .bs setValue2152 () setValue0
def tree789 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2409, 2405, 2401, 2397, 2393] [2389, 2349, 2365, 2345, 2305])).val
theorem tree789_def : tree789 = (Flapjack.RegAlloc.ClashTree.delta [2409, 2405, 2401, 2397, 2393] [2389, 2349, 2365, 2345, 2305]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal789 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2409, 2405, 2401, 2397, 2393] [2389, 2349, 2365, 2345, 2305]
def live789 : Flapjack.NumSet := setValue2142
def coloured789 : Flapjack.NumSet := setValue2144
def result789 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2151, setValue2153)
def tree790 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree789 tree788)).val
theorem tree790_def : tree790 = (.seq tree789 tree788) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal790 : Flapjack.RegAlloc.ClashTree := .seq literal789 literal788
def live790 : Flapjack.NumSet := setValue1801
def coloured790 : Flapjack.NumSet := setValue1809
def result790 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2151, setValue2153)
def tree791 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree791_def : tree791 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal791 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live791 : Flapjack.NumSet := setValue2151
def coloured791 : Flapjack.NumSet := setValue2153
def result791 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2151, setValue2153)
def tree792 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree791 tree790)).val
theorem tree792_def : tree792 = (.seq tree791 tree790) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal792 : Flapjack.RegAlloc.ClashTree := .seq literal791 literal790
def live792 : Flapjack.NumSet := setValue1801
def coloured792 : Flapjack.NumSet := setValue1809
def result792 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2151, setValue2153)
def setValue2154 : Flapjack.NumSet := .bn setValue1017 setValue811
def setValue2155 : Flapjack.NumSet := .bn setValue2154 setValue954
def setValue2156 : Flapjack.NumSet := .bn setValue811 setValue811
def setValue2157 : Flapjack.NumSet := .bn setValue2154 setValue2156
def setValue2158 : Flapjack.NumSet := .bn setValue2155 setValue2157
def setValue2159 : Flapjack.NumSet := .bn setValue954 setValue2156
def setValue2160 : Flapjack.NumSet := .bn setValue2157 setValue2159
def setValue2161 : Flapjack.NumSet := .bn setValue2158 setValue2160
def setValue2162 : Flapjack.NumSet := .bn setValue2161 setValue2161
def setValue2163 : Flapjack.NumSet := .bn setValue0 setValue2162
def setValue2164 : Flapjack.NumSet := .bn setValue1 setValue2163
def setValue2165 : Flapjack.NumSet := .bn setValue27 setValue1220
def setValue2166 : Flapjack.NumSet := .bn setValue2 setValue784
def setValue2167 : Flapjack.NumSet := .bn setValue1220 setValue2166
def setValue2168 : Flapjack.NumSet := .bn setValue2165 setValue2167
def setValue2169 : Flapjack.NumSet := .bs setValue2168 () setValue2168
def setValue2170 : Flapjack.NumSet := .bn setValue2169 setValue0
def tree793 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2389, 2265, 2269, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2305, 2309, 2313, 2317, 2321, 2325, 2329, 2333,
    2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373]
  [2, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223,
    2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259])).val
theorem tree793_def : tree793 = (Flapjack.RegAlloc.ClashTree.delta
  [2389, 2265, 2269, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2305, 2309, 2313, 2317, 2321, 2325, 2329, 2333,
    2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373]
  [2, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223,
    2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal793 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2389, 2265, 2269, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2305, 2309, 2313, 2317, 2321, 2325, 2329, 2333,
    2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373]
  [2, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223,
    2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259]
def live793 : Flapjack.NumSet := setValue2151
def coloured793 : Flapjack.NumSet := setValue2153
def result793 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2164, setValue2170)
def tree794 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2164)).val
theorem tree794_def : tree794 = (.set setValue2164) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal794 : Flapjack.RegAlloc.ClashTree := .set setValue2164
def live794 : Flapjack.NumSet := setValue2164
def coloured794 : Flapjack.NumSet := setValue2170
def result794 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2164, setValue2170)
def tree795 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree794 tree793)).val
theorem tree795_def : tree795 = (.seq tree794 tree793) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal795 : Flapjack.RegAlloc.ClashTree := .seq literal794 literal793
def live795 : Flapjack.NumSet := setValue2151
def coloured795 : Flapjack.NumSet := setValue2153
def result795 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2164, setValue2170)
def setValue2171 : Flapjack.NumSet := .bn setValue1 setValue2150
def tree796 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree796_def : tree796 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal796 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live796 : Flapjack.NumSet := setValue2151
def coloured796 : Flapjack.NumSet := setValue2153
def result796 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2171, setValue2139)
def setValue2172 : Flapjack.NumSet := .bn setValue884 setValue0
def setValue2173 : Flapjack.NumSet := .bn setValue0 setValue2172
def setValue2174 : Flapjack.NumSet := .bn setValue2173 setValue0
def setValue2175 : Flapjack.NumSet := .bn setValue2174 setValue2162
def setValue2176 : Flapjack.NumSet := .bn setValue1 setValue2175
def setValue2177 : Flapjack.NumSet := .bn setValue1237 setValue2166
def setValue2178 : Flapjack.NumSet := .bn setValue2165 setValue2177
def setValue2179 : Flapjack.NumSet := .bs setValue2168 () setValue2178
def setValue2180 : Flapjack.NumSet := .bn setValue2179 setValue0
def tree797 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 2265, 2269, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2305, 2309, 2313, 2317, 2321, 2325, 2329, 2333, 2337,
    2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373]
  [2, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223,
    2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259])).val
theorem tree797_def : tree797 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 2265, 2269, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2305, 2309, 2313, 2317, 2321, 2325, 2329, 2333, 2337,
    2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373]
  [2, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223,
    2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal797 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 2265, 2269, 2273, 2277, 2281, 2285, 2289, 2293, 2297, 2301, 2305, 2309, 2313, 2317, 2321, 2325, 2329, 2333, 2337,
    2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373]
  [2, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223,
    2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259]
def live797 : Flapjack.NumSet := setValue2171
def coloured797 : Flapjack.NumSet := setValue2139
def result797 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2176, setValue2180)
def tree798 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree797 tree796)).val
theorem tree798_def : tree798 = (.seq tree797 tree796) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal798 : Flapjack.RegAlloc.ClashTree := .seq literal797 literal796
def live798 : Flapjack.NumSet := setValue2151
def coloured798 : Flapjack.NumSet := setValue2153
def result798 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2176, setValue2180)
def tree799 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2164)).val
theorem tree799_def : tree799 = (.set setValue2164) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal799 : Flapjack.RegAlloc.ClashTree := .set setValue2164
def live799 : Flapjack.NumSet := setValue2176
def coloured799 : Flapjack.NumSet := setValue2180
def result799 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2164, setValue2170)
def tree800 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree799 tree798)).val
theorem tree800_def : tree800 = (.seq tree799 tree798) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal800 : Flapjack.RegAlloc.ClashTree := .seq literal799 literal798
def live800 : Flapjack.NumSet := setValue2151
def coloured800 : Flapjack.NumSet := setValue2153
def result800 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2164, setValue2170)
def setValue2181 : Flapjack.NumSet := .bn setValue350 setValue2163
def setValue2182 : Flapjack.NumSet := .bs setValue1220 () setValue2166
def setValue2183 : Flapjack.NumSet := .bs setValue1778 () setValue2182
def setValue2184 : Flapjack.NumSet := .bs setValue2 () setValue784
def setValue2185 : Flapjack.NumSet := .bs setValue1220 () setValue2184
def setValue2186 : Flapjack.NumSet := .bs setValue1778 () setValue2185
def setValue2187 : Flapjack.NumSet := .bs setValue2183 () setValue2186
def setValue2188 : Flapjack.NumSet := .bn setValue2187 setValue0
def tree801 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2181) tree795 tree800)).val
theorem tree801_def : tree801 = (.branch (some setValue2181) tree795 tree800) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal801 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2181) literal795 literal800
def live801 : Flapjack.NumSet := setValue2151
def coloured801 : Flapjack.NumSet := setValue2153
def result801 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2181, setValue2188)
def tree802 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree801 tree792)).val
theorem tree802_def : tree802 = (.seq tree801 tree792) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal802 : Flapjack.RegAlloc.ClashTree := .seq literal801 literal792
def live802 : Flapjack.NumSet := setValue1801
def coloured802 : Flapjack.NumSet := setValue1809
def result802 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2181, setValue2188)
def setValue2189 : Flapjack.NumSet := .bn setValue1115 setValue1115
def setValue2190 : Flapjack.NumSet := .bn setValue2189 setValue1116
def setValue2191 : Flapjack.NumSet := .bn setValue1116 setValue1810
def setValue2192 : Flapjack.NumSet := .bn setValue2190 setValue2191
def setValue2193 : Flapjack.NumSet := .bn setValue1810 setValue1810
def setValue2194 : Flapjack.NumSet := .bn setValue2193 setValue2191
def setValue2195 : Flapjack.NumSet := .bn setValue2192 setValue2194
def setValue2196 : Flapjack.NumSet := .bn setValue1116 setValue1812
def setValue2197 : Flapjack.NumSet := .bn setValue2193 setValue2196
def setValue2198 : Flapjack.NumSet := .bn setValue2194 setValue2197
def setValue2199 : Flapjack.NumSet := .bn setValue2195 setValue2198
def setValue2200 : Flapjack.NumSet := .bn setValue2199 setValue0
def setValue2201 : Flapjack.NumSet := .bn setValue0 setValue2200
def setValue2202 : Flapjack.NumSet := .bs setValue983 () setValue1762
def setValue2203 : Flapjack.NumSet := .bs setValue27 () setValue785
def setValue2204 : Flapjack.NumSet := .bs setValue1 () setValue784
def setValue2205 : Flapjack.NumSet := .bs setValue1220 () setValue2204
def setValue2206 : Flapjack.NumSet := .bs setValue2203 () setValue2205
def setValue2207 : Flapjack.NumSet := .bn setValue2202 setValue2206
def setValue2208 : Flapjack.NumSet := .bs setValue2207 () setValue0
def tree803 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207,
    2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259]
  [1985, 2045, 2073, 2049, 2113, 2105, 2097, 2101, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2113,
    2021, 2025, 2029, 2033, 2037, 2041, 2045, 2049, 2053, 2105, 2101, 2057, 2061, 2065, 2097, 2069, 2073])).val
theorem tree803_def : tree803 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207,
    2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259]
  [1985, 2045, 2073, 2049, 2113, 2105, 2097, 2101, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2113,
    2021, 2025, 2029, 2033, 2037, 2041, 2045, 2049, 2053, 2105, 2101, 2057, 2061, 2065, 2097, 2069, 2073]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal803 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207,
    2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259]
  [1985, 2045, 2073, 2049, 2113, 2105, 2097, 2101, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2113,
    2021, 2025, 2029, 2033, 2037, 2041, 2045, 2049, 2053, 2105, 2101, 2057, 2061, 2065, 2097, 2069, 2073]
def live803 : Flapjack.NumSet := setValue2181
def coloured803 : Flapjack.NumSet := setValue2188
def result803 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2201, setValue2208)
def tree804 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree803 tree802)).val
theorem tree804_def : tree804 = (.seq tree803 tree802) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal804 : Flapjack.RegAlloc.ClashTree := .seq literal803 literal802
def live804 : Flapjack.NumSet := setValue1801
def coloured804 : Flapjack.NumSet := setValue1809
def result804 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2201, setValue2208)
def tree805 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree805_def : tree805 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal805 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live805 : Flapjack.NumSet := setValue2201
def coloured805 : Flapjack.NumSet := setValue2208
def result805 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2201, setValue2208)
def tree806 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree805 tree804)).val
theorem tree806_def : tree806 = (.seq tree805 tree804) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal806 : Flapjack.RegAlloc.ClashTree := .seq literal805 literal804
def live806 : Flapjack.NumSet := setValue1801
def coloured806 : Flapjack.NumSet := setValue1809
def result806 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2201, setValue2208)
def setValue2209 : Flapjack.NumSet := .bn setValue1246 setValue1870
def setValue2210 : Flapjack.NumSet := .bn setValue1870 setValue1147
def setValue2211 : Flapjack.NumSet := .bn setValue2209 setValue2210
def setValue2212 : Flapjack.NumSet := .bn setValue2210 setValue2210
def setValue2213 : Flapjack.NumSet := .bn setValue2211 setValue2212
def setValue2214 : Flapjack.NumSet := .bn setValue2212 setValue2212
def setValue2215 : Flapjack.NumSet := .bn setValue2213 setValue2214
def setValue2216 : Flapjack.NumSet := .bn setValue0 setValue2215
def setValue2217 : Flapjack.NumSet := .bn setValue3 setValue2216
def setValue2218 : Flapjack.NumSet := .bs setValue1217 () setValue1783
def setValue2219 : Flapjack.NumSet := .bn setValue27 setValue785
def setValue2220 : Flapjack.NumSet := .bs setValue2219 () setValue2182
def setValue2221 : Flapjack.NumSet := .bs setValue2218 () setValue2220
def setValue2222 : Flapjack.NumSet := .bn setValue2221 setValue0
def tree807 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2113, 2105, 2101, 2097, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037,
    2041, 2045, 2049, 2053, 2057, 2061, 2065, 2069, 2073]
  [2, 4, 8, 6, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939, 1943, 1947,
    1951, 1955, 1959, 1963, 1967, 1971, 1975])).val
theorem tree807_def : tree807 = (Flapjack.RegAlloc.ClashTree.delta
  [2113, 2105, 2101, 2097, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037,
    2041, 2045, 2049, 2053, 2057, 2061, 2065, 2069, 2073]
  [2, 4, 8, 6, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939, 1943, 1947,
    1951, 1955, 1959, 1963, 1967, 1971, 1975]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal807 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2113, 2105, 2101, 2097, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037,
    2041, 2045, 2049, 2053, 2057, 2061, 2065, 2069, 2073]
  [2, 4, 8, 6, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939, 1943, 1947,
    1951, 1955, 1959, 1963, 1967, 1971, 1975]
def live807 : Flapjack.NumSet := setValue2201
def coloured807 : Flapjack.NumSet := setValue2208
def result807 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2217, setValue2222)
def tree808 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2217)).val
theorem tree808_def : tree808 = (.set setValue2217) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal808 : Flapjack.RegAlloc.ClashTree := .set setValue2217
def live808 : Flapjack.NumSet := setValue2217
def coloured808 : Flapjack.NumSet := setValue2222
def result808 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2217, setValue2222)
def tree809 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree808 tree807)).val
theorem tree809_def : tree809 = (.seq tree808 tree807) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal809 : Flapjack.RegAlloc.ClashTree := .seq literal808 literal807
def live809 : Flapjack.NumSet := setValue2201
def coloured809 : Flapjack.NumSet := setValue2208
def result809 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2217, setValue2222)
def setValue2223 : Flapjack.NumSet := .bn setValue1 setValue2200
def setValue2224 : Flapjack.NumSet := .bs setValue2202 () setValue2206
def setValue2225 : Flapjack.NumSet := .bs setValue2224 () setValue0
def tree810 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree810_def : tree810 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal810 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live810 : Flapjack.NumSet := setValue2201
def coloured810 : Flapjack.NumSet := setValue2208
def result810 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2223, setValue2225)
def setValue2226 : Flapjack.NumSet := .bn setValue0 setValue1132
def setValue2227 : Flapjack.NumSet := .bn setValue1052 setValue1074
def setValue2228 : Flapjack.NumSet := .bn setValue1132 setValue2227
def setValue2229 : Flapjack.NumSet := .bn setValue2226 setValue2228
def setValue2230 : Flapjack.NumSet := .bn setValue2229 setValue2215
def setValue2231 : Flapjack.NumSet := .bn setValue1 setValue2230
def setValue2232 : Flapjack.NumSet := .bn setValue1234 setValue1762
def setValue2233 : Flapjack.NumSet := .bn setValue1220 setValue2184
def setValue2234 : Flapjack.NumSet := .bn setValue2203 setValue2233
def setValue2235 : Flapjack.NumSet := .bs setValue2232 () setValue2234
def setValue2236 : Flapjack.NumSet := .bn setValue2235 setValue0
def tree811 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037, 2041, 2045, 2049, 2053,
    2057, 2061, 2065, 2069, 2073]
  [2, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939, 1943, 1947, 1951, 1955,
    1959, 1963, 1967, 1971, 1975])).val
theorem tree811_def : tree811 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037, 2041, 2045, 2049, 2053,
    2057, 2061, 2065, 2069, 2073]
  [2, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939, 1943, 1947, 1951, 1955,
    1959, 1963, 1967, 1971, 1975]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal811 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037, 2041, 2045, 2049, 2053,
    2057, 2061, 2065, 2069, 2073]
  [2, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939, 1943, 1947, 1951, 1955,
    1959, 1963, 1967, 1971, 1975]
def live811 : Flapjack.NumSet := setValue2223
def coloured811 : Flapjack.NumSet := setValue2225
def result811 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2231, setValue2236)
def tree812 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree811 tree810)).val
theorem tree812_def : tree812 = (.seq tree811 tree810) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal812 : Flapjack.RegAlloc.ClashTree := .seq literal811 literal810
def live812 : Flapjack.NumSet := setValue2201
def coloured812 : Flapjack.NumSet := setValue2208
def result812 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2231, setValue2236)
def setValue2237 : Flapjack.NumSet := .bn setValue1 setValue2216
def setValue2238 : Flapjack.NumSet := .bn setValue1217 setValue1783
def setValue2239 : Flapjack.NumSet := .bn setValue2219 setValue2167
def setValue2240 : Flapjack.NumSet := .bs setValue2238 () setValue2239
def setValue2241 : Flapjack.NumSet := .bn setValue2240 setValue0
def tree813 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2237)).val
theorem tree813_def : tree813 = (.set setValue2237) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal813 : Flapjack.RegAlloc.ClashTree := .set setValue2237
def live813 : Flapjack.NumSet := setValue2231
def coloured813 : Flapjack.NumSet := setValue2236
def result813 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2237, setValue2241)
def tree814 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree813 tree812)).val
theorem tree814_def : tree814 = (.seq tree813 tree812) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal814 : Flapjack.RegAlloc.ClashTree := .seq literal813 literal812
def live814 : Flapjack.NumSet := setValue2201
def coloured814 : Flapjack.NumSet := setValue2208
def result814 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2237, setValue2241)
def setValue2242 : Flapjack.NumSet := .bn setValue350 setValue2216
def setValue2243 : Flapjack.NumSet := .bs setValue1234 () setValue1762
def setValue2244 : Flapjack.NumSet := .bs setValue2203 () setValue2185
def setValue2245 : Flapjack.NumSet := .bs setValue2243 () setValue2244
def setValue2246 : Flapjack.NumSet := .bn setValue2245 setValue0
def tree815 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2242) tree809 tree814)).val
theorem tree815_def : tree815 = (.branch (some setValue2242) tree809 tree814) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal815 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2242) literal809 literal814
def live815 : Flapjack.NumSet := setValue2201
def coloured815 : Flapjack.NumSet := setValue2208
def result815 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2242, setValue2246)
def tree816 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree815 tree806)).val
theorem tree816_def : tree816 = (.seq tree815 tree806) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal816 : Flapjack.RegAlloc.ClashTree := .seq literal815 literal806
def live816 : Flapjack.NumSet := setValue1801
def coloured816 : Flapjack.NumSet := setValue1809
def result816 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2242, setValue2246)
def setValue2247 : Flapjack.NumSet := .bn setValue1472 setValue1486
def setValue2248 : Flapjack.NumSet := .bn setValue1473 setValue2247
def setValue2249 : Flapjack.NumSet := .bn setValue2248 setValue2248
def setValue2250 : Flapjack.NumSet := .bn setValue2247 setValue2247
def setValue2251 : Flapjack.NumSet := .bn setValue2248 setValue2250
def setValue2252 : Flapjack.NumSet := .bn setValue2249 setValue2251
def setValue2253 : Flapjack.NumSet := .bn setValue2252 setValue0
def setValue2254 : Flapjack.NumSet := .bn setValue0 setValue2253
def setValue2255 : Flapjack.NumSet := .bs setValue1802 () setValue384
def setValue2256 : Flapjack.NumSet := .bs setValue1234 () setValue2255
def setValue2257 : Flapjack.NumSet := .bs setValue2000 () setValue85
def setValue2258 : Flapjack.NumSet := .bs setValue2257 () setValue1894
def setValue2259 : Flapjack.NumSet := .bn setValue2256 setValue2258
def setValue2260 : Flapjack.NumSet := .bn setValue2259 setValue0
def tree817 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939,
    1943, 1947, 1951, 1955, 1959, 1963, 1967, 1971, 1975]
  [1697, 1737, 1773, 1741, 1713, 1745, 1717, 1769, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725,
    1729, 1733, 1737, 1741, 1745, 1749, 1753, 1757, 1761, 1765, 1769, 1773, 1777])).val
theorem tree817_def : tree817 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939,
    1943, 1947, 1951, 1955, 1959, 1963, 1967, 1971, 1975]
  [1697, 1737, 1773, 1741, 1713, 1745, 1717, 1769, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725,
    1729, 1733, 1737, 1741, 1745, 1749, 1753, 1757, 1761, 1765, 1769, 1773, 1777]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal817 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1883, 1887, 1891, 1895, 1899, 1903, 1907, 1911, 1915, 1919, 1923, 1927, 1931, 1935, 1939,
    1943, 1947, 1951, 1955, 1959, 1963, 1967, 1971, 1975]
  [1697, 1737, 1773, 1741, 1713, 1745, 1717, 1769, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725,
    1729, 1733, 1737, 1741, 1745, 1749, 1753, 1757, 1761, 1765, 1769, 1773, 1777]
def live817 : Flapjack.NumSet := setValue2242
def coloured817 : Flapjack.NumSet := setValue2246
def result817 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree818 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree817 tree816)).val
theorem tree818_def : tree818 = (.seq tree817 tree816) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal818 : Flapjack.RegAlloc.ClashTree := .seq literal817 literal816
def live818 : Flapjack.NumSet := setValue1801
def coloured818 : Flapjack.NumSet := setValue1809
def result818 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree819 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree819_def : tree819 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal819 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live819 : Flapjack.NumSet := setValue2254
def coloured819 : Flapjack.NumSet := setValue2260
def result819 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree820 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree819 tree818)).val
theorem tree820_def : tree820 = (.seq tree819 tree818) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal820 : Flapjack.RegAlloc.ClashTree := .seq literal819 literal818
def live820 : Flapjack.NumSet := setValue1801
def coloured820 : Flapjack.NumSet := setValue1809
def result820 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree821 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree821_def : tree821 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal821 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live821 : Flapjack.NumSet := setValue2254
def coloured821 : Flapjack.NumSet := setValue2260
def result821 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree822 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree821 tree820)).val
theorem tree822_def : tree822 = (.seq tree821 tree820) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal822 : Flapjack.RegAlloc.ClashTree := .seq literal821 literal820
def live822 : Flapjack.NumSet := setValue1801
def coloured822 : Flapjack.NumSet := setValue1809
def result822 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def setValue2261 : Flapjack.NumSet := .bn setValue1 setValue2253
def setValue2262 : Flapjack.NumSet := .bs setValue2256 () setValue2258
def setValue2263 : Flapjack.NumSet := .bn setValue2262 setValue0
def tree823 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree823_def : tree823 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal823 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live823 : Flapjack.NumSet := setValue2254
def coloured823 : Flapjack.NumSet := setValue2260
def result823 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2261, setValue2263)
def setValue2264 : Flapjack.NumSet := .bn setValue1372 setValue1380
def setValue2265 : Flapjack.NumSet := .bn setValue1373 setValue2264
def setValue2266 : Flapjack.NumSet := .bn setValue2265 setValue2247
def setValue2267 : Flapjack.NumSet := .bn setValue2266 setValue2248
def setValue2268 : Flapjack.NumSet := .bn setValue2267 setValue2251
def setValue2269 : Flapjack.NumSet := .bn setValue2268 setValue0
def setValue2270 : Flapjack.NumSet := .bn setValue0 setValue2269
def tree824 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [1821])).val
theorem tree824_def : tree824 = (Flapjack.RegAlloc.ClashTree.delta [2] [1821]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal824 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [1821]
def live824 : Flapjack.NumSet := setValue2261
def coloured824 : Flapjack.NumSet := setValue2263
def result824 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2270, setValue2263)
def tree825 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree824 tree823)).val
theorem tree825_def : tree825 = (.seq tree824 tree823) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal825 : Flapjack.RegAlloc.ClashTree := .seq literal824 literal823
def live825 : Flapjack.NumSet := setValue2254
def coloured825 : Flapjack.NumSet := setValue2260
def result825 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2270, setValue2263)
def tree826 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1821] [])).val
theorem tree826_def : tree826 = (Flapjack.RegAlloc.ClashTree.delta [1821] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal826 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1821] []
def live826 : Flapjack.NumSet := setValue2270
def coloured826 : Flapjack.NumSet := setValue2263
def result826 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree827 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree826 tree825)).val
theorem tree827_def : tree827 = (.seq tree826 tree825) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal827 : Flapjack.RegAlloc.ClashTree := .seq literal826 literal825
def live827 : Flapjack.NumSet := setValue2254
def coloured827 : Flapjack.NumSet := setValue2260
def result827 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def setValue2271 : Flapjack.NumSet := .bn setValue2266 setValue2250
def setValue2272 : Flapjack.NumSet := .bn setValue2249 setValue2271
def setValue2273 : Flapjack.NumSet := .bn setValue2272 setValue0
def setValue2274 : Flapjack.NumSet := .bn setValue0 setValue2273
def setValue2275 : Flapjack.NumSet := .bs setValue2259 () setValue0
def tree828 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [1817])).val
theorem tree828_def : tree828 = (Flapjack.RegAlloc.ClashTree.delta [] [1817]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal828 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [1817]
def live828 : Flapjack.NumSet := setValue2254
def coloured828 : Flapjack.NumSet := setValue2260
def result828 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2274, setValue2275)
def tree829 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree828 tree827)).val
theorem tree829_def : tree829 = (.seq tree828 tree827) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal829 : Flapjack.RegAlloc.ClashTree := .seq literal828 literal827
def live829 : Flapjack.NumSet := setValue2254
def coloured829 : Flapjack.NumSet := setValue2260
def result829 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2274, setValue2275)
def setValue2276 : Flapjack.NumSet := .bn setValue2248 setValue2266
def setValue2277 : Flapjack.NumSet := .bn setValue2276 setValue2251
def setValue2278 : Flapjack.NumSet := .bn setValue2277 setValue0
def setValue2279 : Flapjack.NumSet := .bn setValue0 setValue2278
def tree830 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1817] [1813])).val
theorem tree830_def : tree830 = (Flapjack.RegAlloc.ClashTree.delta [1817] [1813]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal830 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1817] [1813]
def live830 : Flapjack.NumSet := setValue2274
def coloured830 : Flapjack.NumSet := setValue2275
def result830 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2279, setValue2275)
def tree831 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree830 tree829)).val
theorem tree831_def : tree831 = (.seq tree830 tree829) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal831 : Flapjack.RegAlloc.ClashTree := .seq literal830 literal829
def live831 : Flapjack.NumSet := setValue2254
def coloured831 : Flapjack.NumSet := setValue2260
def result831 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2279, setValue2275)
def tree832 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1813] [])).val
theorem tree832_def : tree832 = (Flapjack.RegAlloc.ClashTree.delta [1813] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal832 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1813] []
def live832 : Flapjack.NumSet := setValue2279
def coloured832 : Flapjack.NumSet := setValue2275
def result832 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree833 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree832 tree831)).val
theorem tree833_def : tree833 = (.seq tree832 tree831) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal833 : Flapjack.RegAlloc.ClashTree := .seq literal832 literal831
def live833 : Flapjack.NumSet := setValue2254
def coloured833 : Flapjack.NumSet := setValue2260
def result833 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree834 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree834_def : tree834 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal834 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live834 : Flapjack.NumSet := setValue2254
def coloured834 : Flapjack.NumSet := setValue2260
def result834 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree835 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree834 tree833)).val
theorem tree835_def : tree835 = (.seq tree834 tree833) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal835 : Flapjack.RegAlloc.ClashTree := .seq literal834 literal833
def live835 : Flapjack.NumSet := setValue2254
def coloured835 : Flapjack.NumSet := setValue2260
def result835 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree836 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree836_def : tree836 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal836 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live836 : Flapjack.NumSet := setValue2254
def coloured836 : Flapjack.NumSet := setValue2260
def result836 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def tree837 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree835 tree836)).val
theorem tree837_def : tree837 = (.branch (none) tree835 tree836) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal837 : Flapjack.RegAlloc.ClashTree := .branch (none) literal835 literal836
def live837 : Flapjack.NumSet := setValue2254
def coloured837 : Flapjack.NumSet := setValue2260
def result837 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2254, setValue2260)
def setValue2280 : Flapjack.NumSet := .bn setValue1372 setValue1242
def setValue2281 : Flapjack.NumSet := .bn setValue1472 setValue2280
def setValue2282 : Flapjack.NumSet := .bn setValue1473 setValue2281
def setValue2283 : Flapjack.NumSet := .bn setValue2248 setValue2282
def setValue2284 : Flapjack.NumSet := .bn setValue2282 setValue2250
def setValue2285 : Flapjack.NumSet := .bn setValue2283 setValue2284
def setValue2286 : Flapjack.NumSet := .bn setValue2285 setValue0
def setValue2287 : Flapjack.NumSet := .bn setValue0 setValue2286
def setValue2288 : Flapjack.NumSet := .bs setValue2262 () setValue0
def tree838 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [1797, 1801])).val
theorem tree838_def : tree838 = (Flapjack.RegAlloc.ClashTree.delta [] [1797, 1801]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal838 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [1797, 1801]
def live838 : Flapjack.NumSet := setValue2254
def coloured838 : Flapjack.NumSet := setValue2260
def result838 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2287, setValue2288)
def tree839 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree838 tree837)).val
theorem tree839_def : tree839 = (.seq tree838 tree837) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal839 : Flapjack.RegAlloc.ClashTree := .seq literal838 literal837
def live839 : Flapjack.NumSet := setValue2254
def coloured839 : Flapjack.NumSet := setValue2260
def result839 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2287, setValue2288)
def tree840 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree839 tree822)).val
theorem tree840_def : tree840 = (.seq tree839 tree822) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal840 : Flapjack.RegAlloc.ClashTree := .seq literal839 literal822
def live840 : Flapjack.NumSet := setValue1801
def coloured840 : Flapjack.NumSet := setValue1809
def result840 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2287, setValue2288)
def setValue2289 : Flapjack.NumSet := .bn setValue2283 setValue2251
def setValue2290 : Flapjack.NumSet := .bn setValue2289 setValue0
def setValue2291 : Flapjack.NumSet := .bn setValue0 setValue2290
def tree841 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1801] [])).val
theorem tree841_def : tree841 = (Flapjack.RegAlloc.ClashTree.delta [1801] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal841 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1801] []
def live841 : Flapjack.NumSet := setValue2287
def coloured841 : Flapjack.NumSet := setValue2288
def result841 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2291, setValue2275)
def tree842 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree841 tree840)).val
theorem tree842_def : tree842 = (.seq tree841 tree840) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal842 : Flapjack.RegAlloc.ClashTree := .seq literal841 literal840
def live842 : Flapjack.NumSet := setValue1801
def coloured842 : Flapjack.NumSet := setValue1809
def result842 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2291, setValue2275)
def setValue2292 : Flapjack.NumSet := .bn setValue1472 setValue1472
def setValue2293 : Flapjack.NumSet := .bn setValue2292 setValue2247
def setValue2294 : Flapjack.NumSet := .bn setValue2293 setValue2248
def setValue2295 : Flapjack.NumSet := .bn setValue2294 setValue2251
def setValue2296 : Flapjack.NumSet := .bn setValue2295 setValue0
def setValue2297 : Flapjack.NumSet := .bn setValue0 setValue2296
def tree843 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1797] [1789])).val
theorem tree843_def : tree843 = (Flapjack.RegAlloc.ClashTree.delta [1797] [1789]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal843 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1797] [1789]
def live843 : Flapjack.NumSet := setValue2291
def coloured843 : Flapjack.NumSet := setValue2275
def result843 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2297, setValue2275)
def tree844 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree843 tree842)).val
theorem tree844_def : tree844 = (.seq tree843 tree842) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal844 : Flapjack.RegAlloc.ClashTree := .seq literal843 literal842
def live844 : Flapjack.NumSet := setValue1801
def coloured844 : Flapjack.NumSet := setValue1809
def result844 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2297, setValue2275)
def tree845 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree845_def : tree845 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal845 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live845 : Flapjack.NumSet := setValue2297
def coloured845 : Flapjack.NumSet := setValue2275
def result845 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2297, setValue2275)
def tree846 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree845 tree844)).val
theorem tree846_def : tree846 = (.seq tree845 tree844) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal846 : Flapjack.RegAlloc.ClashTree := .seq literal845 literal844
def live846 : Flapjack.NumSet := setValue1801
def coloured846 : Flapjack.NumSet := setValue1809
def result846 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2297, setValue2275)
def setValue2298 : Flapjack.NumSet := .bn setValue1662 setValue1371
def setValue2299 : Flapjack.NumSet := .bn setValue1371 setValue1392
def setValue2300 : Flapjack.NumSet := .bn setValue2298 setValue2299
def setValue2301 : Flapjack.NumSet := .bn setValue2300 setValue2300
def setValue2302 : Flapjack.NumSet := .bn setValue2299 setValue2299
def setValue2303 : Flapjack.NumSet := .bn setValue2300 setValue2302
def setValue2304 : Flapjack.NumSet := .bn setValue2301 setValue2303
def setValue2305 : Flapjack.NumSet := .bn setValue0 setValue2304
def setValue2306 : Flapjack.NumSet := .bn setValue1 setValue2305
def tree847 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [1789, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725, 1729, 1733, 1737, 1741, 1745, 1749, 1753,
    1757, 1761, 1765, 1769, 1773, 1777]
  [2, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643, 1647, 1651, 1655, 1659,
    1663, 1667, 1671, 1675, 1679])).val
theorem tree847_def : tree847 = (Flapjack.RegAlloc.ClashTree.delta
  [1789, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725, 1729, 1733, 1737, 1741, 1745, 1749, 1753,
    1757, 1761, 1765, 1769, 1773, 1777]
  [2, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643, 1647, 1651, 1655, 1659,
    1663, 1667, 1671, 1675, 1679]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal847 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [1789, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725, 1729, 1733, 1737, 1741, 1745, 1749, 1753,
    1757, 1761, 1765, 1769, 1773, 1777]
  [2, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643, 1647, 1651, 1655, 1659,
    1663, 1667, 1671, 1675, 1679]
def live847 : Flapjack.NumSet := setValue2297
def coloured847 : Flapjack.NumSet := setValue2275
def result847 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2306, setValue1786)
def tree848 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2306)).val
theorem tree848_def : tree848 = (.set setValue2306) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal848 : Flapjack.RegAlloc.ClashTree := .set setValue2306
def live848 : Flapjack.NumSet := setValue2306
def coloured848 : Flapjack.NumSet := setValue1786
def result848 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2306, setValue1786)
def tree849 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree848 tree847)).val
theorem tree849_def : tree849 = (.seq tree848 tree847) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal849 : Flapjack.RegAlloc.ClashTree := .seq literal848 literal847
def live849 : Flapjack.NumSet := setValue2297
def coloured849 : Flapjack.NumSet := setValue2275
def result849 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2306, setValue1786)
def setValue2307 : Flapjack.NumSet := .bn setValue1 setValue2296
def tree850 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree850_def : tree850 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal850 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live850 : Flapjack.NumSet := setValue2297
def coloured850 : Flapjack.NumSet := setValue2275
def result850 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2307, setValue2288)
def setValue2308 : Flapjack.NumSet := .bn setValue1486 setValue0
def setValue2309 : Flapjack.NumSet := .bn setValue2308 setValue0
def setValue2310 : Flapjack.NumSet := .bn setValue2309 setValue0
def setValue2311 : Flapjack.NumSet := .bn setValue2310 setValue0
def setValue2312 : Flapjack.NumSet := .bn setValue2311 setValue2304
def setValue2313 : Flapjack.NumSet := .bn setValue1 setValue2312
def setValue2314 : Flapjack.NumSet := .bs setValue1785 () setValue0
def tree851 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725, 1729, 1733, 1737, 1741, 1745, 1749, 1753, 1757,
    1761, 1765, 1769, 1773, 1777]
  [2, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643, 1647, 1651, 1655, 1659,
    1663, 1667, 1671, 1675, 1679])).val
theorem tree851_def : tree851 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725, 1729, 1733, 1737, 1741, 1745, 1749, 1753, 1757,
    1761, 1765, 1769, 1773, 1777]
  [2, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643, 1647, 1651, 1655, 1659,
    1663, 1667, 1671, 1675, 1679]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal851 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 1685, 1689, 1693, 1697, 1701, 1705, 1709, 1713, 1717, 1721, 1725, 1729, 1733, 1737, 1741, 1745, 1749, 1753, 1757,
    1761, 1765, 1769, 1773, 1777]
  [2, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643, 1647, 1651, 1655, 1659,
    1663, 1667, 1671, 1675, 1679]
def live851 : Flapjack.NumSet := setValue2307
def coloured851 : Flapjack.NumSet := setValue2288
def result851 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2313, setValue2314)
def tree852 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree851 tree850)).val
theorem tree852_def : tree852 = (.seq tree851 tree850) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal852 : Flapjack.RegAlloc.ClashTree := .seq literal851 literal850
def live852 : Flapjack.NumSet := setValue2297
def coloured852 : Flapjack.NumSet := setValue2275
def result852 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2313, setValue2314)
def tree853 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2306)).val
theorem tree853_def : tree853 = (.set setValue2306) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal853 : Flapjack.RegAlloc.ClashTree := .set setValue2306
def live853 : Flapjack.NumSet := setValue2313
def coloured853 : Flapjack.NumSet := setValue2314
def result853 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2306, setValue1786)
def tree854 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree853 tree852)).val
theorem tree854_def : tree854 = (.seq tree853 tree852) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal854 : Flapjack.RegAlloc.ClashTree := .seq literal853 literal852
def live854 : Flapjack.NumSet := setValue2297
def coloured854 : Flapjack.NumSet := setValue2275
def result854 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2306, setValue1786)
def setValue2315 : Flapjack.NumSet := .bn setValue350 setValue2305
def setValue2316 : Flapjack.NumSet := .bs setValue1890 () setValue1762
def setValue2317 : Flapjack.NumSet := .bs setValue1220 () setValue1237
def setValue2318 : Flapjack.NumSet := .bs setValue1890 () setValue2317
def setValue2319 : Flapjack.NumSet := .bs setValue2316 () setValue2318
def setValue2320 : Flapjack.NumSet := .bn setValue2319 setValue0
def tree855 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2315) tree849 tree854)).val
theorem tree855_def : tree855 = (.branch (some setValue2315) tree849 tree854) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal855 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2315) literal849 literal854
def live855 : Flapjack.NumSet := setValue2297
def coloured855 : Flapjack.NumSet := setValue2275
def result855 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2315, setValue2320)
def tree856 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree855 tree846)).val
theorem tree856_def : tree856 = (.seq tree855 tree846) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal856 : Flapjack.RegAlloc.ClashTree := .seq literal855 literal846
def live856 : Flapjack.NumSet := setValue1801
def coloured856 : Flapjack.NumSet := setValue1809
def result856 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2315, setValue2320)
def setValue2321 : Flapjack.NumSet := .bn setValue171 setValue6
def setValue2322 : Flapjack.NumSet := .bn setValue2321 setValue29
def setValue2323 : Flapjack.NumSet := .bn setValue2322 setValue2322
def setValue2324 : Flapjack.NumSet := .bn setValue6 setValue6
def setValue2325 : Flapjack.NumSet := .bn setValue29 setValue2324
def setValue2326 : Flapjack.NumSet := .bn setValue2322 setValue2325
def setValue2327 : Flapjack.NumSet := .bn setValue2323 setValue2326
def setValue2328 : Flapjack.NumSet := .bn setValue2326 setValue2326
def setValue2329 : Flapjack.NumSet := .bn setValue2327 setValue2328
def setValue2330 : Flapjack.NumSet := .bn setValue2329 setValue0
def setValue2331 : Flapjack.NumSet := .bn setValue0 setValue2330
def setValue2332 : Flapjack.NumSet := .bs setValue2001 () setValue2255
def setValue2333 : Flapjack.NumSet := .bs setValue1220 () setValue799
def setValue2334 : Flapjack.NumSet := .bs setValue2257 () setValue2333
def setValue2335 : Flapjack.NumSet := .bn setValue2332 setValue2334
def setValue2336 : Flapjack.NumSet := .bn setValue2335 setValue0
def tree857 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643,
    1647, 1651, 1655, 1659, 1663, 1667, 1671, 1675, 1679]
  [1401, 1441, 1477, 1445, 1417, 1449, 1421, 1473, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429,
    1433, 1437, 1441, 1445, 1449, 1453, 1457, 1461, 1465, 1469, 1473, 1477, 1481])).val
theorem tree857_def : tree857 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643,
    1647, 1651, 1655, 1659, 1663, 1667, 1671, 1675, 1679]
  [1401, 1441, 1477, 1445, 1417, 1449, 1421, 1473, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429,
    1433, 1437, 1441, 1445, 1449, 1453, 1457, 1461, 1465, 1469, 1473, 1477, 1481]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal857 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1587, 1591, 1595, 1599, 1603, 1607, 1611, 1615, 1619, 1623, 1627, 1631, 1635, 1639, 1643,
    1647, 1651, 1655, 1659, 1663, 1667, 1671, 1675, 1679]
  [1401, 1441, 1477, 1445, 1417, 1449, 1421, 1473, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429,
    1433, 1437, 1441, 1445, 1449, 1453, 1457, 1461, 1465, 1469, 1473, 1477, 1481]
def live857 : Flapjack.NumSet := setValue2315
def coloured857 : Flapjack.NumSet := setValue2320
def result857 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree858 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree857 tree856)).val
theorem tree858_def : tree858 = (.seq tree857 tree856) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal858 : Flapjack.RegAlloc.ClashTree := .seq literal857 literal856
def live858 : Flapjack.NumSet := setValue1801
def coloured858 : Flapjack.NumSet := setValue1809
def result858 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree859 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree859_def : tree859 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal859 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live859 : Flapjack.NumSet := setValue2331
def coloured859 : Flapjack.NumSet := setValue2336
def result859 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree860 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree859 tree858)).val
theorem tree860_def : tree860 = (.seq tree859 tree858) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal860 : Flapjack.RegAlloc.ClashTree := .seq literal859 literal858
def live860 : Flapjack.NumSet := setValue1801
def coloured860 : Flapjack.NumSet := setValue1809
def result860 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree861 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree861_def : tree861 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal861 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live861 : Flapjack.NumSet := setValue2331
def coloured861 : Flapjack.NumSet := setValue2336
def result861 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree862 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree861 tree860)).val
theorem tree862_def : tree862 = (.seq tree861 tree860) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal862 : Flapjack.RegAlloc.ClashTree := .seq literal861 literal860
def live862 : Flapjack.NumSet := setValue1801
def coloured862 : Flapjack.NumSet := setValue1809
def result862 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def setValue2337 : Flapjack.NumSet := .bn setValue1 setValue2330
def setValue2338 : Flapjack.NumSet := .bs setValue2332 () setValue2334
def setValue2339 : Flapjack.NumSet := .bn setValue2338 setValue0
def tree863 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree863_def : tree863 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal863 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live863 : Flapjack.NumSet := setValue2331
def coloured863 : Flapjack.NumSet := setValue2336
def result863 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2337, setValue2339)
def setValue2340 : Flapjack.NumSet := .bn setValue1909 setValue6
def setValue2341 : Flapjack.NumSet := .bn setValue2340 setValue29
def setValue2342 : Flapjack.NumSet := .bn setValue2341 setValue2325
def setValue2343 : Flapjack.NumSet := .bn setValue2323 setValue2342
def setValue2344 : Flapjack.NumSet := .bn setValue2343 setValue2328
def setValue2345 : Flapjack.NumSet := .bn setValue2344 setValue0
def setValue2346 : Flapjack.NumSet := .bn setValue0 setValue2345
def tree864 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [1525])).val
theorem tree864_def : tree864 = (Flapjack.RegAlloc.ClashTree.delta [2] [1525]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal864 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [1525]
def live864 : Flapjack.NumSet := setValue2337
def coloured864 : Flapjack.NumSet := setValue2339
def result864 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2346, setValue2339)
def tree865 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree864 tree863)).val
theorem tree865_def : tree865 = (.seq tree864 tree863) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal865 : Flapjack.RegAlloc.ClashTree := .seq literal864 literal863
def live865 : Flapjack.NumSet := setValue2331
def coloured865 : Flapjack.NumSet := setValue2336
def result865 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2346, setValue2339)
def tree866 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1525] [])).val
theorem tree866_def : tree866 = (Flapjack.RegAlloc.ClashTree.delta [1525] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal866 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1525] []
def live866 : Flapjack.NumSet := setValue2346
def coloured866 : Flapjack.NumSet := setValue2339
def result866 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree867 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree866 tree865)).val
theorem tree867_def : tree867 = (.seq tree866 tree865) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal867 : Flapjack.RegAlloc.ClashTree := .seq literal866 literal865
def live867 : Flapjack.NumSet := setValue2331
def coloured867 : Flapjack.NumSet := setValue2336
def result867 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def setValue2347 : Flapjack.NumSet := .bn setValue2326 setValue2342
def setValue2348 : Flapjack.NumSet := .bn setValue2327 setValue2347
def setValue2349 : Flapjack.NumSet := .bn setValue2348 setValue0
def setValue2350 : Flapjack.NumSet := .bn setValue0 setValue2349
def setValue2351 : Flapjack.NumSet := .bs setValue2335 () setValue0
def tree868 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [1521])).val
theorem tree868_def : tree868 = (Flapjack.RegAlloc.ClashTree.delta [] [1521]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal868 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [1521]
def live868 : Flapjack.NumSet := setValue2331
def coloured868 : Flapjack.NumSet := setValue2336
def result868 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2350, setValue2351)
def tree869 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree868 tree867)).val
theorem tree869_def : tree869 = (.seq tree868 tree867) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal869 : Flapjack.RegAlloc.ClashTree := .seq literal868 literal867
def live869 : Flapjack.NumSet := setValue2331
def coloured869 : Flapjack.NumSet := setValue2336
def result869 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2350, setValue2351)
def setValue2352 : Flapjack.NumSet := .bn setValue2322 setValue2341
def setValue2353 : Flapjack.NumSet := .bn setValue2352 setValue2326
def setValue2354 : Flapjack.NumSet := .bn setValue2353 setValue2328
def setValue2355 : Flapjack.NumSet := .bn setValue2354 setValue0
def setValue2356 : Flapjack.NumSet := .bn setValue0 setValue2355
def tree870 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1521] [1517])).val
theorem tree870_def : tree870 = (Flapjack.RegAlloc.ClashTree.delta [1521] [1517]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal870 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1521] [1517]
def live870 : Flapjack.NumSet := setValue2350
def coloured870 : Flapjack.NumSet := setValue2351
def result870 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2356, setValue2351)
def tree871 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree870 tree869)).val
theorem tree871_def : tree871 = (.seq tree870 tree869) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal871 : Flapjack.RegAlloc.ClashTree := .seq literal870 literal869
def live871 : Flapjack.NumSet := setValue2331
def coloured871 : Flapjack.NumSet := setValue2336
def result871 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2356, setValue2351)
def tree872 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1517] [])).val
theorem tree872_def : tree872 = (Flapjack.RegAlloc.ClashTree.delta [1517] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal872 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1517] []
def live872 : Flapjack.NumSet := setValue2356
def coloured872 : Flapjack.NumSet := setValue2351
def result872 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree873 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree872 tree871)).val
theorem tree873_def : tree873 = (.seq tree872 tree871) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal873 : Flapjack.RegAlloc.ClashTree := .seq literal872 literal871
def live873 : Flapjack.NumSet := setValue2331
def coloured873 : Flapjack.NumSet := setValue2336
def result873 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree874 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree874_def : tree874 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal874 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live874 : Flapjack.NumSet := setValue2331
def coloured874 : Flapjack.NumSet := setValue2336
def result874 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree875 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree874 tree873)).val
theorem tree875_def : tree875 = (.seq tree874 tree873) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal875 : Flapjack.RegAlloc.ClashTree := .seq literal874 literal873
def live875 : Flapjack.NumSet := setValue2331
def coloured875 : Flapjack.NumSet := setValue2336
def result875 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree876 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree876_def : tree876 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal876 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live876 : Flapjack.NumSet := setValue2331
def coloured876 : Flapjack.NumSet := setValue2336
def result876 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def tree877 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree875 tree876)).val
theorem tree877_def : tree877 = (.branch (none) tree875 tree876) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal877 : Flapjack.RegAlloc.ClashTree := .branch (none) literal875 literal876
def live877 : Flapjack.NumSet := setValue2331
def coloured877 : Flapjack.NumSet := setValue2336
def result877 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2331, setValue2336)
def setValue2357 : Flapjack.NumSet := .bn setValue2321 setValue2324
def setValue2358 : Flapjack.NumSet := .bn setValue2357 setValue2322
def setValue2359 : Flapjack.NumSet := .bn setValue2358 setValue2326
def setValue2360 : Flapjack.NumSet := .bn setValue2324 setValue2324
def setValue2361 : Flapjack.NumSet := .bn setValue2322 setValue2360
def setValue2362 : Flapjack.NumSet := .bn setValue2326 setValue2361
def setValue2363 : Flapjack.NumSet := .bn setValue2359 setValue2362
def setValue2364 : Flapjack.NumSet := .bn setValue2363 setValue0
def setValue2365 : Flapjack.NumSet := .bn setValue0 setValue2364
def setValue2366 : Flapjack.NumSet := .bs setValue2338 () setValue0
def tree878 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [1501, 1505])).val
theorem tree878_def : tree878 = (Flapjack.RegAlloc.ClashTree.delta [] [1501, 1505]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal878 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [1501, 1505]
def live878 : Flapjack.NumSet := setValue2331
def coloured878 : Flapjack.NumSet := setValue2336
def result878 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2365, setValue2366)
def tree879 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree878 tree877)).val
theorem tree879_def : tree879 = (.seq tree878 tree877) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal879 : Flapjack.RegAlloc.ClashTree := .seq literal878 literal877
def live879 : Flapjack.NumSet := setValue2331
def coloured879 : Flapjack.NumSet := setValue2336
def result879 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2365, setValue2366)
def tree880 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree879 tree862)).val
theorem tree880_def : tree880 = (.seq tree879 tree862) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal880 : Flapjack.RegAlloc.ClashTree := .seq literal879 literal862
def live880 : Flapjack.NumSet := setValue1801
def coloured880 : Flapjack.NumSet := setValue1809
def result880 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2365, setValue2366)
def setValue2367 : Flapjack.NumSet := .bn setValue2359 setValue2328
def setValue2368 : Flapjack.NumSet := .bn setValue2367 setValue0
def setValue2369 : Flapjack.NumSet := .bn setValue0 setValue2368
def tree881 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1505] [])).val
theorem tree881_def : tree881 = (Flapjack.RegAlloc.ClashTree.delta [1505] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal881 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1505] []
def live881 : Flapjack.NumSet := setValue2365
def coloured881 : Flapjack.NumSet := setValue2366
def result881 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2369, setValue2351)
def tree882 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree881 tree880)).val
theorem tree882_def : tree882 = (.seq tree881 tree880) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal882 : Flapjack.RegAlloc.ClashTree := .seq literal881 literal880
def live882 : Flapjack.NumSet := setValue1801
def coloured882 : Flapjack.NumSet := setValue1809
def result882 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2369, setValue2351)
def setValue2370 : Flapjack.NumSet := .bn setValue2357 setValue2325
def setValue2371 : Flapjack.NumSet := .bn setValue2323 setValue2370
def setValue2372 : Flapjack.NumSet := .bn setValue2371 setValue2328
def setValue2373 : Flapjack.NumSet := .bn setValue2372 setValue0
def setValue2374 : Flapjack.NumSet := .bn setValue0 setValue2373
def tree883 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1501] [1493])).val
theorem tree883_def : tree883 = (Flapjack.RegAlloc.ClashTree.delta [1501] [1493]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal883 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1501] [1493]
def live883 : Flapjack.NumSet := setValue2369
def coloured883 : Flapjack.NumSet := setValue2351
def result883 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2374, setValue2351)
def tree884 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree883 tree882)).val
theorem tree884_def : tree884 = (.seq tree883 tree882) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal884 : Flapjack.RegAlloc.ClashTree := .seq literal883 literal882
def live884 : Flapjack.NumSet := setValue1801
def coloured884 : Flapjack.NumSet := setValue1809
def result884 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2374, setValue2351)
def tree885 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree885_def : tree885 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal885 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live885 : Flapjack.NumSet := setValue2374
def coloured885 : Flapjack.NumSet := setValue2351
def result885 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2374, setValue2351)
def tree886 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree885 tree884)).val
theorem tree886_def : tree886 = (.seq tree885 tree884) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal886 : Flapjack.RegAlloc.ClashTree := .seq literal885 literal884
def live886 : Flapjack.NumSet := setValue1801
def coloured886 : Flapjack.NumSet := setValue1809
def result886 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2374, setValue2351)
def setValue2375 : Flapjack.NumSet := .bn setValue171 setValue171
def setValue2376 : Flapjack.NumSet := .bn setValue359 setValue2375
def setValue2377 : Flapjack.NumSet := .bn setValue2376 setValue2376
def setValue2378 : Flapjack.NumSet := .bn setValue2375 setValue172
def setValue2379 : Flapjack.NumSet := .bn setValue2376 setValue2378
def setValue2380 : Flapjack.NumSet := .bn setValue2377 setValue2379
def setValue2381 : Flapjack.NumSet := .bn setValue2379 setValue2379
def setValue2382 : Flapjack.NumSet := .bn setValue2380 setValue2381
def setValue2383 : Flapjack.NumSet := .bn setValue0 setValue2382
def setValue2384 : Flapjack.NumSet := .bn setValue1 setValue2383
def tree887 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [1493, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429, 1433, 1437, 1441, 1445, 1449, 1453, 1457,
    1461, 1465, 1469, 1473, 1477, 1481]
  [2, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363,
    1367, 1371, 1375, 1379, 1383])).val
theorem tree887_def : tree887 = (Flapjack.RegAlloc.ClashTree.delta
  [1493, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429, 1433, 1437, 1441, 1445, 1449, 1453, 1457,
    1461, 1465, 1469, 1473, 1477, 1481]
  [2, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363,
    1367, 1371, 1375, 1379, 1383]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal887 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [1493, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429, 1433, 1437, 1441, 1445, 1449, 1453, 1457,
    1461, 1465, 1469, 1473, 1477, 1481]
  [2, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363,
    1367, 1371, 1375, 1379, 1383]
def live887 : Flapjack.NumSet := setValue2374
def coloured887 : Flapjack.NumSet := setValue2351
def result887 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2384, setValue1786)
def tree888 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2384)).val
theorem tree888_def : tree888 = (.set setValue2384) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal888 : Flapjack.RegAlloc.ClashTree := .set setValue2384
def live888 : Flapjack.NumSet := setValue2384
def coloured888 : Flapjack.NumSet := setValue1786
def result888 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2384, setValue1786)
def tree889 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree888 tree887)).val
theorem tree889_def : tree889 = (.seq tree888 tree887) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal889 : Flapjack.RegAlloc.ClashTree := .seq literal888 literal887
def live889 : Flapjack.NumSet := setValue2374
def coloured889 : Flapjack.NumSet := setValue2351
def result889 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2384, setValue1786)
def setValue2385 : Flapjack.NumSet := .bn setValue1 setValue2373
def tree890 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree890_def : tree890 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal890 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live890 : Flapjack.NumSet := setValue2374
def coloured890 : Flapjack.NumSet := setValue2351
def result890 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2385, setValue2366)
def setValue2386 : Flapjack.NumSet := .bn setValue10 setValue0
def setValue2387 : Flapjack.NumSet := .bn setValue2386 setValue2382
def setValue2388 : Flapjack.NumSet := .bn setValue1 setValue2387
def tree891 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429, 1433, 1437, 1441, 1445, 1449, 1453, 1457, 1461,
    1465, 1469, 1473, 1477, 1481]
  [2, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363,
    1367, 1371, 1375, 1379, 1383])).val
theorem tree891_def : tree891 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429, 1433, 1437, 1441, 1445, 1449, 1453, 1457, 1461,
    1465, 1469, 1473, 1477, 1481]
  [2, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363,
    1367, 1371, 1375, 1379, 1383]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal891 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 1389, 1393, 1397, 1401, 1405, 1409, 1413, 1417, 1421, 1425, 1429, 1433, 1437, 1441, 1445, 1449, 1453, 1457, 1461,
    1465, 1469, 1473, 1477, 1481]
  [2, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363,
    1367, 1371, 1375, 1379, 1383]
def live891 : Flapjack.NumSet := setValue2385
def coloured891 : Flapjack.NumSet := setValue2366
def result891 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2388, setValue2314)
def tree892 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree891 tree890)).val
theorem tree892_def : tree892 = (.seq tree891 tree890) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal892 : Flapjack.RegAlloc.ClashTree := .seq literal891 literal890
def live892 : Flapjack.NumSet := setValue2374
def coloured892 : Flapjack.NumSet := setValue2351
def result892 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2388, setValue2314)
def tree893 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2384)).val
theorem tree893_def : tree893 = (.set setValue2384) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal893 : Flapjack.RegAlloc.ClashTree := .set setValue2384
def live893 : Flapjack.NumSet := setValue2388
def coloured893 : Flapjack.NumSet := setValue2314
def result893 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2384, setValue1786)
def tree894 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree893 tree892)).val
theorem tree894_def : tree894 = (.seq tree893 tree892) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal894 : Flapjack.RegAlloc.ClashTree := .seq literal893 literal892
def live894 : Flapjack.NumSet := setValue2374
def coloured894 : Flapjack.NumSet := setValue2351
def result894 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2384, setValue1786)
def setValue2389 : Flapjack.NumSet := .bn setValue350 setValue2383
def tree895 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2389) tree889 tree894)).val
theorem tree895_def : tree895 = (.branch (some setValue2389) tree889 tree894) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal895 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2389) literal889 literal894
def live895 : Flapjack.NumSet := setValue2374
def coloured895 : Flapjack.NumSet := setValue2351
def result895 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2389, setValue2320)
def tree896 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree895 tree886)).val
theorem tree896_def : tree896 = (.seq tree895 tree886) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal896 : Flapjack.RegAlloc.ClashTree := .seq literal895 literal886
def live896 : Flapjack.NumSet := setValue1801
def coloured896 : Flapjack.NumSet := setValue1809
def result896 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2389, setValue2320)
def setValue2390 : Flapjack.NumSet := .bn setValue505 setValue5
def setValue2391 : Flapjack.NumSet := .bn setValue770 setValue2390
def setValue2392 : Flapjack.NumSet := .bn setValue2000 setValue85
def setValue2393 : Flapjack.NumSet := .bn setValue0 setValue2392
def setValue2394 : Flapjack.NumSet := .bn setValue505 setValue88
def setValue2395 : Flapjack.NumSet := .bn setValue2393 setValue2394
def setValue2396 : Flapjack.NumSet := .bn setValue2391 setValue2395
def setValue2397 : Flapjack.NumSet := .bn setValue2000 setValue0
def setValue2398 : Flapjack.NumSet := .bn setValue2397 setValue5
def setValue2399 : Flapjack.NumSet := .bn setValue2398 setValue506
def setValue2400 : Flapjack.NumSet := .bn setValue2391 setValue2399
def setValue2401 : Flapjack.NumSet := .bn setValue2396 setValue2400
def setValue2402 : Flapjack.NumSet := .bn setValue2390 setValue0
def setValue2403 : Flapjack.NumSet := .bn setValue1936 setValue2402
def setValue2404 : Flapjack.NumSet := .bn setValue1911 setValue2403
def setValue2405 : Flapjack.NumSet := .bn setValue2401 setValue2404
def setValue2406 : Flapjack.NumSet := .bn setValue2405 setValue0
def setValue2407 : Flapjack.NumSet := .bn setValue0 setValue2406
def setValue2408 : Flapjack.NumSet := .bs setValue4 () setValue799
def setValue2409 : Flapjack.NumSet := .bs setValue1 () setValue1271
def setValue2410 : Flapjack.NumSet := .bs setValue2408 () setValue2409
def setValue2411 : Flapjack.NumSet := .bs setValue1533 () setValue1
def setValue2412 : Flapjack.NumSet := .bs setValue1 () setValue799
def setValue2413 : Flapjack.NumSet := .bs setValue2411 () setValue2412
def setValue2414 : Flapjack.NumSet := .bs setValue2410 () setValue2413
def setValue2415 : Flapjack.NumSet := .bs setValue2414 () setValue0
def tree897 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347,
    1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383]
  [1197, 1205, 1213, 1221, 1229, 1237, 1245, 1253, 649, 1229, 653, 1197, 657, 661, 665, 721, 761, 669, 673, 813, 677,
    1205, 1221, 741, 1237, 1253, 1249, 685, 697, 781, 1213, 1245])).val
theorem tree897_def : tree897 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347,
    1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383]
  [1197, 1205, 1213, 1221, 1229, 1237, 1245, 1253, 649, 1229, 653, 1197, 657, 661, 665, 721, 761, 669, 673, 813, 677,
    1205, 1221, 741, 1237, 1253, 1249, 685, 697, 781, 1213, 1245]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal897 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 1291, 1295, 1299, 1303, 1307, 1311, 1315, 1319, 1323, 1327, 1331, 1335, 1339, 1343, 1347,
    1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383]
  [1197, 1205, 1213, 1221, 1229, 1237, 1245, 1253, 649, 1229, 653, 1197, 657, 661, 665, 721, 761, 669, 673, 813, 677,
    1205, 1221, 741, 1237, 1253, 1249, 685, 697, 781, 1213, 1245]
def live897 : Flapjack.NumSet := setValue2389
def coloured897 : Flapjack.NumSet := setValue2320
def result897 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2407, setValue2415)
def tree898 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree897 tree896)).val
theorem tree898_def : tree898 = (.seq tree897 tree896) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal898 : Flapjack.RegAlloc.ClashTree := .seq literal897 literal896
def live898 : Flapjack.NumSet := setValue1801
def coloured898 : Flapjack.NumSet := setValue1809
def result898 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2407, setValue2415)
def setValue2416 : Flapjack.NumSet := .bn setValue1909 setValue506
def setValue2417 : Flapjack.NumSet := .bn setValue2391 setValue2416
def setValue2418 : Flapjack.NumSet := .bn setValue2396 setValue2417
def setValue2419 : Flapjack.NumSet := .bn setValue2418 setValue2404
def setValue2420 : Flapjack.NumSet := .bn setValue2419 setValue0
def setValue2421 : Flapjack.NumSet := .bn setValue0 setValue2420
def setValue2422 : Flapjack.NumSet := .bs setValue2411 () setValue1922
def setValue2423 : Flapjack.NumSet := .bs setValue2410 () setValue2422
def setValue2424 : Flapjack.NumSet := .bs setValue2423 () setValue0
def tree899 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1253] [1249])).val
theorem tree899_def : tree899 = (Flapjack.RegAlloc.ClashTree.delta [1253] [1249]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal899 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1253] [1249]
def live899 : Flapjack.NumSet := setValue2407
def coloured899 : Flapjack.NumSet := setValue2415
def result899 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2421, setValue2424)
def tree900 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree899 tree898)).val
theorem tree900_def : tree900 = (.seq tree899 tree898) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal900 : Flapjack.RegAlloc.ClashTree := .seq literal899 literal898
def live900 : Flapjack.NumSet := setValue1801
def coloured900 : Flapjack.NumSet := setValue1809
def result900 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2421, setValue2424)
def setValue2425 : Flapjack.NumSet := .bn setValue1909 setValue2390
def setValue2426 : Flapjack.NumSet := .bn setValue2425 setValue359
def setValue2427 : Flapjack.NumSet := .bn setValue2426 setValue1937
def setValue2428 : Flapjack.NumSet := .bn setValue2418 setValue2427
def setValue2429 : Flapjack.NumSet := .bn setValue2428 setValue0
def setValue2430 : Flapjack.NumSet := .bn setValue0 setValue2429
def tree901 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1249] [1241])).val
theorem tree901_def : tree901 = (Flapjack.RegAlloc.ClashTree.delta [1249] [1241]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal901 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1249] [1241]
def live901 : Flapjack.NumSet := setValue2421
def coloured901 : Flapjack.NumSet := setValue2424
def result901 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2430, setValue2424)
def tree902 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree901 tree900)).val
theorem tree902_def : tree902 = (.seq tree901 tree900) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal902 : Flapjack.RegAlloc.ClashTree := .seq literal901 literal900
def live902 : Flapjack.NumSet := setValue1801
def coloured902 : Flapjack.NumSet := setValue1809
def result902 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2430, setValue2424)
def setValue2431 : Flapjack.NumSet := .bn setValue770 setValue171
def setValue2432 : Flapjack.NumSet := .bn setValue2431 setValue2395
def setValue2433 : Flapjack.NumSet := .bn setValue2432 setValue2417
def setValue2434 : Flapjack.NumSet := .bn setValue2433 setValue2427
def setValue2435 : Flapjack.NumSet := .bn setValue2434 setValue0
def setValue2436 : Flapjack.NumSet := .bn setValue0 setValue2435
def setValue2437 : Flapjack.NumSet := .bs setValue1918 () setValue2409
def setValue2438 : Flapjack.NumSet := .bs setValue2437 () setValue2422
def setValue2439 : Flapjack.NumSet := .bs setValue2438 () setValue0
def tree903 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1245] [1241])).val
theorem tree903_def : tree903 = (Flapjack.RegAlloc.ClashTree.delta [1245] [1241]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal903 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1245] [1241]
def live903 : Flapjack.NumSet := setValue2430
def coloured903 : Flapjack.NumSet := setValue2424
def result903 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2436, setValue2439)
def tree904 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree903 tree902)).val
theorem tree904_def : tree904 = (.seq tree903 tree902) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal904 : Flapjack.RegAlloc.ClashTree := .seq literal903 literal902
def live904 : Flapjack.NumSet := setValue1801
def coloured904 : Flapjack.NumSet := setValue1809
def result904 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2436, setValue2439)
def setValue2440 : Flapjack.NumSet := .bn setValue0 setValue2398
def setValue2441 : Flapjack.NumSet := .bn setValue2440 setValue172
def setValue2442 : Flapjack.NumSet := .bn setValue1911 setValue2441
def setValue2443 : Flapjack.NumSet := .bn setValue2433 setValue2442
def setValue2444 : Flapjack.NumSet := .bn setValue2443 setValue0
def setValue2445 : Flapjack.NumSet := .bn setValue0 setValue2444
def tree905 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1241] [1233])).val
theorem tree905_def : tree905 = (Flapjack.RegAlloc.ClashTree.delta [1241] [1233]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal905 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1241] [1233]
def live905 : Flapjack.NumSet := setValue2436
def coloured905 : Flapjack.NumSet := setValue2439
def result905 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2445, setValue2439)
def tree906 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree905 tree904)).val
theorem tree906_def : tree906 = (.seq tree905 tree904) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal906 : Flapjack.RegAlloc.ClashTree := .seq literal905 literal904
def live906 : Flapjack.NumSet := setValue1801
def coloured906 : Flapjack.NumSet := setValue1809
def result906 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2445, setValue2439)
def setValue2446 : Flapjack.NumSet := .bn setValue2431 setValue2416
def setValue2447 : Flapjack.NumSet := .bn setValue2432 setValue2446
def setValue2448 : Flapjack.NumSet := .bn setValue2447 setValue2442
def setValue2449 : Flapjack.NumSet := .bn setValue2448 setValue0
def setValue2450 : Flapjack.NumSet := .bn setValue0 setValue2449
def setValue2451 : Flapjack.NumSet := .bs setValue2437 () setValue1923
def setValue2452 : Flapjack.NumSet := .bs setValue2451 () setValue0
def tree907 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1237] [1233])).val
theorem tree907_def : tree907 = (Flapjack.RegAlloc.ClashTree.delta [1237] [1233]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal907 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1237] [1233]
def live907 : Flapjack.NumSet := setValue2445
def coloured907 : Flapjack.NumSet := setValue2439
def result907 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2450, setValue2452)
def tree908 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree907 tree906)).val
theorem tree908_def : tree908 = (.seq tree907 tree906) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal908 : Flapjack.RegAlloc.ClashTree := .seq literal907 literal906
def live908 : Flapjack.NumSet := setValue1801
def coloured908 : Flapjack.NumSet := setValue1809
def result908 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2450, setValue2452)
def setValue2453 : Flapjack.NumSet := .bn setValue0 setValue2390
def setValue2454 : Flapjack.NumSet := .bn setValue1910 setValue2453
def setValue2455 : Flapjack.NumSet := .bn setValue2454 setValue1937
def setValue2456 : Flapjack.NumSet := .bn setValue2447 setValue2455
def setValue2457 : Flapjack.NumSet := .bn setValue2456 setValue0
def setValue2458 : Flapjack.NumSet := .bn setValue0 setValue2457
def tree909 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1233] [1225])).val
theorem tree909_def : tree909 = (Flapjack.RegAlloc.ClashTree.delta [1233] [1225]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal909 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1233] [1225]
def live909 : Flapjack.NumSet := setValue2450
def coloured909 : Flapjack.NumSet := setValue2452
def result909 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2458, setValue2452)
def tree910 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree909 tree908)).val
theorem tree910_def : tree910 = (.seq tree909 tree908) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal910 : Flapjack.RegAlloc.ClashTree := .seq literal909 literal908
def live910 : Flapjack.NumSet := setValue1801
def coloured910 : Flapjack.NumSet := setValue1809
def result910 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2458, setValue2452)
def setValue2459 : Flapjack.NumSet := .bn setValue2393 setValue1901
def setValue2460 : Flapjack.NumSet := .bn setValue2431 setValue2459
def setValue2461 : Flapjack.NumSet := .bn setValue2460 setValue2446
def setValue2462 : Flapjack.NumSet := .bn setValue2461 setValue2455
def setValue2463 : Flapjack.NumSet := .bn setValue2462 setValue0
def setValue2464 : Flapjack.NumSet := .bn setValue0 setValue2463
def tree911 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1229] [1225])).val
theorem tree911_def : tree911 = (Flapjack.RegAlloc.ClashTree.delta [1229] [1225]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal911 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1229] [1225]
def live911 : Flapjack.NumSet := setValue2458
def coloured911 : Flapjack.NumSet := setValue2452
def result911 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2464, setValue1925)
def tree912 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree911 tree910)).val
theorem tree912_def : tree912 = (.seq tree911 tree910) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal912 : Flapjack.RegAlloc.ClashTree := .seq literal911 literal910
def live912 : Flapjack.NumSet := setValue1801
def coloured912 : Flapjack.NumSet := setValue1809
def result912 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2464, setValue1925)
def setValue2465 : Flapjack.NumSet := .bn setValue171 setValue506
def setValue2466 : Flapjack.NumSet := .bn setValue1936 setValue2465
def setValue2467 : Flapjack.NumSet := .bn setValue1911 setValue2466
def setValue2468 : Flapjack.NumSet := .bn setValue2461 setValue2467
def setValue2469 : Flapjack.NumSet := .bn setValue2468 setValue0
def setValue2470 : Flapjack.NumSet := .bn setValue0 setValue2469
def tree913 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1225] [1217])).val
theorem tree913_def : tree913 = (Flapjack.RegAlloc.ClashTree.delta [1225] [1217]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal913 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1225] [1217]
def live913 : Flapjack.NumSet := setValue2464
def coloured913 : Flapjack.NumSet := setValue1925
def result913 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2470, setValue1925)
def tree914 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree913 tree912)).val
theorem tree914_def : tree914 = (.seq tree913 tree912) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal914 : Flapjack.RegAlloc.ClashTree := .seq literal913 literal912
def live914 : Flapjack.NumSet := setValue1801
def coloured914 : Flapjack.NumSet := setValue1809
def result914 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2470, setValue1925)
def setValue2471 : Flapjack.NumSet := .bn setValue2431 setValue1957
def setValue2472 : Flapjack.NumSet := .bn setValue2460 setValue2471
def setValue2473 : Flapjack.NumSet := .bn setValue2472 setValue2467
def setValue2474 : Flapjack.NumSet := .bn setValue2473 setValue0
def setValue2475 : Flapjack.NumSet := .bn setValue0 setValue2474
def tree915 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1221] [1217])).val
theorem tree915_def : tree915 = (Flapjack.RegAlloc.ClashTree.delta [1221] [1217]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal915 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1221] [1217]
def live915 : Flapjack.NumSet := setValue2470
def coloured915 : Flapjack.NumSet := setValue1925
def result915 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2475, setValue1934)
def tree916 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree915 tree914)).val
theorem tree916_def : tree916 = (.seq tree915 tree914) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal916 : Flapjack.RegAlloc.ClashTree := .seq literal915 literal914
def live916 : Flapjack.NumSet := setValue1801
def coloured916 : Flapjack.NumSet := setValue1809
def result916 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2475, setValue1934)
def setValue2476 : Flapjack.NumSet := .bn setValue5 setValue2397
def setValue2477 : Flapjack.NumSet := .bn setValue2476 setValue171
def setValue2478 : Flapjack.NumSet := .bn setValue2477 setValue359
def setValue2479 : Flapjack.NumSet := .bn setValue2478 setValue1937
def setValue2480 : Flapjack.NumSet := .bn setValue2472 setValue2479
def setValue2481 : Flapjack.NumSet := .bn setValue2480 setValue0
def setValue2482 : Flapjack.NumSet := .bn setValue0 setValue2481
def tree917 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1217] [1209])).val
theorem tree917_def : tree917 = (Flapjack.RegAlloc.ClashTree.delta [1217] [1209]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal917 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1217] [1209]
def live917 : Flapjack.NumSet := setValue2475
def coloured917 : Flapjack.NumSet := setValue1934
def result917 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2482, setValue1934)
def tree918 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree917 tree916)).val
theorem tree918_def : tree918 = (.seq tree917 tree916) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal918 : Flapjack.RegAlloc.ClashTree := .seq literal917 literal916
def live918 : Flapjack.NumSet := setValue1801
def coloured918 : Flapjack.NumSet := setValue1809
def result918 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2482, setValue1934)
def setValue2483 : Flapjack.NumSet := .bn setValue359 setValue2459
def setValue2484 : Flapjack.NumSet := .bn setValue2483 setValue2471
def setValue2485 : Flapjack.NumSet := .bn setValue2484 setValue2479
def setValue2486 : Flapjack.NumSet := .bn setValue2485 setValue0
def setValue2487 : Flapjack.NumSet := .bn setValue0 setValue2486
def tree919 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1213] [1209])).val
theorem tree919_def : tree919 = (Flapjack.RegAlloc.ClashTree.delta [1213] [1209]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal919 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1213] [1209]
def live919 : Flapjack.NumSet := setValue2482
def coloured919 : Flapjack.NumSet := setValue1934
def result919 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2487, setValue1950)
def tree920 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree919 tree918)).val
theorem tree920_def : tree920 = (.seq tree919 tree918) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal920 : Flapjack.RegAlloc.ClashTree := .seq literal919 literal918
def live920 : Flapjack.NumSet := setValue1801
def coloured920 : Flapjack.NumSet := setValue1809
def result920 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2487, setValue1950)
def setValue2488 : Flapjack.NumSet := .bn setValue770 setValue1909
def setValue2489 : Flapjack.NumSet := .bn setValue2488 setValue172
def setValue2490 : Flapjack.NumSet := .bn setValue1911 setValue2489
def setValue2491 : Flapjack.NumSet := .bn setValue2484 setValue2490
def setValue2492 : Flapjack.NumSet := .bn setValue2491 setValue0
def setValue2493 : Flapjack.NumSet := .bn setValue0 setValue2492
def tree921 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1209] [1201])).val
theorem tree921_def : tree921 = (Flapjack.RegAlloc.ClashTree.delta [1209] [1201]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal921 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1209] [1201]
def live921 : Flapjack.NumSet := setValue2487
def coloured921 : Flapjack.NumSet := setValue1950
def result921 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2493, setValue1950)
def tree922 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree921 tree920)).val
theorem tree922_def : tree922 = (.seq tree921 tree920) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal922 : Flapjack.RegAlloc.ClashTree := .seq literal921 literal920
def live922 : Flapjack.NumSet := setValue1801
def coloured922 : Flapjack.NumSet := setValue1809
def result922 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2493, setValue1950)
def setValue2494 : Flapjack.NumSet := .bn setValue2483 setValue1958
def setValue2495 : Flapjack.NumSet := .bn setValue2494 setValue2490
def setValue2496 : Flapjack.NumSet := .bn setValue2495 setValue0
def setValue2497 : Flapjack.NumSet := .bn setValue0 setValue2496
def tree923 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1205] [1201])).val
theorem tree923_def : tree923 = (Flapjack.RegAlloc.ClashTree.delta [1205] [1201]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal923 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1205] [1201]
def live923 : Flapjack.NumSet := setValue2493
def coloured923 : Flapjack.NumSet := setValue1950
def result923 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2497, setValue1965)
def tree924 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree923 tree922)).val
theorem tree924_def : tree924 = (.seq tree923 tree922) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal924 : Flapjack.RegAlloc.ClashTree := .seq literal923 literal922
def live924 : Flapjack.NumSet := setValue1801
def coloured924 : Flapjack.NumSet := setValue1809
def result924 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2497, setValue1965)
def setValue2498 : Flapjack.NumSet := .bn setValue1910 setValue2431
def setValue2499 : Flapjack.NumSet := .bn setValue2498 setValue1937
def setValue2500 : Flapjack.NumSet := .bn setValue2494 setValue2499
def setValue2501 : Flapjack.NumSet := .bn setValue2500 setValue0
def setValue2502 : Flapjack.NumSet := .bn setValue0 setValue2501
def tree925 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1201] [1193])).val
theorem tree925_def : tree925 = (Flapjack.RegAlloc.ClashTree.delta [1201] [1193]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal925 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1201] [1193]
def live925 : Flapjack.NumSet := setValue2497
def coloured925 : Flapjack.NumSet := setValue1965
def result925 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2502, setValue1965)
def tree926 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree925 tree924)).val
theorem tree926_def : tree926 = (.seq tree925 tree924) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal926 : Flapjack.RegAlloc.ClashTree := .seq literal925 literal924
def live926 : Flapjack.NumSet := setValue1801
def coloured926 : Flapjack.NumSet := setValue1809
def result926 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2502, setValue1965)
def setValue2503 : Flapjack.NumSet := .bn setValue1973 setValue2499
def setValue2504 : Flapjack.NumSet := .bn setValue2503 setValue0
def setValue2505 : Flapjack.NumSet := .bn setValue0 setValue2504
def tree927 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1197] [1193])).val
theorem tree927_def : tree927 = (Flapjack.RegAlloc.ClashTree.delta [1197] [1193]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal927 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1197] [1193]
def live927 : Flapjack.NumSet := setValue2502
def coloured927 : Flapjack.NumSet := setValue1965
def result927 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2505, setValue1978)
def tree928 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree927 tree926)).val
theorem tree928_def : tree928 = (.seq tree927 tree926) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal928 : Flapjack.RegAlloc.ClashTree := .seq literal927 literal926
def live928 : Flapjack.NumSet := setValue1801
def coloured928 : Flapjack.NumSet := setValue1809
def result928 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2505, setValue1978)
def tree929 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [1193] [785])).val
theorem tree929_def : tree929 = (Flapjack.RegAlloc.ClashTree.delta [1193] [785]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal929 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [1193] [785]
def live929 : Flapjack.NumSet := setValue2505
def coloured929 : Flapjack.NumSet := setValue1978
def result929 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def tree930 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree929 tree928)).val
theorem tree930_def : tree930 = (.seq tree929 tree928) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal930 : Flapjack.RegAlloc.ClashTree := .seq literal929 literal928
def live930 : Flapjack.NumSet := setValue1801
def coloured930 : Flapjack.NumSet := setValue1809
def result930 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def tree931 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree931_def : tree931 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal931 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live931 : Flapjack.NumSet := setValue1985
def coloured931 : Flapjack.NumSet := setValue1978
def result931 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def tree932 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree931 tree930)).val
theorem tree932_def : tree932 = (.seq tree931 tree930) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal932 : Flapjack.RegAlloc.ClashTree := .seq literal931 literal930
def live932 : Flapjack.NumSet := setValue1801
def coloured932 : Flapjack.NumSet := setValue1809
def result932 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def tree933 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree759 tree932)).val
theorem tree933_def : tree933 = (.branch (none) tree759 tree932) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal933 : Flapjack.RegAlloc.ClashTree := .branch (none) literal759 literal932
def live933 : Flapjack.NumSet := setValue1801
def coloured933 : Flapjack.NumSet := setValue1809
def result933 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1985, setValue1978)
def setValue2506 : Flapjack.NumSet := .bn setValue1901 setValue1900
def setValue2507 : Flapjack.NumSet := .bn setValue359 setValue2506
def setValue2508 : Flapjack.NumSet := .bn setValue2507 setValue1958
def setValue2509 : Flapjack.NumSet := .bn setValue171 setValue1372
def setValue2510 : Flapjack.NumSet := .bn setValue1980 setValue2509
def setValue2511 : Flapjack.NumSet := .bn setValue1911 setValue2510
def setValue2512 : Flapjack.NumSet := .bn setValue2508 setValue2511
def setValue2513 : Flapjack.NumSet := .bn setValue2512 setValue0
def setValue2514 : Flapjack.NumSet := .bn setValue0 setValue2513
def setValue2515 : Flapjack.NumSet := .bs setValue1920 () setValue1963
def setValue2516 : Flapjack.NumSet := .bs setValue2515 () setValue0
def tree934 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [833, 845])).val
theorem tree934_def : tree934 = (Flapjack.RegAlloc.ClashTree.delta [] [833, 845]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal934 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [833, 845]
def live934 : Flapjack.NumSet := setValue1985
def coloured934 : Flapjack.NumSet := setValue1978
def result934 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2514, setValue2516)
def tree935 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree934 tree933)).val
theorem tree935_def : tree935 = (.seq tree934 tree933) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal935 : Flapjack.RegAlloc.ClashTree := .seq literal934 literal933
def live935 : Flapjack.NumSet := setValue1801
def coloured935 : Flapjack.NumSet := setValue1809
def result935 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2514, setValue2516)
def tree936 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree935 tree700)).val
theorem tree936_def : tree936 = (.seq tree935 tree700) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal936 : Flapjack.RegAlloc.ClashTree := .seq literal935 literal700
def live936 : Flapjack.NumSet := setValue0
def coloured936 : Flapjack.NumSet := setValue0
def result936 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2514, setValue2516)
def setValue2517 : Flapjack.NumSet := .bn setValue1909 setValue1372
def setValue2518 : Flapjack.NumSet := .bn setValue359 setValue2517
def setValue2519 : Flapjack.NumSet := .bn setValue1972 setValue2518
def setValue2520 : Flapjack.NumSet := .bn setValue1910 setValue1899
def setValue2521 : Flapjack.NumSet := .bn setValue2520 setValue2510
def setValue2522 : Flapjack.NumSet := .bn setValue2519 setValue2521
def setValue2523 : Flapjack.NumSet := .bn setValue2522 setValue0
def setValue2524 : Flapjack.NumSet := .bn setValue0 setValue2523
def tree937 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [845] [837, 841])).val
theorem tree937_def : tree937 = (Flapjack.RegAlloc.ClashTree.delta [845] [837, 841]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal937 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [845] [837, 841]
def live937 : Flapjack.NumSet := setValue2514
def coloured937 : Flapjack.NumSet := setValue2516
def result937 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2524, setValue1934)
def tree938 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree937 tree936)).val
theorem tree938_def : tree938 = (.seq tree937 tree936) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal938 : Flapjack.RegAlloc.ClashTree := .seq literal937 literal936
def live938 : Flapjack.NumSet := setValue0
def coloured938 : Flapjack.NumSet := setValue0
def result938 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2524, setValue1934)
def setValue2525 : Flapjack.NumSet := .bn setValue1370 setValue171
def setValue2526 : Flapjack.NumSet := .bn setValue2525 setValue1942
def setValue2527 : Flapjack.NumSet := .bn setValue2526 setValue1958
def setValue2528 : Flapjack.NumSet := .bn setValue1910 setValue2525
def setValue2529 : Flapjack.NumSet := .bn setValue2528 setValue2510
def setValue2530 : Flapjack.NumSet := .bn setValue2527 setValue2529
def setValue2531 : Flapjack.NumSet := .bn setValue2530 setValue0
def setValue2532 : Flapjack.NumSet := .bn setValue0 setValue2531
def tree939 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [841, 837] [809, 829])).val
theorem tree939_def : tree939 = (Flapjack.RegAlloc.ClashTree.delta [841, 837] [809, 829]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal939 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [841, 837] [809, 829]
def live939 : Flapjack.NumSet := setValue2524
def coloured939 : Flapjack.NumSet := setValue1934
def result939 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2532, setValue1934)
def tree940 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree939 tree938)).val
theorem tree940_def : tree940 = (.seq tree939 tree938) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal940 : Flapjack.RegAlloc.ClashTree := .seq literal939 literal938
def live940 : Flapjack.NumSet := setValue0
def coloured940 : Flapjack.NumSet := setValue0
def result940 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2532, setValue1934)
def setValue2533 : Flapjack.NumSet := .bn setValue2528 setValue1981
def setValue2534 : Flapjack.NumSet := .bn setValue2527 setValue2533
def setValue2535 : Flapjack.NumSet := .bn setValue2534 setValue0
def setValue2536 : Flapjack.NumSet := .bn setValue0 setValue2535
def tree941 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [833] [])).val
theorem tree941_def : tree941 = (Flapjack.RegAlloc.ClashTree.delta [833] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal941 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [833] []
def live941 : Flapjack.NumSet := setValue2532
def coloured941 : Flapjack.NumSet := setValue1934
def result941 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2536, setValue1950)
def tree942 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree941 tree940)).val
theorem tree942_def : tree942 = (.seq tree941 tree940) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal942 : Flapjack.RegAlloc.ClashTree := .seq literal941 literal940
def live942 : Flapjack.NumSet := setValue0
def coloured942 : Flapjack.NumSet := setValue0
def result942 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2536, setValue1950)
def tree943 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree943_def : tree943 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal943 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live943 : Flapjack.NumSet := setValue2536
def coloured943 : Flapjack.NumSet := setValue1950
def result943 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2536, setValue1950)
def tree944 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree943 tree942)).val
theorem tree944_def : tree944 = (.seq tree943 tree942) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal944 : Flapjack.RegAlloc.ClashTree := .seq literal943 literal942
def live944 : Flapjack.NumSet := setValue0
def coloured944 : Flapjack.NumSet := setValue0
def result944 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2536, setValue1950)
def setValue2537 : Flapjack.NumSet := .bn setValue2525 setValue1957
def setValue2538 : Flapjack.NumSet := .bn setValue1972 setValue2537
def setValue2539 : Flapjack.NumSet := .bn setValue2538 setValue2533
def setValue2540 : Flapjack.NumSet := .bn setValue2539 setValue0
def setValue2541 : Flapjack.NumSet := .bn setValue0 setValue2540
def tree945 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [829] [821])).val
theorem tree945_def : tree945 = (Flapjack.RegAlloc.ClashTree.delta [829] [821]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal945 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [829] [821]
def live945 : Flapjack.NumSet := setValue2536
def coloured945 : Flapjack.NumSet := setValue1950
def result945 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2541, setValue1950)
def setValue2542 : Flapjack.NumSet := .bn setValue1973 setValue2533
def setValue2543 : Flapjack.NumSet := .bn setValue2542 setValue0
def setValue2544 : Flapjack.NumSet := .bn setValue0 setValue2543
def setValue2545 : Flapjack.NumSet := .bn setValue1948 setValue1932
def setValue2546 : Flapjack.NumSet := .bs setValue2545 () setValue0
def tree946 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [821] [])).val
theorem tree946_def : tree946 = (Flapjack.RegAlloc.ClashTree.delta [821] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal946 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [821] []
def live946 : Flapjack.NumSet := setValue2541
def coloured946 : Flapjack.NumSet := setValue1950
def result946 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2544, setValue2546)
def tree947 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree946 tree945)).val
theorem tree947_def : tree947 = (.seq tree946 tree945) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal947 : Flapjack.RegAlloc.ClashTree := .seq literal946 literal945
def live947 : Flapjack.NumSet := setValue2536
def coloured947 : Flapjack.NumSet := setValue1950
def result947 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2544, setValue2546)
def setValue2547 : Flapjack.NumSet := .bn setValue1979 setValue171
def setValue2548 : Flapjack.NumSet := .bn setValue2547 setValue2525
def setValue2549 : Flapjack.NumSet := .bn setValue2548 setValue1981
def setValue2550 : Flapjack.NumSet := .bn setValue1973 setValue2549
def setValue2551 : Flapjack.NumSet := .bn setValue2550 setValue0
def setValue2552 : Flapjack.NumSet := .bn setValue0 setValue2551
def tree948 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [829] [825])).val
theorem tree948_def : tree948 = (Flapjack.RegAlloc.ClashTree.delta [829] [825]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal948 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [829] [825]
def live948 : Flapjack.NumSet := setValue2536
def coloured948 : Flapjack.NumSet := setValue1950
def result948 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2552, setValue1950)
def tree949 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [825] [])).val
theorem tree949_def : tree949 = (Flapjack.RegAlloc.ClashTree.delta [825] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal949 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [825] []
def live949 : Flapjack.NumSet := setValue2552
def coloured949 : Flapjack.NumSet := setValue1950
def result949 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2544, setValue2546)
def tree950 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree949 tree948)).val
theorem tree950_def : tree950 = (.seq tree949 tree948) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal950 : Flapjack.RegAlloc.ClashTree := .seq literal949 literal948
def live950 : Flapjack.NumSet := setValue2536
def coloured950 : Flapjack.NumSet := setValue1950
def result950 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2544, setValue2546)
def tree951 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree947 tree950)).val
theorem tree951_def : tree951 = (.branch (none) tree947 tree950) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal951 : Flapjack.RegAlloc.ClashTree := .branch (none) literal947 literal950
def live951 : Flapjack.NumSet := setValue2536
def coloured951 : Flapjack.NumSet := setValue1950
def result951 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2544, setValue2546)
def setValue2553 : Flapjack.NumSet := .bn setValue1370 setValue1979
def setValue2554 : Flapjack.NumSet := .bn setValue2553 setValue172
def setValue2555 : Flapjack.NumSet := .bn setValue2528 setValue2554
def setValue2556 : Flapjack.NumSet := .bn setValue1973 setValue2555
def setValue2557 : Flapjack.NumSet := .bn setValue2556 setValue0
def setValue2558 : Flapjack.NumSet := .bn setValue0 setValue2557
def tree952 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [813, 817])).val
theorem tree952_def : tree952 = (Flapjack.RegAlloc.ClashTree.delta [] [813, 817]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal952 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [813, 817]
def live952 : Flapjack.NumSet := setValue2544
def coloured952 : Flapjack.NumSet := setValue2546
def result952 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2558, setValue1950)
def tree953 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree952 tree951)).val
theorem tree953_def : tree953 = (.seq tree952 tree951) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal953 : Flapjack.RegAlloc.ClashTree := .seq literal952 literal951
def live953 : Flapjack.NumSet := setValue2536
def coloured953 : Flapjack.NumSet := setValue1950
def result953 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2558, setValue1950)
def tree954 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree953 tree944)).val
theorem tree954_def : tree954 = (.seq tree953 tree944) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal954 : Flapjack.RegAlloc.ClashTree := .seq literal953 literal944
def live954 : Flapjack.NumSet := setValue0
def coloured954 : Flapjack.NumSet := setValue0
def result954 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2558, setValue1950)
def tree955 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [817] [])).val
theorem tree955_def : tree955 = (Flapjack.RegAlloc.ClashTree.delta [817] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal955 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [817] []
def live955 : Flapjack.NumSet := setValue2558
def coloured955 : Flapjack.NumSet := setValue1950
def result955 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2544, setValue2546)
def tree956 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree955 tree954)).val
theorem tree956_def : tree956 = (.seq tree955 tree954) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal956 : Flapjack.RegAlloc.ClashTree := .seq literal955 literal954
def live956 : Flapjack.NumSet := setValue0
def coloured956 : Flapjack.NumSet := setValue0
def result956 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2544, setValue2546)
def setValue2559 : Flapjack.NumSet := .bn setValue171 setValue1901
def setValue2560 : Flapjack.NumSet := .bn setValue359 setValue2559
def setValue2561 : Flapjack.NumSet := .bn setValue2560 setValue1958
def setValue2562 : Flapjack.NumSet := .bn setValue1909 setValue1901
def setValue2563 : Flapjack.NumSet := .bn setValue2562 setValue2525
def setValue2564 : Flapjack.NumSet := .bn setValue2563 setValue1981
def setValue2565 : Flapjack.NumSet := .bn setValue2561 setValue2564
def setValue2566 : Flapjack.NumSet := .bn setValue2565 setValue0
def setValue2567 : Flapjack.NumSet := .bn setValue0 setValue2566
def tree957 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [813] [793])).val
theorem tree957_def : tree957 = (Flapjack.RegAlloc.ClashTree.delta [813] [793]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal957 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [813] [793]
def live957 : Flapjack.NumSet := setValue2544
def coloured957 : Flapjack.NumSet := setValue2546
def result957 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2567, setValue2546)
def tree958 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree957 tree956)).val
theorem tree958_def : tree958 = (.seq tree957 tree956) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal958 : Flapjack.RegAlloc.ClashTree := .seq literal957 literal956
def live958 : Flapjack.NumSet := setValue0
def coloured958 : Flapjack.NumSet := setValue0
def result958 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2567, setValue2546)
def tree959 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree959_def : tree959 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal959 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live959 : Flapjack.NumSet := setValue2567
def coloured959 : Flapjack.NumSet := setValue2546
def result959 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2567, setValue2546)
def tree960 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree959 tree958)).val
theorem tree960_def : tree960 = (.seq tree959 tree958) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal960 : Flapjack.RegAlloc.ClashTree := .seq literal959 literal958
def live960 : Flapjack.NumSet := setValue0
def coloured960 : Flapjack.NumSet := setValue0
def result960 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2567, setValue2546)
def setValue2568 : Flapjack.NumSet := .bn setValue2562 setValue359
def setValue2569 : Flapjack.NumSet := .bn setValue1901 setValue0
def setValue2570 : Flapjack.NumSet := .bn setValue1980 setValue2569
def setValue2571 : Flapjack.NumSet := .bn setValue2568 setValue2570
def setValue2572 : Flapjack.NumSet := .bn setValue2561 setValue2571
def setValue2573 : Flapjack.NumSet := .bn setValue2572 setValue0
def setValue2574 : Flapjack.NumSet := .bn setValue0 setValue2573
def tree961 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [809] [801])).val
theorem tree961_def : tree961 = (Flapjack.RegAlloc.ClashTree.delta [809] [801]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal961 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [809] [801]
def live961 : Flapjack.NumSet := setValue2567
def coloured961 : Flapjack.NumSet := setValue2546
def result961 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2574, setValue2546)
def setValue2575 : Flapjack.NumSet := .bn setValue2568 setValue1981
def setValue2576 : Flapjack.NumSet := .bn setValue2561 setValue2575
def setValue2577 : Flapjack.NumSet := .bn setValue2576 setValue0
def setValue2578 : Flapjack.NumSet := .bn setValue0 setValue2577
def tree962 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [801] [])).val
theorem tree962_def : tree962 = (Flapjack.RegAlloc.ClashTree.delta [801] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal962 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [801] []
def live962 : Flapjack.NumSet := setValue2574
def coloured962 : Flapjack.NumSet := setValue2546
def result962 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2578, setValue1978)
def tree963 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree962 tree961)).val
theorem tree963_def : tree963 = (.seq tree962 tree961) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal963 : Flapjack.RegAlloc.ClashTree := .seq literal962 literal961
def live963 : Flapjack.NumSet := setValue2567
def coloured963 : Flapjack.NumSet := setValue2546
def result963 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2578, setValue1978)
def setValue2579 : Flapjack.NumSet := .bn setValue1979 setValue0
def setValue2580 : Flapjack.NumSet := .bn setValue359 setValue2579
def setValue2581 : Flapjack.NumSet := .bn setValue2560 setValue2580
def setValue2582 : Flapjack.NumSet := .bn setValue2581 setValue2575
def setValue2583 : Flapjack.NumSet := .bn setValue2582 setValue0
def setValue2584 : Flapjack.NumSet := .bn setValue0 setValue2583
def tree964 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [809] [805])).val
theorem tree964_def : tree964 = (Flapjack.RegAlloc.ClashTree.delta [809] [805]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal964 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [809] [805]
def live964 : Flapjack.NumSet := setValue2567
def coloured964 : Flapjack.NumSet := setValue2546
def result964 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2584, setValue2546)
def tree965 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [805] [])).val
theorem tree965_def : tree965 = (Flapjack.RegAlloc.ClashTree.delta [805] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal965 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [805] []
def live965 : Flapjack.NumSet := setValue2584
def coloured965 : Flapjack.NumSet := setValue2546
def result965 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2578, setValue1978)
def tree966 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree965 tree964)).val
theorem tree966_def : tree966 = (.seq tree965 tree964) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal966 : Flapjack.RegAlloc.ClashTree := .seq literal965 literal964
def live966 : Flapjack.NumSet := setValue2567
def coloured966 : Flapjack.NumSet := setValue2546
def result966 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2578, setValue1978)
def tree967 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree963 tree966)).val
theorem tree967_def : tree967 = (.branch (none) tree963 tree966) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal967 : Flapjack.RegAlloc.ClashTree := .branch (none) literal963 literal966
def live967 : Flapjack.NumSet := setValue2567
def coloured967 : Flapjack.NumSet := setValue2546
def result967 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2578, setValue1978)
def setValue2585 : Flapjack.NumSet := .bn setValue0 setValue1901
def setValue2586 : Flapjack.NumSet := .bn setValue2585 setValue2559
def setValue2587 : Flapjack.NumSet := .bn setValue2586 setValue1958
def setValue2588 : Flapjack.NumSet := .bn setValue2587 setValue2575
def setValue2589 : Flapjack.NumSet := .bn setValue2588 setValue0
def setValue2590 : Flapjack.NumSet := .bn setValue0 setValue2589
def tree968 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [793, 797])).val
theorem tree968_def : tree968 = (Flapjack.RegAlloc.ClashTree.delta [] [793, 797]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal968 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [793, 797]
def live968 : Flapjack.NumSet := setValue2578
def coloured968 : Flapjack.NumSet := setValue1978
def result968 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2590, setValue1965)
def tree969 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree968 tree967)).val
theorem tree969_def : tree969 = (.seq tree968 tree967) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal969 : Flapjack.RegAlloc.ClashTree := .seq literal968 literal967
def live969 : Flapjack.NumSet := setValue2567
def coloured969 : Flapjack.NumSet := setValue2546
def result969 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2590, setValue1965)
def tree970 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree969 tree960)).val
theorem tree970_def : tree970 = (.seq tree969 tree960) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal970 : Flapjack.RegAlloc.ClashTree := .seq literal969 literal960
def live970 : Flapjack.NumSet := setValue0
def coloured970 : Flapjack.NumSet := setValue0
def result970 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2590, setValue1965)
def tree971 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [797] [])).val
theorem tree971_def : tree971 = (Flapjack.RegAlloc.ClashTree.delta [797] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal971 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [797] []
def live971 : Flapjack.NumSet := setValue2590
def coloured971 : Flapjack.NumSet := setValue1965
def result971 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2578, setValue1978)
def tree972 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree971 tree970)).val
theorem tree972_def : tree972 = (.seq tree971 tree970) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal972 : Flapjack.RegAlloc.ClashTree := .seq literal971 literal970
def live972 : Flapjack.NumSet := setValue0
def coloured972 : Flapjack.NumSet := setValue0
def result972 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2578, setValue1978)
def setValue2591 : Flapjack.NumSet := .bn setValue2585 setValue1957
def setValue2592 : Flapjack.NumSet := .bn setValue2560 setValue2591
def setValue2593 : Flapjack.NumSet := .bn setValue2592 setValue1982
def setValue2594 : Flapjack.NumSet := .bn setValue2593 setValue0
def setValue2595 : Flapjack.NumSet := .bn setValue0 setValue2594
def tree973 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [793] [789])).val
theorem tree973_def : tree973 = (Flapjack.RegAlloc.ClashTree.delta [793] [789]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal973 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [793] [789]
def live973 : Flapjack.NumSet := setValue2578
def coloured973 : Flapjack.NumSet := setValue1978
def result973 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2595, setValue1978)
def tree974 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree973 tree972)).val
theorem tree974_def : tree974 = (.seq tree973 tree972) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal974 : Flapjack.RegAlloc.ClashTree := .seq literal973 literal972
def live974 : Flapjack.NumSet := setValue0
def coloured974 : Flapjack.NumSet := setValue0
def result974 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2595, setValue1978)
def setValue2596 : Flapjack.NumSet := .bn setValue2561 setValue1982
def setValue2597 : Flapjack.NumSet := .bn setValue2596 setValue0
def setValue2598 : Flapjack.NumSet := .bn setValue0 setValue2597
def setValue2599 : Flapjack.NumSet := .bn setValue0 setValue1271
def setValue2600 : Flapjack.NumSet := .bn setValue1918 setValue2599
def setValue2601 : Flapjack.NumSet := .bn setValue2600 setValue1963
def setValue2602 : Flapjack.NumSet := .bs setValue2601 () setValue0
def tree975 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [789] [785])).val
theorem tree975_def : tree975 = (Flapjack.RegAlloc.ClashTree.delta [789] [785]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal975 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [789] [785]
def live975 : Flapjack.NumSet := setValue2595
def coloured975 : Flapjack.NumSet := setValue1978
def result975 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2598, setValue2602)
def tree976 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree975 tree974)).val
theorem tree976_def : tree976 = (.seq tree975 tree974) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal976 : Flapjack.RegAlloc.ClashTree := .seq literal975 literal974
def live976 : Flapjack.NumSet := setValue0
def coloured976 : Flapjack.NumSet := setValue0
def result976 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2598, setValue2602)
def setValue2603 : Flapjack.NumSet := .bn setValue1910 setValue2375
def setValue2604 : Flapjack.NumSet := .bn setValue2603 setValue1937
def setValue2605 : Flapjack.NumSet := .bn setValue2561 setValue2604
def setValue2606 : Flapjack.NumSet := .bn setValue2605 setValue0
def setValue2607 : Flapjack.NumSet := .bn setValue0 setValue2606
def tree977 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [785] [681])).val
theorem tree977_def : tree977 = (Flapjack.RegAlloc.ClashTree.delta [785] [681]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal977 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [785] [681]
def live977 : Flapjack.NumSet := setValue2598
def coloured977 : Flapjack.NumSet := setValue2602
def result977 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2607, setValue2602)
def tree978 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree977 tree976)).val
theorem tree978_def : tree978 = (.seq tree977 tree976) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal978 : Flapjack.RegAlloc.ClashTree := .seq literal977 literal976
def live978 : Flapjack.NumSet := setValue0
def coloured978 : Flapjack.NumSet := setValue0
def result978 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2607, setValue2602)
def setValue2608 : Flapjack.NumSet := .bn setValue2376 setValue1958
def setValue2609 : Flapjack.NumSet := .bn setValue1910 setValue2559
def setValue2610 : Flapjack.NumSet := .bn setValue2609 setValue1937
def setValue2611 : Flapjack.NumSet := .bn setValue2608 setValue2610
def setValue2612 : Flapjack.NumSet := .bn setValue2611 setValue0
def setValue2613 : Flapjack.NumSet := .bn setValue0 setValue2612
def setValue2614 : Flapjack.NumSet := .bn setValue0 setValue1347
def setValue2615 : Flapjack.NumSet := .bn setValue1918 setValue2614
def setValue2616 : Flapjack.NumSet := .bs setValue2615 () setValue1963
def setValue2617 : Flapjack.NumSet := .bs setValue2616 () setValue0
def tree979 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [781] [777])).val
theorem tree979_def : tree979 = (Flapjack.RegAlloc.ClashTree.delta [781] [777]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal979 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [781] [777]
def live979 : Flapjack.NumSet := setValue2607
def coloured979 : Flapjack.NumSet := setValue2602
def result979 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2613, setValue2617)
def tree980 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree979 tree978)).val
theorem tree980_def : tree980 = (.seq tree979 tree978) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal980 : Flapjack.RegAlloc.ClashTree := .seq literal979 literal978
def live980 : Flapjack.NumSet := setValue0
def coloured980 : Flapjack.NumSet := setValue0
def result980 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2613, setValue2617)
def setValue2618 : Flapjack.NumSet := .bn setValue6 setValue171
def setValue2619 : Flapjack.NumSet := .bn setValue2618 setValue1957
def setValue2620 : Flapjack.NumSet := .bn setValue2376 setValue2619
def setValue2621 : Flapjack.NumSet := .bn setValue2620 setValue2604
def setValue2622 : Flapjack.NumSet := .bn setValue2621 setValue0
def setValue2623 : Flapjack.NumSet := .bn setValue0 setValue2622
def tree981 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [777] [757])).val
theorem tree981_def : tree981 = (Flapjack.RegAlloc.ClashTree.delta [777] [757]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal981 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [777] [757]
def live981 : Flapjack.NumSet := setValue2613
def coloured981 : Flapjack.NumSet := setValue2617
def result981 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2623, setValue2617)
def tree982 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree981 tree980)).val
theorem tree982_def : tree982 = (.seq tree981 tree980) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal982 : Flapjack.RegAlloc.ClashTree := .seq literal981 literal980
def live982 : Flapjack.NumSet := setValue0
def coloured982 : Flapjack.NumSet := setValue0
def result982 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2623, setValue2617)
def setValue2624 : Flapjack.NumSet := .bn setValue2375 setValue2375
def setValue2625 : Flapjack.NumSet := .bn setValue2624 setValue1937
def setValue2626 : Flapjack.NumSet := .bn setValue2620 setValue2625
def setValue2627 : Flapjack.NumSet := .bn setValue2626 setValue0
def setValue2628 : Flapjack.NumSet := .bn setValue0 setValue2627
def setValue2629 : Flapjack.NumSet := .bn setValue1533 setValue0
def setValue2630 : Flapjack.NumSet := .bn setValue2629 setValue1931
def setValue2631 : Flapjack.NumSet := .bs setValue2615 () setValue2630
def setValue2632 : Flapjack.NumSet := .bs setValue2631 () setValue0
def tree983 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [761] [757])).val
theorem tree983_def : tree983 = (Flapjack.RegAlloc.ClashTree.delta [761] [757]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal983 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [761] [757]
def live983 : Flapjack.NumSet := setValue2623
def coloured983 : Flapjack.NumSet := setValue2617
def result983 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2628, setValue2632)
def tree984 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree983 tree982)).val
theorem tree984_def : tree984 = (.seq tree983 tree982) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal984 : Flapjack.RegAlloc.ClashTree := .seq literal983 literal982
def live984 : Flapjack.NumSet := setValue0
def coloured984 : Flapjack.NumSet := setValue0
def result984 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2628, setValue2632)
def setValue2633 : Flapjack.NumSet := .bn setValue1936 setValue1957
def setValue2634 : Flapjack.NumSet := .bn setValue2624 setValue2633
def setValue2635 : Flapjack.NumSet := .bn setValue2608 setValue2634
def setValue2636 : Flapjack.NumSet := .bn setValue2635 setValue0
def setValue2637 : Flapjack.NumSet := .bn setValue0 setValue2636
def tree985 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [757] [737])).val
theorem tree985_def : tree985 = (Flapjack.RegAlloc.ClashTree.delta [757] [737]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal985 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [757] [737]
def live985 : Flapjack.NumSet := setValue2628
def coloured985 : Flapjack.NumSet := setValue2632
def result985 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2637, setValue2632)
def tree986 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree985 tree984)).val
theorem tree986_def : tree986 = (.seq tree985 tree984) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal986 : Flapjack.RegAlloc.ClashTree := .seq literal985 literal984
def live986 : Flapjack.NumSet := setValue0
def coloured986 : Flapjack.NumSet := setValue0
def result986 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2637, setValue2632)
def setValue2638 : Flapjack.NumSet := .bn setValue2376 setValue366
def setValue2639 : Flapjack.NumSet := .bn setValue2638 setValue2634
def setValue2640 : Flapjack.NumSet := .bn setValue2639 setValue0
def setValue2641 : Flapjack.NumSet := .bn setValue0 setValue2640
def setValue2642 : Flapjack.NumSet := .bn setValue834 setValue2614
def setValue2643 : Flapjack.NumSet := .bs setValue2642 () setValue2630
def setValue2644 : Flapjack.NumSet := .bs setValue2643 () setValue0
def tree987 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [741] [737])).val
theorem tree987_def : tree987 = (Flapjack.RegAlloc.ClashTree.delta [741] [737]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal987 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [741] [737]
def live987 : Flapjack.NumSet := setValue2637
def coloured987 : Flapjack.NumSet := setValue2632
def result987 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2641, setValue2644)
def tree988 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree987 tree986)).val
theorem tree988_def : tree988 = (.seq tree987 tree986) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal988 : Flapjack.RegAlloc.ClashTree := .seq literal987 literal986
def live988 : Flapjack.NumSet := setValue0
def coloured988 : Flapjack.NumSet := setValue0
def result988 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2641, setValue2644)
def setValue2645 : Flapjack.NumSet := .bn setValue171 setValue1909
def setValue2646 : Flapjack.NumSet := .bn setValue359 setValue2645
def setValue2647 : Flapjack.NumSet := .bn setValue2646 setValue366
def setValue2648 : Flapjack.NumSet := .bn setValue2647 setValue2625
def setValue2649 : Flapjack.NumSet := .bn setValue2648 setValue0
def setValue2650 : Flapjack.NumSet := .bn setValue0 setValue2649
def tree989 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [737] [717])).val
theorem tree989_def : tree989 = (Flapjack.RegAlloc.ClashTree.delta [737] [717]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal989 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [737] [717]
def live989 : Flapjack.NumSet := setValue2641
def coloured989 : Flapjack.NumSet := setValue2644
def result989 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2650, setValue2644)
def tree990 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree989 tree988)).val
theorem tree990_def : tree990 = (.seq tree989 tree988) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal990 : Flapjack.RegAlloc.ClashTree := .seq literal989 literal988
def live990 : Flapjack.NumSet := setValue0
def coloured990 : Flapjack.NumSet := setValue0
def result990 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2650, setValue2644)
def setValue2651 : Flapjack.NumSet := .bn setValue2624 setValue366
def setValue2652 : Flapjack.NumSet := .bn setValue2647 setValue2651
def setValue2653 : Flapjack.NumSet := .bn setValue2652 setValue0
def setValue2654 : Flapjack.NumSet := .bn setValue0 setValue2653
def setValue2655 : Flapjack.NumSet := .bn setValue0 setValue785
def setValue2656 : Flapjack.NumSet := .bn setValue2629 setValue2655
def setValue2657 : Flapjack.NumSet := .bs setValue2642 () setValue2656
def setValue2658 : Flapjack.NumSet := .bs setValue2657 () setValue0
def tree991 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [721] [717])).val
theorem tree991_def : tree991 = (Flapjack.RegAlloc.ClashTree.delta [721] [717]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal991 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [721] [717]
def live991 : Flapjack.NumSet := setValue2650
def coloured991 : Flapjack.NumSet := setValue2644
def result991 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2654, setValue2658)
def tree992 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree991 tree990)).val
theorem tree992_def : tree992 = (.seq tree991 tree990) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal992 : Flapjack.RegAlloc.ClashTree := .seq literal991 literal990
def live992 : Flapjack.NumSet := setValue0
def coloured992 : Flapjack.NumSet := setValue0
def result992 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2654, setValue2658)
def setValue2659 : Flapjack.NumSet := .bn setValue2375 setValue2645
def setValue2660 : Flapjack.NumSet := .bn setValue2659 setValue366
def setValue2661 : Flapjack.NumSet := .bn setValue2638 setValue2660
def setValue2662 : Flapjack.NumSet := .bn setValue2661 setValue0
def setValue2663 : Flapjack.NumSet := .bn setValue0 setValue2662
def tree993 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [717] [713])).val
theorem tree993_def : tree993 = (Flapjack.RegAlloc.ClashTree.delta [717] [713]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal993 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [717] [713]
def live993 : Flapjack.NumSet := setValue2654
def coloured993 : Flapjack.NumSet := setValue2658
def result993 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2663, setValue2658)
def tree994 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree993 tree992)).val
theorem tree994_def : tree994 = (.seq tree993 tree992) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal994 : Flapjack.RegAlloc.ClashTree := .seq literal993 literal992
def live994 : Flapjack.NumSet := setValue0
def coloured994 : Flapjack.NumSet := setValue0
def result994 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2663, setValue2658)
def setValue2664 : Flapjack.NumSet := .bn setValue359 setValue2321
def setValue2665 : Flapjack.NumSet := .bn setValue2376 setValue2664
def setValue2666 : Flapjack.NumSet := .bn setValue2665 setValue2651
def setValue2667 : Flapjack.NumSet := .bn setValue2666 setValue0
def setValue2668 : Flapjack.NumSet := .bn setValue0 setValue2667
def tree995 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [713] [709])).val
theorem tree995_def : tree995 = (Flapjack.RegAlloc.ClashTree.delta [713] [709]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal995 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [713] [709]
def live995 : Flapjack.NumSet := setValue2663
def coloured995 : Flapjack.NumSet := setValue2658
def result995 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2668, setValue2658)
def tree996 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree995 tree994)).val
theorem tree996_def : tree996 = (.seq tree995 tree994) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal996 : Flapjack.RegAlloc.ClashTree := .seq literal995 literal994
def live996 : Flapjack.NumSet := setValue0
def coloured996 : Flapjack.NumSet := setValue0
def result996 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2668, setValue2658)
def setValue2669 : Flapjack.NumSet := .bn setValue2624 setValue2664
def setValue2670 : Flapjack.NumSet := .bn setValue2638 setValue2669
def setValue2671 : Flapjack.NumSet := .bn setValue2670 setValue0
def setValue2672 : Flapjack.NumSet := .bn setValue0 setValue2671
def tree997 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [709] [705])).val
theorem tree997_def : tree997 = (Flapjack.RegAlloc.ClashTree.delta [709] [705]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal997 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [709] [705]
def live997 : Flapjack.NumSet := setValue2668
def coloured997 : Flapjack.NumSet := setValue2658
def result997 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2672, setValue2658)
def tree998 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree997 tree996)).val
theorem tree998_def : tree998 = (.seq tree997 tree996) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal998 : Flapjack.RegAlloc.ClashTree := .seq literal997 literal996
def live998 : Flapjack.NumSet := setValue0
def coloured998 : Flapjack.NumSet := setValue0
def result998 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2672, setValue2658)
def setValue2673 : Flapjack.NumSet := .bn setValue2638 setValue2651
def setValue2674 : Flapjack.NumSet := .bn setValue2673 setValue0
def setValue2675 : Flapjack.NumSet := .bn setValue0 setValue2674
def setValue2676 : Flapjack.NumSet := .bn setValue2642 setValue2656
def setValue2677 : Flapjack.NumSet := .bs setValue2676 () setValue0
def tree999 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [705] [])).val
theorem tree999_def : tree999 = (Flapjack.RegAlloc.ClashTree.delta [705] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal999 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [705] []
def live999 : Flapjack.NumSet := setValue2672
def coloured999 : Flapjack.NumSet := setValue2658
def result999 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2675, setValue2677)
def tree1000 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree999 tree998)).val
theorem tree1000_def : tree1000 = (.seq tree999 tree998) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1000 : Flapjack.RegAlloc.ClashTree := .seq literal999 literal998
def live1000 : Flapjack.NumSet := setValue0
def coloured1000 : Flapjack.NumSet := setValue0
def result1000 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2675, setValue2677)
def tree1001 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1001_def : tree1001 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1001 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1001 : Flapjack.NumSet := setValue2675
def coloured1001 : Flapjack.NumSet := setValue2677
def result1001 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2675, setValue2677)
def tree1002 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1001 tree1000)).val
theorem tree1002_def : tree1002 = (.seq tree1001 tree1000) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1002 : Flapjack.RegAlloc.ClashTree := .seq literal1001 literal1000
def live1002 : Flapjack.NumSet := setValue0
def coloured1002 : Flapjack.NumSet := setValue0
def result1002 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2675, setValue2677)
def setValue2678 : Flapjack.NumSet := .bn setValue506 setValue531
def setValue2679 : Flapjack.NumSet := .bn setValue659 setValue2678
def setValue2680 : Flapjack.NumSet := .bn setValue2679 setValue2679
def setValue2681 : Flapjack.NumSet := .bn setValue0 setValue2680
def setValue2682 : Flapjack.NumSet := .bn setValue1 setValue2681
def setValue2683 : Flapjack.NumSet := .bn setValue2392 setValue2655
def setValue2684 : Flapjack.NumSet := .bs setValue2642 () setValue2683
def setValue2685 : Flapjack.NumSet := .bn setValue2684 setValue0
def tree1003 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [697, 649, 653, 657, 661, 665, 669, 673, 677, 681, 685]
  [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643])).val
theorem tree1003_def : tree1003 = (Flapjack.RegAlloc.ClashTree.delta [697, 649, 653, 657, 661, 665, 669, 673, 677, 681, 685]
  [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1003 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [697, 649, 653, 657, 661, 665, 669, 673, 677, 681, 685]
  [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643]
def live1003 : Flapjack.NumSet := setValue2675
def coloured1003 : Flapjack.NumSet := setValue2677
def result1003 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2682, setValue2685)
def tree1004 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2682)).val
theorem tree1004_def : tree1004 = (.set setValue2682) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1004 : Flapjack.RegAlloc.ClashTree := .set setValue2682
def live1004 : Flapjack.NumSet := setValue2682
def coloured1004 : Flapjack.NumSet := setValue2685
def result1004 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2682, setValue2685)
def tree1005 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1004 tree1003)).val
theorem tree1005_def : tree1005 = (.seq tree1004 tree1003) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1005 : Flapjack.RegAlloc.ClashTree := .seq literal1004 literal1003
def live1005 : Flapjack.NumSet := setValue2675
def coloured1005 : Flapjack.NumSet := setValue2677
def result1005 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2682, setValue2685)
def setValue2686 : Flapjack.NumSet := .bn setValue1 setValue2674
def tree1006 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree1006_def : tree1006 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1006 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live1006 : Flapjack.NumSet := setValue2675
def coloured1006 : Flapjack.NumSet := setValue2677
def result1006 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2686, setValue2658)
def setValue2687 : Flapjack.NumSet := .bn setValue241 setValue2680
def setValue2688 : Flapjack.NumSet := .bn setValue1 setValue2687
def setValue2689 : Flapjack.NumSet := .bn setValue1533 setValue85
def setValue2690 : Flapjack.NumSet := .bn setValue2689 setValue2655
def setValue2691 : Flapjack.NumSet := .bs setValue2642 () setValue2690
def setValue2692 : Flapjack.NumSet := .bn setValue2691 setValue0
def tree1007 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 649, 653, 657, 661, 665, 669, 673, 677, 681, 685]
  [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643])).val
theorem tree1007_def : tree1007 = (Flapjack.RegAlloc.ClashTree.delta [2, 649, 653, 657, 661, 665, 669, 673, 677, 681, 685]
  [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1007 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 649, 653, 657, 661, 665, 669, 673, 677, 681, 685]
  [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643]
def live1007 : Flapjack.NumSet := setValue2686
def coloured1007 : Flapjack.NumSet := setValue2658
def result1007 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2688, setValue2692)
def tree1008 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1007 tree1006)).val
theorem tree1008_def : tree1008 = (.seq tree1007 tree1006) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1008 : Flapjack.RegAlloc.ClashTree := .seq literal1007 literal1006
def live1008 : Flapjack.NumSet := setValue2675
def coloured1008 : Flapjack.NumSet := setValue2677
def result1008 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2688, setValue2692)
def tree1009 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2682)).val
theorem tree1009_def : tree1009 = (.set setValue2682) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1009 : Flapjack.RegAlloc.ClashTree := .set setValue2682
def live1009 : Flapjack.NumSet := setValue2688
def coloured1009 : Flapjack.NumSet := setValue2692
def result1009 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2682, setValue2685)
def tree1010 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1009 tree1008)).val
theorem tree1010_def : tree1010 = (.seq tree1009 tree1008) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1010 : Flapjack.RegAlloc.ClashTree := .seq literal1009 literal1008
def live1010 : Flapjack.NumSet := setValue2675
def coloured1010 : Flapjack.NumSet := setValue2677
def result1010 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2682, setValue2685)
def tree1011 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2682) tree1005 tree1010)).val
theorem tree1011_def : tree1011 = (.branch (some setValue2682) tree1005 tree1010) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1011 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2682) literal1005 literal1010
def live1011 : Flapjack.NumSet := setValue2675
def coloured1011 : Flapjack.NumSet := setValue2677
def result1011 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2682, setValue2685)
def tree1012 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1011 tree1002)).val
theorem tree1012_def : tree1012 = (.seq tree1011 tree1002) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1012 : Flapjack.RegAlloc.ClashTree := .seq literal1011 literal1002
def live1012 : Flapjack.NumSet := setValue0
def coloured1012 : Flapjack.NumSet := setValue0
def result1012 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2682, setValue2685)
def setValue2693 : Flapjack.NumSet := .bn setValue1810 setValue1840
def setValue2694 : Flapjack.NumSet := .bn setValue1840 setValue1810
def setValue2695 : Flapjack.NumSet := .bn setValue2693 setValue2694
def setValue2696 : Flapjack.NumSet := .bn setValue2695 setValue0
def setValue2697 : Flapjack.NumSet := .bn setValue0 setValue2696
def setValue2698 : Flapjack.NumSet := .bn setValue4 setValue504
def setValue2699 : Flapjack.NumSet := .bs setValue2698 () setValue86
def setValue2700 : Flapjack.NumSet := .bs setValue2392 () setValue86
def setValue2701 : Flapjack.NumSet := .bn setValue2699 setValue2700
def setValue2702 : Flapjack.NumSet := .bs setValue2701 () setValue0
def tree1013 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643]
  [513, 497, 501, 505, 509, 553, 513, 517, 521, 525, 549])).val
theorem tree1013_def : tree1013 = (Flapjack.RegAlloc.ClashTree.delta [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643]
  [513, 497, 501, 505, 509, 553, 513, 517, 521, 525, 549]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1013 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 607, 611, 615, 619, 623, 627, 631, 635, 639, 643]
  [513, 497, 501, 505, 509, 553, 513, 517, 521, 525, 549]
def live1013 : Flapjack.NumSet := setValue2682
def coloured1013 : Flapjack.NumSet := setValue2685
def result1013 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1014 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1013 tree1012)).val
theorem tree1014_def : tree1014 = (.seq tree1013 tree1012) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1014 : Flapjack.RegAlloc.ClashTree := .seq literal1013 literal1012
def live1014 : Flapjack.NumSet := setValue0
def coloured1014 : Flapjack.NumSet := setValue0
def result1014 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1015 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1015_def : tree1015 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1015 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1015 : Flapjack.NumSet := setValue2697
def coloured1015 : Flapjack.NumSet := setValue2702
def result1015 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1016 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1015 tree1014)).val
theorem tree1016_def : tree1016 = (.seq tree1015 tree1014) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1016 : Flapjack.RegAlloc.ClashTree := .seq literal1015 literal1014
def live1016 : Flapjack.NumSet := setValue0
def coloured1016 : Flapjack.NumSet := setValue0
def result1016 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1017 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1017_def : tree1017 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1017 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1017 : Flapjack.NumSet := setValue2697
def coloured1017 : Flapjack.NumSet := setValue2702
def result1017 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1018 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1017 tree1016)).val
theorem tree1018_def : tree1018 = (.seq tree1017 tree1016) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1018 : Flapjack.RegAlloc.ClashTree := .seq literal1017 literal1016
def live1018 : Flapjack.NumSet := setValue0
def coloured1018 : Flapjack.NumSet := setValue0
def result1018 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def setValue2703 : Flapjack.NumSet := .bn setValue1 setValue2696
def setValue2704 : Flapjack.NumSet := .bs setValue2699 () setValue2700
def setValue2705 : Flapjack.NumSet := .bs setValue2704 () setValue0
def tree1019 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree1019_def : tree1019 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1019 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live1019 : Flapjack.NumSet := setValue2697
def coloured1019 : Flapjack.NumSet := setValue2702
def result1019 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2703, setValue2705)
def setValue2706 : Flapjack.NumSet := .bn setValue1725 setValue0
def setValue2707 : Flapjack.NumSet := .bn setValue2706 setValue1017
def setValue2708 : Flapjack.NumSet := .bn setValue2707 setValue1840
def setValue2709 : Flapjack.NumSet := .bn setValue2708 setValue2694
def setValue2710 : Flapjack.NumSet := .bn setValue2709 setValue0
def setValue2711 : Flapjack.NumSet := .bn setValue0 setValue2710
def tree1020 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [573])).val
theorem tree1020_def : tree1020 = (Flapjack.RegAlloc.ClashTree.delta [2] [573]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1020 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [573]
def live1020 : Flapjack.NumSet := setValue2703
def coloured1020 : Flapjack.NumSet := setValue2705
def result1020 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2711, setValue2705)
def tree1021 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1020 tree1019)).val
theorem tree1021_def : tree1021 = (.seq tree1020 tree1019) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1021 : Flapjack.RegAlloc.ClashTree := .seq literal1020 literal1019
def live1021 : Flapjack.NumSet := setValue2697
def coloured1021 : Flapjack.NumSet := setValue2702
def result1021 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2711, setValue2705)
def tree1022 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [573] [])).val
theorem tree1022_def : tree1022 = (Flapjack.RegAlloc.ClashTree.delta [573] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1022 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [573] []
def live1022 : Flapjack.NumSet := setValue2711
def coloured1022 : Flapjack.NumSet := setValue2705
def result1022 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1023 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1022 tree1021)).val
theorem tree1023_def : tree1023 = (.seq tree1022 tree1021) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1023 : Flapjack.RegAlloc.ClashTree := .seq literal1022 literal1021
def live1023 : Flapjack.NumSet := setValue2697
def coloured1023 : Flapjack.NumSet := setValue2702
def result1023 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def setValue2712 : Flapjack.NumSet := .bn setValue2706 setValue1829
def setValue2713 : Flapjack.NumSet := .bn setValue2712 setValue1810
def setValue2714 : Flapjack.NumSet := .bn setValue2693 setValue2713
def setValue2715 : Flapjack.NumSet := .bn setValue2714 setValue0
def setValue2716 : Flapjack.NumSet := .bn setValue0 setValue2715
def tree1024 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [569])).val
theorem tree1024_def : tree1024 = (Flapjack.RegAlloc.ClashTree.delta [] [569]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1024 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [569]
def live1024 : Flapjack.NumSet := setValue2697
def coloured1024 : Flapjack.NumSet := setValue2702
def result1024 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2716, setValue2705)
def tree1025 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1024 tree1023)).val
theorem tree1025_def : tree1025 = (.seq tree1024 tree1023) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1025 : Flapjack.RegAlloc.ClashTree := .seq literal1024 literal1023
def live1025 : Flapjack.NumSet := setValue2697
def coloured1025 : Flapjack.NumSet := setValue2702
def result1025 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2716, setValue2705)
def setValue2717 : Flapjack.NumSet := .bn setValue1810 setValue2712
def setValue2718 : Flapjack.NumSet := .bn setValue2717 setValue2694
def setValue2719 : Flapjack.NumSet := .bn setValue2718 setValue0
def setValue2720 : Flapjack.NumSet := .bn setValue0 setValue2719
def tree1026 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [569] [565])).val
theorem tree1026_def : tree1026 = (Flapjack.RegAlloc.ClashTree.delta [569] [565]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1026 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [569] [565]
def live1026 : Flapjack.NumSet := setValue2716
def coloured1026 : Flapjack.NumSet := setValue2705
def result1026 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2720, setValue2705)
def tree1027 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1026 tree1025)).val
theorem tree1027_def : tree1027 = (.seq tree1026 tree1025) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1027 : Flapjack.RegAlloc.ClashTree := .seq literal1026 literal1025
def live1027 : Flapjack.NumSet := setValue2697
def coloured1027 : Flapjack.NumSet := setValue2702
def result1027 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2720, setValue2705)
def tree1028 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [565] [])).val
theorem tree1028_def : tree1028 = (Flapjack.RegAlloc.ClashTree.delta [565] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1028 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [565] []
def live1028 : Flapjack.NumSet := setValue2720
def coloured1028 : Flapjack.NumSet := setValue2705
def result1028 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1029 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1028 tree1027)).val
theorem tree1029_def : tree1029 = (.seq tree1028 tree1027) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1029 : Flapjack.RegAlloc.ClashTree := .seq literal1028 literal1027
def live1029 : Flapjack.NumSet := setValue2697
def coloured1029 : Flapjack.NumSet := setValue2702
def result1029 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1030 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1030_def : tree1030 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1030 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1030 : Flapjack.NumSet := setValue2697
def coloured1030 : Flapjack.NumSet := setValue2702
def result1030 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1031 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1030 tree1029)).val
theorem tree1031_def : tree1031 = (.seq tree1030 tree1029) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1031 : Flapjack.RegAlloc.ClashTree := .seq literal1030 literal1029
def live1031 : Flapjack.NumSet := setValue2697
def coloured1031 : Flapjack.NumSet := setValue2702
def result1031 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1032 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1032_def : tree1032 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1032 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1032 : Flapjack.NumSet := setValue2697
def coloured1032 : Flapjack.NumSet := setValue2702
def result1032 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1033 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree1031 tree1032)).val
theorem tree1033_def : tree1033 = (.branch (none) tree1031 tree1032) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1033 : Flapjack.RegAlloc.ClashTree := .branch (none) literal1031 literal1032
def live1033 : Flapjack.NumSet := setValue2697
def coloured1033 : Flapjack.NumSet := setValue2702
def result1033 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1034 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [549, 553])).val
theorem tree1034_def : tree1034 = (Flapjack.RegAlloc.ClashTree.delta [] [549, 553]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1034 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [549, 553]
def live1034 : Flapjack.NumSet := setValue2697
def coloured1034 : Flapjack.NumSet := setValue2702
def result1034 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1035 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1034 tree1033)).val
theorem tree1035_def : tree1035 = (.seq tree1034 tree1033) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1035 : Flapjack.RegAlloc.ClashTree := .seq literal1034 literal1033
def live1035 : Flapjack.NumSet := setValue2697
def coloured1035 : Flapjack.NumSet := setValue2702
def result1035 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def tree1036 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1035 tree1018)).val
theorem tree1036_def : tree1036 = (.seq tree1035 tree1018) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1036 : Flapjack.RegAlloc.ClashTree := .seq literal1035 literal1018
def live1036 : Flapjack.NumSet := setValue0
def coloured1036 : Flapjack.NumSet := setValue0
def result1036 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2697, setValue2702)
def setValue2721 : Flapjack.NumSet := .bn setValue2193 setValue1847
def setValue2722 : Flapjack.NumSet := .bn setValue2721 setValue0
def setValue2723 : Flapjack.NumSet := .bn setValue0 setValue2722
def tree1037 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [553, 549] [545, 529])).val
theorem tree1037_def : tree1037 = (Flapjack.RegAlloc.ClashTree.delta [553, 549] [545, 529]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1037 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [553, 549] [545, 529]
def live1037 : Flapjack.NumSet := setValue2697
def coloured1037 : Flapjack.NumSet := setValue2702
def result1037 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2723, setValue2702)
def tree1038 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1037 tree1036)).val
theorem tree1038_def : tree1038 = (.seq tree1037 tree1036) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1038 : Flapjack.RegAlloc.ClashTree := .seq literal1037 literal1036
def live1038 : Flapjack.NumSet := setValue0
def coloured1038 : Flapjack.NumSet := setValue0
def result1038 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2723, setValue2702)
def tree1039 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1039_def : tree1039 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1039 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1039 : Flapjack.NumSet := setValue2723
def coloured1039 : Flapjack.NumSet := setValue2702
def result1039 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2723, setValue2702)
def tree1040 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1039 tree1038)).val
theorem tree1040_def : tree1040 = (.seq tree1039 tree1038) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1040 : Flapjack.RegAlloc.ClashTree := .seq literal1039 literal1038
def live1040 : Flapjack.NumSet := setValue0
def coloured1040 : Flapjack.NumSet := setValue0
def result1040 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2723, setValue2702)
def setValue2724 : Flapjack.NumSet := .bn setValue1870 setValue1870
def setValue2725 : Flapjack.NumSet := .bn setValue1871 setValue2724
def setValue2726 : Flapjack.NumSet := .bn setValue0 setValue2725
def setValue2727 : Flapjack.NumSet := .bn setValue1 setValue2726
def setValue2728 : Flapjack.NumSet := .bn setValue834 setValue86
def setValue2729 : Flapjack.NumSet := .bn setValue2392 setValue155
def setValue2730 : Flapjack.NumSet := .bs setValue2728 () setValue2729
def setValue2731 : Flapjack.NumSet := .bn setValue2730 setValue0
def tree1041 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [545, 497, 501, 505, 509, 513, 517, 521, 525, 529]
  [2, 459, 463, 467, 471, 475, 479, 483, 487, 491])).val
theorem tree1041_def : tree1041 = (Flapjack.RegAlloc.ClashTree.delta [545, 497, 501, 505, 509, 513, 517, 521, 525, 529]
  [2, 459, 463, 467, 471, 475, 479, 483, 487, 491]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1041 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [545, 497, 501, 505, 509, 513, 517, 521, 525, 529]
  [2, 459, 463, 467, 471, 475, 479, 483, 487, 491]
def live1041 : Flapjack.NumSet := setValue2723
def coloured1041 : Flapjack.NumSet := setValue2702
def result1041 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2727, setValue2731)
def tree1042 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2727)).val
theorem tree1042_def : tree1042 = (.set setValue2727) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1042 : Flapjack.RegAlloc.ClashTree := .set setValue2727
def live1042 : Flapjack.NumSet := setValue2727
def coloured1042 : Flapjack.NumSet := setValue2731
def result1042 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2727, setValue2731)
def tree1043 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1042 tree1041)).val
theorem tree1043_def : tree1043 = (.seq tree1042 tree1041) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1043 : Flapjack.RegAlloc.ClashTree := .seq literal1042 literal1041
def live1043 : Flapjack.NumSet := setValue2723
def coloured1043 : Flapjack.NumSet := setValue2702
def result1043 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2727, setValue2731)
def setValue2732 : Flapjack.NumSet := .bn setValue1 setValue2722
def tree1044 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree1044_def : tree1044 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1044 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live1044 : Flapjack.NumSet := setValue2723
def coloured1044 : Flapjack.NumSet := setValue2702
def result1044 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2732, setValue2705)
def setValue2733 : Flapjack.NumSet := .bn setValue963 setValue2725
def setValue2734 : Flapjack.NumSet := .bn setValue1 setValue2733
def setValue2735 : Flapjack.NumSet := .bs setValue2730 () setValue0
def tree1045 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 497, 501, 505, 509, 513, 517, 521, 525, 529]
  [2, 459, 463, 467, 471, 475, 479, 483, 487, 491])).val
theorem tree1045_def : tree1045 = (Flapjack.RegAlloc.ClashTree.delta [2, 497, 501, 505, 509, 513, 517, 521, 525, 529]
  [2, 459, 463, 467, 471, 475, 479, 483, 487, 491]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1045 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 497, 501, 505, 509, 513, 517, 521, 525, 529]
  [2, 459, 463, 467, 471, 475, 479, 483, 487, 491]
def live1045 : Flapjack.NumSet := setValue2732
def coloured1045 : Flapjack.NumSet := setValue2705
def result1045 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2734, setValue2735)
def tree1046 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1045 tree1044)).val
theorem tree1046_def : tree1046 = (.seq tree1045 tree1044) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1046 : Flapjack.RegAlloc.ClashTree := .seq literal1045 literal1044
def live1046 : Flapjack.NumSet := setValue2723
def coloured1046 : Flapjack.NumSet := setValue2702
def result1046 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2734, setValue2735)
def tree1047 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2727)).val
theorem tree1047_def : tree1047 = (.set setValue2727) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1047 : Flapjack.RegAlloc.ClashTree := .set setValue2727
def live1047 : Flapjack.NumSet := setValue2734
def coloured1047 : Flapjack.NumSet := setValue2735
def result1047 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2727, setValue2731)
def tree1048 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1047 tree1046)).val
theorem tree1048_def : tree1048 = (.seq tree1047 tree1046) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1048 : Flapjack.RegAlloc.ClashTree := .seq literal1047 literal1046
def live1048 : Flapjack.NumSet := setValue2723
def coloured1048 : Flapjack.NumSet := setValue2702
def result1048 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2727, setValue2731)
def tree1049 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2727) tree1043 tree1048)).val
theorem tree1049_def : tree1049 = (.branch (some setValue2727) tree1043 tree1048) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1049 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2727) literal1043 literal1048
def live1049 : Flapjack.NumSet := setValue2723
def coloured1049 : Flapjack.NumSet := setValue2702
def result1049 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2727, setValue2731)
def tree1050 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1049 tree1040)).val
theorem tree1050_def : tree1050 = (.seq tree1049 tree1040) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1050 : Flapjack.RegAlloc.ClashTree := .seq literal1049 literal1040
def live1050 : Flapjack.NumSet := setValue0
def coloured1050 : Flapjack.NumSet := setValue0
def result1050 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2727, setValue2731)
def setValue2736 : Flapjack.NumSet := .bn setValue504 setValue5
def setValue2737 : Flapjack.NumSet := .bn setValue2736 setValue505
def setValue2738 : Flapjack.NumSet := .bn setValue2737 setValue2525
def setValue2739 : Flapjack.NumSet := .bn setValue504 setValue86
def setValue2740 : Flapjack.NumSet := .bn setValue2739 setValue6
def setValue2741 : Flapjack.NumSet := .bn setValue359 setValue2740
def setValue2742 : Flapjack.NumSet := .bn setValue2738 setValue2741
def setValue2743 : Flapjack.NumSet := .bn setValue2742 setValue0
def setValue2744 : Flapjack.NumSet := .bn setValue0 setValue2743
def setValue2745 : Flapjack.NumSet := .bs setValue5 () setValue1
def setValue2746 : Flapjack.NumSet := .bs setValue85 () setValue0
def setValue2747 : Flapjack.NumSet := .bs setValue88 () setValue2746
def setValue2748 : Flapjack.NumSet := .bn setValue2745 setValue2747
def setValue2749 : Flapjack.NumSet := .bs setValue2748 () setValue0
def tree1051 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 459, 463, 467, 471, 475, 479, 483, 487, 491]
  [325, 301, 305, 401, 405, 317, 349, 353, 325, 329])).val
theorem tree1051_def : tree1051 = (Flapjack.RegAlloc.ClashTree.delta [2, 459, 463, 467, 471, 475, 479, 483, 487, 491]
  [325, 301, 305, 401, 405, 317, 349, 353, 325, 329]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1051 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 459, 463, 467, 471, 475, 479, 483, 487, 491]
  [325, 301, 305, 401, 405, 317, 349, 353, 325, 329]
def live1051 : Flapjack.NumSet := setValue2727
def coloured1051 : Flapjack.NumSet := setValue2731
def result1051 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1052 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1051 tree1050)).val
theorem tree1052_def : tree1052 = (.seq tree1051 tree1050) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1052 : Flapjack.RegAlloc.ClashTree := .seq literal1051 literal1050
def live1052 : Flapjack.NumSet := setValue0
def coloured1052 : Flapjack.NumSet := setValue0
def result1052 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1053 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1053_def : tree1053 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1053 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1053 : Flapjack.NumSet := setValue2744
def coloured1053 : Flapjack.NumSet := setValue2749
def result1053 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1054 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1053 tree1052)).val
theorem tree1054_def : tree1054 = (.seq tree1053 tree1052) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1054 : Flapjack.RegAlloc.ClashTree := .seq literal1053 literal1052
def live1054 : Flapjack.NumSet := setValue0
def coloured1054 : Flapjack.NumSet := setValue0
def result1054 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1055 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1055_def : tree1055 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1055 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1055 : Flapjack.NumSet := setValue2744
def coloured1055 : Flapjack.NumSet := setValue2749
def result1055 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1056 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1055 tree1054)).val
theorem tree1056_def : tree1056 = (.seq tree1055 tree1054) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1056 : Flapjack.RegAlloc.ClashTree := .seq literal1055 literal1054
def live1056 : Flapjack.NumSet := setValue0
def coloured1056 : Flapjack.NumSet := setValue0
def result1056 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def setValue2750 : Flapjack.NumSet := .bn setValue1 setValue2743
def setValue2751 : Flapjack.NumSet := .bs setValue2745 () setValue2747
def setValue2752 : Flapjack.NumSet := .bs setValue2751 () setValue0
def tree1057 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree1057_def : tree1057 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1057 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live1057 : Flapjack.NumSet := setValue2744
def coloured1057 : Flapjack.NumSet := setValue2749
def result1057 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2750, setValue2752)
def setValue2753 : Flapjack.NumSet := .bn setValue1899 setValue2740
def setValue2754 : Flapjack.NumSet := .bn setValue2738 setValue2753
def setValue2755 : Flapjack.NumSet := .bn setValue2754 setValue0
def setValue2756 : Flapjack.NumSet := .bn setValue0 setValue2755
def tree1058 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [425])).val
theorem tree1058_def : tree1058 = (Flapjack.RegAlloc.ClashTree.delta [2] [425]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1058 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [425]
def live1058 : Flapjack.NumSet := setValue2750
def coloured1058 : Flapjack.NumSet := setValue2752
def result1058 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2756, setValue2752)
def tree1059 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1058 tree1057)).val
theorem tree1059_def : tree1059 = (.seq tree1058 tree1057) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1059 : Flapjack.RegAlloc.ClashTree := .seq literal1058 literal1057
def live1059 : Flapjack.NumSet := setValue2744
def coloured1059 : Flapjack.NumSet := setValue2749
def result1059 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2756, setValue2752)
def tree1060 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [425] [])).val
theorem tree1060_def : tree1060 = (Flapjack.RegAlloc.ClashTree.delta [425] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1060 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [425] []
def live1060 : Flapjack.NumSet := setValue2756
def coloured1060 : Flapjack.NumSet := setValue2752
def result1060 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1061 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1060 tree1059)).val
theorem tree1061_def : tree1061 = (.seq tree1060 tree1059) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1061 : Flapjack.RegAlloc.ClashTree := .seq literal1060 literal1059
def live1061 : Flapjack.NumSet := setValue2744
def coloured1061 : Flapjack.NumSet := setValue2749
def result1061 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def setValue2757 : Flapjack.NumSet := .bn setValue1370 setValue1898
def setValue2758 : Flapjack.NumSet := .bn setValue2737 setValue2757
def setValue2759 : Flapjack.NumSet := .bn setValue2758 setValue2741
def setValue2760 : Flapjack.NumSet := .bn setValue2759 setValue0
def setValue2761 : Flapjack.NumSet := .bn setValue0 setValue2760
def tree1062 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [421])).val
theorem tree1062_def : tree1062 = (Flapjack.RegAlloc.ClashTree.delta [] [421]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1062 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [421]
def live1062 : Flapjack.NumSet := setValue2744
def coloured1062 : Flapjack.NumSet := setValue2749
def result1062 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2761, setValue2752)
def tree1063 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1062 tree1061)).val
theorem tree1063_def : tree1063 = (.seq tree1062 tree1061) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1063 : Flapjack.RegAlloc.ClashTree := .seq literal1062 literal1061
def live1063 : Flapjack.NumSet := setValue2744
def coloured1063 : Flapjack.NumSet := setValue2749
def result1063 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2761, setValue2752)
def setValue2762 : Flapjack.NumSet := .bn setValue88 setValue0
def setValue2763 : Flapjack.NumSet := .bn setValue2739 setValue2762
def setValue2764 : Flapjack.NumSet := .bn setValue359 setValue2763
def setValue2765 : Flapjack.NumSet := .bn setValue2738 setValue2764
def setValue2766 : Flapjack.NumSet := .bn setValue2765 setValue0
def setValue2767 : Flapjack.NumSet := .bn setValue0 setValue2766
def tree1064 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [421] [417])).val
theorem tree1064_def : tree1064 = (Flapjack.RegAlloc.ClashTree.delta [421] [417]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1064 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [421] [417]
def live1064 : Flapjack.NumSet := setValue2761
def coloured1064 : Flapjack.NumSet := setValue2752
def result1064 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2767, setValue2752)
def tree1065 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1064 tree1063)).val
theorem tree1065_def : tree1065 = (.seq tree1064 tree1063) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1065 : Flapjack.RegAlloc.ClashTree := .seq literal1064 literal1063
def live1065 : Flapjack.NumSet := setValue2744
def coloured1065 : Flapjack.NumSet := setValue2749
def result1065 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2767, setValue2752)
def tree1066 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [417] [])).val
theorem tree1066_def : tree1066 = (Flapjack.RegAlloc.ClashTree.delta [417] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1066 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [417] []
def live1066 : Flapjack.NumSet := setValue2767
def coloured1066 : Flapjack.NumSet := setValue2752
def result1066 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1067 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1066 tree1065)).val
theorem tree1067_def : tree1067 = (.seq tree1066 tree1065) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1067 : Flapjack.RegAlloc.ClashTree := .seq literal1066 literal1065
def live1067 : Flapjack.NumSet := setValue2744
def coloured1067 : Flapjack.NumSet := setValue2749
def result1067 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1068 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1068_def : tree1068 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1068 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1068 : Flapjack.NumSet := setValue2744
def coloured1068 : Flapjack.NumSet := setValue2749
def result1068 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1069 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1068 tree1067)).val
theorem tree1069_def : tree1069 = (.seq tree1068 tree1067) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1069 : Flapjack.RegAlloc.ClashTree := .seq literal1068 literal1067
def live1069 : Flapjack.NumSet := setValue2744
def coloured1069 : Flapjack.NumSet := setValue2749
def result1069 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1070 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1070_def : tree1070 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1070 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1070 : Flapjack.NumSet := setValue2744
def coloured1070 : Flapjack.NumSet := setValue2749
def result1070 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1071 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree1069 tree1070)).val
theorem tree1071_def : tree1071 = (.branch (none) tree1069 tree1070) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1071 : Flapjack.RegAlloc.ClashTree := .branch (none) literal1069 literal1070
def live1071 : Flapjack.NumSet := setValue2744
def coloured1071 : Flapjack.NumSet := setValue2749
def result1071 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1072 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [401, 405])).val
theorem tree1072_def : tree1072 = (Flapjack.RegAlloc.ClashTree.delta [] [401, 405]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1072 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [401, 405]
def live1072 : Flapjack.NumSet := setValue2744
def coloured1072 : Flapjack.NumSet := setValue2749
def result1072 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1073 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1072 tree1071)).val
theorem tree1073_def : tree1073 = (.seq tree1072 tree1071) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1073 : Flapjack.RegAlloc.ClashTree := .seq literal1072 literal1071
def live1073 : Flapjack.NumSet := setValue2744
def coloured1073 : Flapjack.NumSet := setValue2749
def result1073 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def tree1074 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1073 tree1056)).val
theorem tree1074_def : tree1074 = (.seq tree1073 tree1056) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1074 : Flapjack.RegAlloc.ClashTree := .seq literal1073 literal1056
def live1074 : Flapjack.NumSet := setValue0
def coloured1074 : Flapjack.NumSet := setValue0
def result1074 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2744, setValue2749)
def setValue2768 : Flapjack.NumSet := .bn setValue2737 setValue531
def setValue2769 : Flapjack.NumSet := .bn setValue505 setValue6
def setValue2770 : Flapjack.NumSet := .bn setValue531 setValue2769
def setValue2771 : Flapjack.NumSet := .bn setValue2768 setValue2770
def setValue2772 : Flapjack.NumSet := .bn setValue2771 setValue0
def setValue2773 : Flapjack.NumSet := .bn setValue0 setValue2772
def tree1075 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [405, 401] [313, 309])).val
theorem tree1075_def : tree1075 = (Flapjack.RegAlloc.ClashTree.delta [405, 401] [313, 309]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1075 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [405, 401] [313, 309]
def live1075 : Flapjack.NumSet := setValue2744
def coloured1075 : Flapjack.NumSet := setValue2749
def result1075 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1076 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1075 tree1074)).val
theorem tree1076_def : tree1076 = (.seq tree1075 tree1074) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1076 : Flapjack.RegAlloc.ClashTree := .seq literal1075 literal1074
def live1076 : Flapjack.NumSet := setValue0
def coloured1076 : Flapjack.NumSet := setValue0
def result1076 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1077 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1077_def : tree1077 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1077 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1077 : Flapjack.NumSet := setValue2773
def coloured1077 : Flapjack.NumSet := setValue2749
def result1077 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1078 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1077 tree1076)).val
theorem tree1078_def : tree1078 = (.seq tree1077 tree1076) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1078 : Flapjack.RegAlloc.ClashTree := .seq literal1077 literal1076
def live1078 : Flapjack.NumSet := setValue0
def coloured1078 : Flapjack.NumSet := setValue0
def result1078 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1079 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1079_def : tree1079 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1079 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1079 : Flapjack.NumSet := setValue2773
def coloured1079 : Flapjack.NumSet := setValue2749
def result1079 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1080 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1079 tree1078)).val
theorem tree1080_def : tree1080 = (.seq tree1079 tree1078) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1080 : Flapjack.RegAlloc.ClashTree := .seq literal1079 literal1078
def live1080 : Flapjack.NumSet := setValue0
def coloured1080 : Flapjack.NumSet := setValue0
def result1080 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def setValue2774 : Flapjack.NumSet := .bn setValue1 setValue2772
def tree1081 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree1081_def : tree1081 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1081 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live1081 : Flapjack.NumSet := setValue2773
def coloured1081 : Flapjack.NumSet := setValue2749
def result1081 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2774, setValue2752)
def setValue2775 : Flapjack.NumSet := .bn setValue1802 setValue0
def setValue2776 : Flapjack.NumSet := .bn setValue2775 setValue171
def setValue2777 : Flapjack.NumSet := .bn setValue2737 setValue2776
def setValue2778 : Flapjack.NumSet := .bn setValue2777 setValue2770
def setValue2779 : Flapjack.NumSet := .bn setValue2778 setValue0
def setValue2780 : Flapjack.NumSet := .bn setValue0 setValue2779
def tree1082 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [373])).val
theorem tree1082_def : tree1082 = (Flapjack.RegAlloc.ClashTree.delta [2] [373]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1082 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [373]
def live1082 : Flapjack.NumSet := setValue2774
def coloured1082 : Flapjack.NumSet := setValue2752
def result1082 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2780, setValue2752)
def tree1083 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1082 tree1081)).val
theorem tree1083_def : tree1083 = (.seq tree1082 tree1081) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1083 : Flapjack.RegAlloc.ClashTree := .seq literal1082 literal1081
def live1083 : Flapjack.NumSet := setValue2773
def coloured1083 : Flapjack.NumSet := setValue2749
def result1083 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2780, setValue2752)
def tree1084 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [373] [])).val
theorem tree1084_def : tree1084 = (Flapjack.RegAlloc.ClashTree.delta [373] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1084 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [373] []
def live1084 : Flapjack.NumSet := setValue2780
def coloured1084 : Flapjack.NumSet := setValue2752
def result1084 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1085 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1084 tree1083)).val
theorem tree1085_def : tree1085 = (.seq tree1084 tree1083) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1085 : Flapjack.RegAlloc.ClashTree := .seq literal1084 literal1083
def live1085 : Flapjack.NumSet := setValue2773
def coloured1085 : Flapjack.NumSet := setValue2749
def result1085 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def setValue2781 : Flapjack.NumSet := .bn setValue2775 setValue6
def setValue2782 : Flapjack.NumSet := .bn setValue531 setValue2781
def setValue2783 : Flapjack.NumSet := .bn setValue2768 setValue2782
def setValue2784 : Flapjack.NumSet := .bn setValue2783 setValue0
def setValue2785 : Flapjack.NumSet := .bn setValue0 setValue2784
def tree1086 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [369])).val
theorem tree1086_def : tree1086 = (Flapjack.RegAlloc.ClashTree.delta [] [369]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1086 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [369]
def live1086 : Flapjack.NumSet := setValue2773
def coloured1086 : Flapjack.NumSet := setValue2749
def result1086 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2785, setValue2752)
def tree1087 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1086 tree1085)).val
theorem tree1087_def : tree1087 = (.seq tree1086 tree1085) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1087 : Flapjack.RegAlloc.ClashTree := .seq literal1086 literal1085
def live1087 : Flapjack.NumSet := setValue2773
def coloured1087 : Flapjack.NumSet := setValue2749
def result1087 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2785, setValue2752)
def setValue2786 : Flapjack.NumSet := .bn setValue2736 setValue2775
def setValue2787 : Flapjack.NumSet := .bn setValue2786 setValue531
def setValue2788 : Flapjack.NumSet := .bn setValue2787 setValue2770
def setValue2789 : Flapjack.NumSet := .bn setValue2788 setValue0
def setValue2790 : Flapjack.NumSet := .bn setValue0 setValue2789
def tree1088 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [369] [365])).val
theorem tree1088_def : tree1088 = (Flapjack.RegAlloc.ClashTree.delta [369] [365]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1088 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [369] [365]
def live1088 : Flapjack.NumSet := setValue2785
def coloured1088 : Flapjack.NumSet := setValue2752
def result1088 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2790, setValue2752)
def tree1089 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1088 tree1087)).val
theorem tree1089_def : tree1089 = (.seq tree1088 tree1087) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1089 : Flapjack.RegAlloc.ClashTree := .seq literal1088 literal1087
def live1089 : Flapjack.NumSet := setValue2773
def coloured1089 : Flapjack.NumSet := setValue2749
def result1089 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2790, setValue2752)
def tree1090 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [365] [])).val
theorem tree1090_def : tree1090 = (Flapjack.RegAlloc.ClashTree.delta [365] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1090 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [365] []
def live1090 : Flapjack.NumSet := setValue2790
def coloured1090 : Flapjack.NumSet := setValue2752
def result1090 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1091 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1090 tree1089)).val
theorem tree1091_def : tree1091 = (.seq tree1090 tree1089) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1091 : Flapjack.RegAlloc.ClashTree := .seq literal1090 literal1089
def live1091 : Flapjack.NumSet := setValue2773
def coloured1091 : Flapjack.NumSet := setValue2749
def result1091 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1092 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1092_def : tree1092 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1092 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1092 : Flapjack.NumSet := setValue2773
def coloured1092 : Flapjack.NumSet := setValue2749
def result1092 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1093 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1092 tree1091)).val
theorem tree1093_def : tree1093 = (.seq tree1092 tree1091) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1093 : Flapjack.RegAlloc.ClashTree := .seq literal1092 literal1091
def live1093 : Flapjack.NumSet := setValue2773
def coloured1093 : Flapjack.NumSet := setValue2749
def result1093 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1094 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1094_def : tree1094 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1094 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1094 : Flapjack.NumSet := setValue2773
def coloured1094 : Flapjack.NumSet := setValue2749
def result1094 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1095 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree1093 tree1094)).val
theorem tree1095_def : tree1095 = (.branch (none) tree1093 tree1094) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1095 : Flapjack.RegAlloc.ClashTree := .branch (none) literal1093 literal1094
def live1095 : Flapjack.NumSet := setValue2773
def coloured1095 : Flapjack.NumSet := setValue2749
def result1095 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1096 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [349, 353])).val
theorem tree1096_def : tree1096 = (Flapjack.RegAlloc.ClashTree.delta [] [349, 353]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1096 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [349, 353]
def live1096 : Flapjack.NumSet := setValue2773
def coloured1096 : Flapjack.NumSet := setValue2749
def result1096 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1097 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1096 tree1095)).val
theorem tree1097_def : tree1097 = (.seq tree1096 tree1095) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1097 : Flapjack.RegAlloc.ClashTree := .seq literal1096 literal1095
def live1097 : Flapjack.NumSet := setValue2773
def coloured1097 : Flapjack.NumSet := setValue2749
def result1097 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def tree1098 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1097 tree1080)).val
theorem tree1098_def : tree1098 = (.seq tree1097 tree1080) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1098 : Flapjack.RegAlloc.ClashTree := .seq literal1097 literal1080
def live1098 : Flapjack.NumSet := setValue0
def coloured1098 : Flapjack.NumSet := setValue0
def result1098 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2773, setValue2749)
def setValue2791 : Flapjack.NumSet := .bn setValue2736 setValue171
def setValue2792 : Flapjack.NumSet := .bn setValue2059 setValue2791
def setValue2793 : Flapjack.NumSet := .bn setValue531 setValue531
def setValue2794 : Flapjack.NumSet := .bn setValue2792 setValue2793
def setValue2795 : Flapjack.NumSet := .bn setValue2794 setValue0
def setValue2796 : Flapjack.NumSet := .bn setValue0 setValue2795
def tree1099 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [353, 349] [341, 321])).val
theorem tree1099_def : tree1099 = (Flapjack.RegAlloc.ClashTree.delta [353, 349] [341, 321]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1099 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [353, 349] [341, 321]
def live1099 : Flapjack.NumSet := setValue2773
def coloured1099 : Flapjack.NumSet := setValue2749
def result1099 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2796, setValue2749)
def tree1100 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1099 tree1098)).val
theorem tree1100_def : tree1100 = (.seq tree1099 tree1098) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1100 : Flapjack.RegAlloc.ClashTree := .seq literal1099 literal1098
def live1100 : Flapjack.NumSet := setValue0
def coloured1100 : Flapjack.NumSet := setValue0
def result1100 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2796, setValue2749)
def tree1101 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree1101_def : tree1101 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1101 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live1101 : Flapjack.NumSet := setValue2796
def coloured1101 : Flapjack.NumSet := setValue2749
def result1101 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2796, setValue2749)
def tree1102 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1101 tree1100)).val
theorem tree1102_def : tree1102 = (.seq tree1101 tree1100) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1102 : Flapjack.RegAlloc.ClashTree := .seq literal1101 literal1100
def live1102 : Flapjack.NumSet := setValue0
def coloured1102 : Flapjack.NumSet := setValue0
def result1102 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2796, setValue2749)
def setValue2797 : Flapjack.NumSet := .bn setValue1829 setValue815
def setValue2798 : Flapjack.NumSet := .bn setValue815 setValue815
def setValue2799 : Flapjack.NumSet := .bn setValue2797 setValue2798
def setValue2800 : Flapjack.NumSet := .bn setValue0 setValue2799
def setValue2801 : Flapjack.NumSet := .bn setValue1 setValue2800
def setValue2802 : Flapjack.NumSet := .bs setValue156 () setValue156
def setValue2803 : Flapjack.NumSet := .bn setValue2802 setValue0
def tree1103 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [341, 301, 305, 309, 313, 317, 321, 325, 329]
  [2, 267, 271, 275, 279, 283, 287, 291, 295])).val
theorem tree1103_def : tree1103 = (Flapjack.RegAlloc.ClashTree.delta [341, 301, 305, 309, 313, 317, 321, 325, 329]
  [2, 267, 271, 275, 279, 283, 287, 291, 295]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1103 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [341, 301, 305, 309, 313, 317, 321, 325, 329]
  [2, 267, 271, 275, 279, 283, 287, 291, 295]
def live1103 : Flapjack.NumSet := setValue2796
def coloured1103 : Flapjack.NumSet := setValue2749
def result1103 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2801, setValue2803)
def tree1104 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2801)).val
theorem tree1104_def : tree1104 = (.set setValue2801) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1104 : Flapjack.RegAlloc.ClashTree := .set setValue2801
def live1104 : Flapjack.NumSet := setValue2801
def coloured1104 : Flapjack.NumSet := setValue2803
def result1104 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2801, setValue2803)
def tree1105 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1104 tree1103)).val
theorem tree1105_def : tree1105 = (.seq tree1104 tree1103) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1105 : Flapjack.RegAlloc.ClashTree := .seq literal1104 literal1103
def live1105 : Flapjack.NumSet := setValue2796
def coloured1105 : Flapjack.NumSet := setValue2749
def result1105 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2801, setValue2803)
def setValue2804 : Flapjack.NumSet := .bn setValue1 setValue2795
def tree1106 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree1106_def : tree1106 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1106 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live1106 : Flapjack.NumSet := setValue2796
def coloured1106 : Flapjack.NumSet := setValue2749
def result1106 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2804, setValue2752)
def setValue2805 : Flapjack.NumSet := .bn setValue266 setValue2799
def setValue2806 : Flapjack.NumSet := .bn setValue1 setValue2805
def setValue2807 : Flapjack.NumSet := .bs setValue156 () setValue259
def setValue2808 : Flapjack.NumSet := .bn setValue2807 setValue0
def tree1107 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 301, 305, 309, 313, 317, 321, 325, 329]
  [2, 267, 271, 275, 279, 283, 287, 291, 295])).val
theorem tree1107_def : tree1107 = (Flapjack.RegAlloc.ClashTree.delta [2, 301, 305, 309, 313, 317, 321, 325, 329]
  [2, 267, 271, 275, 279, 283, 287, 291, 295]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1107 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 301, 305, 309, 313, 317, 321, 325, 329]
  [2, 267, 271, 275, 279, 283, 287, 291, 295]
def live1107 : Flapjack.NumSet := setValue2804
def coloured1107 : Flapjack.NumSet := setValue2752
def result1107 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2806, setValue2808)
def tree1108 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1107 tree1106)).val
theorem tree1108_def : tree1108 = (.seq tree1107 tree1106) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1108 : Flapjack.RegAlloc.ClashTree := .seq literal1107 literal1106
def live1108 : Flapjack.NumSet := setValue2796
def coloured1108 : Flapjack.NumSet := setValue2749
def result1108 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2806, setValue2808)
def tree1109 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2801)).val
theorem tree1109_def : tree1109 = (.set setValue2801) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1109 : Flapjack.RegAlloc.ClashTree := .set setValue2801
def live1109 : Flapjack.NumSet := setValue2806
def coloured1109 : Flapjack.NumSet := setValue2808
def result1109 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2801, setValue2803)
def tree1110 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1109 tree1108)).val
theorem tree1110_def : tree1110 = (.seq tree1109 tree1108) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1110 : Flapjack.RegAlloc.ClashTree := .seq literal1109 literal1108
def live1110 : Flapjack.NumSet := setValue2796
def coloured1110 : Flapjack.NumSet := setValue2749
def result1110 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2801, setValue2803)
def setValue2809 : Flapjack.NumSet := .bn setValue2 setValue2800
def setValue2810 : Flapjack.NumSet := .bs setValue156 () setValue168
def setValue2811 : Flapjack.NumSet := .bn setValue2810 setValue0
def tree1111 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2809) tree1105 tree1110)).val
theorem tree1111_def : tree1111 = (.branch (some setValue2809) tree1105 tree1110) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1111 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2809) literal1105 literal1110
def live1111 : Flapjack.NumSet := setValue2796
def coloured1111 : Flapjack.NumSet := setValue2749
def result1111 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2809, setValue2811)
def tree1112 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1111 tree1102)).val
theorem tree1112_def : tree1112 = (.seq tree1111 tree1102) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1112 : Flapjack.RegAlloc.ClashTree := .seq literal1111 literal1102
def live1112 : Flapjack.NumSet := setValue0
def coloured1112 : Flapjack.NumSet := setValue0
def result1112 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2809, setValue2811)
def setValue2812 : Flapjack.NumSet := .bn setValue155 setValue810
def setValue2813 : Flapjack.NumSet := .bn setValue6 setValue2812
def setValue2814 : Flapjack.NumSet := .bn setValue5 setValue504
def setValue2815 : Flapjack.NumSet := .bn setValue0 setValue2000
def setValue2816 : Flapjack.NumSet := .bn setValue1114 setValue2815
def setValue2817 : Flapjack.NumSet := .bn setValue2814 setValue2816
def setValue2818 : Flapjack.NumSet := .bn setValue2813 setValue2817
def setValue2819 : Flapjack.NumSet := .bn setValue2818 setValue0
def setValue2820 : Flapjack.NumSet := .bn setValue0 setValue2819
def setValue2821 : Flapjack.NumSet := .bs setValue350 () setValue0
def tree1113 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2, 4, 267, 271, 275, 279, 283, 287, 291, 295]
  [261, 257, 129, 189, 213, 257, 137, 185, 245, 241])).val
theorem tree1113_def : tree1113 = (Flapjack.RegAlloc.ClashTree.delta [2, 4, 267, 271, 275, 279, 283, 287, 291, 295]
  [261, 257, 129, 189, 213, 257, 137, 185, 245, 241]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1113 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2, 4, 267, 271, 275, 279, 283, 287, 291, 295]
  [261, 257, 129, 189, 213, 257, 137, 185, 245, 241]
def live1113 : Flapjack.NumSet := setValue2809
def coloured1113 : Flapjack.NumSet := setValue2811
def result1113 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2820, setValue2821)
def tree1114 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1113 tree1112)).val
theorem tree1114_def : tree1114 = (.seq tree1113 tree1112) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1114 : Flapjack.RegAlloc.ClashTree := .seq literal1113 literal1112
def live1114 : Flapjack.NumSet := setValue0
def coloured1114 : Flapjack.NumSet := setValue0
def result1114 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2820, setValue2821)
def setValue2822 : Flapjack.NumSet := .bn setValue155 setValue0
def setValue2823 : Flapjack.NumSet := .bn setValue6 setValue2822
def setValue2824 : Flapjack.NumSet := .bn setValue2823 setValue2817
def setValue2825 : Flapjack.NumSet := .bn setValue2824 setValue0
def setValue2826 : Flapjack.NumSet := .bn setValue0 setValue2825
def setValue2827 : Flapjack.NumSet := .bs setValue1610 () setValue0
def tree1115 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [261] [])).val
theorem tree1115_def : tree1115 = (Flapjack.RegAlloc.ClashTree.delta [261] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1115 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [261] []
def live1115 : Flapjack.NumSet := setValue2820
def coloured1115 : Flapjack.NumSet := setValue2821
def result1115 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2826, setValue2827)
def tree1116 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1115 tree1114)).val
theorem tree1116_def : tree1116 = (.seq tree1115 tree1114) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1116 : Flapjack.RegAlloc.ClashTree := .seq literal1115 literal1114
def live1116 : Flapjack.NumSet := setValue0
def coloured1116 : Flapjack.NumSet := setValue0
def result1116 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2826, setValue2827)
def setValue2828 : Flapjack.NumSet := .bn setValue784 setValue0
def setValue2829 : Flapjack.NumSet := .bn setValue2828 setValue504
def setValue2830 : Flapjack.NumSet := .bn setValue1114 setValue504
def setValue2831 : Flapjack.NumSet := .bn setValue2829 setValue2830
def setValue2832 : Flapjack.NumSet := .bn setValue2823 setValue2831
def setValue2833 : Flapjack.NumSet := .bn setValue2832 setValue0
def setValue2834 : Flapjack.NumSet := .bn setValue0 setValue2833
def tree1117 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [257] [249])).val
theorem tree1117_def : tree1117 = (Flapjack.RegAlloc.ClashTree.delta [257] [249]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1117 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [257] [249]
def live1117 : Flapjack.NumSet := setValue2826
def coloured1117 : Flapjack.NumSet := setValue2827
def result1117 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2834, setValue2827)
def tree1118 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1117 tree1116)).val
theorem tree1118_def : tree1118 = (.seq tree1117 tree1116) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1118 : Flapjack.RegAlloc.ClashTree := .seq literal1117 literal1116
def live1118 : Flapjack.NumSet := setValue0
def coloured1118 : Flapjack.NumSet := setValue0
def result1118 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2834, setValue2827)
def setValue2835 : Flapjack.NumSet := .bn setValue2814 setValue2830
def setValue2836 : Flapjack.NumSet := .bn setValue2823 setValue2835
def setValue2837 : Flapjack.NumSet := .bn setValue2836 setValue0
def setValue2838 : Flapjack.NumSet := .bn setValue0 setValue2837
def setValue2839 : Flapjack.NumSet := .bn setValue64 setValue1216
def setValue2840 : Flapjack.NumSet := .bs setValue2839 () setValue0
def tree1119 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [249] [245])).val
theorem tree1119_def : tree1119 = (Flapjack.RegAlloc.ClashTree.delta [249] [245]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1119 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [249] [245]
def live1119 : Flapjack.NumSet := setValue2834
def coloured1119 : Flapjack.NumSet := setValue2827
def result1119 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2838, setValue2840)
def tree1120 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1119 tree1118)).val
theorem tree1120_def : tree1120 = (.seq tree1119 tree1118) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1120 : Flapjack.RegAlloc.ClashTree := .seq literal1119 literal1118
def live1120 : Flapjack.NumSet := setValue0
def coloured1120 : Flapjack.NumSet := setValue0
def result1120 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2838, setValue2840)
def setValue2841 : Flapjack.NumSet := .bn setValue86 setValue504
def setValue2842 : Flapjack.NumSet := .bn setValue6 setValue2841
def setValue2843 : Flapjack.NumSet := .bn setValue2842 setValue2835
def setValue2844 : Flapjack.NumSet := .bn setValue2843 setValue0
def setValue2845 : Flapjack.NumSet := .bn setValue0 setValue2844
def setValue2846 : Flapjack.NumSet := .bs setValue64 () setValue785
def setValue2847 : Flapjack.NumSet := .bs setValue2846 () setValue0
def tree1121 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [245] [133])).val
theorem tree1121_def : tree1121 = (Flapjack.RegAlloc.ClashTree.delta [245] [133]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1121 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [245] [133]
def live1121 : Flapjack.NumSet := setValue2838
def coloured1121 : Flapjack.NumSet := setValue2840
def result1121 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2845, setValue2847)
def tree1122 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1121 tree1120)).val
theorem tree1122_def : tree1122 = (.seq tree1121 tree1120) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1122 : Flapjack.RegAlloc.ClashTree := .seq literal1121 literal1120
def live1122 : Flapjack.NumSet := setValue0
def coloured1122 : Flapjack.NumSet := setValue0
def result1122 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2845, setValue2847)
def setValue2848 : Flapjack.NumSet := .bn setValue5 setValue1114
def setValue2849 : Flapjack.NumSet := .bn setValue2848 setValue2841
def setValue2850 : Flapjack.NumSet := .bn setValue88 setValue504
def setValue2851 : Flapjack.NumSet := .bn setValue2850 setValue810
def setValue2852 : Flapjack.NumSet := .bn setValue2849 setValue2851
def setValue2853 : Flapjack.NumSet := .bn setValue2852 setValue0
def setValue2854 : Flapjack.NumSet := .bn setValue0 setValue2853
def setValue2855 : Flapjack.NumSet := .bs setValue64 () setValue64
def setValue2856 : Flapjack.NumSet := .bs setValue2855 () setValue0
def tree1123 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [241] [217, 237])).val
theorem tree1123_def : tree1123 = (Flapjack.RegAlloc.ClashTree.delta [241] [217, 237]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1123 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [241] [217, 237]
def live1123 : Flapjack.NumSet := setValue2845
def coloured1123 : Flapjack.NumSet := setValue2847
def result1123 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2854, setValue2856)
def tree1124 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1123 tree1122)).val
theorem tree1124_def : tree1124 = (.seq tree1123 tree1122) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1124 : Flapjack.RegAlloc.ClashTree := .seq literal1123 literal1122
def live1124 : Flapjack.NumSet := setValue0
def coloured1124 : Flapjack.NumSet := setValue0
def result1124 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2854, setValue2856)
def setValue2857 : Flapjack.NumSet := .bn setValue85 setValue4
def setValue2858 : Flapjack.NumSet := .bn setValue88 setValue2857
def setValue2859 : Flapjack.NumSet := .bn setValue2858 setValue810
def setValue2860 : Flapjack.NumSet := .bn setValue2842 setValue2859
def setValue2861 : Flapjack.NumSet := .bn setValue2860 setValue0
def setValue2862 : Flapjack.NumSet := .bn setValue0 setValue2861
def tree1125 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [237] [233])).val
theorem tree1125_def : tree1125 = (Flapjack.RegAlloc.ClashTree.delta [237] [233]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1125 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [237] [233]
def live1125 : Flapjack.NumSet := setValue2854
def coloured1125 : Flapjack.NumSet := setValue2856
def result1125 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2862, setValue2856)
def tree1126 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1125 tree1124)).val
theorem tree1126_def : tree1126 = (.seq tree1125 tree1124) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1126 : Flapjack.RegAlloc.ClashTree := .seq literal1125 literal1124
def live1126 : Flapjack.NumSet := setValue0
def coloured1126 : Flapjack.NumSet := setValue0
def result1126 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2862, setValue2856)
def setValue2863 : Flapjack.NumSet := .bn setValue87 setValue2841
def setValue2864 : Flapjack.NumSet := .bn setValue2863 setValue2851
def setValue2865 : Flapjack.NumSet := .bn setValue2864 setValue0
def setValue2866 : Flapjack.NumSet := .bn setValue0 setValue2865
def tree1127 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [233] [205])).val
theorem tree1127_def : tree1127 = (Flapjack.RegAlloc.ClashTree.delta [233] [205]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1127 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [233] [205]
def live1127 : Flapjack.NumSet := setValue2862
def coloured1127 : Flapjack.NumSet := setValue2856
def result1127 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2866, setValue2856)
def tree1128 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1127 tree1126)).val
theorem tree1128_def : tree1128 = (.seq tree1127 tree1126) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1128 : Flapjack.RegAlloc.ClashTree := .seq literal1127 literal1126
def live1128 : Flapjack.NumSet := setValue0
def coloured1128 : Flapjack.NumSet := setValue0
def result1128 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2866, setValue2856)
def setValue2867 : Flapjack.NumSet := .bn setValue2814 setValue810
def setValue2868 : Flapjack.NumSet := .bn setValue2863 setValue2867
def setValue2869 : Flapjack.NumSet := .bn setValue2868 setValue0
def setValue2870 : Flapjack.NumSet := .bn setValue0 setValue2869
def setValue2871 : Flapjack.NumSet := .bs setValue64 () setValue354
def setValue2872 : Flapjack.NumSet := .bs setValue2871 () setValue0
def tree1129 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [217] [])).val
theorem tree1129_def : tree1129 = (Flapjack.RegAlloc.ClashTree.delta [217] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1129 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [217] []
def live1129 : Flapjack.NumSet := setValue2866
def coloured1129 : Flapjack.NumSet := setValue2856
def result1129 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2870, setValue2872)
def tree1130 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1129 tree1128)).val
theorem tree1130_def : tree1130 = (.seq tree1129 tree1128) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1130 : Flapjack.RegAlloc.ClashTree := .seq literal1129 literal1128
def live1130 : Flapjack.NumSet := setValue0
def coloured1130 : Flapjack.NumSet := setValue0
def result1130 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2870, setValue2872)
def setValue2873 : Flapjack.NumSet := .bn setValue87 setValue810
def setValue2874 : Flapjack.NumSet := .bn setValue2814 setValue2841
def setValue2875 : Flapjack.NumSet := .bn setValue2873 setValue2874
def setValue2876 : Flapjack.NumSet := .bn setValue2875 setValue0
def setValue2877 : Flapjack.NumSet := .bn setValue0 setValue2876
def setValue2878 : Flapjack.NumSet := .bs setValue64 () setValue2
def setValue2879 : Flapjack.NumSet := .bs setValue2878 () setValue0
def tree1131 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [213] [189, 209])).val
theorem tree1131_def : tree1131 = (Flapjack.RegAlloc.ClashTree.delta [213] [189, 209]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1131 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [213] [189, 209]
def live1131 : Flapjack.NumSet := setValue2870
def coloured1131 : Flapjack.NumSet := setValue2872
def result1131 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2877, setValue2879)
def tree1132 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1131 tree1130)).val
theorem tree1132_def : tree1132 = (.seq tree1131 tree1130) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1132 : Flapjack.RegAlloc.ClashTree := .seq literal1131 literal1130
def live1132 : Flapjack.NumSet := setValue0
def coloured1132 : Flapjack.NumSet := setValue0
def result1132 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2877, setValue2879)
def setValue2880 : Flapjack.NumSet := .bn setValue2873 setValue2867
def setValue2881 : Flapjack.NumSet := .bn setValue2880 setValue0
def setValue2882 : Flapjack.NumSet := .bn setValue0 setValue2881
def setValue2883 : Flapjack.NumSet := .bs setValue64 () setValue1
def setValue2884 : Flapjack.NumSet := .bs setValue2883 () setValue0
def tree1133 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [209] [205])).val
theorem tree1133_def : tree1133 = (Flapjack.RegAlloc.ClashTree.delta [209] [205]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1133 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [209] [205]
def live1133 : Flapjack.NumSet := setValue2877
def coloured1133 : Flapjack.NumSet := setValue2879
def result1133 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2882, setValue2884)
def tree1134 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1133 tree1132)).val
theorem tree1134_def : tree1134 = (.seq tree1133 tree1132) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1134 : Flapjack.RegAlloc.ClashTree := .seq literal1133 literal1132
def live1134 : Flapjack.NumSet := setValue0
def coloured1134 : Flapjack.NumSet := setValue0
def result1134 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2882, setValue2884)
def setValue2885 : Flapjack.NumSet := .bn setValue5 setValue1802
def setValue2886 : Flapjack.NumSet := .bn setValue2814 setValue2885
def setValue2887 : Flapjack.NumSet := .bn setValue1017 setValue2886
def setValue2888 : Flapjack.NumSet := .bn setValue2887 setValue0
def setValue2889 : Flapjack.NumSet := .bn setValue0 setValue2888
def tree1135 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [205, 189] [177, 161])).val
theorem tree1135_def : tree1135 = (Flapjack.RegAlloc.ClashTree.delta [205, 189] [177, 161]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1135 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [205, 189] [177, 161]
def live1135 : Flapjack.NumSet := setValue2882
def coloured1135 : Flapjack.NumSet := setValue2884
def result1135 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2889, setValue2884)
def tree1136 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1135 tree1134)).val
theorem tree1136_def : tree1136 = (.seq tree1135 tree1134) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1136 : Flapjack.RegAlloc.ClashTree := .seq literal1135 literal1134
def live1136 : Flapjack.NumSet := setValue0
def coloured1136 : Flapjack.NumSet := setValue0
def result1136 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2889, setValue2884)
def setValue2890 : Flapjack.NumSet := .bn setValue0 setValue2814
def setValue2891 : Flapjack.NumSet := .bn setValue810 setValue2885
def setValue2892 : Flapjack.NumSet := .bn setValue2890 setValue2891
def setValue2893 : Flapjack.NumSet := .bn setValue2892 setValue0
def setValue2894 : Flapjack.NumSet := .bn setValue0 setValue2893
def tree1137 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [185] [161, 181])).val
theorem tree1137_def : tree1137 = (Flapjack.RegAlloc.ClashTree.delta [185] [161, 181]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1137 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [185] [161, 181]
def live1137 : Flapjack.NumSet := setValue2889
def coloured1137 : Flapjack.NumSet := setValue2884
def result1137 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2894, setValue42)
def tree1138 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1137 tree1136)).val
theorem tree1138_def : tree1138 = (.seq tree1137 tree1136) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1138 : Flapjack.RegAlloc.ClashTree := .seq literal1137 literal1136
def live1138 : Flapjack.NumSet := setValue0
def coloured1138 : Flapjack.NumSet := setValue0
def result1138 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2894, setValue42)
def setValue2895 : Flapjack.NumSet := .bn setValue1017 setValue2891
def setValue2896 : Flapjack.NumSet := .bn setValue2895 setValue0
def setValue2897 : Flapjack.NumSet := .bn setValue0 setValue2896
def setValue2898 : Flapjack.NumSet := .bs setValue2 () setValue1
def setValue2899 : Flapjack.NumSet := .bs setValue2898 () setValue0
def tree1139 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [181] [177])).val
theorem tree1139_def : tree1139 = (Flapjack.RegAlloc.ClashTree.delta [181] [177]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1139 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [181] [177]
def live1139 : Flapjack.NumSet := setValue2894
def coloured1139 : Flapjack.NumSet := setValue42
def result1139 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2897, setValue2899)
def tree1140 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1139 tree1138)).val
theorem tree1140_def : tree1140 = (.seq tree1139 tree1138) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1140 : Flapjack.RegAlloc.ClashTree := .seq literal1139 literal1138
def live1140 : Flapjack.NumSet := setValue0
def coloured1140 : Flapjack.NumSet := setValue0
def result1140 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2897, setValue2899)
def setValue2900 : Flapjack.NumSet := .bn setValue171 setValue810
def setValue2901 : Flapjack.NumSet := .bn setValue0 setValue1802
def setValue2902 : Flapjack.NumSet := .bn setValue810 setValue2901
def setValue2903 : Flapjack.NumSet := .bn setValue2900 setValue2902
def setValue2904 : Flapjack.NumSet := .bn setValue2903 setValue0
def setValue2905 : Flapjack.NumSet := .bn setValue0 setValue2904
def tree1141 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [177] [173])).val
theorem tree1141_def : tree1141 = (Flapjack.RegAlloc.ClashTree.delta [177] [173]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1141 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [177] [173]
def live1141 : Flapjack.NumSet := setValue2897
def coloured1141 : Flapjack.NumSet := setValue2899
def result1141 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2905, setValue2899)
def tree1142 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1141 tree1140)).val
theorem tree1142_def : tree1142 = (.seq tree1141 tree1140) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1142 : Flapjack.RegAlloc.ClashTree := .seq literal1141 literal1140
def live1142 : Flapjack.NumSet := setValue0
def coloured1142 : Flapjack.NumSet := setValue0
def result1142 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2905, setValue2899)
def setValue2906 : Flapjack.NumSet := .bn setValue504 setValue504
def setValue2907 : Flapjack.NumSet := .bn setValue505 setValue2906
def setValue2908 : Flapjack.NumSet := .bn setValue2907 setValue1829
def setValue2909 : Flapjack.NumSet := .bn setValue2908 setValue0
def setValue2910 : Flapjack.NumSet := .bn setValue0 setValue2909
def tree1143 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [173, 161] [149, 157])).val
theorem tree1143_def : tree1143 = (Flapjack.RegAlloc.ClashTree.delta [173, 161] [149, 157]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1143 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [173, 161] [149, 157]
def live1143 : Flapjack.NumSet := setValue2905
def coloured1143 : Flapjack.NumSet := setValue2899
def result1143 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2910, setValue2899)
def tree1144 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1143 tree1142)).val
theorem tree1144_def : tree1144 = (.seq tree1143 tree1142) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1144 : Flapjack.RegAlloc.ClashTree := .seq literal1143 literal1142
def live1144 : Flapjack.NumSet := setValue0
def coloured1144 : Flapjack.NumSet := setValue0
def result1144 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2910, setValue2899)
def setValue2911 : Flapjack.NumSet := .bn setValue0 setValue2906
def setValue2912 : Flapjack.NumSet := .bn setValue2906 setValue810
def setValue2913 : Flapjack.NumSet := .bn setValue2911 setValue2912
def setValue2914 : Flapjack.NumSet := .bn setValue2913 setValue0
def setValue2915 : Flapjack.NumSet := .bn setValue0 setValue2914
def tree1145 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [157] [153])).val
theorem tree1145_def : tree1145 = (Flapjack.RegAlloc.ClashTree.delta [157] [153]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1145 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [157] [153]
def live1145 : Flapjack.NumSet := setValue2910
def coloured1145 : Flapjack.NumSet := setValue2899
def result1145 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2915, setValue2899)
def tree1146 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1145 tree1144)).val
theorem tree1146_def : tree1146 = (.seq tree1145 tree1144) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1146 : Flapjack.RegAlloc.ClashTree := .seq literal1145 literal1144
def live1146 : Flapjack.NumSet := setValue0
def coloured1146 : Flapjack.NumSet := setValue0
def result1146 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2915, setValue2899)
def setValue2916 : Flapjack.NumSet := .bn setValue2911 setValue1829
def setValue2917 : Flapjack.NumSet := .bn setValue2916 setValue0
def setValue2918 : Flapjack.NumSet := .bn setValue0 setValue2917
def setValue2919 : Flapjack.NumSet := .bs setValue4 () setValue1
def setValue2920 : Flapjack.NumSet := .bs setValue2919 () setValue0
def tree1147 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [153] [149])).val
theorem tree1147_def : tree1147 = (Flapjack.RegAlloc.ClashTree.delta [153] [149]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1147 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [153] [149]
def live1147 : Flapjack.NumSet := setValue2915
def coloured1147 : Flapjack.NumSet := setValue2899
def result1147 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2918, setValue2920)
def tree1148 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1147 tree1146)).val
theorem tree1148_def : tree1148 = (.seq tree1147 tree1146) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1148 : Flapjack.RegAlloc.ClashTree := .seq literal1147 literal1146
def live1148 : Flapjack.NumSet := setValue0
def coloured1148 : Flapjack.NumSet := setValue0
def result1148 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2918, setValue2920)
def setValue2921 : Flapjack.NumSet := .bn setValue810 setValue2906
def setValue2922 : Flapjack.NumSet := .bn setValue1017 setValue2921
def setValue2923 : Flapjack.NumSet := .bn setValue2922 setValue0
def setValue2924 : Flapjack.NumSet := .bn setValue0 setValue2923
def tree1149 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [149] [145])).val
theorem tree1149_def : tree1149 = (Flapjack.RegAlloc.ClashTree.delta [149] [145]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1149 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [149] [145]
def live1149 : Flapjack.NumSet := setValue2918
def coloured1149 : Flapjack.NumSet := setValue2920
def result1149 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2924, setValue2920)
def tree1150 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1149 tree1148)).val
theorem tree1150_def : tree1150 = (.seq tree1149 tree1148) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1150 : Flapjack.RegAlloc.ClashTree := .seq literal1149 literal1148
def live1150 : Flapjack.NumSet := setValue0
def coloured1150 : Flapjack.NumSet := setValue0
def result1150 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2924, setValue2920)
def setValue2925 : Flapjack.NumSet := .bn setValue1829 setValue1829
def setValue2926 : Flapjack.NumSet := .bn setValue2925 setValue0
def setValue2927 : Flapjack.NumSet := .bn setValue0 setValue2926
def tree1151 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [145] [141])).val
theorem tree1151_def : tree1151 = (Flapjack.RegAlloc.ClashTree.delta [145] [141]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1151 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [145] [141]
def live1151 : Flapjack.NumSet := setValue2924
def coloured1151 : Flapjack.NumSet := setValue2920
def result1151 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2927, setValue2920)
def tree1152 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1151 tree1150)).val
theorem tree1152_def : tree1152 = (.seq tree1151 tree1150) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1152 : Flapjack.RegAlloc.ClashTree := .seq literal1151 literal1150
def live1152 : Flapjack.NumSet := setValue0
def coloured1152 : Flapjack.NumSet := setValue0
def result1152 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2927, setValue2920)
def setValue2928 : Flapjack.NumSet := .bn setValue1862 setValue0
def setValue2929 : Flapjack.NumSet := .bn setValue0 setValue2928
def setValue2930 : Flapjack.NumSet := .bs setValue384 () setValue0
def tree1153 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [141] [])).val
theorem tree1153_def : tree1153 = (Flapjack.RegAlloc.ClashTree.delta [141] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1153 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [141] []
def live1153 : Flapjack.NumSet := setValue2927
def coloured1153 : Flapjack.NumSet := setValue2920
def result1153 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2929, setValue2930)
def tree1154 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1153 tree1152)).val
theorem tree1154_def : tree1154 = (.seq tree1153 tree1152) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1154 : Flapjack.RegAlloc.ClashTree := .seq literal1153 literal1152
def live1154 : Flapjack.NumSet := setValue0
def coloured1154 : Flapjack.NumSet := setValue0
def result1154 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2929, setValue2930)
def tree1155 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [129, 133, 137] [0, 2, 4])).val
theorem tree1155_def : tree1155 = (Flapjack.RegAlloc.ClashTree.delta [129, 133, 137] [0, 2, 4]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1155 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [129, 133, 137] [0, 2, 4]
def live1155 : Flapjack.NumSet := setValue2929
def coloured1155 : Flapjack.NumSet := setValue2930
def result1155 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1271, setValue1271)
def tree1156 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1155 tree1154)).val
theorem tree1156_def : tree1156 = (.seq tree1155 tree1154) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1156 : Flapjack.RegAlloc.ClashTree := .seq literal1155 literal1154
def live1156 : Flapjack.NumSet := setValue0
def coloured1156 : Flapjack.NumSet := setValue0
def result1156 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1271, setValue1271)
end InitECandidate.Proofs.ClashStages874
