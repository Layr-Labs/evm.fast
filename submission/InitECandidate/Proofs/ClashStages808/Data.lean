import InitECandidate.Proofs.ComputationCache
import Flapjack.Compiler.Backend.RegAlloc.ClashTree
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages808
def colour : Flapjack.Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
      (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
    1
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
      (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
  0
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 11 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 44
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)) 57
                        (Flapjack.Spt.ls 61))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 3)) 28
                        (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 3))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 41 (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 3)))
                      0
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 40))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 10 (Flapjack.Spt.ls 37))))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 2))) 10
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)) (Flapjack.Spt.ls 58)))
                    18
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                      39 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))) 2
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 7))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 8))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 47))) 59
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 19) 50 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)) 77 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 33 (Flapjack.Spt.ls 35)))
                    41
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 32 (Flapjack.Spt.ls 77))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 73 (Flapjack.Spt.ls 5)) 36
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 0)))))
                  15
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 53)))
                      2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                    18
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 12) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))) 59
                      (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 31
                      Flapjack.Spt.ln))
                  16
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 47 (Flapjack.Spt.ls 52))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 29
                        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 40))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 30 (Flapjack.Spt.ls 46))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 32))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 58 (Flapjack.Spt.ls 28))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.ls 35)) 2 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 9))))
                    53
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 26)) 70 (Flapjack.Spt.ls 5))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 47
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 17) (Flapjack.Spt.ls 59)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                      26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 22 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                      35 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 25)) 15 Flapjack.Spt.ln))
                    10
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 70) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 66 Flapjack.Spt.ln)))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 13)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 16))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 7))) 43
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 41 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 59 (Flapjack.Spt.ls 70))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 50
                        (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 54))))
                    37
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 52 (Flapjack.Spt.ls 66))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 26
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 51 (Flapjack.Spt.ls 46)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                      0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 7)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 62)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15))) 37
                      (Flapjack.Spt.ls 5)))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)) 43
                        (Flapjack.Spt.ls 57))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 5)) 34
                        (Flapjack.Spt.bs Flapjack.Spt.ln 51 (Flapjack.Spt.ls 43))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 36 (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 53 (Flapjack.Spt.ls 36))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 11 (Flapjack.Spt.ls 33))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 9)) 3
                        (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 23)))
                      24 (Flapjack.Spt.bs (Flapjack.Spt.ls 17) 74 (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 30)) 74 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 52
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 65)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 54)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                      5 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 31)) 18 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 53)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 17))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 44))) 42
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 2 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 10 (Flapjack.Spt.ls 74))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 54
                        (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 57))))
                    34
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 56 (Flapjack.Spt.ls 12))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 30
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 51)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48)))
                      38 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    8
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))) 42
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 2 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 26
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 47))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 0)) 25
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25
                        (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 52)))
                      62
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 54 (Flapjack.Spt.ls 10))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 65 (Flapjack.Spt.ls 46)))
                    6
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 53 (Flapjack.Spt.ls 22)) 66 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 77 (Flapjack.Spt.ls 4)) 41
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.ls 57)))))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) Flapjack.Spt.ln) 70
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 8))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                      39 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26)))
                    12
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 67 (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 40
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))))
                  7
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 34))) 12
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))) 46
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 36)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 9)) 51 (Flapjack.Spt.ls 66))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 46
                        (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 50))))
                    27
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 46 (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 6)))
                      4
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 44))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 6 (Flapjack.Spt.ls 41)))))
                  4
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))) 32
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 7 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) Flapjack.Spt.ln))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 77)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))) 30
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26)) 55
                        (Flapjack.Spt.ls 59))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 37
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 45))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 39 (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 2)))
                      2
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 36))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 30)) 5
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      6 (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 77 (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 2))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 43
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) (Flapjack.Spt.ls 56)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                      36 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 30))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))) 43
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 62 Flapjack.Spt.ln)))
                  17
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 38))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 12))) 51
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 47 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 8 (Flapjack.Spt.ls 76))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 56 (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 2))))
                    52
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 4 (Flapjack.Spt.ls 74))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 27
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 12 (Flapjack.Spt.ls 14)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50)))
                      51 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 65
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 4 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 5
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 50))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 24
                        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 38))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 51)))
                      77
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 56 (Flapjack.Spt.ls 15))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 59 (Flapjack.Spt.ls 44)))
                    5
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 24)) 3 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 35
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 15) (Flapjack.Spt.ls 13)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln) 40
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)))
                    14
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 63 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                      41
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 13 (Flapjack.Spt.ls 0)))
                    8
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 41)) 10 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 51 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 35)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 39))) 38
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 39 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 10)) 65
                        (Flapjack.Spt.ls 68))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 48
                        (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 52))))
                    2
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 48 (Flapjack.Spt.ls 9))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 63 (Flapjack.Spt.ls 46)) 22
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 43)))))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18))) 52
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    18
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 8 Flapjack.Spt.ln)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 53)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16))) 28
                      (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) 50
                        (Flapjack.Spt.ls 55))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 27 (Flapjack.Spt.ls 48))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 34))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 61 (Flapjack.Spt.ls 8))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 53 (Flapjack.Spt.ls 5))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
                      25
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 70
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 8))))
                    3
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 28)) 62 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 32
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 62)))))
                  12
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                    18
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 25 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                      47 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 29)) 17 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 11 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 7))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 77 (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 41))) 56
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 44)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 68 (Flapjack.Spt.ls 72))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 3
                        (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 56))))
                    0
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 54 (Flapjack.Spt.ls 68))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 23
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 7)))))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)))
                      56 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 11))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))) 57
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 45))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 39))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 49))) 53
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 52 (Flapjack.Spt.ls 24))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 38 (Flapjack.Spt.ls 48)))
                    42
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 33 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2)) 39
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln) 45
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 60) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 36
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 57 (Flapjack.Spt.bn (Flapjack.Spt.ls 10) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 23)))
                      9 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 61)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))) 44
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 34 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 30)) 61 (Flapjack.Spt.ls 64))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 18)) 44
                        (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 48))))
                    22
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 35 (Flapjack.Spt.ls 58)) 6
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 42))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 68 (Flapjack.Spt.ls 11)))))
                  65
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))) 46
                      Flapjack.Spt.ln)
                    10
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) Flapjack.Spt.ln)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 12 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))) 6
                      (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 8)) 56 (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 2)) 39
                        (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 46))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 0)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 39))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 66 (Flapjack.Spt.ls 16))))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 6))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      31 (Flapjack.Spt.bn (Flapjack.Spt.ls 77) (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 63 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 8)) 54
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                  13
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 13)))
                      8 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 57)))
                    18
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                      37 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 31))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))) 54
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 74)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 46))) 65
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 48 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 5)) 74 (Flapjack.Spt.ls 77))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 57
                        (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.ls 59))))
                    4
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 2 (Flapjack.Spt.ls 43))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 34
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 53)))))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 52)))
                      65 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 11) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))) 66
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 5 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 23
                      Flapjack.Spt.ln))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 39))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 29 (Flapjack.Spt.ls 8))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 31))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 57 (Flapjack.Spt.ls 27))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 51) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 45
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 10))))
                    48
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 4)) 0 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 46
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 17)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln) 77
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                      22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                      44
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9)) 14 (Flapjack.Spt.ls 22)))
                    9
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 42)) 7 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 41)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 40))) 52
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 40 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 35)) 66
                        (Flapjack.Spt.ls 69))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 53))))
                    29
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 50 (Flapjack.Spt.ls 65))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 47)) 25
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 74 (Flapjack.Spt.ls 9)))))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 43
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    11 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 70)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 36
                      (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 7)) 52 (Flapjack.Spt.ls 56))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 27
                        (Flapjack.Spt.bs Flapjack.Spt.ln 77 (Flapjack.Spt.ls 42))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 34 (Flapjack.Spt.ls 50))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 5 (Flapjack.Spt.ls 32))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 12)) 6
                        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 24)))
                      26
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 62
                        (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 7))))
                    49
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 3)) 42 (Flapjack.Spt.ls 4))
                      (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 63)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 52)))
                    19
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                      4 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 12 Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 49)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 32))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 43))) 57
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 13 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 70 (Flapjack.Spt.ls 73))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 43
                        (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 0))))
                    46
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 55 (Flapjack.Spt.ls 70))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 29
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 49)))))
                  49
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                      57 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                    18
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 12))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))) 38
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 1 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 4
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) Flapjack.Spt.ln)))
                  20
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 46))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 41)) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23
                        (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 50)))
                      70
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 9 (Flapjack.Spt.ls 25))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 51 (Flapjack.Spt.ls 47)))
                    45
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 65 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 3)) 28
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 56)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln) 53
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 13) Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                      37 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    11
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 38)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 38
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 31))) 11
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) (Flapjack.Spt.ls 65)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))) 35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 32 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 11)) 9 (Flapjack.Spt.ls 65))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 35
                        (Flapjack.Spt.bs Flapjack.Spt.ln 67 (Flapjack.Spt.ls 49))))
                    24
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 4)))
                      5
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 43))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 70 (Flapjack.Spt.ls 40)))))
                  3
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))) 3
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 8 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) Flapjack.Spt.ln))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 39
                      (Flapjack.Spt.ls 2)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25)) 54
                        (Flapjack.Spt.ls 58))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 6)) 36
                        (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 44))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 37 (Flapjack.Spt.ls 52))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 37))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 35))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 11)) 4
                        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 25)))
                      29
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 12))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 2)) 77 (Flapjack.Spt.ls 3))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 33 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) (Flapjack.Spt.ls 55)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                      29 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 29))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))) 52
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 11)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 70 Flapjack.Spt.ln)))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 37))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 45))) 45
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 46 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 62 (Flapjack.Spt.ls 0))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 55
                        (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 58))))
                    38
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 57 (Flapjack.Spt.ls 10))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 31
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 12 (Flapjack.Spt.ls 52)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                      42 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 18) Flapjack.Spt.ln)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))) 51
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 3 Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 19))) 24
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 48))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 26
                        (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 53)))
                      49
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 29))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 55 (Flapjack.Spt.ls 26))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 13)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 66 (Flapjack.Spt.ls 2)))
                    65
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 0)) 59 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 44
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 58)))))
                  9
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 62
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)))
                    18
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 19) Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                      28 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 5)) 8 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 18)))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 67 (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 9))) 34
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 37 Flapjack.Spt.ln)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 12)) 7 (Flapjack.Spt.ls 67))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 47
                        (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 51))))
                    31
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 47 (Flapjack.Spt.ls 11))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 45))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 (Flapjack.Spt.ls 42)))))
                  5
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))) 33
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) Flapjack.Spt.ln)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 45)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 27
                      (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 48 (Flapjack.Spt.ls 54))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 31 (Flapjack.Spt.ls 47))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 42 (Flapjack.Spt.ls 29))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 10)) 12
                        (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 22)))
                      22
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 49
                        (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 11))))
                    70
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 27)) 38 (Flapjack.Spt.ls 6))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 48
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 60)))))
                  18
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                      24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 4))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                      46 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 16 Flapjack.Spt.ln))
                    7
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 9 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 59
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                  21
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 1)))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 33))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 51 (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 42))) 41
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.ls 33)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 67 (Flapjack.Spt.ls 71))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 52
                        (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 55))))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 43 (Flapjack.Spt.ls 67))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 24
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 77 (Flapjack.Spt.ls 47)))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)))
                      34 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 9))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))) 56
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 77)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 44))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 36))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 48))) 48
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 35 (Flapjack.Spt.ls 22))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 44) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 0 (Flapjack.Spt.ls 50)))
                    57
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 51 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 6)) 37
                        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 54)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 17)))
                      59 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)))
                    33
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 16) Flapjack.Spt.ln))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 28))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                      3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 36)) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 56 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 26)) 7
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) (Flapjack.Spt.ls 42)))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                      30 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 7)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 29)) 58
                        (Flapjack.Spt.ls 62))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 4)) 41
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 44 (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 5)))
                      3
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 41))
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 67 (Flapjack.Spt.ls 38)))))
                  37
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))) 35
                      Flapjack.Spt.ln)
                    18
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 10 Flapjack.Spt.ln)
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) Flapjack.Spt.ln))))))))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 52 (Flapjack.Spt.ls 49))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 43))))
                    39
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 31 (Flapjack.Spt.ls 45))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 38) (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 30)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 41
                      Flapjack.Spt.ln)
                    33
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 53))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))) 52
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 38 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 54 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 59) 56 (Flapjack.Spt.ls 45))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 30
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 51)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 53))) 49
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 46))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 74))
                    25
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 74 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))) 65
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln) 25
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 43 (Flapjack.Spt.ls 64))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 37)) 34
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 36
                        (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 59)))
                      59
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 65)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 33))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                    26
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 22)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln) 23
                      Flapjack.Spt.ln)
                    42 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 53))) 77
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))) 30
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 51 (Flapjack.Spt.ls 72))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 45)) 46
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 54))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 46 (Flapjack.Spt.ls 61))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 73 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))) 51
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 56) Flapjack.Spt.ln) (Flapjack.Spt.ls 65)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 66 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)) 41
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))) 43
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 44 (Flapjack.Spt.ls 55))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 29)) 25
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 25
                        (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 51)))
                      43
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 57)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 61 (Flapjack.Spt.ls 23)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 45))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 39))))
                    28
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 26 (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 26)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 36
                      Flapjack.Spt.ln)
                    32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 66))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 46
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 59 (Flapjack.Spt.ls 76))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 50 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 55) 52 (Flapjack.Spt.ls 66))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 77 (Flapjack.Spt.ls 30)) 26
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 48))) 48
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 49))
                    23
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 70 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46)) 47
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))) 57
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln) 22
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 47 (Flapjack.Spt.ls 59))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 33)) 29
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 30
                        (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 55)))
                      42
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 61)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 65 (Flapjack.Spt.ls 29))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 35))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln) 25
                      Flapjack.Spt.ln)
                    52 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))) 53
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))) 29
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 57 (Flapjack.Spt.ls 68))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 41)) 28
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 41 (Flapjack.Spt.ls 56)) 62
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 63 (Flapjack.Spt.ls 37)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))) 56
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 77 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 38 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 63) 40 (Flapjack.Spt.ls 77))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 36
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))) 47
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 58)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 37 (Flapjack.Spt.ls 50))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 77 (Flapjack.Spt.ls 34))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 47)))
                      46
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 53)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 56 Flapjack.Spt.ln)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 47))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 41))))
                    36
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 29 (Flapjack.Spt.ls 33))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 28)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 39
                      Flapjack.Spt.ln)
                    53 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))) 34
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 68 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 33 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 57) 54 (Flapjack.Spt.ls 68))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 23
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 31))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 50))) 70
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 70))
                    37
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 62 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))) 42
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln) 26
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 50 (Flapjack.Spt.ls 61))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.ls 35)) 31
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 27
                        (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 57)))
                      51
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 63)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 31))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 54))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 32)) Flapjack.Spt.ln) 24
                      Flapjack.Spt.ln)
                    41 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 51))) 62
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 37
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 61 (Flapjack.Spt.ls 70))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 43)) 44
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 52))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 35 (Flapjack.Spt.ls 58)) 77
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 71 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 39)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))) 42
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 54) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 42 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 42 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 39
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))) 33
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 41)) 40
                        (Flapjack.Spt.ls 52))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 22
                        (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 49)))
                      38
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 55)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 58 (Flapjack.Spt.ls 24)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 43))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 37))))
                    27
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 23 (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 25)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 27
                      Flapjack.Spt.ln)
                    28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 51))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 44
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 65 (Flapjack.Spt.ls 74))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 47)) 48
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 56))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 53) 48 (Flapjack.Spt.ls 43))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 75 (Flapjack.Spt.ls 28)) 22
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))) 47
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 58) Flapjack.Spt.ln) (Flapjack.Spt.ls 59)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 45 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)) 35
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 59))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))) 34
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24 (Flapjack.Spt.ls 57))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 31)) 24
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 24
                        (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 53)))
                      56
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 59)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 51 (Flapjack.Spt.ls 27))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 48))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 77))
                    34 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 77) Flapjack.Spt.ln) (Flapjack.Spt.ls 43))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))) 59
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      31 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 55 (Flapjack.Spt.ls 66))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 39)) 37
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 39 (Flapjack.Spt.ls 54)) 53
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 67)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 36)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))) 40
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 42 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 56 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 64))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 61) 33 (Flapjack.Spt.ls 74))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))) 35
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 62)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 34 (Flapjack.Spt.ls 47))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 45)))
                      44
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 51)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 54 Flapjack.Spt.ln))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 42 (Flapjack.Spt.ls 48))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 42))))
                    37
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 30 (Flapjack.Spt.ls 44))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 37) (Flapjack.Spt.bs Flapjack.Spt.ln 67 (Flapjack.Spt.ls 29)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 30
                      Flapjack.Spt.ln)
                    70 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))) 38
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 47) 70 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 69) 43 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 61))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 55 (Flapjack.Spt.ls 70))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 29
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 52))) 62
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 63 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 62))
                    30
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 58 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 64))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44))) 51
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) Flapjack.Spt.ln) 24
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 52 (Flapjack.Spt.ls 62))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 53 (Flapjack.Spt.ls 36)) 27
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 34
                        (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 58)))
                      65
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 64)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 67 (Flapjack.Spt.ls 32))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 40))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                    22
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 32))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 55))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 71 (Flapjack.Spt.ls 33)) Flapjack.Spt.ln) 29
                      Flapjack.Spt.ln)
                    57 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 52))) 40
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))) 39
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 39) 32 (Flapjack.Spt.ls 71))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 44)) 35
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 53))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 32 (Flapjack.Spt.ls 42))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 25))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 77 (Flapjack.Spt.ls 40)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))) 45
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 55) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 77) 51 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 65 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) 28
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 56))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))) 52
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 42)) 41
                        (Flapjack.Spt.ls 54))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 45 (Flapjack.Spt.ls 28)) 22
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 23
                        (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 50)))
                      52
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 56)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 45 (Flapjack.Spt.ls 25)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 44))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 38))))
                    31
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 25 (Flapjack.Spt.ls 39))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 33) (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 23)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 28
                      Flapjack.Spt.ln)
                    65 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))) 35
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 43) 66 (Flapjack.Spt.ls 43))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 65) 32 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 57))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 50 (Flapjack.Spt.ls 65))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 29)) 25
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 44)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))) 59
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 59) Flapjack.Spt.ln) (Flapjack.Spt.ls 45)) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 49 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45)) 46
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 60))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40))) 56
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 46 (Flapjack.Spt.ls 58))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 49 (Flapjack.Spt.ls 32)) 23
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 29
                        (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 54)))
                      57
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 60)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 53 (Flapjack.Spt.ls 28))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 36))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 50))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 67 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln) 22
                      Flapjack.Spt.ln)
                    38 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 54))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 48))) 45
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                      28 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 56 (Flapjack.Spt.ls 67))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 40)) 39
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 49))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 28 (Flapjack.Spt.ls 55)) 70
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 68)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 34)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))) 41
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 51) 74 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 73) 57 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 65))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 38 (Flapjack.Spt.ls 51))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) 34
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 53))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))) 46
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 74)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38)) 36 (Flapjack.Spt.ls 48))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 41 (Flapjack.Spt.ls 23))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 51 (Flapjack.Spt.ls 33))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 46)))
                      35
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 52)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 55 Flapjack.Spt.ln)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 46))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 40))))
                    29
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 28 (Flapjack.Spt.ls 41))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 27)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))) 37
                      Flapjack.Spt.ln)
                    48 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 59))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))) 33
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 45) 67 (Flapjack.Spt.ls 77))
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 67) 52 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 59))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 43 (Flapjack.Spt.ls 67))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 24
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 30))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 49))) 53
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 41))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 61 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 53))
                    29
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 53 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47)) 48
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 62))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))) 38
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) Flapjack.Spt.ln) 23
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 48 (Flapjack.Spt.ls 42))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 51 (Flapjack.Spt.ls 34)) 30
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 31
                        (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 56)))
                      45
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 62)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 30))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 23))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 52))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 69 (Flapjack.Spt.ls 31)) Flapjack.Spt.ln) 26
                      Flapjack.Spt.ln)
                    26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 56))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 50))) 70
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 36
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 37) 58 (Flapjack.Spt.ls 69))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 59 (Flapjack.Spt.ls 42)) 41
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 51))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 44 (Flapjack.Spt.ls 57)) 49
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 24))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 38)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))) 57
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 53) Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 75) 40 Flapjack.Spt.ln))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 51 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) 37
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 54))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))) 32
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 77)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 40)) 39 (Flapjack.Spt.ls 35))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 43 (Flapjack.Spt.ls 26))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 37 (Flapjack.Spt.ls 48)))
                      34
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 54)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 57 (Flapjack.Spt.ls 22)))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 42))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 36))))
                    24
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 22 (Flapjack.Spt.ls 37))
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 57 (Flapjack.Spt.ls 24)))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                      31 Flapjack.Spt.ln)
                    45 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))) 32
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 41) 33 (Flapjack.Spt.ls 73))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 63 (Flapjack.Spt.ls 46)) 47
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 55))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 47 (Flapjack.Spt.ls 38))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 27))
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 42)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 45))) 65
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 57) Flapjack.Spt.ln) (Flapjack.Spt.ls 66)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 59 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 43)) 44
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 58))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 38))) 54
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 35 (Flapjack.Spt.ls 56))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 47 (Flapjack.Spt.ls 30)) 26
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 26
                        (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 52)))
                      41
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 58)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 49 (Flapjack.Spt.ls 26))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 34))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 51))) 77
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 47))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 65 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 58))
                    46
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 77 Flapjack.Spt.ln) (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 46))) 66
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln) 27
                      Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 54 (Flapjack.Spt.ls 65))
                      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 55 (Flapjack.Spt.ls 38)) 36
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 47))))
                    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 37 (Flapjack.Spt.ls 52)) 48
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 66)
                        (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 35)))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 39)) Flapjack.Spt.ln))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 37))) 43
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 49) 62 Flapjack.Spt.ln)
                      (Flapjack.Spt.bs (Flapjack.Spt.ls 71) 55 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 63))))
                    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 57 (Flapjack.Spt.ls 49))
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 31
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 52))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))) 44
                      Flapjack.Spt.ln)
                    49
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                      (Flapjack.Spt.ls 70)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)) 27 (Flapjack.Spt.ls 46))
                      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 39 (Flapjack.Spt.ls 22))
                        (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 31))))
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 44)))
                      30
                      (Flapjack.Spt.bn (Flapjack.Spt.ls 50)
                        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 43 Flapjack.Spt.ln))))))))))))
def setValue0 : Flapjack.NumSet := .ln
def setValue1 : Flapjack.NumSet := .ls ()
def setValue2 : Flapjack.NumSet := .bn setValue1 setValue0
def setValue3 : Flapjack.NumSet := .bn setValue0 setValue2
def setValue4 : Flapjack.NumSet := .bn setValue0 setValue3
def setValue5 : Flapjack.NumSet := .bn setValue0 setValue4
def setValue6 : Flapjack.NumSet := .bn setValue0 setValue5
def setValue7 : Flapjack.NumSet := .bn setValue0 setValue6
def setValue8 : Flapjack.NumSet := .bn setValue0 setValue7
def setValue9 : Flapjack.NumSet := .bn setValue8 setValue0
def setValue10 : Flapjack.NumSet := .bn setValue9 setValue0
def setValue11 : Flapjack.NumSet := .bn setValue0 setValue10
def setValue12 : Flapjack.NumSet := .bn setValue0 setValue11
def setValue13 : Flapjack.NumSet := .bn setValue12 setValue0
def setValue14 : Flapjack.NumSet := .bn setValue1 setValue13
def setValue15 : Flapjack.NumSet := .bn setValue0 setValue1
def setValue16 : Flapjack.NumSet := .bn setValue0 setValue15
def setValue17 : Flapjack.NumSet := .bn setValue16 setValue0
def setValue18 : Flapjack.NumSet := .bs setValue0 () setValue17
def setValue19 : Flapjack.NumSet := .bn setValue18 setValue0
def tree0 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12337, 2])).val
theorem tree0_def : tree0 = (Flapjack.RegAlloc.ClashTree.delta [] [12337, 2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal0 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12337, 2]
def live0 : Flapjack.NumSet := setValue0
def coloured0 : Flapjack.NumSet := setValue0
def result0 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue14, setValue19)
def setValue20 : Flapjack.NumSet := .bn setValue5 setValue0
def setValue21 : Flapjack.NumSet := .bn setValue20 setValue0
def setValue22 : Flapjack.NumSet := .bn setValue0 setValue21
def setValue23 : Flapjack.NumSet := .bn setValue0 setValue22
def setValue24 : Flapjack.NumSet := .bn setValue0 setValue23
def setValue25 : Flapjack.NumSet := .bn setValue24 setValue0
def setValue26 : Flapjack.NumSet := .bn setValue25 setValue11
def setValue27 : Flapjack.NumSet := .bn setValue26 setValue0
def setValue28 : Flapjack.NumSet := .bn setValue0 setValue27
def tree1 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [2] [12685])).val
theorem tree1_def : tree1 = (Flapjack.RegAlloc.ClashTree.delta [2] [12685]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal1 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [2] [12685]
def live1 : Flapjack.NumSet := setValue14
def coloured1 : Flapjack.NumSet := setValue19
def result1 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue28, setValue19)
def tree2 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree1 tree0)).val
theorem tree2_def : tree2 = (.seq tree1 tree0) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal2 : Flapjack.RegAlloc.ClashTree := .seq literal1 literal0
def live2 : Flapjack.NumSet := setValue0
def coloured2 : Flapjack.NumSet := setValue0
def result2 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue28, setValue19)
def setValue29 : Flapjack.NumSet := .bn setValue0 setValue13
def setValue30 : Flapjack.NumSet := .bn setValue0 setValue17
def setValue31 : Flapjack.NumSet := .bn setValue30 setValue0
def tree3 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12685] [])).val
theorem tree3_def : tree3 = (Flapjack.RegAlloc.ClashTree.delta [12685] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal3 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12685] []
def live3 : Flapjack.NumSet := setValue28
def coloured3 : Flapjack.NumSet := setValue19
def result3 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue29, setValue31)
def tree4 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree3 tree2)).val
theorem tree4_def : tree4 = (.seq tree3 tree2) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal4 : Flapjack.RegAlloc.ClashTree := .seq literal3 literal2
def live4 : Flapjack.NumSet := setValue0
def coloured4 : Flapjack.NumSet := setValue0
def result4 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue29, setValue31)
def setValue32 : Flapjack.NumSet := .bn setValue0 setValue24
def setValue33 : Flapjack.NumSet := .bn setValue24 setValue10
def setValue34 : Flapjack.NumSet := .bn setValue32 setValue33
def setValue35 : Flapjack.NumSet := .bn setValue34 setValue0
def setValue36 : Flapjack.NumSet := .bn setValue0 setValue35
def setValue37 : Flapjack.NumSet := .bs setValue0 () setValue1
def setValue38 : Flapjack.NumSet := .bn setValue0 setValue37
def setValue39 : Flapjack.NumSet := .bn setValue38 setValue0
def setValue40 : Flapjack.NumSet := .bs setValue0 () setValue39
def setValue41 : Flapjack.NumSet := .bn setValue40 setValue0
def tree5 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12677, 12681])).val
theorem tree5_def : tree5 = (Flapjack.RegAlloc.ClashTree.delta [] [12677, 12681]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal5 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12677, 12681]
def live5 : Flapjack.NumSet := setValue29
def coloured5 : Flapjack.NumSet := setValue31
def result5 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue36, setValue41)
def tree6 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree5 tree4)).val
theorem tree6_def : tree6 = (.seq tree5 tree4) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal6 : Flapjack.RegAlloc.ClashTree := .seq literal5 literal4
def live6 : Flapjack.NumSet := setValue0
def coloured6 : Flapjack.NumSet := setValue0
def result6 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue36, setValue41)
def setValue42 : Flapjack.NumSet := .bn setValue0 setValue20
def setValue43 : Flapjack.NumSet := .bn setValue42 setValue0
def setValue44 : Flapjack.NumSet := .bn setValue0 setValue43
def setValue45 : Flapjack.NumSet := .bn setValue44 setValue0
def setValue46 : Flapjack.NumSet := .bn setValue9 setValue23
def setValue47 : Flapjack.NumSet := .bn setValue45 setValue46
def setValue48 : Flapjack.NumSet := .bn setValue0 setValue47
def setValue49 : Flapjack.NumSet := .bn setValue48 setValue0
def setValue50 : Flapjack.NumSet := .bn setValue0 setValue49
def tree7 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12681, 12677] [12673, 12633])).val
theorem tree7_def : tree7 = (Flapjack.RegAlloc.ClashTree.delta [12681, 12677] [12673, 12633]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal7 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12681, 12677] [12673, 12633]
def live7 : Flapjack.NumSet := setValue36
def coloured7 : Flapjack.NumSet := setValue41
def result7 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue50, setValue41)
def tree8 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree7 tree6)).val
theorem tree8_def : tree8 = (.seq tree7 tree6) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal8 : Flapjack.RegAlloc.ClashTree := .seq literal7 literal6
def live8 : Flapjack.NumSet := setValue0
def coloured8 : Flapjack.NumSet := setValue0
def result8 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue50, setValue41)
def setValue51 : Flapjack.NumSet := .bn setValue43 setValue0
def setValue52 : Flapjack.NumSet := .bn setValue51 setValue0
def setValue53 : Flapjack.NumSet := .bn setValue52 setValue0
def setValue54 : Flapjack.NumSet := .bn setValue53 setValue47
def setValue55 : Flapjack.NumSet := .bn setValue54 setValue0
def setValue56 : Flapjack.NumSet := .bn setValue0 setValue55
def setValue57 : Flapjack.NumSet := .bn setValue2 setValue0
def setValue58 : Flapjack.NumSet := .bs setValue57 () setValue39
def setValue59 : Flapjack.NumSet := .bn setValue58 setValue0
def tree9 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12669, 12673])).val
theorem tree9_def : tree9 = (Flapjack.RegAlloc.ClashTree.delta [] [12669, 12673]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal9 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12669, 12673]
def live9 : Flapjack.NumSet := setValue50
def coloured9 : Flapjack.NumSet := setValue41
def result9 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue56, setValue59)
def tree10 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree9 tree8)).val
theorem tree10_def : tree10 = (.seq tree9 tree8) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal10 : Flapjack.RegAlloc.ClashTree := .seq literal9 literal8
def live10 : Flapjack.NumSet := setValue0
def coloured10 : Flapjack.NumSet := setValue0
def result10 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue56, setValue59)
def setValue60 : Flapjack.NumSet := .bn setValue0 setValue45
def setValue61 : Flapjack.NumSet := .bn setValue43 setValue43
def setValue62 : Flapjack.NumSet := .bn setValue61 setValue0
def setValue63 : Flapjack.NumSet := .bn setValue62 setValue10
def setValue64 : Flapjack.NumSet := .bn setValue60 setValue63
def setValue65 : Flapjack.NumSet := .bn setValue64 setValue0
def setValue66 : Flapjack.NumSet := .bn setValue0 setValue65
def tree11 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12673, 12669] [12665, 12629])).val
theorem tree11_def : tree11 = (Flapjack.RegAlloc.ClashTree.delta [12673, 12669] [12665, 12629]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal11 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12673, 12669] [12665, 12629]
def live11 : Flapjack.NumSet := setValue56
def coloured11 : Flapjack.NumSet := setValue59
def result11 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue66, setValue59)
def tree12 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree11 tree10)).val
theorem tree12_def : tree12 = (.seq tree11 tree10) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal12 : Flapjack.RegAlloc.ClashTree := .seq literal11 literal10
def live12 : Flapjack.NumSet := setValue0
def coloured12 : Flapjack.NumSet := setValue0
def result12 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue66, setValue59)
def setValue67 : Flapjack.NumSet := .bn setValue0 setValue62
def setValue68 : Flapjack.NumSet := .bn setValue67 setValue63
def setValue69 : Flapjack.NumSet := .bn setValue68 setValue0
def setValue70 : Flapjack.NumSet := .bn setValue0 setValue69
def setValue71 : Flapjack.NumSet := .bs setValue58 () setValue0
def tree13 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12661, 12665])).val
theorem tree13_def : tree13 = (Flapjack.RegAlloc.ClashTree.delta [] [12661, 12665]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal13 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12661, 12665]
def live13 : Flapjack.NumSet := setValue66
def coloured13 : Flapjack.NumSet := setValue59
def result13 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue70, setValue71)
def tree14 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree13 tree12)).val
theorem tree14_def : tree14 = (.seq tree13 tree12) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal14 : Flapjack.RegAlloc.ClashTree := .seq literal13 literal12
def live14 : Flapjack.NumSet := setValue0
def coloured14 : Flapjack.NumSet := setValue0
def result14 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue70, setValue71)
def setValue72 : Flapjack.NumSet := .bn setValue42 setValue7
def setValue73 : Flapjack.NumSet := .bn setValue72 setValue43
def setValue74 : Flapjack.NumSet := .bn setValue73 setValue0
def setValue75 : Flapjack.NumSet := .bn setValue45 setValue74
def setValue76 : Flapjack.NumSet := .bn setValue60 setValue75
def setValue77 : Flapjack.NumSet := .bn setValue76 setValue0
def setValue78 : Flapjack.NumSet := .bn setValue0 setValue77
def tree15 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12665, 12661] [12657, 12625])).val
theorem tree15_def : tree15 = (Flapjack.RegAlloc.ClashTree.delta [12665, 12661] [12657, 12625]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal15 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12665, 12661] [12657, 12625]
def live15 : Flapjack.NumSet := setValue70
def coloured15 : Flapjack.NumSet := setValue71
def result15 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue78, setValue71)
def tree16 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree15 tree14)).val
theorem tree16_def : tree16 = (.seq tree15 tree14) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal16 : Flapjack.RegAlloc.ClashTree := .seq literal15 literal14
def live16 : Flapjack.NumSet := setValue0
def coloured16 : Flapjack.NumSet := setValue0
def result16 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue78, setValue71)
def setValue79 : Flapjack.NumSet := .bn setValue0 setValue51
def setValue80 : Flapjack.NumSet := .bn setValue79 setValue45
def setValue81 : Flapjack.NumSet := .bn setValue80 setValue75
def setValue82 : Flapjack.NumSet := .bn setValue81 setValue0
def setValue83 : Flapjack.NumSet := .bn setValue0 setValue82
def setValue84 : Flapjack.NumSet := .bn setValue1 setValue37
def setValue85 : Flapjack.NumSet := .bn setValue84 setValue0
def setValue86 : Flapjack.NumSet := .bs setValue57 () setValue85
def setValue87 : Flapjack.NumSet := .bs setValue86 () setValue0
def tree17 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12653, 12657])).val
theorem tree17_def : tree17 = (Flapjack.RegAlloc.ClashTree.delta [] [12653, 12657]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal17 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12653, 12657]
def live17 : Flapjack.NumSet := setValue78
def coloured17 : Flapjack.NumSet := setValue71
def result17 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue83, setValue87)
def tree18 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree17 tree16)).val
theorem tree18_def : tree18 = (.seq tree17 tree16) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal18 : Flapjack.RegAlloc.ClashTree := .seq literal17 literal16
def live18 : Flapjack.NumSet := setValue0
def coloured18 : Flapjack.NumSet := setValue0
def result18 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue83, setValue87)
def setValue88 : Flapjack.NumSet := .bn setValue0 setValue44
def setValue89 : Flapjack.NumSet := .bn setValue88 setValue45
def setValue90 : Flapjack.NumSet := .bn setValue44 setValue51
def setValue91 : Flapjack.NumSet := .bn setValue8 setValue43
def setValue92 : Flapjack.NumSet := .bn setValue91 setValue0
def setValue93 : Flapjack.NumSet := .bn setValue90 setValue92
def setValue94 : Flapjack.NumSet := .bn setValue89 setValue93
def setValue95 : Flapjack.NumSet := .bn setValue94 setValue0
def setValue96 : Flapjack.NumSet := .bn setValue0 setValue95
def tree19 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12657, 12653] [12649, 12621])).val
theorem tree19_def : tree19 = (Flapjack.RegAlloc.ClashTree.delta [12657, 12653] [12649, 12621]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal19 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12657, 12653] [12649, 12621]
def live19 : Flapjack.NumSet := setValue83
def coloured19 : Flapjack.NumSet := setValue87
def result19 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue96, setValue87)
def tree20 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree19 tree18)).val
theorem tree20_def : tree20 = (.seq tree19 tree18) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal20 : Flapjack.RegAlloc.ClashTree := .seq literal19 literal18
def live20 : Flapjack.NumSet := setValue0
def coloured20 : Flapjack.NumSet := setValue0
def result20 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue96, setValue87)
def setValue97 : Flapjack.NumSet := .bn setValue88 setValue90
def setValue98 : Flapjack.NumSet := .bn setValue97 setValue93
def setValue99 : Flapjack.NumSet := .bn setValue98 setValue0
def setValue100 : Flapjack.NumSet := .bn setValue0 setValue99
def setValue101 : Flapjack.NumSet := .bs setValue1 () setValue0
def setValue102 : Flapjack.NumSet := .bn setValue101 setValue0
def setValue103 : Flapjack.NumSet := .bs setValue102 () setValue85
def setValue104 : Flapjack.NumSet := .bs setValue103 () setValue0
def tree21 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12645, 12649])).val
theorem tree21_def : tree21 = (Flapjack.RegAlloc.ClashTree.delta [] [12645, 12649]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal21 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12645, 12649]
def live21 : Flapjack.NumSet := setValue96
def coloured21 : Flapjack.NumSet := setValue87
def result21 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue100, setValue104)
def tree22 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree21 tree20)).val
theorem tree22_def : tree22 = (.seq tree21 tree20) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal22 : Flapjack.RegAlloc.ClashTree := .seq literal21 literal20
def live22 : Flapjack.NumSet := setValue0
def coloured22 : Flapjack.NumSet := setValue0
def result22 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue100, setValue104)
def setValue105 : Flapjack.NumSet := .bn setValue44 setValue44
def setValue106 : Flapjack.NumSet := .bn setValue91 setValue51
def setValue107 : Flapjack.NumSet := .bn setValue105 setValue106
def setValue108 : Flapjack.NumSet := .bn setValue89 setValue107
def setValue109 : Flapjack.NumSet := .bn setValue108 setValue0
def setValue110 : Flapjack.NumSet := .bn setValue0 setValue109
def tree23 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12649, 12645] [12641, 12617])).val
theorem tree23_def : tree23 = (Flapjack.RegAlloc.ClashTree.delta [12649, 12645] [12641, 12617]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal23 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12649, 12645] [12641, 12617]
def live23 : Flapjack.NumSet := setValue100
def coloured23 : Flapjack.NumSet := setValue104
def result23 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue110, setValue104)
def tree24 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree23 tree22)).val
theorem tree24_def : tree24 = (.seq tree23 tree22) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal24 : Flapjack.RegAlloc.ClashTree := .seq literal23 literal22
def live24 : Flapjack.NumSet := setValue0
def coloured24 : Flapjack.NumSet := setValue0
def result24 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue110, setValue104)
def setValue111 : Flapjack.NumSet := .bn setValue105 setValue45
def setValue112 : Flapjack.NumSet := .bn setValue111 setValue107
def setValue113 : Flapjack.NumSet := .bn setValue112 setValue0
def setValue114 : Flapjack.NumSet := .bn setValue0 setValue113
def setValue115 : Flapjack.NumSet := .bn setValue101 setValue16
def setValue116 : Flapjack.NumSet := .bs setValue115 () setValue85
def setValue117 : Flapjack.NumSet := .bs setValue116 () setValue0
def tree25 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12637, 12641])).val
theorem tree25_def : tree25 = (Flapjack.RegAlloc.ClashTree.delta [] [12637, 12641]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal25 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12637, 12641]
def live25 : Flapjack.NumSet := setValue110
def coloured25 : Flapjack.NumSet := setValue104
def result25 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue114, setValue117)
def tree26 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree25 tree24)).val
theorem tree26_def : tree26 = (.seq tree25 tree24) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal26 : Flapjack.RegAlloc.ClashTree := .seq literal25 literal24
def live26 : Flapjack.NumSet := setValue0
def coloured26 : Flapjack.NumSet := setValue0
def result26 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue114, setValue117)
def setValue118 : Flapjack.NumSet := .bn setValue7 setValue0
def setValue119 : Flapjack.NumSet := .bn setValue0 setValue118
def setValue120 : Flapjack.NumSet := .bn setValue119 setValue0
def setValue121 : Flapjack.NumSet := .bn setValue8 setValue118
def setValue122 : Flapjack.NumSet := .bn setValue121 setValue119
def setValue123 : Flapjack.NumSet := .bn setValue120 setValue122
def setValue124 : Flapjack.NumSet := .bn setValue118 setValue43
def setValue125 : Flapjack.NumSet := .bn setValue9 setValue124
def setValue126 : Flapjack.NumSet := .bn setValue120 setValue125
def setValue127 : Flapjack.NumSet := .bn setValue123 setValue126
def setValue128 : Flapjack.NumSet := .bn setValue127 setValue0
def setValue129 : Flapjack.NumSet := .bn setValue0 setValue128
def tree27 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12641, 12637, 12633, 12629, 12625, 12621, 12617]
  [12609, 12341, 12381, 12373, 12385, 12377, 12357])).val
theorem tree27_def : tree27 = (Flapjack.RegAlloc.ClashTree.delta [12641, 12637, 12633, 12629, 12625, 12621, 12617]
  [12609, 12341, 12381, 12373, 12385, 12377, 12357]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal27 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12641, 12637, 12633, 12629, 12625, 12621, 12617]
  [12609, 12341, 12381, 12373, 12385, 12377, 12357]
def live27 : Flapjack.NumSet := setValue114
def coloured27 : Flapjack.NumSet := setValue117
def result27 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue129, setValue117)
def tree28 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree27 tree26)).val
theorem tree28_def : tree28 = (.seq tree27 tree26) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal28 : Flapjack.RegAlloc.ClashTree := .seq literal27 literal26
def live28 : Flapjack.NumSet := setValue0
def coloured28 : Flapjack.NumSet := setValue0
def result28 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue129, setValue117)
def setValue130 : Flapjack.NumSet := .bn setValue0 setValue42
def setValue131 : Flapjack.NumSet := .bn setValue130 setValue118
def setValue132 : Flapjack.NumSet := .bn setValue131 setValue0
def setValue133 : Flapjack.NumSet := .bn setValue132 setValue122
def setValue134 : Flapjack.NumSet := .bn setValue118 setValue0
def setValue135 : Flapjack.NumSet := .bn setValue9 setValue134
def setValue136 : Flapjack.NumSet := .bn setValue120 setValue135
def setValue137 : Flapjack.NumSet := .bn setValue133 setValue136
def setValue138 : Flapjack.NumSet := .bn setValue137 setValue0
def setValue139 : Flapjack.NumSet := .bn setValue0 setValue138
def setValue140 : Flapjack.NumSet := .bn setValue84 setValue15
def setValue141 : Flapjack.NumSet := .bn setValue115 setValue140
def setValue142 : Flapjack.NumSet := .bs setValue141 () setValue0
def tree29 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12609] [12605])).val
theorem tree29_def : tree29 = (Flapjack.RegAlloc.ClashTree.delta [12609] [12605]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal29 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12609] [12605]
def live29 : Flapjack.NumSet := setValue129
def coloured29 : Flapjack.NumSet := setValue117
def result29 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue139, setValue142)
def tree30 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree29 tree28)).val
theorem tree30_def : tree30 = (.seq tree29 tree28) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal30 : Flapjack.RegAlloc.ClashTree := .seq literal29 literal28
def live30 : Flapjack.NumSet := setValue0
def coloured30 : Flapjack.NumSet := setValue0
def result30 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue139, setValue142)
def setValue143 : Flapjack.NumSet := .bn setValue6 setValue0
def setValue144 : Flapjack.NumSet := .bn setValue143 setValue0
def setValue145 : Flapjack.NumSet := .bn setValue144 setValue0
def setValue146 : Flapjack.NumSet := .bn setValue119 setValue145
def setValue147 : Flapjack.NumSet := .bn setValue146 setValue122
def setValue148 : Flapjack.NumSet := .bn setValue147 setValue136
def setValue149 : Flapjack.NumSet := .bn setValue148 setValue0
def setValue150 : Flapjack.NumSet := .bn setValue0 setValue149
def tree31 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12605] [12525])).val
theorem tree31_def : tree31 = (Flapjack.RegAlloc.ClashTree.delta [12605] [12525]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal31 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12605] [12525]
def live31 : Flapjack.NumSet := setValue139
def coloured31 : Flapjack.NumSet := setValue142
def result31 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue150, setValue142)
def tree32 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree31 tree30)).val
theorem tree32_def : tree32 = (.seq tree31 tree30) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal32 : Flapjack.RegAlloc.ClashTree := .seq literal31 literal30
def live32 : Flapjack.NumSet := setValue0
def coloured32 : Flapjack.NumSet := setValue0
def result32 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue150, setValue142)
def setValue151 : Flapjack.NumSet := .bn setValue5 setValue5
def setValue152 : Flapjack.NumSet := .bn setValue0 setValue151
def setValue153 : Flapjack.NumSet := .bn setValue0 setValue152
def setValue154 : Flapjack.NumSet := .bn setValue153 setValue118
def setValue155 : Flapjack.NumSet := .bn setValue154 setValue119
def setValue156 : Flapjack.NumSet := .bn setValue146 setValue155
def setValue157 : Flapjack.NumSet := .bn setValue132 setValue135
def setValue158 : Flapjack.NumSet := .bn setValue156 setValue157
def setValue159 : Flapjack.NumSet := .bn setValue158 setValue0
def setValue160 : Flapjack.NumSet := .bn setValue0 setValue159
def setValue161 : Flapjack.NumSet := .bs setValue1 () setValue37
def setValue162 : Flapjack.NumSet := .bn setValue161 setValue15
def setValue163 : Flapjack.NumSet := .bs setValue115 () setValue162
def setValue164 : Flapjack.NumSet := .bs setValue163 () setValue0
def tree33 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12597, 12601])).val
theorem tree33_def : tree33 = (Flapjack.RegAlloc.ClashTree.delta [] [12597, 12601]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal33 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12597, 12601]
def live33 : Flapjack.NumSet := setValue150
def coloured33 : Flapjack.NumSet := setValue142
def result33 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue160, setValue164)
def tree34 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree33 tree32)).val
theorem tree34_def : tree34 = (.seq tree33 tree32) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal34 : Flapjack.RegAlloc.ClashTree := .seq literal33 literal32
def live34 : Flapjack.NumSet := setValue0
def coloured34 : Flapjack.NumSet := setValue0
def result34 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue160, setValue164)
def setValue165 : Flapjack.NumSet := .bn setValue0 setValue130
def setValue166 : Flapjack.NumSet := .bn setValue119 setValue165
def setValue167 : Flapjack.NumSet := .bn setValue153 setValue0
def setValue168 : Flapjack.NumSet := .bn setValue167 setValue134
def setValue169 : Flapjack.NumSet := .bn setValue166 setValue168
def setValue170 : Flapjack.NumSet := .bn setValue147 setValue169
def setValue171 : Flapjack.NumSet := .bn setValue170 setValue0
def setValue172 : Flapjack.NumSet := .bn setValue0 setValue171
def tree35 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12601, 12597] [12593, 12553])).val
theorem tree35_def : tree35 = (Flapjack.RegAlloc.ClashTree.delta [12601, 12597] [12593, 12553]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal35 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12601, 12597] [12593, 12553]
def live35 : Flapjack.NumSet := setValue160
def coloured35 : Flapjack.NumSet := setValue164
def result35 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue172, setValue164)
def tree36 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree35 tree34)).val
theorem tree36_def : tree36 = (.seq tree35 tree34) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal36 : Flapjack.RegAlloc.ClashTree := .seq literal35 literal34
def live36 : Flapjack.NumSet := setValue0
def coloured36 : Flapjack.NumSet := setValue0
def result36 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue172, setValue164)
def setValue173 : Flapjack.NumSet := .bn setValue143 setValue42
def setValue174 : Flapjack.NumSet := .bn setValue173 setValue0
def setValue175 : Flapjack.NumSet := .bn setValue119 setValue174
def setValue176 : Flapjack.NumSet := .bn setValue175 setValue122
def setValue177 : Flapjack.NumSet := .bn setValue176 setValue169
def setValue178 : Flapjack.NumSet := .bn setValue177 setValue0
def setValue179 : Flapjack.NumSet := .bn setValue0 setValue178
def setValue180 : Flapjack.NumSet := .bs setValue0 () setValue15
def setValue181 : Flapjack.NumSet := .bn setValue101 setValue180
def setValue182 : Flapjack.NumSet := .bs setValue181 () setValue162
def setValue183 : Flapjack.NumSet := .bs setValue182 () setValue0
def tree37 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12589, 12593])).val
theorem tree37_def : tree37 = (Flapjack.RegAlloc.ClashTree.delta [] [12589, 12593]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal37 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12589, 12593]
def live37 : Flapjack.NumSet := setValue172
def coloured37 : Flapjack.NumSet := setValue164
def result37 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue179, setValue183)
def tree38 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree37 tree36)).val
theorem tree38_def : tree38 = (.seq tree37 tree36) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal38 : Flapjack.RegAlloc.ClashTree := .seq literal37 literal36
def live38 : Flapjack.NumSet := setValue0
def coloured38 : Flapjack.NumSet := setValue0
def result38 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue179, setValue183)
def setValue184 : Flapjack.NumSet := .bn setValue7 setValue42
def setValue185 : Flapjack.NumSet := .bn setValue0 setValue184
def setValue186 : Flapjack.NumSet := .bn setValue121 setValue185
def setValue187 : Flapjack.NumSet := .bn setValue146 setValue186
def setValue188 : Flapjack.NumSet := .bn setValue130 setValue130
def setValue189 : Flapjack.NumSet := .bn setValue119 setValue188
def setValue190 : Flapjack.NumSet := .bn setValue189 setValue135
def setValue191 : Flapjack.NumSet := .bn setValue187 setValue190
def setValue192 : Flapjack.NumSet := .bn setValue191 setValue0
def setValue193 : Flapjack.NumSet := .bn setValue0 setValue192
def tree39 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12593, 12589] [12585, 12549])).val
theorem tree39_def : tree39 = (Flapjack.RegAlloc.ClashTree.delta [12593, 12589] [12585, 12549]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal39 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12593, 12589] [12585, 12549]
def live39 : Flapjack.NumSet := setValue179
def coloured39 : Flapjack.NumSet := setValue183
def result39 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue193, setValue183)
def tree40 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree39 tree38)).val
theorem tree40_def : tree40 = (.seq tree39 tree38) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal40 : Flapjack.RegAlloc.ClashTree := .seq literal39 literal38
def live40 : Flapjack.NumSet := setValue0
def coloured40 : Flapjack.NumSet := setValue0
def result40 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue193, setValue183)
def setValue194 : Flapjack.NumSet := .bn setValue130 setValue184
def setValue195 : Flapjack.NumSet := .bn setValue121 setValue194
def setValue196 : Flapjack.NumSet := .bn setValue146 setValue195
def setValue197 : Flapjack.NumSet := .bn setValue196 setValue190
def setValue198 : Flapjack.NumSet := .bn setValue197 setValue0
def setValue199 : Flapjack.NumSet := .bn setValue0 setValue198
def setValue200 : Flapjack.NumSet := .bn setValue161 setValue37
def setValue201 : Flapjack.NumSet := .bs setValue181 () setValue200
def setValue202 : Flapjack.NumSet := .bs setValue201 () setValue0
def tree41 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12581, 12585])).val
theorem tree41_def : tree41 = (Flapjack.RegAlloc.ClashTree.delta [] [12581, 12585]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal41 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12581, 12585]
def live41 : Flapjack.NumSet := setValue193
def coloured41 : Flapjack.NumSet := setValue183
def result41 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue199, setValue202)
def tree42 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree41 tree40)).val
theorem tree42_def : tree42 = (.seq tree41 tree40) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal42 : Flapjack.RegAlloc.ClashTree := .seq literal41 literal40
def live42 : Flapjack.NumSet := setValue0
def coloured42 : Flapjack.NumSet := setValue0
def result42 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue199, setValue202)
def setValue203 : Flapjack.NumSet := .bn setValue184 setValue130
def setValue204 : Flapjack.NumSet := .bn setValue9 setValue203
def setValue205 : Flapjack.NumSet := .bn setValue166 setValue204
def setValue206 : Flapjack.NumSet := .bn setValue187 setValue205
def setValue207 : Flapjack.NumSet := .bn setValue206 setValue0
def setValue208 : Flapjack.NumSet := .bn setValue0 setValue207
def tree43 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12585, 12581] [12577, 12545])).val
theorem tree43_def : tree43 = (Flapjack.RegAlloc.ClashTree.delta [12585, 12581] [12577, 12545]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal43 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12585, 12581] [12577, 12545]
def live43 : Flapjack.NumSet := setValue199
def coloured43 : Flapjack.NumSet := setValue202
def result43 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue208, setValue202)
def tree44 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree43 tree42)).val
theorem tree44_def : tree44 = (.seq tree43 tree42) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal44 : Flapjack.RegAlloc.ClashTree := .seq literal43 literal42
def live44 : Flapjack.NumSet := setValue0
def coloured44 : Flapjack.NumSet := setValue0
def result44 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue208, setValue202)
def setValue209 : Flapjack.NumSet := .bn setValue185 setValue145
def setValue210 : Flapjack.NumSet := .bn setValue209 setValue186
def setValue211 : Flapjack.NumSet := .bn setValue210 setValue205
def setValue212 : Flapjack.NumSet := .bn setValue211 setValue0
def setValue213 : Flapjack.NumSet := .bn setValue0 setValue212
def setValue214 : Flapjack.NumSet := .bs setValue101 () setValue180
def setValue215 : Flapjack.NumSet := .bs setValue214 () setValue200
def setValue216 : Flapjack.NumSet := .bs setValue215 () setValue0
def tree45 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12573, 12577])).val
theorem tree45_def : tree45 = (Flapjack.RegAlloc.ClashTree.delta [] [12573, 12577]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal45 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12573, 12577]
def live45 : Flapjack.NumSet := setValue208
def coloured45 : Flapjack.NumSet := setValue202
def result45 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue213, setValue216)
def tree46 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree45 tree44)).val
theorem tree46_def : tree46 = (.seq tree45 tree44) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal46 : Flapjack.RegAlloc.ClashTree := .seq literal45 literal44
def live46 : Flapjack.NumSet := setValue0
def coloured46 : Flapjack.NumSet := setValue0
def result46 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue213, setValue216)
def setValue217 : Flapjack.NumSet := .bn setValue144 setValue118
def setValue218 : Flapjack.NumSet := .bn setValue217 setValue145
def setValue219 : Flapjack.NumSet := .bn setValue218 setValue186
def setValue220 : Flapjack.NumSet := .bn setValue185 setValue165
def setValue221 : Flapjack.NumSet := .bn setValue118 setValue130
def setValue222 : Flapjack.NumSet := .bn setValue9 setValue221
def setValue223 : Flapjack.NumSet := .bn setValue220 setValue222
def setValue224 : Flapjack.NumSet := .bn setValue219 setValue223
def setValue225 : Flapjack.NumSet := .bn setValue224 setValue0
def setValue226 : Flapjack.NumSet := .bn setValue0 setValue225
def tree47 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12577, 12573] [12569, 12541])).val
theorem tree47_def : tree47 = (Flapjack.RegAlloc.ClashTree.delta [12577, 12573] [12569, 12541]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal47 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12577, 12573] [12569, 12541]
def live47 : Flapjack.NumSet := setValue213
def coloured47 : Flapjack.NumSet := setValue216
def result47 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue226, setValue216)
def tree48 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree47 tree46)).val
theorem tree48_def : tree48 = (.seq tree47 tree46) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal48 : Flapjack.RegAlloc.ClashTree := .seq literal47 literal46
def live48 : Flapjack.NumSet := setValue0
def coloured48 : Flapjack.NumSet := setValue0
def result48 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue226, setValue216)
def setValue227 : Flapjack.NumSet := .bn setValue8 setValue184
def setValue228 : Flapjack.NumSet := .bn setValue227 setValue185
def setValue229 : Flapjack.NumSet := .bn setValue218 setValue228
def setValue230 : Flapjack.NumSet := .bn setValue229 setValue223
def setValue231 : Flapjack.NumSet := .bn setValue230 setValue0
def setValue232 : Flapjack.NumSet := .bn setValue0 setValue231
def setValue233 : Flapjack.NumSet := .bs setValue161 () setValue37
def setValue234 : Flapjack.NumSet := .bs setValue214 () setValue233
def setValue235 : Flapjack.NumSet := .bs setValue234 () setValue0
def tree49 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12565, 12569])).val
theorem tree49_def : tree49 = (Flapjack.RegAlloc.ClashTree.delta [] [12565, 12569]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal49 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12565, 12569]
def live49 : Flapjack.NumSet := setValue226
def coloured49 : Flapjack.NumSet := setValue216
def result49 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue232, setValue235)
def tree50 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree49 tree48)).val
theorem tree50_def : tree50 = (.seq tree49 tree48) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal50 : Flapjack.RegAlloc.ClashTree := .seq literal49 literal48
def live50 : Flapjack.NumSet := setValue0
def coloured50 : Flapjack.NumSet := setValue0
def result50 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue232, setValue235)
def setValue236 : Flapjack.NumSet := .bn setValue217 setValue165
def setValue237 : Flapjack.NumSet := .bn setValue8 setValue130
def setValue238 : Flapjack.NumSet := .bn setValue237 setValue221
def setValue239 : Flapjack.NumSet := .bn setValue236 setValue238
def setValue240 : Flapjack.NumSet := .bn setValue219 setValue239
def setValue241 : Flapjack.NumSet := .bn setValue240 setValue0
def setValue242 : Flapjack.NumSet := .bn setValue0 setValue241
def tree51 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12569, 12565] [12561, 12537])).val
theorem tree51_def : tree51 = (Flapjack.RegAlloc.ClashTree.delta [12569, 12565] [12561, 12537]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal51 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12569, 12565] [12561, 12537]
def live51 : Flapjack.NumSet := setValue232
def coloured51 : Flapjack.NumSet := setValue235
def result51 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue242, setValue235)
def tree52 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree51 tree50)).val
theorem tree52_def : tree52 = (.seq tree51 tree50) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal52 : Flapjack.RegAlloc.ClashTree := .seq literal51 literal50
def live52 : Flapjack.NumSet := setValue0
def coloured52 : Flapjack.NumSet := setValue0
def result52 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue242, setValue235)
def setValue243 : Flapjack.NumSet := .bn setValue144 setValue130
def setValue244 : Flapjack.NumSet := .bn setValue217 setValue243
def setValue245 : Flapjack.NumSet := .bn setValue244 setValue186
def setValue246 : Flapjack.NumSet := .bn setValue245 setValue239
def setValue247 : Flapjack.NumSet := .bn setValue246 setValue0
def setValue248 : Flapjack.NumSet := .bn setValue0 setValue247
def setValue249 : Flapjack.NumSet := .bs setValue0 () setValue37
def setValue250 : Flapjack.NumSet := .bs setValue101 () setValue249
def setValue251 : Flapjack.NumSet := .bs setValue250 () setValue233
def setValue252 : Flapjack.NumSet := .bs setValue251 () setValue0
def tree53 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12557, 12561])).val
theorem tree53_def : tree53 = (Flapjack.RegAlloc.ClashTree.delta [] [12557, 12561]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal53 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12557, 12561]
def live53 : Flapjack.NumSet := setValue242
def coloured53 : Flapjack.NumSet := setValue235
def result53 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue248, setValue252)
def tree54 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree53 tree52)).val
theorem tree54_def : tree54 = (.seq tree53 tree52) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal54 : Flapjack.RegAlloc.ClashTree := .seq literal53 literal52
def live54 : Flapjack.NumSet := setValue0
def coloured54 : Flapjack.NumSet := setValue0
def result54 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue248, setValue252)
def setValue253 : Flapjack.NumSet := .bn setValue7 setValue143
def setValue254 : Flapjack.NumSet := .bn setValue0 setValue253
def setValue255 : Flapjack.NumSet := .bn setValue254 setValue145
def setValue256 : Flapjack.NumSet := .bn setValue8 setValue253
def setValue257 : Flapjack.NumSet := .bn setValue256 setValue254
def setValue258 : Flapjack.NumSet := .bn setValue255 setValue257
def setValue259 : Flapjack.NumSet := .bn setValue0 setValue143
def setValue260 : Flapjack.NumSet := .bn setValue0 setValue259
def setValue261 : Flapjack.NumSet := .bn setValue254 setValue260
def setValue262 : Flapjack.NumSet := .bn setValue143 setValue7
def setValue263 : Flapjack.NumSet := .bn setValue262 setValue259
def setValue264 : Flapjack.NumSet := .bn setValue263 setValue134
def setValue265 : Flapjack.NumSet := .bn setValue261 setValue264
def setValue266 : Flapjack.NumSet := .bn setValue258 setValue265
def setValue267 : Flapjack.NumSet := .bn setValue266 setValue0
def setValue268 : Flapjack.NumSet := .bn setValue0 setValue267
def tree55 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12561, 12557, 12553, 12549, 12545, 12541, 12537]
  [12529, 12445, 12425, 12421, 12441, 12437, 12433])).val
theorem tree55_def : tree55 = (Flapjack.RegAlloc.ClashTree.delta [12561, 12557, 12553, 12549, 12545, 12541, 12537]
  [12529, 12445, 12425, 12421, 12441, 12437, 12433]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal55 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12561, 12557, 12553, 12549, 12545, 12541, 12537]
  [12529, 12445, 12425, 12421, 12441, 12437, 12433]
def live55 : Flapjack.NumSet := setValue248
def coloured55 : Flapjack.NumSet := setValue252
def result55 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue268, setValue252)
def tree56 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree55 tree54)).val
theorem tree56_def : tree56 = (.seq tree55 tree54) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal56 : Flapjack.RegAlloc.ClashTree := .seq literal55 literal54
def live56 : Flapjack.NumSet := setValue0
def coloured56 : Flapjack.NumSet := setValue0
def result56 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue268, setValue252)
def setValue269 : Flapjack.NumSet := .bn setValue8 setValue259
def setValue270 : Flapjack.NumSet := .bn setValue269 setValue134
def setValue271 : Flapjack.NumSet := .bn setValue261 setValue270
def setValue272 : Flapjack.NumSet := .bn setValue258 setValue271
def setValue273 : Flapjack.NumSet := .bn setValue272 setValue0
def setValue274 : Flapjack.NumSet := .bn setValue0 setValue273
def setValue275 : Flapjack.NumSet := .bn setValue250 setValue233
def setValue276 : Flapjack.NumSet := .bs setValue275 () setValue0
def tree57 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12529] [12525])).val
theorem tree57_def : tree57 = (Flapjack.RegAlloc.ClashTree.delta [12529] [12525]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal57 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12529] [12525]
def live57 : Flapjack.NumSet := setValue268
def coloured57 : Flapjack.NumSet := setValue252
def result57 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue274, setValue276)
def tree58 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree57 tree56)).val
theorem tree58_def : tree58 = (.seq tree57 tree56) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal58 : Flapjack.RegAlloc.ClashTree := .seq literal57 literal56
def live58 : Flapjack.NumSet := setValue0
def coloured58 : Flapjack.NumSet := setValue0
def result58 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue274, setValue276)
def setValue277 : Flapjack.NumSet := .bn setValue254 setValue0
def setValue278 : Flapjack.NumSet := .bn setValue277 setValue257
def setValue279 : Flapjack.NumSet := .bn setValue144 setValue259
def setValue280 : Flapjack.NumSet := .bn setValue254 setValue279
def setValue281 : Flapjack.NumSet := .bn setValue280 setValue270
def setValue282 : Flapjack.NumSet := .bn setValue278 setValue281
def setValue283 : Flapjack.NumSet := .bn setValue282 setValue0
def setValue284 : Flapjack.NumSet := .bn setValue0 setValue283
def tree59 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12525] [12521])).val
theorem tree59_def : tree59 = (Flapjack.RegAlloc.ClashTree.delta [12525] [12521]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal59 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12525] [12521]
def live59 : Flapjack.NumSet := setValue274
def coloured59 : Flapjack.NumSet := setValue276
def result59 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue284, setValue276)
def tree60 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree59 tree58)).val
theorem tree60_def : tree60 = (.seq tree59 tree58) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal60 : Flapjack.RegAlloc.ClashTree := .seq literal59 literal58
def live60 : Flapjack.NumSet := setValue0
def coloured60 : Flapjack.NumSet := setValue0
def result60 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue284, setValue276)
def setValue285 : Flapjack.NumSet := .bn setValue144 setValue253
def setValue286 : Flapjack.NumSet := .bn setValue256 setValue285
def setValue287 : Flapjack.NumSet := .bn setValue277 setValue286
def setValue288 : Flapjack.NumSet := .bn setValue287 setValue281
def setValue289 : Flapjack.NumSet := .bn setValue288 setValue0
def setValue290 : Flapjack.NumSet := .bn setValue0 setValue289
def setValue291 : Flapjack.NumSet := .bs setValue101 () setValue161
def setValue292 : Flapjack.NumSet := .bn setValue291 setValue233
def setValue293 : Flapjack.NumSet := .bs setValue292 () setValue0
def tree61 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12517, 12521])).val
theorem tree61_def : tree61 = (Flapjack.RegAlloc.ClashTree.delta [] [12517, 12521]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal61 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12517, 12521]
def live61 : Flapjack.NumSet := setValue284
def coloured61 : Flapjack.NumSet := setValue276
def result61 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue290, setValue293)
def tree62 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree61 tree60)).val
theorem tree62_def : tree62 = (.seq tree61 tree60) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal62 : Flapjack.RegAlloc.ClashTree := .seq literal61 literal60
def live62 : Flapjack.NumSet := setValue0
def coloured62 : Flapjack.NumSet := setValue0
def result62 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue290, setValue293)
def setValue294 : Flapjack.NumSet := .bn setValue259 setValue253
def setValue295 : Flapjack.NumSet := .bn setValue294 setValue260
def setValue296 : Flapjack.NumSet := .bn setValue6 setValue6
def setValue297 : Flapjack.NumSet := .bn setValue296 setValue0
def setValue298 : Flapjack.NumSet := .bn setValue297 setValue0
def setValue299 : Flapjack.NumSet := .bn setValue269 setValue298
def setValue300 : Flapjack.NumSet := .bn setValue295 setValue299
def setValue301 : Flapjack.NumSet := .bn setValue278 setValue300
def setValue302 : Flapjack.NumSet := .bn setValue301 setValue0
def setValue303 : Flapjack.NumSet := .bn setValue0 setValue302
def tree63 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12521, 12517] [12513, 12473])).val
theorem tree63_def : tree63 = (Flapjack.RegAlloc.ClashTree.delta [12521, 12517] [12513, 12473]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal63 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12521, 12517] [12513, 12473]
def live63 : Flapjack.NumSet := setValue290
def coloured63 : Flapjack.NumSet := setValue293
def result63 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue303, setValue293)
def tree64 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree63 tree62)).val
theorem tree64_def : tree64 = (.seq tree63 tree62) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal64 : Flapjack.RegAlloc.ClashTree := .seq literal63 literal62
def live64 : Flapjack.NumSet := setValue0
def coloured64 : Flapjack.NumSet := setValue0
def result64 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue303, setValue293)
def setValue304 : Flapjack.NumSet := .bn setValue296 setValue143
def setValue305 : Flapjack.NumSet := .bn setValue0 setValue304
def setValue306 : Flapjack.NumSet := .bn setValue305 setValue0
def setValue307 : Flapjack.NumSet := .bn setValue306 setValue257
def setValue308 : Flapjack.NumSet := .bn setValue307 setValue300
def setValue309 : Flapjack.NumSet := .bn setValue308 setValue0
def setValue310 : Flapjack.NumSet := .bn setValue0 setValue309
def setValue311 : Flapjack.NumSet := .bs setValue1 () setValue1
def setValue312 : Flapjack.NumSet := .bs setValue311 () setValue161
def setValue313 : Flapjack.NumSet := .bn setValue312 setValue233
def setValue314 : Flapjack.NumSet := .bs setValue313 () setValue0
def tree65 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12509, 12513])).val
theorem tree65_def : tree65 = (Flapjack.RegAlloc.ClashTree.delta [] [12509, 12513]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal65 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12509, 12513]
def live65 : Flapjack.NumSet := setValue303
def coloured65 : Flapjack.NumSet := setValue293
def result65 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue310, setValue314)
def tree66 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree65 tree64)).val
theorem tree66_def : tree66 = (.seq tree65 tree64) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal66 : Flapjack.RegAlloc.ClashTree := .seq literal65 literal64
def live66 : Flapjack.NumSet := setValue0
def coloured66 : Flapjack.NumSet := setValue0
def result66 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue310, setValue314)
def setValue315 : Flapjack.NumSet := .bn setValue0 setValue296
def setValue316 : Flapjack.NumSet := .bn setValue315 setValue253
def setValue317 : Flapjack.NumSet := .bn setValue316 setValue254
def setValue318 : Flapjack.NumSet := .bn setValue277 setValue317
def setValue319 : Flapjack.NumSet := .bn setValue259 setValue304
def setValue320 : Flapjack.NumSet := .bn setValue319 setValue260
def setValue321 : Flapjack.NumSet := .bn setValue320 setValue270
def setValue322 : Flapjack.NumSet := .bn setValue318 setValue321
def setValue323 : Flapjack.NumSet := .bn setValue322 setValue0
def setValue324 : Flapjack.NumSet := .bn setValue0 setValue323
def tree67 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12513, 12509] [12505, 12469])).val
theorem tree67_def : tree67 = (Flapjack.RegAlloc.ClashTree.delta [12513, 12509] [12505, 12469]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal67 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12513, 12509] [12505, 12469]
def live67 : Flapjack.NumSet := setValue310
def coloured67 : Flapjack.NumSet := setValue314
def result67 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue324, setValue314)
def tree68 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree67 tree66)).val
theorem tree68_def : tree68 = (.seq tree67 tree66) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal68 : Flapjack.RegAlloc.ClashTree := .seq literal67 literal66
def live68 : Flapjack.NumSet := setValue0
def coloured68 : Flapjack.NumSet := setValue0
def result68 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue324, setValue314)
def setValue325 : Flapjack.NumSet := .bn setValue315 setValue304
def setValue326 : Flapjack.NumSet := .bn setValue325 setValue254
def setValue327 : Flapjack.NumSet := .bn setValue277 setValue326
def setValue328 : Flapjack.NumSet := .bn setValue327 setValue321
def setValue329 : Flapjack.NumSet := .bn setValue328 setValue0
def setValue330 : Flapjack.NumSet := .bn setValue0 setValue329
def setValue331 : Flapjack.NumSet := .bs setValue161 () setValue311
def setValue332 : Flapjack.NumSet := .bn setValue312 setValue331
def setValue333 : Flapjack.NumSet := .bs setValue332 () setValue0
def tree69 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12501, 12505])).val
theorem tree69_def : tree69 = (Flapjack.RegAlloc.ClashTree.delta [] [12501, 12505]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal69 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12501, 12505]
def live69 : Flapjack.NumSet := setValue324
def coloured69 : Flapjack.NumSet := setValue314
def result69 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue330, setValue333)
def tree70 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree69 tree68)).val
theorem tree70_def : tree70 = (.seq tree69 tree68) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal70 : Flapjack.RegAlloc.ClashTree := .seq literal69 literal68
def live70 : Flapjack.NumSet := setValue0
def coloured70 : Flapjack.NumSet := setValue0
def result70 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue330, setValue333)
def setValue334 : Flapjack.NumSet := .bn setValue143 setValue143
def setValue335 : Flapjack.NumSet := .bn setValue315 setValue334
def setValue336 : Flapjack.NumSet := .bn setValue335 setValue134
def setValue337 : Flapjack.NumSet := .bn setValue295 setValue336
def setValue338 : Flapjack.NumSet := .bn setValue318 setValue337
def setValue339 : Flapjack.NumSet := .bn setValue338 setValue0
def setValue340 : Flapjack.NumSet := .bn setValue0 setValue339
def tree71 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12505, 12501] [12497, 12465])).val
theorem tree71_def : tree71 = (Flapjack.RegAlloc.ClashTree.delta [12505, 12501] [12497, 12465]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal71 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12505, 12501] [12497, 12465]
def live71 : Flapjack.NumSet := setValue330
def coloured71 : Flapjack.NumSet := setValue333
def result71 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue340, setValue333)
def tree72 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree71 tree70)).val
theorem tree72_def : tree72 = (.seq tree71 tree70) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal72 : Flapjack.RegAlloc.ClashTree := .seq literal71 literal70
def live72 : Flapjack.NumSet := setValue0
def coloured72 : Flapjack.NumSet := setValue0
def result72 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue340, setValue333)
def setValue341 : Flapjack.NumSet := .bn setValue0 setValue144
def setValue342 : Flapjack.NumSet := .bn setValue254 setValue341
def setValue343 : Flapjack.NumSet := .bn setValue342 setValue317
def setValue344 : Flapjack.NumSet := .bn setValue343 setValue337
def setValue345 : Flapjack.NumSet := .bn setValue344 setValue0
def setValue346 : Flapjack.NumSet := .bn setValue0 setValue345
def setValue347 : Flapjack.NumSet := .bs setValue161 () setValue161
def setValue348 : Flapjack.NumSet := .bn setValue312 setValue347
def setValue349 : Flapjack.NumSet := .bs setValue348 () setValue0
def tree73 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12493, 12497])).val
theorem tree73_def : tree73 = (Flapjack.RegAlloc.ClashTree.delta [] [12493, 12497]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal73 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12493, 12497]
def live73 : Flapjack.NumSet := setValue340
def coloured73 : Flapjack.NumSet := setValue333
def result73 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue346, setValue349)
def tree74 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree73 tree72)).val
theorem tree74_def : tree74 = (.seq tree73 tree72) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal74 : Flapjack.RegAlloc.ClashTree := .seq literal73 literal72
def live74 : Flapjack.NumSet := setValue0
def coloured74 : Flapjack.NumSet := setValue0
def result74 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue346, setValue349)
def setValue350 : Flapjack.NumSet := .bn setValue259 setValue0
def setValue351 : Flapjack.NumSet := .bn setValue254 setValue350
def setValue352 : Flapjack.NumSet := .bn setValue351 setValue317
def setValue353 : Flapjack.NumSet := .bn setValue0 setValue334
def setValue354 : Flapjack.NumSet := .bn setValue294 setValue353
def setValue355 : Flapjack.NumSet := .bn setValue315 setValue259
def setValue356 : Flapjack.NumSet := .bn setValue355 setValue134
def setValue357 : Flapjack.NumSet := .bn setValue354 setValue356
def setValue358 : Flapjack.NumSet := .bn setValue352 setValue357
def setValue359 : Flapjack.NumSet := .bn setValue358 setValue0
def setValue360 : Flapjack.NumSet := .bn setValue0 setValue359
def tree75 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12497, 12493] [12489, 12461])).val
theorem tree75_def : tree75 = (Flapjack.RegAlloc.ClashTree.delta [12497, 12493] [12489, 12461]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal75 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12497, 12493] [12489, 12461]
def live75 : Flapjack.NumSet := setValue346
def coloured75 : Flapjack.NumSet := setValue349
def result75 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue360, setValue349)
def tree76 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree75 tree74)).val
theorem tree76_def : tree76 = (.seq tree75 tree74) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal76 : Flapjack.RegAlloc.ClashTree := .seq literal75 literal74
def live76 : Flapjack.NumSet := setValue0
def coloured76 : Flapjack.NumSet := setValue0
def result76 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue360, setValue349)
def setValue361 : Flapjack.NumSet := .bn setValue316 setValue305
def setValue362 : Flapjack.NumSet := .bn setValue351 setValue361
def setValue363 : Flapjack.NumSet := .bn setValue362 setValue357
def setValue364 : Flapjack.NumSet := .bn setValue363 setValue0
def setValue365 : Flapjack.NumSet := .bn setValue0 setValue364
def setValue366 : Flapjack.NumSet := .bs setValue37 () setValue37
def setValue367 : Flapjack.NumSet := .bs setValue161 () setValue366
def setValue368 : Flapjack.NumSet := .bn setValue312 setValue367
def setValue369 : Flapjack.NumSet := .bs setValue368 () setValue0
def tree77 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12485, 12489])).val
theorem tree77_def : tree77 = (Flapjack.RegAlloc.ClashTree.delta [] [12485, 12489]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal77 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12485, 12489]
def live77 : Flapjack.NumSet := setValue360
def coloured77 : Flapjack.NumSet := setValue349
def result77 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue365, setValue369)
def tree78 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree77 tree76)).val
theorem tree78_def : tree78 = (.seq tree77 tree76) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal78 : Flapjack.RegAlloc.ClashTree := .seq literal77 literal76
def live78 : Flapjack.NumSet := setValue0
def coloured78 : Flapjack.NumSet := setValue0
def result78 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue365, setValue369)
def setValue370 : Flapjack.NumSet := .bn setValue259 setValue259
def setValue371 : Flapjack.NumSet := .bn setValue294 setValue370
def setValue372 : Flapjack.NumSet := .bn setValue118 setValue144
def setValue373 : Flapjack.NumSet := .bn setValue355 setValue372
def setValue374 : Flapjack.NumSet := .bn setValue371 setValue373
def setValue375 : Flapjack.NumSet := .bn setValue352 setValue374
def setValue376 : Flapjack.NumSet := .bn setValue375 setValue0
def setValue377 : Flapjack.NumSet := .bn setValue0 setValue376
def tree79 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12489, 12485] [12481, 12457])).val
theorem tree79_def : tree79 = (Flapjack.RegAlloc.ClashTree.delta [12489, 12485] [12481, 12457]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal79 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12489, 12485] [12481, 12457]
def live79 : Flapjack.NumSet := setValue365
def coloured79 : Flapjack.NumSet := setValue369
def result79 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue377, setValue369)
def tree80 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree79 tree78)).val
theorem tree80_def : tree80 = (.seq tree79 tree78) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal80 : Flapjack.RegAlloc.ClashTree := .seq literal79 literal78
def live80 : Flapjack.NumSet := setValue0
def coloured80 : Flapjack.NumSet := setValue0
def result80 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue377, setValue369)
def setValue378 : Flapjack.NumSet := .bn setValue294 setValue350
def setValue379 : Flapjack.NumSet := .bn setValue378 setValue317
def setValue380 : Flapjack.NumSet := .bn setValue379 setValue374
def setValue381 : Flapjack.NumSet := .bn setValue380 setValue0
def setValue382 : Flapjack.NumSet := .bn setValue0 setValue381
def setValue383 : Flapjack.NumSet := .bn setValue347 setValue367
def setValue384 : Flapjack.NumSet := .bs setValue383 () setValue0
def tree81 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [12477, 12481])).val
theorem tree81_def : tree81 = (Flapjack.RegAlloc.ClashTree.delta [] [12477, 12481]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal81 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [12477, 12481]
def live81 : Flapjack.NumSet := setValue377
def coloured81 : Flapjack.NumSet := setValue369
def result81 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue382, setValue384)
def tree82 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree81 tree80)).val
theorem tree82_def : tree82 = (.seq tree81 tree80) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal82 : Flapjack.RegAlloc.ClashTree := .seq literal81 literal80
def live82 : Flapjack.NumSet := setValue0
def coloured82 : Flapjack.NumSet := setValue0
def result82 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue382, setValue384)
def setValue385 : Flapjack.NumSet := .bn setValue256 setValue119
def setValue386 : Flapjack.NumSet := .bn setValue118 setValue253
def setValue387 : Flapjack.NumSet := .bn setValue256 setValue386
def setValue388 : Flapjack.NumSet := .bn setValue385 setValue387
def setValue389 : Flapjack.NumSet := .bn setValue118 setValue118
def setValue390 : Flapjack.NumSet := .bn setValue256 setValue389
def setValue391 : Flapjack.NumSet := .bn setValue257 setValue390
def setValue392 : Flapjack.NumSet := .bn setValue388 setValue391
def setValue393 : Flapjack.NumSet := .bn setValue392 setValue0
def setValue394 : Flapjack.NumSet := .bn setValue0 setValue393
def tree83 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [12481, 12477, 12473, 12469, 12465, 12461, 12457]
  [12365, 12369, 12361, 12345, 12349, 12353, 12389])).val
theorem tree83_def : tree83 = (Flapjack.RegAlloc.ClashTree.delta [12481, 12477, 12473, 12469, 12465, 12461, 12457]
  [12365, 12369, 12361, 12345, 12349, 12353, 12389]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal83 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [12481, 12477, 12473, 12469, 12465, 12461, 12457]
  [12365, 12369, 12361, 12345, 12349, 12353, 12389]
def live83 : Flapjack.NumSet := setValue382
def coloured83 : Flapjack.NumSet := setValue384
def result83 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue394, setValue384)
def tree84 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree83 tree82)).val
theorem tree84_def : tree84 = (.seq tree83 tree82) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal84 : Flapjack.RegAlloc.ClashTree := .seq literal83 literal82
def live84 : Flapjack.NumSet := setValue0
def coloured84 : Flapjack.NumSet := setValue0
def result84 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue394, setValue384)
def tree85 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree85_def : tree85 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal85 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live85 : Flapjack.NumSet := setValue394
def coloured85 : Flapjack.NumSet := setValue384
def result85 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue394, setValue384)
def tree86 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree85 tree84)).val
theorem tree86_def : tree86 = (.seq tree85 tree84) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal86 : Flapjack.RegAlloc.ClashTree := .seq literal85 literal84
def live86 : Flapjack.NumSet := setValue0
def coloured86 : Flapjack.NumSet := setValue0
def result86 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue394, setValue384)
def setValue395 : Flapjack.NumSet := .bs setValue37 () setValue311
def setValue396 : Flapjack.NumSet := .bn setValue15 setValue0
def setValue397 : Flapjack.NumSet := .bn setValue396 setValue0
def setValue398 : Flapjack.NumSet := .bn setValue397 setValue0
def setValue399 : Flapjack.NumSet := .bn setValue398 setValue0
def setValue400 : Flapjack.NumSet := .bn setValue399 setValue0
def setValue401 : Flapjack.NumSet := .bn setValue400 setValue0
def setValue402 : Flapjack.NumSet := .bn setValue401 setValue8
def setValue403 : Flapjack.NumSet := .bn setValue8 setValue8
def setValue404 : Flapjack.NumSet := .bn setValue402 setValue403
def setValue405 : Flapjack.NumSet := .bn setValue0 setValue8
def setValue406 : Flapjack.NumSet := .bn setValue405 setValue403
def setValue407 : Flapjack.NumSet := .bn setValue404 setValue406
def setValue408 : Flapjack.NumSet := .bn setValue407 setValue407
def setValue409 : Flapjack.NumSet := .bn setValue0 setValue408
def setValue410 : Flapjack.NumSet := .bn setValue395 setValue409
def setValue411 : Flapjack.NumSet := .bn setValue1 setValue1
def setValue412 : Flapjack.NumSet := .bn setValue1 setValue15
def setValue413 : Flapjack.NumSet := .bn setValue411 setValue412
def setValue414 : Flapjack.NumSet := .bs setValue2 () setValue412
def setValue415 : Flapjack.NumSet := .bs setValue413 () setValue414
def setValue416 : Flapjack.NumSet := .bs setValue411 () setValue412
def setValue417 : Flapjack.NumSet := .bs setValue416 () setValue414
def setValue418 : Flapjack.NumSet := .bs setValue415 () setValue417
def setValue419 : Flapjack.NumSet := .bn setValue418 setValue0
def tree87 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [12445, 12441, 12437, 12433, 12425, 12421, 12337, 12341, 12345, 12349, 12353, 12357, 12361, 12365, 12369, 12373,
    12377, 12381, 12385, 12389]
  [2, 8, 6, 4, 12, 10, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315, 12319, 12323, 12327, 12331])).val
theorem tree87_def : tree87 = (Flapjack.RegAlloc.ClashTree.delta
  [12445, 12441, 12437, 12433, 12425, 12421, 12337, 12341, 12345, 12349, 12353, 12357, 12361, 12365, 12369, 12373,
    12377, 12381, 12385, 12389]
  [2, 8, 6, 4, 12, 10, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315, 12319, 12323, 12327, 12331]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal87 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [12445, 12441, 12437, 12433, 12425, 12421, 12337, 12341, 12345, 12349, 12353, 12357, 12361, 12365, 12369, 12373,
    12377, 12381, 12385, 12389]
  [2, 8, 6, 4, 12, 10, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315, 12319, 12323, 12327, 12331]
def live87 : Flapjack.NumSet := setValue394
def coloured87 : Flapjack.NumSet := setValue384
def result87 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue410, setValue419)
def tree88 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue410)).val
theorem tree88_def : tree88 = (.set setValue410) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal88 : Flapjack.RegAlloc.ClashTree := .set setValue410
def live88 : Flapjack.NumSet := setValue410
def coloured88 : Flapjack.NumSet := setValue419
def result88 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue410, setValue419)
def tree89 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree88 tree87)).val
theorem tree89_def : tree89 = (.seq tree88 tree87) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal89 : Flapjack.RegAlloc.ClashTree := .seq literal88 literal87
def live89 : Flapjack.NumSet := setValue394
def coloured89 : Flapjack.NumSet := setValue384
def result89 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue410, setValue419)
def setValue420 : Flapjack.NumSet := .bn setValue1 setValue393
def setValue421 : Flapjack.NumSet := .bs setValue347 () setValue367
def setValue422 : Flapjack.NumSet := .bs setValue421 () setValue0
def tree90 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree90_def : tree90 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal90 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live90 : Flapjack.NumSet := setValue394
def coloured90 : Flapjack.NumSet := setValue384
def result90 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue420, setValue422)
def setValue423 : Flapjack.NumSet := .bn setValue260 setValue0
def setValue424 : Flapjack.NumSet := .bn setValue260 setValue260
def setValue425 : Flapjack.NumSet := .bn setValue423 setValue424
def setValue426 : Flapjack.NumSet := .bn setValue424 setValue423
def setValue427 : Flapjack.NumSet := .bn setValue425 setValue426
def setValue428 : Flapjack.NumSet := .bn setValue427 setValue408
def setValue429 : Flapjack.NumSet := .bn setValue1 setValue428
def setValue430 : Flapjack.NumSet := .bs setValue1 () setValue15
def setValue431 : Flapjack.NumSet := .bs setValue2 () setValue430
def setValue432 : Flapjack.NumSet := .bs setValue413 () setValue431
def setValue433 : Flapjack.NumSet := .bs setValue432 () setValue417
def setValue434 : Flapjack.NumSet := .bn setValue433 setValue0
def tree91 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 12337, 12341, 12345, 12349, 12353, 12357, 12361, 12365, 12369, 12373, 12377, 12381, 12385, 12389]
  [2, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315, 12319, 12323, 12327, 12331])).val
theorem tree91_def : tree91 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 12337, 12341, 12345, 12349, 12353, 12357, 12361, 12365, 12369, 12373, 12377, 12381, 12385, 12389]
  [2, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315, 12319, 12323, 12327, 12331]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal91 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 12337, 12341, 12345, 12349, 12353, 12357, 12361, 12365, 12369, 12373, 12377, 12381, 12385, 12389]
  [2, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315, 12319, 12323, 12327, 12331]
def live91 : Flapjack.NumSet := setValue420
def coloured91 : Flapjack.NumSet := setValue422
def result91 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue429, setValue434)
def tree92 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree91 tree90)).val
theorem tree92_def : tree92 = (.seq tree91 tree90) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal92 : Flapjack.RegAlloc.ClashTree := .seq literal91 literal90
def live92 : Flapjack.NumSet := setValue394
def coloured92 : Flapjack.NumSet := setValue384
def result92 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue429, setValue434)
def setValue435 : Flapjack.NumSet := .bn setValue1 setValue409
def setValue436 : Flapjack.NumSet := .bn setValue2 setValue412
def setValue437 : Flapjack.NumSet := .bn setValue413 setValue436
def setValue438 : Flapjack.NumSet := .bs setValue437 () setValue437
def setValue439 : Flapjack.NumSet := .bn setValue438 setValue0
def tree93 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue435)).val
theorem tree93_def : tree93 = (.set setValue435) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal93 : Flapjack.RegAlloc.ClashTree := .set setValue435
def live93 : Flapjack.NumSet := setValue429
def coloured93 : Flapjack.NumSet := setValue434
def result93 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue435, setValue439)
def tree94 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree93 tree92)).val
theorem tree94_def : tree94 = (.seq tree93 tree92) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal94 : Flapjack.RegAlloc.ClashTree := .seq literal93 literal92
def live94 : Flapjack.NumSet := setValue394
def coloured94 : Flapjack.NumSet := setValue384
def result94 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue435, setValue439)
def setValue440 : Flapjack.NumSet := .bs setValue366 () setValue395
def setValue441 : Flapjack.NumSet := .bn setValue440 setValue409
def setValue442 : Flapjack.NumSet := .bs setValue411 () setValue430
def setValue443 : Flapjack.NumSet := .bs setValue442 () setValue431
def setValue444 : Flapjack.NumSet := .bs setValue101 () setValue430
def setValue445 : Flapjack.NumSet := .bs setValue442 () setValue444
def setValue446 : Flapjack.NumSet := .bs setValue443 () setValue445
def setValue447 : Flapjack.NumSet := .bn setValue446 setValue0
def tree95 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue441) tree89 tree94)).val
theorem tree95_def : tree95 = (.branch (some setValue441) tree89 tree94) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal95 : Flapjack.RegAlloc.ClashTree := .branch (some setValue441) literal89 literal94
def live95 : Flapjack.NumSet := setValue394
def coloured95 : Flapjack.NumSet := setValue384
def result95 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue441, setValue447)
def tree96 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree95 tree86)).val
theorem tree96_def : tree96 = (.seq tree95 tree86) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal96 : Flapjack.RegAlloc.ClashTree := .seq literal95 literal86
def live96 : Flapjack.NumSet := setValue0
def coloured96 : Flapjack.NumSet := setValue0
def result96 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue441, setValue447)
def setValue448 : Flapjack.NumSet := .bn setValue0 setValue399
def setValue449 : Flapjack.NumSet := .bn setValue448 setValue0
def setValue450 : Flapjack.NumSet := .bn setValue448 setValue400
def setValue451 : Flapjack.NumSet := .bn setValue449 setValue450
def setValue452 : Flapjack.NumSet := .bn setValue0 setValue400
def setValue453 : Flapjack.NumSet := .bn setValue450 setValue452
def setValue454 : Flapjack.NumSet := .bn setValue451 setValue453
def setValue455 : Flapjack.NumSet := .bn setValue449 setValue452
def setValue456 : Flapjack.NumSet := .bn setValue450 setValue0
def setValue457 : Flapjack.NumSet := .bn setValue455 setValue456
def setValue458 : Flapjack.NumSet := .bn setValue454 setValue457
def setValue459 : Flapjack.NumSet := .bn setValue455 setValue453
def setValue460 : Flapjack.NumSet := .bn setValue459 setValue459
def setValue461 : Flapjack.NumSet := .bn setValue458 setValue460
def setValue462 : Flapjack.NumSet := .bn setValue461 setValue0
def setValue463 : Flapjack.NumSet := .bn setValue0 setValue462
def setValue464 : Flapjack.NumSet := .bs setValue0 () setValue180
def setValue465 : Flapjack.NumSet := .bs setValue101 () setValue101
def setValue466 : Flapjack.NumSet := .bs setValue464 () setValue465
def setValue467 : Flapjack.NumSet := .bs setValue411 () setValue101
def setValue468 : Flapjack.NumSet := .bs setValue467 () setValue465
def setValue469 : Flapjack.NumSet := .bn setValue466 setValue468
def setValue470 : Flapjack.NumSet := .bn setValue469 setValue0
def tree97 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315,
    12319, 12323, 12327, 12331]
  [12201, 12169, 12177, 12193, 12133, 12153, 12197, 12173, 12141, 12129, 12145, 12137, 12205, 12197, 12189, 12185,
    12181, 12173, 12161, 12157, 12149, 12145, 12141, 12137, 12129, 12125])).val
theorem tree97_def : tree97 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315,
    12319, 12323, 12327, 12331]
  [12201, 12169, 12177, 12193, 12133, 12153, 12197, 12173, 12141, 12129, 12145, 12137, 12205, 12197, 12189, 12185,
    12181, 12173, 12161, 12157, 12149, 12145, 12141, 12137, 12129, 12125]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal97 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 12279, 12283, 12287, 12291, 12295, 12299, 12303, 12307, 12311, 12315,
    12319, 12323, 12327, 12331]
  [12201, 12169, 12177, 12193, 12133, 12153, 12197, 12173, 12141, 12129, 12145, 12137, 12205, 12197, 12189, 12185,
    12181, 12173, 12161, 12157, 12149, 12145, 12141, 12137, 12129, 12125]
def live97 : Flapjack.NumSet := setValue441
def coloured97 : Flapjack.NumSet := setValue447
def result97 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue463, setValue470)
def tree98 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree97 tree96)).val
theorem tree98_def : tree98 = (.seq tree97 tree96) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal98 : Flapjack.RegAlloc.ClashTree := .seq literal97 literal96
def live98 : Flapjack.NumSet := setValue0
def coloured98 : Flapjack.NumSet := setValue0
def result98 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue463, setValue470)
def tree99 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree99_def : tree99 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal99 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live99 : Flapjack.NumSet := setValue463
def coloured99 : Flapjack.NumSet := setValue470
def result99 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue463, setValue470)
def tree100 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree99 tree98)).val
theorem tree100_def : tree100 = (.seq tree99 tree98) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal100 : Flapjack.RegAlloc.ClashTree := .seq literal99 literal98
def live100 : Flapjack.NumSet := setValue0
def coloured100 : Flapjack.NumSet := setValue0
def result100 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue463, setValue470)
def setValue471 : Flapjack.NumSet := .bn setValue0 setValue398
def setValue472 : Flapjack.NumSet := .bn setValue471 setValue0
def setValue473 : Flapjack.NumSet := .bn setValue472 setValue448
def setValue474 : Flapjack.NumSet := .bn setValue473 setValue0
def setValue475 : Flapjack.NumSet := .bn setValue472 setValue0
def setValue476 : Flapjack.NumSet := .bn setValue448 setValue448
def setValue477 : Flapjack.NumSet := .bn setValue475 setValue476
def setValue478 : Flapjack.NumSet := .bn setValue474 setValue477
def setValue479 : Flapjack.NumSet := .bn setValue0 setValue448
def setValue480 : Flapjack.NumSet := .bn setValue475 setValue479
def setValue481 : Flapjack.NumSet := .bn setValue480 setValue477
def setValue482 : Flapjack.NumSet := .bn setValue478 setValue481
def setValue483 : Flapjack.NumSet := .bn setValue473 setValue479
def setValue484 : Flapjack.NumSet := .bn setValue483 setValue477
def setValue485 : Flapjack.NumSet := .bn setValue0 setValue479
def setValue486 : Flapjack.NumSet := .bn setValue477 setValue485
def setValue487 : Flapjack.NumSet := .bn setValue484 setValue486
def setValue488 : Flapjack.NumSet := .bn setValue482 setValue487
def setValue489 : Flapjack.NumSet := .bn setValue488 setValue0
def setValue490 : Flapjack.NumSet := .bn setValue0 setValue489
def tree101 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [12205, 12201, 12197, 12193, 12189, 12185, 12181, 12177, 12173, 12169, 12161, 12157, 12153, 12149, 12145, 12141,
    12137, 12133, 12129, 12125]
  [12005, 12113, 12009, 12109, 12013, 12017, 12021, 12105, 12025, 12101, 12029, 12033, 12093, 12037, 12041, 12045,
    12049, 12089, 12053, 12057])).val
theorem tree101_def : tree101 = (Flapjack.RegAlloc.ClashTree.delta
  [12205, 12201, 12197, 12193, 12189, 12185, 12181, 12177, 12173, 12169, 12161, 12157, 12153, 12149, 12145, 12141,
    12137, 12133, 12129, 12125]
  [12005, 12113, 12009, 12109, 12013, 12017, 12021, 12105, 12025, 12101, 12029, 12033, 12093, 12037, 12041, 12045,
    12049, 12089, 12053, 12057]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal101 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [12205, 12201, 12197, 12193, 12189, 12185, 12181, 12177, 12173, 12169, 12161, 12157, 12153, 12149, 12145, 12141,
    12137, 12133, 12129, 12125]
  [12005, 12113, 12009, 12109, 12013, 12017, 12021, 12105, 12025, 12101, 12029, 12033, 12093, 12037, 12041, 12045,
    12049, 12089, 12053, 12057]
def live101 : Flapjack.NumSet := setValue463
def coloured101 : Flapjack.NumSet := setValue470
def result101 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue490, setValue470)
def tree102 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree102_def : tree102 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal102 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live102 : Flapjack.NumSet := setValue490
def coloured102 : Flapjack.NumSet := setValue470
def result102 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue490, setValue470)
def tree103 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree102 tree101)).val
theorem tree103_def : tree103 = (.seq tree102 tree101) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal103 : Flapjack.RegAlloc.ClashTree := .seq literal102 literal101
def live103 : Flapjack.NumSet := setValue463
def coloured103 : Flapjack.NumSet := setValue470
def result103 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue490, setValue470)
def setValue491 : Flapjack.NumSet := .bn setValue0 setValue472
def setValue492 : Flapjack.NumSet := .bn setValue491 setValue475
def setValue493 : Flapjack.NumSet := .bn setValue492 setValue492
def setValue494 : Flapjack.NumSet := .bn setValue0 setValue475
def setValue495 : Flapjack.NumSet := .bn setValue492 setValue494
def setValue496 : Flapjack.NumSet := .bn setValue493 setValue495
def setValue497 : Flapjack.NumSet := .bn setValue475 setValue475
def setValue498 : Flapjack.NumSet := .bn setValue492 setValue497
def setValue499 : Flapjack.NumSet := .bn setValue495 setValue498
def setValue500 : Flapjack.NumSet := .bn setValue496 setValue499
def setValue501 : Flapjack.NumSet := .bn setValue0 setValue500
def setValue502 : Flapjack.NumSet := .bn setValue395 setValue501
def tree104 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [12113, 12109, 12105, 12101, 12093, 12089, 12005, 12009, 12013, 12017, 12021, 12025, 12029, 12033, 12037, 12041,
    12045, 12049, 12053, 12057]
  [2, 8, 6, 4, 12, 10, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999])).val
theorem tree104_def : tree104 = (Flapjack.RegAlloc.ClashTree.delta
  [12113, 12109, 12105, 12101, 12093, 12089, 12005, 12009, 12013, 12017, 12021, 12025, 12029, 12033, 12037, 12041,
    12045, 12049, 12053, 12057]
  [2, 8, 6, 4, 12, 10, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal104 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [12113, 12109, 12105, 12101, 12093, 12089, 12005, 12009, 12013, 12017, 12021, 12025, 12029, 12033, 12037, 12041,
    12045, 12049, 12053, 12057]
  [2, 8, 6, 4, 12, 10, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999]
def live104 : Flapjack.NumSet := setValue490
def coloured104 : Flapjack.NumSet := setValue470
def result104 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue502, setValue419)
def tree105 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue502)).val
theorem tree105_def : tree105 = (.set setValue502) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal105 : Flapjack.RegAlloc.ClashTree := .set setValue502
def live105 : Flapjack.NumSet := setValue502
def coloured105 : Flapjack.NumSet := setValue419
def result105 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue502, setValue419)
def tree106 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree105 tree104)).val
theorem tree106_def : tree106 = (.seq tree105 tree104) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal106 : Flapjack.RegAlloc.ClashTree := .seq literal105 literal104
def live106 : Flapjack.NumSet := setValue490
def coloured106 : Flapjack.NumSet := setValue470
def result106 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue502, setValue419)
def setValue503 : Flapjack.NumSet := .bn setValue1 setValue489
def setValue504 : Flapjack.NumSet := .bs setValue466 () setValue468
def setValue505 : Flapjack.NumSet := .bn setValue504 setValue0
def tree107 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree107_def : tree107 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal107 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live107 : Flapjack.NumSet := setValue490
def coloured107 : Flapjack.NumSet := setValue470
def result107 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue503, setValue505)
def setValue506 : Flapjack.NumSet := .bn setValue479 setValue0
def setValue507 : Flapjack.NumSet := .bn setValue0 setValue449
def setValue508 : Flapjack.NumSet := .bn setValue506 setValue507
def setValue509 : Flapjack.NumSet := .bn setValue0 setValue507
def setValue510 : Flapjack.NumSet := .bn setValue508 setValue509
def setValue511 : Flapjack.NumSet := .bn setValue507 setValue0
def setValue512 : Flapjack.NumSet := .bn setValue508 setValue511
def setValue513 : Flapjack.NumSet := .bn setValue510 setValue512
def setValue514 : Flapjack.NumSet := .bn setValue513 setValue500
def setValue515 : Flapjack.NumSet := .bn setValue1 setValue514
def setValue516 : Flapjack.NumSet := .bs setValue101 () setValue412
def setValue517 : Flapjack.NumSet := .bs setValue413 () setValue516
def setValue518 : Flapjack.NumSet := .bs setValue517 () setValue417
def setValue519 : Flapjack.NumSet := .bn setValue518 setValue0
def tree108 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 12005, 12009, 12013, 12017, 12021, 12025, 12029, 12033, 12037, 12041, 12045, 12049, 12053, 12057]
  [2, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999])).val
theorem tree108_def : tree108 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 12005, 12009, 12013, 12017, 12021, 12025, 12029, 12033, 12037, 12041, 12045, 12049, 12053, 12057]
  [2, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal108 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 12005, 12009, 12013, 12017, 12021, 12025, 12029, 12033, 12037, 12041, 12045, 12049, 12053, 12057]
  [2, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999]
def live108 : Flapjack.NumSet := setValue503
def coloured108 : Flapjack.NumSet := setValue505
def result108 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue515, setValue519)
def tree109 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree108 tree107)).val
theorem tree109_def : tree109 = (.seq tree108 tree107) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal109 : Flapjack.RegAlloc.ClashTree := .seq literal108 literal107
def live109 : Flapjack.NumSet := setValue490
def coloured109 : Flapjack.NumSet := setValue470
def result109 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue515, setValue519)
def setValue520 : Flapjack.NumSet := .bn setValue1 setValue501
def tree110 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue520)).val
theorem tree110_def : tree110 = (.set setValue520) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal110 : Flapjack.RegAlloc.ClashTree := .set setValue520
def live110 : Flapjack.NumSet := setValue515
def coloured110 : Flapjack.NumSet := setValue519
def result110 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue520, setValue439)
def tree111 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree110 tree109)).val
theorem tree111_def : tree111 = (.seq tree110 tree109) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal111 : Flapjack.RegAlloc.ClashTree := .seq literal110 literal109
def live111 : Flapjack.NumSet := setValue490
def coloured111 : Flapjack.NumSet := setValue470
def result111 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue520, setValue439)
def tree112 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue502) tree106 tree111)).val
theorem tree112_def : tree112 = (.branch (some setValue502) tree106 tree111) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal112 : Flapjack.RegAlloc.ClashTree := .branch (some setValue502) literal106 literal111
def live112 : Flapjack.NumSet := setValue490
def coloured112 : Flapjack.NumSet := setValue470
def result112 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue502, setValue419)
def tree113 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree112 tree103)).val
theorem tree113_def : tree113 = (.seq tree112 tree103) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal113 : Flapjack.RegAlloc.ClashTree := .seq literal112 literal103
def live113 : Flapjack.NumSet := setValue463
def coloured113 : Flapjack.NumSet := setValue470
def result113 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue502, setValue419)
def setValue521 : Flapjack.NumSet := .bn setValue0 setValue471
def setValue522 : Flapjack.NumSet := .bn setValue0 setValue521
def setValue523 : Flapjack.NumSet := .bn setValue521 setValue521
def setValue524 : Flapjack.NumSet := .bn setValue522 setValue523
def setValue525 : Flapjack.NumSet := .bn setValue521 setValue0
def setValue526 : Flapjack.NumSet := .bn setValue523 setValue525
def setValue527 : Flapjack.NumSet := .bn setValue524 setValue526
def setValue528 : Flapjack.NumSet := .bn setValue522 setValue525
def setValue529 : Flapjack.NumSet := .bn setValue528 setValue526
def setValue530 : Flapjack.NumSet := .bn setValue527 setValue529
def setValue531 : Flapjack.NumSet := .bn setValue522 setValue0
def setValue532 : Flapjack.NumSet := .bn setValue531 setValue526
def setValue533 : Flapjack.NumSet := .bn setValue529 setValue532
def setValue534 : Flapjack.NumSet := .bn setValue530 setValue533
def setValue535 : Flapjack.NumSet := .bn setValue534 setValue0
def setValue536 : Flapjack.NumSet := .bn setValue0 setValue535
def setValue537 : Flapjack.NumSet := .bn setValue517 setValue417
def setValue538 : Flapjack.NumSet := .bn setValue537 setValue0
def tree114 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999]
  [11809, 11841, 11833, 11817, 11877, 11853, 11805, 11813, 11821, 11825, 11829, 11837, 11845, 11849, 11861, 11865,
    11869, 11873, 11881, 11885])).val
theorem tree114_def : tree114 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999]
  [11809, 11841, 11833, 11817, 11877, 11853, 11805, 11813, 11821, 11825, 11829, 11837, 11845, 11849, 11861, 11865,
    11869, 11873, 11881, 11885]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal114 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11947, 11951, 11955, 11959, 11963, 11967, 11971, 11975, 11979, 11983, 11987, 11991, 11995, 11999]
  [11809, 11841, 11833, 11817, 11877, 11853, 11805, 11813, 11821, 11825, 11829, 11837, 11845, 11849, 11861, 11865,
    11869, 11873, 11881, 11885]
def live114 : Flapjack.NumSet := setValue502
def coloured114 : Flapjack.NumSet := setValue419
def result114 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def tree115 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree114 tree113)).val
theorem tree115_def : tree115 = (.seq tree114 tree113) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal115 : Flapjack.RegAlloc.ClashTree := .seq literal114 literal113
def live115 : Flapjack.NumSet := setValue463
def coloured115 : Flapjack.NumSet := setValue470
def result115 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def tree116 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree116_def : tree116 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal116 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live116 : Flapjack.NumSet := setValue536
def coloured116 : Flapjack.NumSet := setValue538
def result116 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def tree117 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree116 tree115)).val
theorem tree117_def : tree117 = (.seq tree116 tree115) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal117 : Flapjack.RegAlloc.ClashTree := .seq literal116 literal115
def live117 : Flapjack.NumSet := setValue463
def coloured117 : Flapjack.NumSet := setValue470
def result117 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def tree118 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [12205, 12201, 12197, 12193, 12189, 12185, 12181, 12177, 12173, 12169, 12161, 12157, 12153, 12149, 12145, 12141,
    12137, 12133, 12129, 12125]
  [11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11861, 11865, 11869,
    11873, 11877, 11881, 11885])).val
theorem tree118_def : tree118 = (Flapjack.RegAlloc.ClashTree.delta
  [12205, 12201, 12197, 12193, 12189, 12185, 12181, 12177, 12173, 12169, 12161, 12157, 12153, 12149, 12145, 12141,
    12137, 12133, 12129, 12125]
  [11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11861, 11865, 11869,
    11873, 11877, 11881, 11885]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal118 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [12205, 12201, 12197, 12193, 12189, 12185, 12181, 12177, 12173, 12169, 12161, 12157, 12153, 12149, 12145, 12141,
    12137, 12133, 12129, 12125]
  [11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11861, 11865, 11869,
    11873, 11877, 11881, 11885]
def live118 : Flapjack.NumSet := setValue463
def coloured118 : Flapjack.NumSet := setValue470
def result118 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def tree119 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree119_def : tree119 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal119 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live119 : Flapjack.NumSet := setValue536
def coloured119 : Flapjack.NumSet := setValue538
def result119 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def tree120 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree119 tree118)).val
theorem tree120_def : tree120 = (.seq tree119 tree118) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal120 : Flapjack.RegAlloc.ClashTree := .seq literal119 literal118
def live120 : Flapjack.NumSet := setValue463
def coloured120 : Flapjack.NumSet := setValue470
def result120 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def tree121 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree117 tree120)).val
theorem tree121_def : tree121 = (.branch (none) tree117 tree120) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal121 : Flapjack.RegAlloc.ClashTree := .branch (none) literal117 literal120
def live121 : Flapjack.NumSet := setValue463
def coloured121 : Flapjack.NumSet := setValue470
def result121 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue536, setValue538)
def setValue539 : Flapjack.NumSet := .bn setValue521 setValue472
def setValue540 : Flapjack.NumSet := .bn setValue523 setValue539
def setValue541 : Flapjack.NumSet := .bn setValue528 setValue540
def setValue542 : Flapjack.NumSet := .bn setValue527 setValue541
def setValue543 : Flapjack.NumSet := .bn setValue531 setValue540
def setValue544 : Flapjack.NumSet := .bn setValue529 setValue543
def setValue545 : Flapjack.NumSet := .bn setValue542 setValue544
def setValue546 : Flapjack.NumSet := .bn setValue545 setValue0
def setValue547 : Flapjack.NumSet := .bn setValue0 setValue546
def setValue548 : Flapjack.NumSet := .bs setValue416 () setValue516
def setValue549 : Flapjack.NumSet := .bn setValue548 setValue417
def setValue550 : Flapjack.NumSet := .bs setValue549 () setValue0
def tree122 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [11905, 11909])).val
theorem tree122_def : tree122 = (Flapjack.RegAlloc.ClashTree.delta [] [11905, 11909]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal122 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [11905, 11909]
def live122 : Flapjack.NumSet := setValue536
def coloured122 : Flapjack.NumSet := setValue538
def result122 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue547, setValue550)
def tree123 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree122 tree121)).val
theorem tree123_def : tree123 = (.seq tree122 tree121) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal123 : Flapjack.RegAlloc.ClashTree := .seq literal122 literal121
def live123 : Flapjack.NumSet := setValue463
def coloured123 : Flapjack.NumSet := setValue470
def result123 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue547, setValue550)
def tree124 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree123 tree100)).val
theorem tree124_def : tree124 = (.seq tree123 tree100) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal124 : Flapjack.RegAlloc.ClashTree := .seq literal123 literal100
def live124 : Flapjack.NumSet := setValue0
def coloured124 : Flapjack.NumSet := setValue0
def result124 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue547, setValue550)
def setValue551 : Flapjack.NumSet := .bn setValue526 setValue526
def setValue552 : Flapjack.NumSet := .bn setValue551 setValue529
def setValue553 : Flapjack.NumSet := .bn setValue530 setValue552
def setValue554 : Flapjack.NumSet := .bn setValue553 setValue0
def setValue555 : Flapjack.NumSet := .bn setValue0 setValue554
def tree125 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [11909, 11905] [11897, 11857])).val
theorem tree125_def : tree125 = (Flapjack.RegAlloc.ClashTree.delta [11909, 11905] [11897, 11857]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal125 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [11909, 11905] [11897, 11857]
def live125 : Flapjack.NumSet := setValue547
def coloured125 : Flapjack.NumSet := setValue550
def result125 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue555, setValue550)
def tree126 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree125 tree124)).val
theorem tree126_def : tree126 = (.seq tree125 tree124) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal126 : Flapjack.RegAlloc.ClashTree := .seq literal125 literal124
def live126 : Flapjack.NumSet := setValue0
def coloured126 : Flapjack.NumSet := setValue0
def result126 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue555, setValue550)
def tree127 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree127_def : tree127 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal127 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live127 : Flapjack.NumSet := setValue555
def coloured127 : Flapjack.NumSet := setValue550
def result127 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue555, setValue550)
def tree128 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree127 tree126)).val
theorem tree128_def : tree128 = (.seq tree127 tree126) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal128 : Flapjack.RegAlloc.ClashTree := .seq literal127 literal126
def live128 : Flapjack.NumSet := setValue0
def coloured128 : Flapjack.NumSet := setValue0
def result128 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue555, setValue550)
def setValue556 : Flapjack.NumSet := .bn setValue0 setValue397
def setValue557 : Flapjack.NumSet := .bn setValue556 setValue0
def setValue558 : Flapjack.NumSet := .bn setValue557 setValue0
def setValue559 : Flapjack.NumSet := .bn setValue558 setValue0
def setValue560 : Flapjack.NumSet := .bn setValue559 setValue559
def setValue561 : Flapjack.NumSet := .bn setValue558 setValue521
def setValue562 : Flapjack.NumSet := .bn setValue559 setValue561
def setValue563 : Flapjack.NumSet := .bn setValue560 setValue562
def setValue564 : Flapjack.NumSet := .bn setValue559 setValue522
def setValue565 : Flapjack.NumSet := .bn setValue562 setValue564
def setValue566 : Flapjack.NumSet := .bn setValue563 setValue565
def setValue567 : Flapjack.NumSet := .bn setValue562 setValue562
def setValue568 : Flapjack.NumSet := .bn setValue567 setValue565
def setValue569 : Flapjack.NumSet := .bn setValue566 setValue568
def setValue570 : Flapjack.NumSet := .bn setValue0 setValue569
def setValue571 : Flapjack.NumSet := .bn setValue1 setValue570
def setValue572 : Flapjack.NumSet := .bn setValue84 setValue412
def setValue573 : Flapjack.NumSet := .bn setValue37 setValue15
def setValue574 : Flapjack.NumSet := .bn setValue412 setValue573
def setValue575 : Flapjack.NumSet := .bn setValue572 setValue574
def setValue576 : Flapjack.NumSet := .bn setValue84 setValue573
def setValue577 : Flapjack.NumSet := .bn setValue576 setValue574
def setValue578 : Flapjack.NumSet := .bs setValue575 () setValue577
def setValue579 : Flapjack.NumSet := .bn setValue578 setValue0
def tree129 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [11897, 11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11857, 11861,
    11865, 11869, 11873, 11877, 11881, 11885]
  [2, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771, 11775, 11779,
    11783, 11787, 11791, 11795, 11799])).val
theorem tree129_def : tree129 = (Flapjack.RegAlloc.ClashTree.delta
  [11897, 11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11857, 11861,
    11865, 11869, 11873, 11877, 11881, 11885]
  [2, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771, 11775, 11779,
    11783, 11787, 11791, 11795, 11799]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal129 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [11897, 11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11857, 11861,
    11865, 11869, 11873, 11877, 11881, 11885]
  [2, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771, 11775, 11779,
    11783, 11787, 11791, 11795, 11799]
def live129 : Flapjack.NumSet := setValue555
def coloured129 : Flapjack.NumSet := setValue550
def result129 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue571, setValue579)
def tree130 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue571)).val
theorem tree130_def : tree130 = (.set setValue571) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal130 : Flapjack.RegAlloc.ClashTree := .set setValue571
def live130 : Flapjack.NumSet := setValue571
def coloured130 : Flapjack.NumSet := setValue579
def result130 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue571, setValue579)
def tree131 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree130 tree129)).val
theorem tree131_def : tree131 = (.seq tree130 tree129) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal131 : Flapjack.RegAlloc.ClashTree := .seq literal130 literal129
def live131 : Flapjack.NumSet := setValue555
def coloured131 : Flapjack.NumSet := setValue550
def result131 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue571, setValue579)
def setValue580 : Flapjack.NumSet := .bn setValue1 setValue554
def setValue581 : Flapjack.NumSet := .bs setValue548 () setValue417
def setValue582 : Flapjack.NumSet := .bs setValue581 () setValue0
def tree132 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree132_def : tree132 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal132 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live132 : Flapjack.NumSet := setValue555
def coloured132 : Flapjack.NumSet := setValue550
def result132 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue580, setValue582)
def setValue583 : Flapjack.NumSet := .bn setValue525 setValue0
def setValue584 : Flapjack.NumSet := .bn setValue583 setValue0
def setValue585 : Flapjack.NumSet := .bn setValue584 setValue0
def setValue586 : Flapjack.NumSet := .bn setValue0 setValue585
def setValue587 : Flapjack.NumSet := .bn setValue586 setValue569
def setValue588 : Flapjack.NumSet := .bn setValue1 setValue587
def setValue589 : Flapjack.NumSet := .bs setValue84 () setValue412
def setValue590 : Flapjack.NumSet := .bn setValue589 setValue574
def setValue591 : Flapjack.NumSet := .bs setValue590 () setValue577
def setValue592 : Flapjack.NumSet := .bn setValue591 setValue0
def tree133 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11857, 11861, 11865,
    11869, 11873, 11877, 11881, 11885]
  [2, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771, 11775, 11779,
    11783, 11787, 11791, 11795, 11799])).val
theorem tree133_def : tree133 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11857, 11861, 11865,
    11869, 11873, 11877, 11881, 11885]
  [2, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771, 11775, 11779,
    11783, 11787, 11791, 11795, 11799]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal133 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 11805, 11809, 11813, 11817, 11821, 11825, 11829, 11833, 11837, 11841, 11845, 11849, 11853, 11857, 11861, 11865,
    11869, 11873, 11877, 11881, 11885]
  [2, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771, 11775, 11779,
    11783, 11787, 11791, 11795, 11799]
def live133 : Flapjack.NumSet := setValue580
def coloured133 : Flapjack.NumSet := setValue582
def result133 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue588, setValue592)
def tree134 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree133 tree132)).val
theorem tree134_def : tree134 = (.seq tree133 tree132) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal134 : Flapjack.RegAlloc.ClashTree := .seq literal133 literal132
def live134 : Flapjack.NumSet := setValue555
def coloured134 : Flapjack.NumSet := setValue550
def result134 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue588, setValue592)
def tree135 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue571)).val
theorem tree135_def : tree135 = (.set setValue571) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal135 : Flapjack.RegAlloc.ClashTree := .set setValue571
def live135 : Flapjack.NumSet := setValue588
def coloured135 : Flapjack.NumSet := setValue592
def result135 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue571, setValue579)
def tree136 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree135 tree134)).val
theorem tree136_def : tree136 = (.seq tree135 tree134) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal136 : Flapjack.RegAlloc.ClashTree := .seq literal135 literal134
def live136 : Flapjack.NumSet := setValue555
def coloured136 : Flapjack.NumSet := setValue550
def result136 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue571, setValue579)
def setValue593 : Flapjack.NumSet := .bn setValue395 setValue570
def setValue594 : Flapjack.NumSet := .bs setValue412 () setValue573
def setValue595 : Flapjack.NumSet := .bs setValue572 () setValue594
def setValue596 : Flapjack.NumSet := .bs setValue84 () setValue573
def setValue597 : Flapjack.NumSet := .bs setValue596 () setValue594
def setValue598 : Flapjack.NumSet := .bs setValue595 () setValue597
def setValue599 : Flapjack.NumSet := .bn setValue598 setValue0
def tree137 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue593) tree131 tree136)).val
theorem tree137_def : tree137 = (.branch (some setValue593) tree131 tree136) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal137 : Flapjack.RegAlloc.ClashTree := .branch (some setValue593) literal131 literal136
def live137 : Flapjack.NumSet := setValue555
def coloured137 : Flapjack.NumSet := setValue550
def result137 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue593, setValue599)
def tree138 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree137 tree128)).val
theorem tree138_def : tree138 = (.seq tree137 tree128) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal138 : Flapjack.RegAlloc.ClashTree := .seq literal137 literal128
def live138 : Flapjack.NumSet := setValue0
def coloured138 : Flapjack.NumSet := setValue0
def result138 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue593, setValue599)
def setValue600 : Flapjack.NumSet := .bn setValue0 setValue557
def setValue601 : Flapjack.NumSet := .bn setValue600 setValue0
def setValue602 : Flapjack.NumSet := .bn setValue601 setValue601
def setValue603 : Flapjack.NumSet := .bn setValue600 setValue558
def setValue604 : Flapjack.NumSet := .bn setValue601 setValue603
def setValue605 : Flapjack.NumSet := .bn setValue602 setValue604
def setValue606 : Flapjack.NumSet := .bn setValue0 setValue558
def setValue607 : Flapjack.NumSet := .bn setValue601 setValue606
def setValue608 : Flapjack.NumSet := .bn setValue604 setValue607
def setValue609 : Flapjack.NumSet := .bn setValue605 setValue608
def setValue610 : Flapjack.NumSet := .bn setValue603 setValue606
def setValue611 : Flapjack.NumSet := .bn setValue604 setValue610
def setValue612 : Flapjack.NumSet := .bn setValue611 setValue608
def setValue613 : Flapjack.NumSet := .bn setValue609 setValue612
def setValue614 : Flapjack.NumSet := .bn setValue613 setValue0
def setValue615 : Flapjack.NumSet := .bn setValue0 setValue614
def setValue616 : Flapjack.NumSet := .bs setValue16 () setValue2
def setValue617 : Flapjack.NumSet := .bn setValue15 setValue15
def setValue618 : Flapjack.NumSet := .bs setValue16 () setValue617
def setValue619 : Flapjack.NumSet := .bs setValue616 () setValue618
def setValue620 : Flapjack.NumSet := .bn setValue37 setValue0
def setValue621 : Flapjack.NumSet := .bs setValue84 () setValue620
def setValue622 : Flapjack.NumSet := .bs setValue412 () setValue412
def setValue623 : Flapjack.NumSet := .bs setValue621 () setValue622
def setValue624 : Flapjack.NumSet := .bn setValue619 setValue623
def setValue625 : Flapjack.NumSet := .bs setValue624 () setValue0
def tree139 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771,
    11775, 11779, 11783, 11787, 11791, 11795, 11799]
  [11601, 11633, 11625, 11609, 11665, 11645, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633,
    11637, 11641, 11645, 11689, 11649, 11653, 11657, 11661, 11665, 11669, 11673])).val
theorem tree139_def : tree139 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771,
    11775, 11779, 11783, 11787, 11791, 11795, 11799]
  [11601, 11633, 11625, 11609, 11665, 11645, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633,
    11637, 11641, 11645, 11689, 11649, 11653, 11657, 11661, 11665, 11669, 11673]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal139 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11719, 11723, 11727, 11731, 11735, 11739, 11743, 11747, 11751, 11755, 11759, 11763, 11767, 11771,
    11775, 11779, 11783, 11787, 11791, 11795, 11799]
  [11601, 11633, 11625, 11609, 11665, 11645, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633,
    11637, 11641, 11645, 11689, 11649, 11653, 11657, 11661, 11665, 11669, 11673]
def live139 : Flapjack.NumSet := setValue593
def coloured139 : Flapjack.NumSet := setValue599
def result139 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue615, setValue625)
def tree140 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree139 tree138)).val
theorem tree140_def : tree140 = (.seq tree139 tree138) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal140 : Flapjack.RegAlloc.ClashTree := .seq literal139 literal138
def live140 : Flapjack.NumSet := setValue0
def coloured140 : Flapjack.NumSet := setValue0
def result140 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue615, setValue625)
def tree141 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree141_def : tree141 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal141 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live141 : Flapjack.NumSet := setValue615
def coloured141 : Flapjack.NumSet := setValue625
def result141 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue615, setValue625)
def tree142 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree141 tree140)).val
theorem tree142_def : tree142 = (.seq tree141 tree140) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal142 : Flapjack.RegAlloc.ClashTree := .seq literal141 literal140
def live142 : Flapjack.NumSet := setValue0
def coloured142 : Flapjack.NumSet := setValue0
def result142 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue615, setValue625)
def setValue626 : Flapjack.NumSet := .bn setValue0 setValue556
def setValue627 : Flapjack.NumSet := .bn setValue626 setValue0
def setValue628 : Flapjack.NumSet := .bn setValue627 setValue600
def setValue629 : Flapjack.NumSet := .bn setValue0 setValue600
def setValue630 : Flapjack.NumSet := .bn setValue628 setValue629
def setValue631 : Flapjack.NumSet := .bn setValue629 setValue629
def setValue632 : Flapjack.NumSet := .bn setValue630 setValue631
def setValue633 : Flapjack.NumSet := .bn setValue600 setValue600
def setValue634 : Flapjack.NumSet := .bn setValue629 setValue633
def setValue635 : Flapjack.NumSet := .bn setValue631 setValue634
def setValue636 : Flapjack.NumSet := .bn setValue632 setValue635
def setValue637 : Flapjack.NumSet := .bn setValue635 setValue635
def setValue638 : Flapjack.NumSet := .bn setValue636 setValue637
def setValue639 : Flapjack.NumSet := .bn setValue0 setValue638
def setValue640 : Flapjack.NumSet := .bn setValue1 setValue639
def setValue641 : Flapjack.NumSet := .bn setValue412 setValue412
def setValue642 : Flapjack.NumSet := .bn setValue576 setValue641
def setValue643 : Flapjack.NumSet := .bs setValue575 () setValue642
def setValue644 : Flapjack.NumSet := .bn setValue643 setValue0
def tree143 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [11689, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633, 11637, 11641, 11645, 11649, 11653,
    11657, 11661, 11665, 11669, 11673]
  [2, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567, 11571, 11575,
    11579, 11583, 11587, 11591])).val
theorem tree143_def : tree143 = (Flapjack.RegAlloc.ClashTree.delta
  [11689, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633, 11637, 11641, 11645, 11649, 11653,
    11657, 11661, 11665, 11669, 11673]
  [2, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567, 11571, 11575,
    11579, 11583, 11587, 11591]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal143 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [11689, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633, 11637, 11641, 11645, 11649, 11653,
    11657, 11661, 11665, 11669, 11673]
  [2, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567, 11571, 11575,
    11579, 11583, 11587, 11591]
def live143 : Flapjack.NumSet := setValue615
def coloured143 : Flapjack.NumSet := setValue625
def result143 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue640, setValue644)
def tree144 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue640)).val
theorem tree144_def : tree144 = (.set setValue640) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal144 : Flapjack.RegAlloc.ClashTree := .set setValue640
def live144 : Flapjack.NumSet := setValue640
def coloured144 : Flapjack.NumSet := setValue644
def result144 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue640, setValue644)
def tree145 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree144 tree143)).val
theorem tree145_def : tree145 = (.seq tree144 tree143) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal145 : Flapjack.RegAlloc.ClashTree := .seq literal144 literal143
def live145 : Flapjack.NumSet := setValue615
def coloured145 : Flapjack.NumSet := setValue625
def result145 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue640, setValue644)
def setValue645 : Flapjack.NumSet := .bn setValue1 setValue614
def setValue646 : Flapjack.NumSet := .bs setValue619 () setValue623
def setValue647 : Flapjack.NumSet := .bs setValue646 () setValue0
def tree146 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree146_def : tree146 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal146 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live146 : Flapjack.NumSet := setValue615
def coloured146 : Flapjack.NumSet := setValue625
def result146 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue645, setValue647)
def setValue648 : Flapjack.NumSet := .bn setValue606 setValue0
def setValue649 : Flapjack.NumSet := .bn setValue0 setValue648
def setValue650 : Flapjack.NumSet := .bn setValue649 setValue0
def setValue651 : Flapjack.NumSet := .bn setValue0 setValue650
def setValue652 : Flapjack.NumSet := .bn setValue651 setValue638
def setValue653 : Flapjack.NumSet := .bn setValue1 setValue652
def setValue654 : Flapjack.NumSet := .bs setValue590 () setValue642
def setValue655 : Flapjack.NumSet := .bn setValue654 setValue0
def tree147 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633, 11637, 11641, 11645, 11649, 11653, 11657,
    11661, 11665, 11669, 11673]
  [2, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567, 11571, 11575,
    11579, 11583, 11587, 11591])).val
theorem tree147_def : tree147 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633, 11637, 11641, 11645, 11649, 11653, 11657,
    11661, 11665, 11669, 11673]
  [2, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567, 11571, 11575,
    11579, 11583, 11587, 11591]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal147 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 11597, 11601, 11605, 11609, 11613, 11617, 11621, 11625, 11629, 11633, 11637, 11641, 11645, 11649, 11653, 11657,
    11661, 11665, 11669, 11673]
  [2, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567, 11571, 11575,
    11579, 11583, 11587, 11591]
def live147 : Flapjack.NumSet := setValue645
def coloured147 : Flapjack.NumSet := setValue647
def result147 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue653, setValue655)
def tree148 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree147 tree146)).val
theorem tree148_def : tree148 = (.seq tree147 tree146) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal148 : Flapjack.RegAlloc.ClashTree := .seq literal147 literal146
def live148 : Flapjack.NumSet := setValue615
def coloured148 : Flapjack.NumSet := setValue625
def result148 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue653, setValue655)
def tree149 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue640)).val
theorem tree149_def : tree149 = (.set setValue640) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal149 : Flapjack.RegAlloc.ClashTree := .set setValue640
def live149 : Flapjack.NumSet := setValue653
def coloured149 : Flapjack.NumSet := setValue655
def result149 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue640, setValue644)
def tree150 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree149 tree148)).val
theorem tree150_def : tree150 = (.seq tree149 tree148) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal150 : Flapjack.RegAlloc.ClashTree := .seq literal149 literal148
def live150 : Flapjack.NumSet := setValue615
def coloured150 : Flapjack.NumSet := setValue625
def result150 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue640, setValue644)
def setValue656 : Flapjack.NumSet := .bn setValue395 setValue639
def setValue657 : Flapjack.NumSet := .bs setValue596 () setValue622
def setValue658 : Flapjack.NumSet := .bs setValue595 () setValue657
def setValue659 : Flapjack.NumSet := .bn setValue658 setValue0
def tree151 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue656) tree145 tree150)).val
theorem tree151_def : tree151 = (.branch (some setValue656) tree145 tree150) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal151 : Flapjack.RegAlloc.ClashTree := .branch (some setValue656) literal145 literal150
def live151 : Flapjack.NumSet := setValue615
def coloured151 : Flapjack.NumSet := setValue625
def result151 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue656, setValue659)
def tree152 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree151 tree142)).val
theorem tree152_def : tree152 = (.seq tree151 tree142) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal152 : Flapjack.RegAlloc.ClashTree := .seq literal151 literal142
def live152 : Flapjack.NumSet := setValue0
def coloured152 : Flapjack.NumSet := setValue0
def result152 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue656, setValue659)
def setValue660 : Flapjack.NumSet := .bn setValue0 setValue626
def setValue661 : Flapjack.NumSet := .bn setValue660 setValue660
def setValue662 : Flapjack.NumSet := .bn setValue661 setValue661
def setValue663 : Flapjack.NumSet := .bn setValue660 setValue0
def setValue664 : Flapjack.NumSet := .bn setValue661 setValue663
def setValue665 : Flapjack.NumSet := .bn setValue662 setValue664
def setValue666 : Flapjack.NumSet := .bn setValue664 setValue664
def setValue667 : Flapjack.NumSet := .bn setValue665 setValue666
def setValue668 : Flapjack.NumSet := .bn setValue660 setValue627
def setValue669 : Flapjack.NumSet := .bn setValue661 setValue668
def setValue670 : Flapjack.NumSet := .bn setValue664 setValue669
def setValue671 : Flapjack.NumSet := .bn setValue666 setValue670
def setValue672 : Flapjack.NumSet := .bn setValue667 setValue671
def setValue673 : Flapjack.NumSet := .bn setValue672 setValue0
def setValue674 : Flapjack.NumSet := .bn setValue0 setValue673
def setValue675 : Flapjack.NumSet := .bn setValue84 setValue430
def setValue676 : Flapjack.NumSet := .bs setValue37 () setValue15
def setValue677 : Flapjack.NumSet := .bn setValue412 setValue676
def setValue678 : Flapjack.NumSet := .bn setValue675 setValue677
def setValue679 : Flapjack.NumSet := .bn setValue84 setValue676
def setValue680 : Flapjack.NumSet := .bn setValue430 setValue430
def setValue681 : Flapjack.NumSet := .bn setValue679 setValue680
def setValue682 : Flapjack.NumSet := .bn setValue678 setValue681
def setValue683 : Flapjack.NumSet := .bs setValue682 () setValue0
def tree153 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567,
    11571, 11575, 11579, 11583, 11587, 11591]
  [11365, 11313, 11381, 11329, 11345, 11309, 11393, 11389, 11385, 11377, 11373, 11369, 11361, 11357, 11353, 11349,
    11341, 11337, 11333, 11325, 11321, 11317, 11305, 11301, 11297, 11293])).val
theorem tree153_def : tree153 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567,
    11571, 11575, 11579, 11583, 11587, 11591]
  [11365, 11313, 11381, 11329, 11345, 11309, 11393, 11389, 11385, 11377, 11373, 11369, 11361, 11357, 11353, 11349,
    11341, 11337, 11333, 11325, 11321, 11317, 11305, 11301, 11297, 11293]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal153 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 11515, 11519, 11523, 11527, 11531, 11535, 11539, 11543, 11547, 11551, 11555, 11559, 11563, 11567,
    11571, 11575, 11579, 11583, 11587, 11591]
  [11365, 11313, 11381, 11329, 11345, 11309, 11393, 11389, 11385, 11377, 11373, 11369, 11361, 11357, 11353, 11349,
    11341, 11337, 11333, 11325, 11321, 11317, 11305, 11301, 11297, 11293]
def live153 : Flapjack.NumSet := setValue656
def coloured153 : Flapjack.NumSet := setValue659
def result153 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue674, setValue683)
def tree154 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree153 tree152)).val
theorem tree154_def : tree154 = (.seq tree153 tree152) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal154 : Flapjack.RegAlloc.ClashTree := .seq literal153 literal152
def live154 : Flapjack.NumSet := setValue0
def coloured154 : Flapjack.NumSet := setValue0
def result154 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue674, setValue683)
def tree155 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree155_def : tree155 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal155 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live155 : Flapjack.NumSet := setValue674
def coloured155 : Flapjack.NumSet := setValue683
def result155 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue674, setValue683)
def tree156 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree155 tree154)).val
theorem tree156_def : tree156 = (.seq tree155 tree154) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal156 : Flapjack.RegAlloc.ClashTree := .seq literal155 literal154
def live156 : Flapjack.NumSet := setValue0
def coloured156 : Flapjack.NumSet := setValue0
def result156 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue674, setValue683)
def setValue684 : Flapjack.NumSet := .bn setValue0 setValue396
def setValue685 : Flapjack.NumSet := .bn setValue684 setValue0
def setValue686 : Flapjack.NumSet := .bn setValue685 setValue0
def setValue687 : Flapjack.NumSet := .bn setValue686 setValue0
def setValue688 : Flapjack.NumSet := .bn setValue687 setValue687
def setValue689 : Flapjack.NumSet := .bn setValue0 setValue687
def setValue690 : Flapjack.NumSet := .bn setValue688 setValue689
def setValue691 : Flapjack.NumSet := .bn setValue686 setValue626
def setValue692 : Flapjack.NumSet := .bn setValue687 setValue691
def setValue693 : Flapjack.NumSet := .bn setValue689 setValue692
def setValue694 : Flapjack.NumSet := .bn setValue690 setValue693
def setValue695 : Flapjack.NumSet := .bn setValue689 setValue688
def setValue696 : Flapjack.NumSet := .bn setValue687 setValue0
def setValue697 : Flapjack.NumSet := .bn setValue689 setValue696
def setValue698 : Flapjack.NumSet := .bn setValue695 setValue697
def setValue699 : Flapjack.NumSet := .bn setValue694 setValue698
def setValue700 : Flapjack.NumSet := .bn setValue688 setValue688
def setValue701 : Flapjack.NumSet := .bn setValue687 setValue660
def setValue702 : Flapjack.NumSet := .bn setValue689 setValue701
def setValue703 : Flapjack.NumSet := .bn setValue700 setValue702
def setValue704 : Flapjack.NumSet := .bn setValue693 setValue702
def setValue705 : Flapjack.NumSet := .bn setValue703 setValue704
def setValue706 : Flapjack.NumSet := .bn setValue699 setValue705
def setValue707 : Flapjack.NumSet := .bn setValue706 setValue0
def setValue708 : Flapjack.NumSet := .bn setValue0 setValue707
def setValue709 : Flapjack.NumSet := .bs setValue84 () setValue180
def setValue710 : Flapjack.NumSet := .bs setValue412 () setValue676
def setValue711 : Flapjack.NumSet := .bs setValue709 () setValue710
def setValue712 : Flapjack.NumSet := .bs setValue1 () setValue101
def setValue713 : Flapjack.NumSet := .bs setValue709 () setValue712
def setValue714 : Flapjack.NumSet := .bn setValue711 setValue713
def setValue715 : Flapjack.NumSet := .bs setValue714 () setValue0
def tree157 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [11393, 11389, 11385, 11381, 11377, 11373, 11369, 11365, 11361, 11357, 11353, 11349, 11345, 11341, 11337, 11333,
    11329, 11325, 11321, 11317, 11313, 11309, 11305, 11301, 11297, 11293]
  [11149, 11153, 11157, 11161, 11165, 11281, 11277, 11169, 11273, 11173, 11177, 11181, 11185, 11265, 11189, 11193,
    11197, 11261, 11201, 11205, 11209, 11213, 11217, 11221, 11225, 11257])).val
theorem tree157_def : tree157 = (Flapjack.RegAlloc.ClashTree.delta
  [11393, 11389, 11385, 11381, 11377, 11373, 11369, 11365, 11361, 11357, 11353, 11349, 11345, 11341, 11337, 11333,
    11329, 11325, 11321, 11317, 11313, 11309, 11305, 11301, 11297, 11293]
  [11149, 11153, 11157, 11161, 11165, 11281, 11277, 11169, 11273, 11173, 11177, 11181, 11185, 11265, 11189, 11193,
    11197, 11261, 11201, 11205, 11209, 11213, 11217, 11221, 11225, 11257]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal157 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [11393, 11389, 11385, 11381, 11377, 11373, 11369, 11365, 11361, 11357, 11353, 11349, 11345, 11341, 11337, 11333,
    11329, 11325, 11321, 11317, 11313, 11309, 11305, 11301, 11297, 11293]
  [11149, 11153, 11157, 11161, 11165, 11281, 11277, 11169, 11273, 11173, 11177, 11181, 11185, 11265, 11189, 11193,
    11197, 11261, 11201, 11205, 11209, 11213, 11217, 11221, 11225, 11257]
def live157 : Flapjack.NumSet := setValue674
def coloured157 : Flapjack.NumSet := setValue683
def result157 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue708, setValue715)
def tree158 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree158_def : tree158 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal158 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live158 : Flapjack.NumSet := setValue708
def coloured158 : Flapjack.NumSet := setValue715
def result158 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue708, setValue715)
def tree159 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree158 tree157)).val
theorem tree159_def : tree159 = (.seq tree158 tree157) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal159 : Flapjack.RegAlloc.ClashTree := .seq literal158 literal157
def live159 : Flapjack.NumSet := setValue674
def coloured159 : Flapjack.NumSet := setValue683
def result159 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue708, setValue715)
def setValue716 : Flapjack.NumSet := .bn setValue0 setValue686
def setValue717 : Flapjack.NumSet := .bn setValue716 setValue716
def setValue718 : Flapjack.NumSet := .bn setValue716 setValue0
def setValue719 : Flapjack.NumSet := .bn setValue717 setValue718
def setValue720 : Flapjack.NumSet := .bn setValue718 setValue718
def setValue721 : Flapjack.NumSet := .bn setValue719 setValue720
def setValue722 : Flapjack.NumSet := .bn setValue716 setValue687
def setValue723 : Flapjack.NumSet := .bn setValue718 setValue722
def setValue724 : Flapjack.NumSet := .bn setValue720 setValue723
def setValue725 : Flapjack.NumSet := .bn setValue721 setValue724
def setValue726 : Flapjack.NumSet := .bn setValue724 setValue724
def setValue727 : Flapjack.NumSet := .bn setValue725 setValue726
def setValue728 : Flapjack.NumSet := .bn setValue0 setValue727
def setValue729 : Flapjack.NumSet := .bn setValue395 setValue728
def setValue730 : Flapjack.NumSet := .bs setValue589 () setValue594
def setValue731 : Flapjack.NumSet := .bs setValue595 () setValue730
def setValue732 : Flapjack.NumSet := .bn setValue731 setValue0
def tree160 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [11281, 11277, 11273, 11265, 11261, 11257, 11149, 11153, 11157, 11161, 11165, 11169, 11173, 11177, 11181, 11185,
    11189, 11193, 11197, 11201, 11205, 11209, 11213, 11217, 11221, 11225]
  [10, 8, 6, 12, 2, 4, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103, 11107, 11111, 11115, 11119,
    11123, 11127, 11131, 11135, 11139, 11143])).val
theorem tree160_def : tree160 = (Flapjack.RegAlloc.ClashTree.delta
  [11281, 11277, 11273, 11265, 11261, 11257, 11149, 11153, 11157, 11161, 11165, 11169, 11173, 11177, 11181, 11185,
    11189, 11193, 11197, 11201, 11205, 11209, 11213, 11217, 11221, 11225]
  [10, 8, 6, 12, 2, 4, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103, 11107, 11111, 11115, 11119,
    11123, 11127, 11131, 11135, 11139, 11143]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal160 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [11281, 11277, 11273, 11265, 11261, 11257, 11149, 11153, 11157, 11161, 11165, 11169, 11173, 11177, 11181, 11185,
    11189, 11193, 11197, 11201, 11205, 11209, 11213, 11217, 11221, 11225]
  [10, 8, 6, 12, 2, 4, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103, 11107, 11111, 11115, 11119,
    11123, 11127, 11131, 11135, 11139, 11143]
def live160 : Flapjack.NumSet := setValue708
def coloured160 : Flapjack.NumSet := setValue715
def result160 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue729, setValue732)
def tree161 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue729)).val
theorem tree161_def : tree161 = (.set setValue729) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal161 : Flapjack.RegAlloc.ClashTree := .set setValue729
def live161 : Flapjack.NumSet := setValue729
def coloured161 : Flapjack.NumSet := setValue732
def result161 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue729, setValue732)
def tree162 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree161 tree160)).val
theorem tree162_def : tree162 = (.seq tree161 tree160) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal162 : Flapjack.RegAlloc.ClashTree := .seq literal161 literal160
def live162 : Flapjack.NumSet := setValue708
def coloured162 : Flapjack.NumSet := setValue715
def result162 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue729, setValue732)
def setValue733 : Flapjack.NumSet := .bn setValue1 setValue707
def setValue734 : Flapjack.NumSet := .bs setValue711 () setValue713
def setValue735 : Flapjack.NumSet := .bs setValue734 () setValue0
def tree163 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree163_def : tree163 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal163 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live163 : Flapjack.NumSet := setValue708
def coloured163 : Flapjack.NumSet := setValue715
def result163 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue733, setValue735)
def setValue736 : Flapjack.NumSet := .bn setValue696 setValue0
def setValue737 : Flapjack.NumSet := .bn setValue0 setValue660
def setValue738 : Flapjack.NumSet := .bn setValue0 setValue737
def setValue739 : Flapjack.NumSet := .bn setValue736 setValue738
def setValue740 : Flapjack.NumSet := .bn setValue739 setValue0
def setValue741 : Flapjack.NumSet := .bn setValue738 setValue738
def setValue742 : Flapjack.NumSet := .bn setValue739 setValue741
def setValue743 : Flapjack.NumSet := .bn setValue740 setValue742
def setValue744 : Flapjack.NumSet := .bn setValue743 setValue727
def setValue745 : Flapjack.NumSet := .bn setValue1 setValue744
def setValue746 : Flapjack.NumSet := .bs setValue730 () setValue730
def setValue747 : Flapjack.NumSet := .bn setValue746 setValue0
def tree164 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 11149, 11153, 11157, 11161, 11165, 11169, 11173, 11177, 11181, 11185, 11189, 11193, 11197, 11201, 11205, 11209,
    11213, 11217, 11221, 11225]
  [2, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103, 11107, 11111, 11115, 11119, 11123, 11127,
    11131, 11135, 11139, 11143])).val
theorem tree164_def : tree164 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 11149, 11153, 11157, 11161, 11165, 11169, 11173, 11177, 11181, 11185, 11189, 11193, 11197, 11201, 11205, 11209,
    11213, 11217, 11221, 11225]
  [2, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103, 11107, 11111, 11115, 11119, 11123, 11127,
    11131, 11135, 11139, 11143]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal164 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 11149, 11153, 11157, 11161, 11165, 11169, 11173, 11177, 11181, 11185, 11189, 11193, 11197, 11201, 11205, 11209,
    11213, 11217, 11221, 11225]
  [2, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103, 11107, 11111, 11115, 11119, 11123, 11127,
    11131, 11135, 11139, 11143]
def live164 : Flapjack.NumSet := setValue733
def coloured164 : Flapjack.NumSet := setValue735
def result164 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue745, setValue747)
def tree165 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree164 tree163)).val
theorem tree165_def : tree165 = (.seq tree164 tree163) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal165 : Flapjack.RegAlloc.ClashTree := .seq literal164 literal163
def live165 : Flapjack.NumSet := setValue708
def coloured165 : Flapjack.NumSet := setValue715
def result165 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue745, setValue747)
def setValue748 : Flapjack.NumSet := .bn setValue1 setValue728
def setValue749 : Flapjack.NumSet := .bs setValue575 () setValue575
def setValue750 : Flapjack.NumSet := .bn setValue749 setValue0
def tree166 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue748)).val
theorem tree166_def : tree166 = (.set setValue748) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal166 : Flapjack.RegAlloc.ClashTree := .set setValue748
def live166 : Flapjack.NumSet := setValue745
def coloured166 : Flapjack.NumSet := setValue747
def result166 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue748, setValue750)
def tree167 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree166 tree165)).val
theorem tree167_def : tree167 = (.seq tree166 tree165) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal167 : Flapjack.RegAlloc.ClashTree := .seq literal166 literal165
def live167 : Flapjack.NumSet := setValue708
def coloured167 : Flapjack.NumSet := setValue715
def result167 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue748, setValue750)
def setValue751 : Flapjack.NumSet := .bn setValue440 setValue728
def setValue752 : Flapjack.NumSet := .bs setValue84 () setValue430
def setValue753 : Flapjack.NumSet := .bs setValue752 () setValue710
def setValue754 : Flapjack.NumSet := .bs setValue430 () setValue676
def setValue755 : Flapjack.NumSet := .bs setValue752 () setValue754
def setValue756 : Flapjack.NumSet := .bs setValue753 () setValue755
def setValue757 : Flapjack.NumSet := .bn setValue756 setValue0
def tree168 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue751) tree162 tree167)).val
theorem tree168_def : tree168 = (.branch (some setValue751) tree162 tree167) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal168 : Flapjack.RegAlloc.ClashTree := .branch (some setValue751) literal162 literal167
def live168 : Flapjack.NumSet := setValue708
def coloured168 : Flapjack.NumSet := setValue715
def result168 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue751, setValue757)
def tree169 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree168 tree159)).val
theorem tree169_def : tree169 = (.seq tree168 tree159) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal169 : Flapjack.RegAlloc.ClashTree := .seq literal168 literal159
def live169 : Flapjack.NumSet := setValue674
def coloured169 : Flapjack.NumSet := setValue683
def result169 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue751, setValue757)
def setValue758 : Flapjack.NumSet := .bn setValue0 setValue685
def setValue759 : Flapjack.NumSet := .bn setValue758 setValue758
def setValue760 : Flapjack.NumSet := .bn setValue758 setValue0
def setValue761 : Flapjack.NumSet := .bn setValue759 setValue760
def setValue762 : Flapjack.NumSet := .bn setValue0 setValue760
def setValue763 : Flapjack.NumSet := .bn setValue761 setValue762
def setValue764 : Flapjack.NumSet := .bn setValue760 setValue760
def setValue765 : Flapjack.NumSet := .bn setValue761 setValue764
def setValue766 : Flapjack.NumSet := .bn setValue763 setValue765
def setValue767 : Flapjack.NumSet := .bn setValue0 setValue758
def setValue768 : Flapjack.NumSet := .bn setValue767 setValue760
def setValue769 : Flapjack.NumSet := .bn setValue768 setValue762
def setValue770 : Flapjack.NumSet := .bn setValue758 setValue686
def setValue771 : Flapjack.NumSet := .bn setValue760 setValue770
def setValue772 : Flapjack.NumSet := .bn setValue762 setValue771
def setValue773 : Flapjack.NumSet := .bn setValue769 setValue772
def setValue774 : Flapjack.NumSet := .bn setValue766 setValue773
def setValue775 : Flapjack.NumSet := .bn setValue768 setValue764
def setValue776 : Flapjack.NumSet := .bn setValue763 setValue775
def setValue777 : Flapjack.NumSet := .bn setValue763 setValue772
def setValue778 : Flapjack.NumSet := .bn setValue776 setValue777
def setValue779 : Flapjack.NumSet := .bn setValue774 setValue778
def setValue780 : Flapjack.NumSet := .bn setValue779 setValue0
def setValue781 : Flapjack.NumSet := .bn setValue0 setValue780
def setValue782 : Flapjack.NumSet := .bs setValue180 () setValue430
def setValue783 : Flapjack.NumSet := .bs setValue180 () setValue366
def setValue784 : Flapjack.NumSet := .bs setValue782 () setValue783
def setValue785 : Flapjack.NumSet := .bs setValue430 () setValue161
def setValue786 : Flapjack.NumSet := .bs setValue233 () setValue785
def setValue787 : Flapjack.NumSet := .bn setValue784 setValue786
def setValue788 : Flapjack.NumSet := .bs setValue787 () setValue0
def tree170 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103,
    11107, 11111, 11115, 11119, 11123, 11127, 11131, 11135, 11139, 11143]
  [10925, 10957, 10893, 10881, 10877, 10909, 10917, 10941, 10905, 10865, 10869, 10889, 10857, 11013, 10861, 10873,
    11009, 10885, 11005, 10897, 11001, 10901, 10913, 10993, 10921, 10929, 10933, 10937, 10945, 10949, 10989, 10953])).val
theorem tree170_def : tree170 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103,
    11107, 11111, 11115, 11119, 11123, 11127, 11131, 11135, 11139, 11143]
  [10925, 10957, 10893, 10881, 10877, 10909, 10917, 10941, 10905, 10865, 10869, 10889, 10857, 11013, 10861, 10873,
    11009, 10885, 11005, 10897, 11001, 10901, 10913, 10993, 10921, 10929, 10933, 10937, 10945, 10949, 10989, 10953]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal170 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 11067, 11071, 11075, 11079, 11083, 11087, 11091, 11095, 11099, 11103,
    11107, 11111, 11115, 11119, 11123, 11127, 11131, 11135, 11139, 11143]
  [10925, 10957, 10893, 10881, 10877, 10909, 10917, 10941, 10905, 10865, 10869, 10889, 10857, 11013, 10861, 10873,
    11009, 10885, 11005, 10897, 11001, 10901, 10913, 10993, 10921, 10929, 10933, 10937, 10945, 10949, 10989, 10953]
def live170 : Flapjack.NumSet := setValue751
def coloured170 : Flapjack.NumSet := setValue757
def result170 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue781, setValue788)
def tree171 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree170 tree169)).val
theorem tree171_def : tree171 = (.seq tree170 tree169) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal171 : Flapjack.RegAlloc.ClashTree := .seq literal170 literal169
def live171 : Flapjack.NumSet := setValue674
def coloured171 : Flapjack.NumSet := setValue683
def result171 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue781, setValue788)
def tree172 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree172_def : tree172 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal172 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live172 : Flapjack.NumSet := setValue781
def coloured172 : Flapjack.NumSet := setValue788
def result172 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue781, setValue788)
def tree173 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree172 tree171)).val
theorem tree173_def : tree173 = (.seq tree172 tree171) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal173 : Flapjack.RegAlloc.ClashTree := .seq literal172 literal171
def live173 : Flapjack.NumSet := setValue674
def coloured173 : Flapjack.NumSet := setValue683
def result173 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue781, setValue788)
def setValue789 : Flapjack.NumSet := .bn setValue0 setValue767
def setValue790 : Flapjack.NumSet := .bn setValue767 setValue767
def setValue791 : Flapjack.NumSet := .bn setValue789 setValue790
def setValue792 : Flapjack.NumSet := .bn setValue791 setValue791
def setValue793 : Flapjack.NumSet := .bn setValue790 setValue790
def setValue794 : Flapjack.NumSet := .bn setValue791 setValue793
def setValue795 : Flapjack.NumSet := .bn setValue792 setValue794
def setValue796 : Flapjack.NumSet := .bn setValue795 setValue795
def setValue797 : Flapjack.NumSet := .bn setValue0 setValue796
def setValue798 : Flapjack.NumSet := .bn setValue395 setValue797
def setValue799 : Flapjack.NumSet := .bn setValue37 setValue37
def setValue800 : Flapjack.NumSet := .bn setValue799 setValue573
def setValue801 : Flapjack.NumSet := .bs setValue573 () setValue573
def setValue802 : Flapjack.NumSet := .bs setValue800 () setValue801
def setValue803 : Flapjack.NumSet := .bs setValue799 () setValue573
def setValue804 : Flapjack.NumSet := .bs setValue803 () setValue801
def setValue805 : Flapjack.NumSet := .bs setValue802 () setValue804
def setValue806 : Flapjack.NumSet := .bn setValue805 setValue0
def tree174 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [11013, 11009, 11005, 11001, 10993, 10989, 10857, 10861, 10865, 10869, 10873, 10877, 10881, 10885, 10889, 10893,
    10897, 10901, 10905, 10909, 10913, 10917, 10921, 10925, 10929, 10933, 10937, 10941, 10945, 10949, 10953, 10957]
  [2, 8, 6, 4, 12, 10, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787, 10791, 10795, 10799, 10803,
    10807, 10811, 10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851])).val
theorem tree174_def : tree174 = (Flapjack.RegAlloc.ClashTree.delta
  [11013, 11009, 11005, 11001, 10993, 10989, 10857, 10861, 10865, 10869, 10873, 10877, 10881, 10885, 10889, 10893,
    10897, 10901, 10905, 10909, 10913, 10917, 10921, 10925, 10929, 10933, 10937, 10941, 10945, 10949, 10953, 10957]
  [2, 8, 6, 4, 12, 10, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787, 10791, 10795, 10799, 10803,
    10807, 10811, 10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal174 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [11013, 11009, 11005, 11001, 10993, 10989, 10857, 10861, 10865, 10869, 10873, 10877, 10881, 10885, 10889, 10893,
    10897, 10901, 10905, 10909, 10913, 10917, 10921, 10925, 10929, 10933, 10937, 10941, 10945, 10949, 10953, 10957]
  [2, 8, 6, 4, 12, 10, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787, 10791, 10795, 10799, 10803,
    10807, 10811, 10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851]
def live174 : Flapjack.NumSet := setValue781
def coloured174 : Flapjack.NumSet := setValue788
def result174 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue798, setValue806)
def tree175 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue798)).val
theorem tree175_def : tree175 = (.set setValue798) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal175 : Flapjack.RegAlloc.ClashTree := .set setValue798
def live175 : Flapjack.NumSet := setValue798
def coloured175 : Flapjack.NumSet := setValue806
def result175 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue798, setValue806)
def tree176 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree175 tree174)).val
theorem tree176_def : tree176 = (.seq tree175 tree174) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal176 : Flapjack.RegAlloc.ClashTree := .seq literal175 literal174
def live176 : Flapjack.NumSet := setValue781
def coloured176 : Flapjack.NumSet := setValue788
def result176 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue798, setValue806)
def setValue807 : Flapjack.NumSet := .bn setValue1 setValue780
def setValue808 : Flapjack.NumSet := .bs setValue784 () setValue786
def setValue809 : Flapjack.NumSet := .bs setValue808 () setValue0
def tree177 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree177_def : tree177 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal177 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live177 : Flapjack.NumSet := setValue781
def coloured177 : Flapjack.NumSet := setValue788
def result177 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue807, setValue809)
def setValue810 : Flapjack.NumSet := .bn setValue760 setValue0
def setValue811 : Flapjack.NumSet := .bn setValue810 setValue0
def setValue812 : Flapjack.NumSet := .bn setValue811 setValue811
def setValue813 : Flapjack.NumSet := .bn setValue0 setValue716
def setValue814 : Flapjack.NumSet := .bn setValue0 setValue813
def setValue815 : Flapjack.NumSet := .bn setValue0 setValue814
def setValue816 : Flapjack.NumSet := .bn setValue812 setValue815
def setValue817 : Flapjack.NumSet := .bn setValue811 setValue0
def setValue818 : Flapjack.NumSet := .bn setValue811 setValue814
def setValue819 : Flapjack.NumSet := .bn setValue817 setValue818
def setValue820 : Flapjack.NumSet := .bn setValue816 setValue819
def setValue821 : Flapjack.NumSet := .bn setValue820 setValue796
def setValue822 : Flapjack.NumSet := .bn setValue1 setValue821
def setValue823 : Flapjack.NumSet := .bs setValue799 () setValue799
def setValue824 : Flapjack.NumSet := .bs setValue823 () setValue801
def setValue825 : Flapjack.NumSet := .bs setValue802 () setValue824
def setValue826 : Flapjack.NumSet := .bn setValue825 setValue0
def tree178 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 10857, 10861, 10865, 10869, 10873, 10877, 10881, 10885, 10889, 10893, 10897, 10901, 10905, 10909, 10913, 10917,
    10921, 10925, 10929, 10933, 10937, 10941, 10945, 10949, 10953, 10957]
  [2, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787, 10791, 10795, 10799, 10803, 10807, 10811,
    10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851])).val
theorem tree178_def : tree178 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 10857, 10861, 10865, 10869, 10873, 10877, 10881, 10885, 10889, 10893, 10897, 10901, 10905, 10909, 10913, 10917,
    10921, 10925, 10929, 10933, 10937, 10941, 10945, 10949, 10953, 10957]
  [2, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787, 10791, 10795, 10799, 10803, 10807, 10811,
    10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal178 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 10857, 10861, 10865, 10869, 10873, 10877, 10881, 10885, 10889, 10893, 10897, 10901, 10905, 10909, 10913, 10917,
    10921, 10925, 10929, 10933, 10937, 10941, 10945, 10949, 10953, 10957]
  [2, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787, 10791, 10795, 10799, 10803, 10807, 10811,
    10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851]
def live178 : Flapjack.NumSet := setValue807
def coloured178 : Flapjack.NumSet := setValue809
def result178 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue822, setValue826)
def tree179 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree178 tree177)).val
theorem tree179_def : tree179 = (.seq tree178 tree177) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal179 : Flapjack.RegAlloc.ClashTree := .seq literal178 literal177
def live179 : Flapjack.NumSet := setValue781
def coloured179 : Flapjack.NumSet := setValue788
def result179 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue822, setValue826)
def setValue827 : Flapjack.NumSet := .bn setValue1 setValue797
def setValue828 : Flapjack.NumSet := .bn setValue573 setValue573
def setValue829 : Flapjack.NumSet := .bn setValue800 setValue828
def setValue830 : Flapjack.NumSet := .bs setValue829 () setValue829
def setValue831 : Flapjack.NumSet := .bn setValue830 setValue0
def tree180 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue827)).val
theorem tree180_def : tree180 = (.set setValue827) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal180 : Flapjack.RegAlloc.ClashTree := .set setValue827
def live180 : Flapjack.NumSet := setValue822
def coloured180 : Flapjack.NumSet := setValue826
def result180 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue827, setValue831)
def tree181 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree180 tree179)).val
theorem tree181_def : tree181 = (.seq tree180 tree179) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal181 : Flapjack.RegAlloc.ClashTree := .seq literal180 literal179
def live181 : Flapjack.NumSet := setValue781
def coloured181 : Flapjack.NumSet := setValue788
def result181 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue827, setValue831)
def setValue832 : Flapjack.NumSet := .bn setValue440 setValue797
def setValue833 : Flapjack.NumSet := .bs setValue799 () setValue676
def setValue834 : Flapjack.NumSet := .bs setValue573 () setValue676
def setValue835 : Flapjack.NumSet := .bs setValue833 () setValue834
def setValue836 : Flapjack.NumSet := .bs setValue676 () setValue676
def setValue837 : Flapjack.NumSet := .bs setValue833 () setValue836
def setValue838 : Flapjack.NumSet := .bs setValue835 () setValue837
def setValue839 : Flapjack.NumSet := .bn setValue838 setValue0
def tree182 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue832) tree176 tree181)).val
theorem tree182_def : tree182 = (.branch (some setValue832) tree176 tree181) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal182 : Flapjack.RegAlloc.ClashTree := .branch (some setValue832) literal176 literal181
def live182 : Flapjack.NumSet := setValue781
def coloured182 : Flapjack.NumSet := setValue788
def result182 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue832, setValue839)
def tree183 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree182 tree173)).val
theorem tree183_def : tree183 = (.seq tree182 tree173) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal183 : Flapjack.RegAlloc.ClashTree := .seq literal182 literal173
def live183 : Flapjack.NumSet := setValue674
def coloured183 : Flapjack.NumSet := setValue683
def result183 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue832, setValue839)
def setValue840 : Flapjack.NumSet := .bn setValue0 setValue684
def setValue841 : Flapjack.NumSet := .bn setValue0 setValue840
def setValue842 : Flapjack.NumSet := .bn setValue841 setValue0
def setValue843 : Flapjack.NumSet := .bn setValue840 setValue0
def setValue844 : Flapjack.NumSet := .bn setValue841 setValue843
def setValue845 : Flapjack.NumSet := .bn setValue842 setValue844
def setValue846 : Flapjack.NumSet := .bn setValue842 setValue0
def setValue847 : Flapjack.NumSet := .bn setValue845 setValue846
def setValue848 : Flapjack.NumSet := .bn setValue843 setValue843
def setValue849 : Flapjack.NumSet := .bn setValue844 setValue848
def setValue850 : Flapjack.NumSet := .bn setValue846 setValue849
def setValue851 : Flapjack.NumSet := .bn setValue847 setValue850
def setValue852 : Flapjack.NumSet := .bn setValue840 setValue840
def setValue853 : Flapjack.NumSet := .bn setValue852 setValue0
def setValue854 : Flapjack.NumSet := .bn setValue842 setValue853
def setValue855 : Flapjack.NumSet := .bn setValue0 setValue843
def setValue856 : Flapjack.NumSet := .bn setValue842 setValue855
def setValue857 : Flapjack.NumSet := .bn setValue854 setValue856
def setValue858 : Flapjack.NumSet := .bn setValue844 setValue0
def setValue859 : Flapjack.NumSet := .bn setValue844 setValue855
def setValue860 : Flapjack.NumSet := .bn setValue858 setValue859
def setValue861 : Flapjack.NumSet := .bn setValue857 setValue860
def setValue862 : Flapjack.NumSet := .bn setValue851 setValue861
def setValue863 : Flapjack.NumSet := .bn setValue844 setValue842
def setValue864 : Flapjack.NumSet := .bn setValue863 setValue856
def setValue865 : Flapjack.NumSet := .bn setValue852 setValue843
def setValue866 : Flapjack.NumSet := .bn setValue865 setValue855
def setValue867 : Flapjack.NumSet := .bn setValue846 setValue866
def setValue868 : Flapjack.NumSet := .bn setValue864 setValue867
def setValue869 : Flapjack.NumSet := .bn setValue846 setValue859
def setValue870 : Flapjack.NumSet := .bn setValue843 setValue0
def setValue871 : Flapjack.NumSet := .bn setValue842 setValue870
def setValue872 : Flapjack.NumSet := .bn setValue871 setValue859
def setValue873 : Flapjack.NumSet := .bn setValue869 setValue872
def setValue874 : Flapjack.NumSet := .bn setValue868 setValue873
def setValue875 : Flapjack.NumSet := .bn setValue862 setValue874
def setValue876 : Flapjack.NumSet := .bn setValue875 setValue0
def setValue877 : Flapjack.NumSet := .bn setValue0 setValue876
def setValue878 : Flapjack.NumSet := .bn setValue837 setValue837
def setValue879 : Flapjack.NumSet := .bn setValue878 setValue0
def tree184 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787,
    10791, 10795, 10799, 10803, 10807, 10811, 10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851]
  [10577, 10565, 10569, 10573, 10557, 10561, 10597, 10617, 10637, 10657, 10677, 10697, 10421, 10425, 10429, 10433,
    10437, 10441, 10445, 10449, 10453, 10457, 10461, 10465, 10469, 10473, 10477, 10481, 10485, 10489, 10493, 10497,
    10501, 10505, 10509, 10513, 10517, 10521])).val
theorem tree184_def : tree184 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787,
    10791, 10795, 10799, 10803, 10807, 10811, 10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851]
  [10577, 10565, 10569, 10573, 10557, 10561, 10597, 10617, 10637, 10657, 10677, 10697, 10421, 10425, 10429, 10433,
    10437, 10441, 10445, 10449, 10453, 10457, 10461, 10465, 10469, 10473, 10477, 10481, 10485, 10489, 10493, 10497,
    10501, 10505, 10509, 10513, 10517, 10521]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal184 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 10751, 10755, 10759, 10763, 10767, 10771, 10775, 10779, 10783, 10787,
    10791, 10795, 10799, 10803, 10807, 10811, 10815, 10819, 10823, 10827, 10831, 10835, 10839, 10843, 10847, 10851]
  [10577, 10565, 10569, 10573, 10557, 10561, 10597, 10617, 10637, 10657, 10677, 10697, 10421, 10425, 10429, 10433,
    10437, 10441, 10445, 10449, 10453, 10457, 10461, 10465, 10469, 10473, 10477, 10481, 10485, 10489, 10493, 10497,
    10501, 10505, 10509, 10513, 10517, 10521]
def live184 : Flapjack.NumSet := setValue832
def coloured184 : Flapjack.NumSet := setValue839
def result184 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue877, setValue879)
def tree185 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree184 tree183)).val
theorem tree185_def : tree185 = (.seq tree184 tree183) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal185 : Flapjack.RegAlloc.ClashTree := .seq literal184 literal183
def live185 : Flapjack.NumSet := setValue674
def coloured185 : Flapjack.NumSet := setValue683
def result185 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue877, setValue879)
def setValue880 : Flapjack.NumSet := .bn setValue858 setValue866
def setValue881 : Flapjack.NumSet := .bn setValue857 setValue880
def setValue882 : Flapjack.NumSet := .bn setValue851 setValue881
def setValue883 : Flapjack.NumSet := .bn setValue864 setValue869
def setValue884 : Flapjack.NumSet := .bn setValue883 setValue873
def setValue885 : Flapjack.NumSet := .bn setValue882 setValue884
def setValue886 : Flapjack.NumSet := .bn setValue885 setValue0
def setValue887 : Flapjack.NumSet := .bn setValue0 setValue886
def setValue888 : Flapjack.NumSet := .bn setValue837 setValue835
def setValue889 : Flapjack.NumSet := .bs setValue888 () setValue0
def tree186 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10697] [10693])).val
theorem tree186_def : tree186 = (Flapjack.RegAlloc.ClashTree.delta [10697] [10693]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal186 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10697] [10693]
def live186 : Flapjack.NumSet := setValue877
def coloured186 : Flapjack.NumSet := setValue879
def result186 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue887, setValue889)
def tree187 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree186 tree185)).val
theorem tree187_def : tree187 = (.seq tree186 tree185) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal187 : Flapjack.RegAlloc.ClashTree := .seq literal186 literal185
def live187 : Flapjack.NumSet := setValue674
def coloured187 : Flapjack.NumSet := setValue683
def result187 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue887, setValue889)
def setValue890 : Flapjack.NumSet := .bn setValue872 setValue872
def setValue891 : Flapjack.NumSet := .bn setValue883 setValue890
def setValue892 : Flapjack.NumSet := .bn setValue862 setValue891
def setValue893 : Flapjack.NumSet := .bn setValue892 setValue0
def setValue894 : Flapjack.NumSet := .bn setValue0 setValue893
def tree188 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10693] [10673])).val
theorem tree188_def : tree188 = (Flapjack.RegAlloc.ClashTree.delta [10693] [10673]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal188 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10693] [10673]
def live188 : Flapjack.NumSet := setValue887
def coloured188 : Flapjack.NumSet := setValue889
def result188 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue894, setValue889)
def tree189 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree188 tree187)).val
theorem tree189_def : tree189 = (.seq tree188 tree187) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal189 : Flapjack.RegAlloc.ClashTree := .seq literal188 literal187
def live189 : Flapjack.NumSet := setValue674
def coloured189 : Flapjack.NumSet := setValue683
def result189 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue894, setValue889)
def setValue895 : Flapjack.NumSet := .bn setValue842 setValue842
def setValue896 : Flapjack.NumSet := .bn setValue895 setValue856
def setValue897 : Flapjack.NumSet := .bn setValue896 setValue860
def setValue898 : Flapjack.NumSet := .bn setValue851 setValue897
def setValue899 : Flapjack.NumSet := .bn setValue898 setValue891
def setValue900 : Flapjack.NumSet := .bn setValue899 setValue0
def setValue901 : Flapjack.NumSet := .bn setValue0 setValue900
def setValue902 : Flapjack.NumSet := .bs setValue803 () setValue836
def setValue903 : Flapjack.NumSet := .bn setValue902 setValue835
def setValue904 : Flapjack.NumSet := .bs setValue903 () setValue0
def tree190 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10677] [10673])).val
theorem tree190_def : tree190 = (Flapjack.RegAlloc.ClashTree.delta [10677] [10673]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal190 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10677] [10673]
def live190 : Flapjack.NumSet := setValue894
def coloured190 : Flapjack.NumSet := setValue889
def result190 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue901, setValue904)
def tree191 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree190 tree189)).val
theorem tree191_def : tree191 = (.seq tree190 tree189) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal191 : Flapjack.RegAlloc.ClashTree := .seq literal190 literal189
def live191 : Flapjack.NumSet := setValue674
def coloured191 : Flapjack.NumSet := setValue683
def result191 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue901, setValue904)
def setValue905 : Flapjack.NumSet := .bn setValue845 setValue871
def setValue906 : Flapjack.NumSet := .bn setValue905 setValue850
def setValue907 : Flapjack.NumSet := .bn setValue906 setValue897
def setValue908 : Flapjack.NumSet := .bn setValue907 setValue884
def setValue909 : Flapjack.NumSet := .bn setValue908 setValue0
def setValue910 : Flapjack.NumSet := .bn setValue0 setValue909
def tree192 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10673] [10653])).val
theorem tree192_def : tree192 = (Flapjack.RegAlloc.ClashTree.delta [10673] [10653]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal192 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10673] [10653]
def live192 : Flapjack.NumSet := setValue901
def coloured192 : Flapjack.NumSet := setValue904
def result192 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue910, setValue904)
def tree193 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree192 tree191)).val
theorem tree193_def : tree193 = (.seq tree192 tree191) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal193 : Flapjack.RegAlloc.ClashTree := .seq literal192 literal191
def live193 : Flapjack.NumSet := setValue674
def coloured193 : Flapjack.NumSet := setValue683
def result193 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue910, setValue904)
def setValue911 : Flapjack.NumSet := .bn setValue869 setValue869
def setValue912 : Flapjack.NumSet := .bn setValue883 setValue911
def setValue913 : Flapjack.NumSet := .bn setValue907 setValue912
def setValue914 : Flapjack.NumSet := .bn setValue913 setValue0
def setValue915 : Flapjack.NumSet := .bn setValue0 setValue914
def setValue916 : Flapjack.NumSet := .bs setValue803 () setValue834
def setValue917 : Flapjack.NumSet := .bn setValue902 setValue916
def setValue918 : Flapjack.NumSet := .bs setValue917 () setValue0
def tree194 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10657] [10653])).val
theorem tree194_def : tree194 = (Flapjack.RegAlloc.ClashTree.delta [10657] [10653]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal194 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10657] [10653]
def live194 : Flapjack.NumSet := setValue910
def coloured194 : Flapjack.NumSet := setValue904
def result194 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue915, setValue918)
def tree195 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree194 tree193)).val
theorem tree195_def : tree195 = (.seq tree194 tree193) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal195 : Flapjack.RegAlloc.ClashTree := .seq literal194 literal193
def live195 : Flapjack.NumSet := setValue674
def coloured195 : Flapjack.NumSet := setValue683
def result195 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue915, setValue918)
def setValue919 : Flapjack.NumSet := .bn setValue864 setValue850
def setValue920 : Flapjack.NumSet := .bn setValue919 setValue911
def setValue921 : Flapjack.NumSet := .bn setValue898 setValue920
def setValue922 : Flapjack.NumSet := .bn setValue921 setValue0
def setValue923 : Flapjack.NumSet := .bn setValue0 setValue922
def tree196 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10653] [10633])).val
theorem tree196_def : tree196 = (Flapjack.RegAlloc.ClashTree.delta [10653] [10633]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal196 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10653] [10633]
def live196 : Flapjack.NumSet := setValue915
def coloured196 : Flapjack.NumSet := setValue918
def result196 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue923, setValue918)
def tree197 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree196 tree195)).val
theorem tree197_def : tree197 = (.seq tree196 tree195) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal197 : Flapjack.RegAlloc.ClashTree := .seq literal196 literal195
def live197 : Flapjack.NumSet := setValue674
def coloured197 : Flapjack.NumSet := setValue683
def result197 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue923, setValue918)
def setValue924 : Flapjack.NumSet := .bn setValue847 setValue869
def setValue925 : Flapjack.NumSet := .bn setValue924 setValue897
def setValue926 : Flapjack.NumSet := .bn setValue925 setValue920
def setValue927 : Flapjack.NumSet := .bn setValue926 setValue0
def setValue928 : Flapjack.NumSet := .bn setValue0 setValue927
def setValue929 : Flapjack.NumSet := .bs setValue676 () setValue573
def setValue930 : Flapjack.NumSet := .bs setValue803 () setValue929
def setValue931 : Flapjack.NumSet := .bn setValue930 setValue916
def setValue932 : Flapjack.NumSet := .bs setValue931 () setValue0
def tree198 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10637] [10633])).val
theorem tree198_def : tree198 = (Flapjack.RegAlloc.ClashTree.delta [10637] [10633]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal198 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10637] [10633]
def live198 : Flapjack.NumSet := setValue923
def coloured198 : Flapjack.NumSet := setValue918
def result198 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue928, setValue932)
def tree199 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree198 tree197)).val
theorem tree199_def : tree199 = (.seq tree198 tree197) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal199 : Flapjack.RegAlloc.ClashTree := .seq literal198 literal197
def live199 : Flapjack.NumSet := setValue674
def coloured199 : Flapjack.NumSet := setValue683
def result199 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue928, setValue932)
def setValue933 : Flapjack.NumSet := .bn setValue864 setValue860
def setValue934 : Flapjack.NumSet := .bn setValue924 setValue933
def setValue935 : Flapjack.NumSet := .bn setValue934 setValue912
def setValue936 : Flapjack.NumSet := .bn setValue935 setValue0
def setValue937 : Flapjack.NumSet := .bn setValue0 setValue936
def tree200 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10633] [10613])).val
theorem tree200_def : tree200 = (Flapjack.RegAlloc.ClashTree.delta [10633] [10613]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal200 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10633] [10613]
def live200 : Flapjack.NumSet := setValue928
def coloured200 : Flapjack.NumSet := setValue932
def result200 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue937, setValue932)
def tree201 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree200 tree199)).val
theorem tree201_def : tree201 = (.seq tree200 tree199) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal201 : Flapjack.RegAlloc.ClashTree := .seq literal200 literal199
def live201 : Flapjack.NumSet := setValue674
def coloured201 : Flapjack.NumSet := setValue683
def result201 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue937, setValue932)
def setValue938 : Flapjack.NumSet := .bn setValue896 setValue869
def setValue939 : Flapjack.NumSet := .bn setValue938 setValue911
def setValue940 : Flapjack.NumSet := .bn setValue934 setValue939
def setValue941 : Flapjack.NumSet := .bn setValue940 setValue0
def setValue942 : Flapjack.NumSet := .bn setValue0 setValue941
def setValue943 : Flapjack.NumSet := .bn setValue930 setValue804
def setValue944 : Flapjack.NumSet := .bs setValue943 () setValue0
def tree202 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10617] [10613])).val
theorem tree202_def : tree202 = (Flapjack.RegAlloc.ClashTree.delta [10617] [10613]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal202 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10617] [10613]
def live202 : Flapjack.NumSet := setValue937
def coloured202 : Flapjack.NumSet := setValue932
def result202 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue942, setValue944)
def tree203 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree202 tree201)).val
theorem tree203_def : tree203 = (.seq tree202 tree201) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal203 : Flapjack.RegAlloc.ClashTree := .seq literal202 literal201
def live203 : Flapjack.NumSet := setValue674
def coloured203 : Flapjack.NumSet := setValue683
def result203 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue942, setValue944)
def setValue945 : Flapjack.NumSet := .bn setValue869 setValue860
def setValue946 : Flapjack.NumSet := .bn setValue938 setValue945
def setValue947 : Flapjack.NumSet := .bn setValue925 setValue946
def setValue948 : Flapjack.NumSet := .bn setValue947 setValue0
def setValue949 : Flapjack.NumSet := .bn setValue0 setValue948
def tree204 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10613] [10593])).val
theorem tree204_def : tree204 = (Flapjack.RegAlloc.ClashTree.delta [10613] [10593]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal204 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10613] [10593]
def live204 : Flapjack.NumSet := setValue942
def coloured204 : Flapjack.NumSet := setValue944
def result204 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue949, setValue944)
def tree205 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree204 tree203)).val
theorem tree205_def : tree205 = (.seq tree204 tree203) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal205 : Flapjack.RegAlloc.ClashTree := .seq literal204 literal203
def live205 : Flapjack.NumSet := setValue674
def coloured205 : Flapjack.NumSet := setValue683
def result205 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue949, setValue944)
def setValue950 : Flapjack.NumSet := .bn setValue924 setValue938
def setValue951 : Flapjack.NumSet := .bn setValue950 setValue946
def setValue952 : Flapjack.NumSet := .bn setValue951 setValue0
def setValue953 : Flapjack.NumSet := .bn setValue0 setValue952
def setValue954 : Flapjack.NumSet := .bs setValue800 () setValue929
def setValue955 : Flapjack.NumSet := .bn setValue954 setValue804
def setValue956 : Flapjack.NumSet := .bs setValue955 () setValue0
def tree206 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10597] [10593])).val
theorem tree206_def : tree206 = (Flapjack.RegAlloc.ClashTree.delta [10597] [10593]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal206 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10597] [10593]
def live206 : Flapjack.NumSet := setValue949
def coloured206 : Flapjack.NumSet := setValue944
def result206 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue953, setValue956)
def tree207 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree206 tree205)).val
theorem tree207_def : tree207 = (.seq tree206 tree205) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal207 : Flapjack.RegAlloc.ClashTree := .seq literal206 literal205
def live207 : Flapjack.NumSet := setValue674
def coloured207 : Flapjack.NumSet := setValue683
def result207 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue953, setValue956)
def setValue957 : Flapjack.NumSet := .bn setValue845 setValue858
def setValue958 : Flapjack.NumSet := .bn setValue957 setValue869
def setValue959 : Flapjack.NumSet := .bn setValue958 setValue938
def setValue960 : Flapjack.NumSet := .bn setValue959 setValue939
def setValue961 : Flapjack.NumSet := .bn setValue960 setValue0
def setValue962 : Flapjack.NumSet := .bn setValue0 setValue961
def tree208 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10593] [10589])).val
theorem tree208_def : tree208 = (Flapjack.RegAlloc.ClashTree.delta [10593] [10589]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal208 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10593] [10589]
def live208 : Flapjack.NumSet := setValue953
def coloured208 : Flapjack.NumSet := setValue956
def result208 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue962, setValue956)
def tree209 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree208 tree207)).val
theorem tree209_def : tree209 = (.seq tree208 tree207) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal209 : Flapjack.RegAlloc.ClashTree := .seq literal208 literal207
def live209 : Flapjack.NumSet := setValue674
def coloured209 : Flapjack.NumSet := setValue683
def result209 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue962, setValue956)
def setValue963 : Flapjack.NumSet := .bn setValue895 setValue859
def setValue964 : Flapjack.NumSet := .bn setValue963 setValue869
def setValue965 : Flapjack.NumSet := .bn setValue964 setValue911
def setValue966 : Flapjack.NumSet := .bn setValue950 setValue965
def setValue967 : Flapjack.NumSet := .bn setValue966 setValue0
def setValue968 : Flapjack.NumSet := .bn setValue0 setValue967
def tree210 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10589] [10585])).val
theorem tree210_def : tree210 = (Flapjack.RegAlloc.ClashTree.delta [10589] [10585]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal210 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10589] [10585]
def live210 : Flapjack.NumSet := setValue962
def coloured210 : Flapjack.NumSet := setValue956
def result210 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue968, setValue956)
def tree211 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree210 tree209)).val
theorem tree211_def : tree211 = (.seq tree210 tree209) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal211 : Flapjack.RegAlloc.ClashTree := .seq literal210 literal209
def live211 : Flapjack.NumSet := setValue674
def coloured211 : Flapjack.NumSet := setValue683
def result211 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue968, setValue956)
def setValue969 : Flapjack.NumSet := .bn setValue924 setValue964
def setValue970 : Flapjack.NumSet := .bn setValue969 setValue939
def setValue971 : Flapjack.NumSet := .bn setValue970 setValue0
def setValue972 : Flapjack.NumSet := .bn setValue0 setValue971
def tree212 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10585] [10581])).val
theorem tree212_def : tree212 = (Flapjack.RegAlloc.ClashTree.delta [10585] [10581]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal212 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10585] [10581]
def live212 : Flapjack.NumSet := setValue968
def coloured212 : Flapjack.NumSet := setValue956
def result212 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue972, setValue956)
def tree213 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree212 tree211)).val
theorem tree213_def : tree213 = (.seq tree212 tree211) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal213 : Flapjack.RegAlloc.ClashTree := .seq literal212 literal211
def live213 : Flapjack.NumSet := setValue674
def coloured213 : Flapjack.NumSet := setValue683
def result213 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue972, setValue956)
def setValue973 : Flapjack.NumSet := .bn setValue950 setValue939
def setValue974 : Flapjack.NumSet := .bn setValue973 setValue0
def setValue975 : Flapjack.NumSet := .bn setValue0 setValue974
def setValue976 : Flapjack.NumSet := .bn setValue955 setValue0
def tree214 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [10581] [])).val
theorem tree214_def : tree214 = (Flapjack.RegAlloc.ClashTree.delta [10581] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal214 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [10581] []
def live214 : Flapjack.NumSet := setValue972
def coloured214 : Flapjack.NumSet := setValue956
def result214 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue975, setValue976)
def tree215 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree214 tree213)).val
theorem tree215_def : tree215 = (.seq tree214 tree213) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal215 : Flapjack.RegAlloc.ClashTree := .seq literal214 literal213
def live215 : Flapjack.NumSet := setValue674
def coloured215 : Flapjack.NumSet := setValue683
def result215 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue975, setValue976)
def tree216 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree216_def : tree216 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal216 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live216 : Flapjack.NumSet := setValue975
def coloured216 : Flapjack.NumSet := setValue976
def result216 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue975, setValue976)
def tree217 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree216 tree215)).val
theorem tree217_def : tree217 = (.seq tree216 tree215) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal217 : Flapjack.RegAlloc.ClashTree := .seq literal216 literal215
def live217 : Flapjack.NumSet := setValue674
def coloured217 : Flapjack.NumSet := setValue683
def result217 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue975, setValue976)
def setValue977 : Flapjack.NumSet := .bn setValue0 setValue841
def setValue978 : Flapjack.NumSet := .bn setValue977 setValue0
def setValue979 : Flapjack.NumSet := .bn setValue977 setValue842
def setValue980 : Flapjack.NumSet := .bn setValue978 setValue979
def setValue981 : Flapjack.NumSet := .bn setValue979 setValue979
def setValue982 : Flapjack.NumSet := .bn setValue980 setValue981
def setValue983 : Flapjack.NumSet := .bn setValue0 setValue842
def setValue984 : Flapjack.NumSet := .bn setValue979 setValue983
def setValue985 : Flapjack.NumSet := .bn setValue980 setValue984
def setValue986 : Flapjack.NumSet := .bn setValue982 setValue985
def setValue987 : Flapjack.NumSet := .bn setValue981 setValue984
def setValue988 : Flapjack.NumSet := .bn setValue985 setValue987
def setValue989 : Flapjack.NumSet := .bn setValue986 setValue988
def setValue990 : Flapjack.NumSet := .bn setValue0 setValue989
def setValue991 : Flapjack.NumSet := .bn setValue395 setValue990
def tree218 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [10577, 10573, 10569, 10565, 10561, 10557, 10421, 10425, 10429, 10433, 10437, 10441, 10445, 10449, 10453, 10457,
    10461, 10465, 10469, 10473, 10477, 10481, 10485, 10489, 10493, 10497, 10501, 10505, 10509, 10513, 10517, 10521]
  [2, 8, 6, 4, 12, 10, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351, 10355, 10359, 10363, 10367,
    10371, 10375, 10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415])).val
theorem tree218_def : tree218 = (Flapjack.RegAlloc.ClashTree.delta
  [10577, 10573, 10569, 10565, 10561, 10557, 10421, 10425, 10429, 10433, 10437, 10441, 10445, 10449, 10453, 10457,
    10461, 10465, 10469, 10473, 10477, 10481, 10485, 10489, 10493, 10497, 10501, 10505, 10509, 10513, 10517, 10521]
  [2, 8, 6, 4, 12, 10, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351, 10355, 10359, 10363, 10367,
    10371, 10375, 10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal218 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [10577, 10573, 10569, 10565, 10561, 10557, 10421, 10425, 10429, 10433, 10437, 10441, 10445, 10449, 10453, 10457,
    10461, 10465, 10469, 10473, 10477, 10481, 10485, 10489, 10493, 10497, 10501, 10505, 10509, 10513, 10517, 10521]
  [2, 8, 6, 4, 12, 10, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351, 10355, 10359, 10363, 10367,
    10371, 10375, 10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415]
def live218 : Flapjack.NumSet := setValue975
def coloured218 : Flapjack.NumSet := setValue976
def result218 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue991, setValue806)
def tree219 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue991)).val
theorem tree219_def : tree219 = (.set setValue991) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal219 : Flapjack.RegAlloc.ClashTree := .set setValue991
def live219 : Flapjack.NumSet := setValue991
def coloured219 : Flapjack.NumSet := setValue806
def result219 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue991, setValue806)
def tree220 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree219 tree218)).val
theorem tree220_def : tree220 = (.seq tree219 tree218) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal220 : Flapjack.RegAlloc.ClashTree := .seq literal219 literal218
def live220 : Flapjack.NumSet := setValue975
def coloured220 : Flapjack.NumSet := setValue976
def result220 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue991, setValue806)
def setValue992 : Flapjack.NumSet := .bn setValue1 setValue974
def setValue993 : Flapjack.NumSet := .bs setValue954 () setValue804
def setValue994 : Flapjack.NumSet := .bn setValue993 setValue0
def tree221 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree221_def : tree221 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal221 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live221 : Flapjack.NumSet := setValue975
def coloured221 : Flapjack.NumSet := setValue976
def result221 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue992, setValue994)
def setValue995 : Flapjack.NumSet := .bn setValue0 setValue855
def setValue996 : Flapjack.NumSet := .bn setValue995 setValue0
def setValue997 : Flapjack.NumSet := .bn setValue855 setValue0
def setValue998 : Flapjack.NumSet := .bn setValue0 setValue997
def setValue999 : Flapjack.NumSet := .bn setValue996 setValue998
def setValue1000 : Flapjack.NumSet := .bn setValue0 setValue998
def setValue1001 : Flapjack.NumSet := .bn setValue999 setValue1000
def setValue1002 : Flapjack.NumSet := .bn setValue998 setValue998
def setValue1003 : Flapjack.NumSet := .bn setValue1000 setValue1002
def setValue1004 : Flapjack.NumSet := .bn setValue1001 setValue1003
def setValue1005 : Flapjack.NumSet := .bn setValue1004 setValue989
def setValue1006 : Flapjack.NumSet := .bn setValue1 setValue1005
def tree222 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 10421, 10425, 10429, 10433, 10437, 10441, 10445, 10449, 10453, 10457, 10461, 10465, 10469, 10473, 10477, 10481,
    10485, 10489, 10493, 10497, 10501, 10505, 10509, 10513, 10517, 10521]
  [2, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351, 10355, 10359, 10363, 10367, 10371, 10375,
    10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415])).val
theorem tree222_def : tree222 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 10421, 10425, 10429, 10433, 10437, 10441, 10445, 10449, 10453, 10457, 10461, 10465, 10469, 10473, 10477, 10481,
    10485, 10489, 10493, 10497, 10501, 10505, 10509, 10513, 10517, 10521]
  [2, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351, 10355, 10359, 10363, 10367, 10371, 10375,
    10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal222 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 10421, 10425, 10429, 10433, 10437, 10441, 10445, 10449, 10453, 10457, 10461, 10465, 10469, 10473, 10477, 10481,
    10485, 10489, 10493, 10497, 10501, 10505, 10509, 10513, 10517, 10521]
  [2, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351, 10355, 10359, 10363, 10367, 10371, 10375,
    10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415]
def live222 : Flapjack.NumSet := setValue992
def coloured222 : Flapjack.NumSet := setValue994
def result222 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1006, setValue994)
def tree223 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree222 tree221)).val
theorem tree223_def : tree223 = (.seq tree222 tree221) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal223 : Flapjack.RegAlloc.ClashTree := .seq literal222 literal221
def live223 : Flapjack.NumSet := setValue975
def coloured223 : Flapjack.NumSet := setValue976
def result223 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1006, setValue994)
def setValue1007 : Flapjack.NumSet := .bn setValue1 setValue990
def tree224 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1007)).val
theorem tree224_def : tree224 = (.set setValue1007) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal224 : Flapjack.RegAlloc.ClashTree := .set setValue1007
def live224 : Flapjack.NumSet := setValue1006
def coloured224 : Flapjack.NumSet := setValue994
def result224 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1007, setValue831)
def tree225 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree224 tree223)).val
theorem tree225_def : tree225 = (.seq tree224 tree223) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal225 : Flapjack.RegAlloc.ClashTree := .seq literal224 literal223
def live225 : Flapjack.NumSet := setValue975
def coloured225 : Flapjack.NumSet := setValue976
def result225 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1007, setValue831)
def setValue1008 : Flapjack.NumSet := .bn setValue440 setValue990
def tree226 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1008) tree220 tree225)).val
theorem tree226_def : tree226 = (.branch (some setValue1008) tree220 tree225) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal226 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1008) literal220 literal225
def live226 : Flapjack.NumSet := setValue975
def coloured226 : Flapjack.NumSet := setValue976
def result226 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1008, setValue839)
def tree227 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree226 tree217)).val
theorem tree227_def : tree227 = (.seq tree226 tree217) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal227 : Flapjack.RegAlloc.ClashTree := .seq literal226 literal217
def live227 : Flapjack.NumSet := setValue674
def coloured227 : Flapjack.NumSet := setValue683
def result227 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1008, setValue839)
def setValue1009 : Flapjack.NumSet := .bn setValue17 setValue0
def setValue1010 : Flapjack.NumSet := .bn setValue1009 setValue0
def setValue1011 : Flapjack.NumSet := .bn setValue0 setValue1010
def setValue1012 : Flapjack.NumSet := .bn setValue1010 setValue0
def setValue1013 : Flapjack.NumSet := .bn setValue1011 setValue1012
def setValue1014 : Flapjack.NumSet := .bn setValue1012 setValue1012
def setValue1015 : Flapjack.NumSet := .bn setValue1013 setValue1014
def setValue1016 : Flapjack.NumSet := .bn setValue1010 setValue841
def setValue1017 : Flapjack.NumSet := .bn setValue1012 setValue1016
def setValue1018 : Flapjack.NumSet := .bn setValue1013 setValue1017
def setValue1019 : Flapjack.NumSet := .bn setValue1015 setValue1018
def setValue1020 : Flapjack.NumSet := .bn setValue1018 setValue1018
def setValue1021 : Flapjack.NumSet := .bn setValue1019 setValue1020
def setValue1022 : Flapjack.NumSet := .bn setValue1021 setValue1021
def setValue1023 : Flapjack.NumSet := .bn setValue1022 setValue0
def setValue1024 : Flapjack.NumSet := .bn setValue0 setValue1023
def setValue1025 : Flapjack.NumSet := .bn setValue835 setValue837
def setValue1026 : Flapjack.NumSet := .bs setValue1025 () setValue0
def tree228 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351,
    10355, 10359, 10363, 10367, 10371, 10375, 10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415]
  [10085, 10137, 10129, 10105, 10197, 10157, 10245, 10241, 10249, 10261, 10253, 10257, 10081, 10089, 10093, 10097,
    10101, 10109, 10113, 10117, 10121, 10125, 10133, 10141, 10145, 10149, 10153, 10161, 10165, 10169, 10173, 10177,
    10181, 10185, 10189, 10193, 10201, 10205])).val
theorem tree228_def : tree228 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351,
    10355, 10359, 10363, 10367, 10371, 10375, 10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415]
  [10085, 10137, 10129, 10105, 10197, 10157, 10245, 10241, 10249, 10261, 10253, 10257, 10081, 10089, 10093, 10097,
    10101, 10109, 10113, 10117, 10121, 10125, 10133, 10141, 10145, 10149, 10153, 10161, 10165, 10169, 10173, 10177,
    10181, 10185, 10189, 10193, 10201, 10205]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal228 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 10315, 10319, 10323, 10327, 10331, 10335, 10339, 10343, 10347, 10351,
    10355, 10359, 10363, 10367, 10371, 10375, 10379, 10383, 10387, 10391, 10395, 10399, 10403, 10407, 10411, 10415]
  [10085, 10137, 10129, 10105, 10197, 10157, 10245, 10241, 10249, 10261, 10253, 10257, 10081, 10089, 10093, 10097,
    10101, 10109, 10113, 10117, 10121, 10125, 10133, 10141, 10145, 10149, 10153, 10161, 10165, 10169, 10173, 10177,
    10181, 10185, 10189, 10193, 10201, 10205]
def live228 : Flapjack.NumSet := setValue1008
def coloured228 : Flapjack.NumSet := setValue839
def result228 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1024, setValue1026)
def tree229 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree228 tree227)).val
theorem tree229_def : tree229 = (.seq tree228 tree227) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal229 : Flapjack.RegAlloc.ClashTree := .seq literal228 literal227
def live229 : Flapjack.NumSet := setValue674
def coloured229 : Flapjack.NumSet := setValue683
def result229 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1024, setValue1026)
def tree230 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree230_def : tree230 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal230 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live230 : Flapjack.NumSet := setValue1024
def coloured230 : Flapjack.NumSet := setValue1026
def result230 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1024, setValue1026)
def tree231 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree230 tree229)).val
theorem tree231_def : tree231 = (.seq tree230 tree229) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal231 : Flapjack.RegAlloc.ClashTree := .seq literal230 literal229
def live231 : Flapjack.NumSet := setValue674
def coloured231 : Flapjack.NumSet := setValue683
def result231 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1024, setValue1026)
def setValue1027 : Flapjack.NumSet := .bn setValue0 setValue1009
def setValue1028 : Flapjack.NumSet := .bn setValue1027 setValue0
def setValue1029 : Flapjack.NumSet := .bn setValue1028 setValue1011
def setValue1030 : Flapjack.NumSet := .bn setValue1011 setValue1011
def setValue1031 : Flapjack.NumSet := .bn setValue1029 setValue1030
def setValue1032 : Flapjack.NumSet := .bn setValue1031 setValue1031
def setValue1033 : Flapjack.NumSet := .bn setValue1032 setValue1032
def setValue1034 : Flapjack.NumSet := .bn setValue1033 setValue1033
def setValue1035 : Flapjack.NumSet := .bn setValue0 setValue1034
def setValue1036 : Flapjack.NumSet := .bn setValue395 setValue1035
def setValue1037 : Flapjack.NumSet := .bn setValue37 setValue411
def setValue1038 : Flapjack.NumSet := .bn setValue799 setValue1037
def setValue1039 : Flapjack.NumSet := .bs setValue1037 () setValue1037
def setValue1040 : Flapjack.NumSet := .bs setValue1038 () setValue1039
def setValue1041 : Flapjack.NumSet := .bs setValue799 () setValue1037
def setValue1042 : Flapjack.NumSet := .bs setValue1041 () setValue1039
def setValue1043 : Flapjack.NumSet := .bs setValue1040 () setValue1042
def setValue1044 : Flapjack.NumSet := .bn setValue1043 setValue0
def tree232 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [10261, 10257, 10253, 10249, 10245, 10241, 10081, 10085, 10089, 10093, 10097, 10101, 10105, 10109, 10113, 10117,
    10121, 10125, 10129, 10133, 10137, 10141, 10145, 10149, 10153, 10157, 10161, 10165, 10169, 10173, 10177, 10181,
    10185, 10189, 10193, 10197, 10201, 10205]
  [8, 12, 10, 6, 2, 4, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995, 9999, 10003, 10007,
    10011, 10015, 10019, 10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059, 10063, 10067, 10071,
    10075])).val
theorem tree232_def : tree232 = (Flapjack.RegAlloc.ClashTree.delta
  [10261, 10257, 10253, 10249, 10245, 10241, 10081, 10085, 10089, 10093, 10097, 10101, 10105, 10109, 10113, 10117,
    10121, 10125, 10129, 10133, 10137, 10141, 10145, 10149, 10153, 10157, 10161, 10165, 10169, 10173, 10177, 10181,
    10185, 10189, 10193, 10197, 10201, 10205]
  [8, 12, 10, 6, 2, 4, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995, 9999, 10003, 10007,
    10011, 10015, 10019, 10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059, 10063, 10067, 10071,
    10075]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal232 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [10261, 10257, 10253, 10249, 10245, 10241, 10081, 10085, 10089, 10093, 10097, 10101, 10105, 10109, 10113, 10117,
    10121, 10125, 10129, 10133, 10137, 10141, 10145, 10149, 10153, 10157, 10161, 10165, 10169, 10173, 10177, 10181,
    10185, 10189, 10193, 10197, 10201, 10205]
  [8, 12, 10, 6, 2, 4, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995, 9999, 10003, 10007,
    10011, 10015, 10019, 10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059, 10063, 10067, 10071,
    10075]
def live232 : Flapjack.NumSet := setValue1024
def coloured232 : Flapjack.NumSet := setValue1026
def result232 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1036, setValue1044)
def tree233 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1036)).val
theorem tree233_def : tree233 = (.set setValue1036) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal233 : Flapjack.RegAlloc.ClashTree := .set setValue1036
def live233 : Flapjack.NumSet := setValue1036
def coloured233 : Flapjack.NumSet := setValue1044
def result233 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1036, setValue1044)
def tree234 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree233 tree232)).val
theorem tree234_def : tree234 = (.seq tree233 tree232) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal234 : Flapjack.RegAlloc.ClashTree := .seq literal233 literal232
def live234 : Flapjack.NumSet := setValue1024
def coloured234 : Flapjack.NumSet := setValue1026
def result234 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1036, setValue1044)
def setValue1045 : Flapjack.NumSet := .bn setValue1 setValue1023
def setValue1046 : Flapjack.NumSet := .bs setValue838 () setValue0
def tree235 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree235_def : tree235 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal235 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live235 : Flapjack.NumSet := setValue1024
def coloured235 : Flapjack.NumSet := setValue1026
def result235 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1045, setValue1046)
def setValue1047 : Flapjack.NumSet := .bn setValue0 setValue977
def setValue1048 : Flapjack.NumSet := .bn setValue0 setValue1047
def setValue1049 : Flapjack.NumSet := .bn setValue0 setValue1048
def setValue1050 : Flapjack.NumSet := .bn setValue1048 setValue1048
def setValue1051 : Flapjack.NumSet := .bn setValue1049 setValue1050
def setValue1052 : Flapjack.NumSet := .bn setValue1051 setValue1051
def setValue1053 : Flapjack.NumSet := .bn setValue1052 setValue1034
def setValue1054 : Flapjack.NumSet := .bn setValue1 setValue1053
def setValue1055 : Flapjack.NumSet := .bs setValue37 () setValue411
def setValue1056 : Flapjack.NumSet := .bs setValue799 () setValue1055
def setValue1057 : Flapjack.NumSet := .bn setValue1037 setValue1055
def setValue1058 : Flapjack.NumSet := .bn setValue1056 setValue1057
def setValue1059 : Flapjack.NumSet := .bn setValue799 setValue1055
def setValue1060 : Flapjack.NumSet := .bn setValue1055 setValue1055
def setValue1061 : Flapjack.NumSet := .bn setValue1059 setValue1060
def setValue1062 : Flapjack.NumSet := .bs setValue1058 () setValue1061
def setValue1063 : Flapjack.NumSet := .bn setValue1062 setValue0
def tree236 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 10081, 10085, 10089, 10093, 10097, 10101, 10105, 10109, 10113, 10117, 10121, 10125, 10129, 10133, 10137, 10141,
    10145, 10149, 10153, 10157, 10161, 10165, 10169, 10173, 10177, 10181, 10185, 10189, 10193, 10197, 10201, 10205]
  [2, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995, 9999, 10003, 10007, 10011, 10015, 10019,
    10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059, 10063, 10067, 10071, 10075])).val
theorem tree236_def : tree236 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 10081, 10085, 10089, 10093, 10097, 10101, 10105, 10109, 10113, 10117, 10121, 10125, 10129, 10133, 10137, 10141,
    10145, 10149, 10153, 10157, 10161, 10165, 10169, 10173, 10177, 10181, 10185, 10189, 10193, 10197, 10201, 10205]
  [2, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995, 9999, 10003, 10007, 10011, 10015, 10019,
    10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059, 10063, 10067, 10071, 10075]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal236 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 10081, 10085, 10089, 10093, 10097, 10101, 10105, 10109, 10113, 10117, 10121, 10125, 10129, 10133, 10137, 10141,
    10145, 10149, 10153, 10157, 10161, 10165, 10169, 10173, 10177, 10181, 10185, 10189, 10193, 10197, 10201, 10205]
  [2, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995, 9999, 10003, 10007, 10011, 10015, 10019,
    10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059, 10063, 10067, 10071, 10075]
def live236 : Flapjack.NumSet := setValue1045
def coloured236 : Flapjack.NumSet := setValue1046
def result236 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1054, setValue1063)
def tree237 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree236 tree235)).val
theorem tree237_def : tree237 = (.seq tree236 tree235) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal237 : Flapjack.RegAlloc.ClashTree := .seq literal236 literal235
def live237 : Flapjack.NumSet := setValue1024
def coloured237 : Flapjack.NumSet := setValue1026
def result237 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1054, setValue1063)
def setValue1064 : Flapjack.NumSet := .bn setValue1 setValue1035
def setValue1065 : Flapjack.NumSet := .bn setValue1037 setValue1037
def setValue1066 : Flapjack.NumSet := .bn setValue1038 setValue1065
def setValue1067 : Flapjack.NumSet := .bs setValue1066 () setValue1066
def setValue1068 : Flapjack.NumSet := .bn setValue1067 setValue0
def tree238 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1064)).val
theorem tree238_def : tree238 = (.set setValue1064) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal238 : Flapjack.RegAlloc.ClashTree := .set setValue1064
def live238 : Flapjack.NumSet := setValue1054
def coloured238 : Flapjack.NumSet := setValue1063
def result238 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1064, setValue1068)
def tree239 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree238 tree237)).val
theorem tree239_def : tree239 = (.seq tree238 tree237) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal239 : Flapjack.RegAlloc.ClashTree := .seq literal238 literal237
def live239 : Flapjack.NumSet := setValue1024
def coloured239 : Flapjack.NumSet := setValue1026
def result239 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1064, setValue1068)
def setValue1069 : Flapjack.NumSet := .bn setValue440 setValue1035
def setValue1070 : Flapjack.NumSet := .bs setValue1037 () setValue1055
def setValue1071 : Flapjack.NumSet := .bs setValue1056 () setValue1070
def setValue1072 : Flapjack.NumSet := .bs setValue1055 () setValue1055
def setValue1073 : Flapjack.NumSet := .bs setValue1056 () setValue1072
def setValue1074 : Flapjack.NumSet := .bs setValue1071 () setValue1073
def setValue1075 : Flapjack.NumSet := .bn setValue1074 setValue0
def tree240 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1069) tree234 tree239)).val
theorem tree240_def : tree240 = (.branch (some setValue1069) tree234 tree239) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal240 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1069) literal234 literal239
def live240 : Flapjack.NumSet := setValue1024
def coloured240 : Flapjack.NumSet := setValue1026
def result240 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1069, setValue1075)
def tree241 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree240 tree231)).val
theorem tree241_def : tree241 = (.seq tree240 tree231) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal241 : Flapjack.RegAlloc.ClashTree := .seq literal240 literal231
def live241 : Flapjack.NumSet := setValue674
def coloured241 : Flapjack.NumSet := setValue683
def result241 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1069, setValue1075)
def setValue1076 : Flapjack.NumSet := .bn setValue31 setValue0
def setValue1077 : Flapjack.NumSet := .bn setValue0 setValue1027
def setValue1078 : Flapjack.NumSet := .bn setValue1076 setValue1077
def setValue1079 : Flapjack.NumSet := .bn setValue1078 setValue1078
def setValue1080 : Flapjack.NumSet := .bn setValue1027 setValue1027
def setValue1081 : Flapjack.NumSet := .bn setValue1076 setValue1080
def setValue1082 : Flapjack.NumSet := .bn setValue1078 setValue1081
def setValue1083 : Flapjack.NumSet := .bn setValue1079 setValue1082
def setValue1084 : Flapjack.NumSet := .bn setValue1082 setValue1082
def setValue1085 : Flapjack.NumSet := .bn setValue1083 setValue1084
def setValue1086 : Flapjack.NumSet := .bn setValue1077 setValue1077
def setValue1087 : Flapjack.NumSet := .bn setValue1078 setValue1086
def setValue1088 : Flapjack.NumSet := .bn setValue1082 setValue1087
def setValue1089 : Flapjack.NumSet := .bn setValue1084 setValue1088
def setValue1090 : Flapjack.NumSet := .bn setValue1085 setValue1089
def setValue1091 : Flapjack.NumSet := .bn setValue1090 setValue0
def setValue1092 : Flapjack.NumSet := .bn setValue0 setValue1091
def setValue1093 : Flapjack.NumSet := .bn setValue161 setValue161
def setValue1094 : Flapjack.NumSet := .bn setValue1 setValue411
def setValue1095 : Flapjack.NumSet := .bn setValue1094 setValue366
def setValue1096 : Flapjack.NumSet := .bn setValue1093 setValue1095
def setValue1097 : Flapjack.NumSet := .bn setValue366 setValue395
def setValue1098 : Flapjack.NumSet := .bs setValue1 () setValue411
def setValue1099 : Flapjack.NumSet := .bn setValue1098 setValue395
def setValue1100 : Flapjack.NumSet := .bn setValue1097 setValue1099
def setValue1101 : Flapjack.NumSet := .bn setValue1096 setValue1100
def setValue1102 : Flapjack.NumSet := .bs setValue1101 () setValue0
def tree242 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995,
    9999, 10003, 10007, 10011, 10015, 10019, 10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059,
    10063, 10067, 10071, 10075]
  [9681, 9721, 9709, 9701, 9793, 9749, 9705, 9769, 9689, 9753, 9729, 9777, 9669, 9861, 9673, 9677, 9685, 9689, 9873,
    9693, 9697, 9705, 9713, 9717, 9869, 9725, 9865, 9729, 9733, 9737, 9741, 9881, 9745, 9753, 9757, 9761, 9765, 9769,
    9773, 9777, 9781, 9877, 9785, 9789])).val
theorem tree242_def : tree242 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995,
    9999, 10003, 10007, 10011, 10015, 10019, 10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059,
    10063, 10067, 10071, 10075]
  [9681, 9721, 9709, 9701, 9793, 9749, 9705, 9769, 9689, 9753, 9729, 9777, 9669, 9861, 9673, 9677, 9685, 9689, 9873,
    9693, 9697, 9705, 9713, 9717, 9869, 9725, 9865, 9729, 9733, 9737, 9741, 9881, 9745, 9753, 9757, 9761, 9765, 9769,
    9773, 9777, 9781, 9877, 9785, 9789]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal242 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9951, 9955, 9959, 9963, 9967, 9971, 9975, 9979, 9983, 9987, 9991, 9995,
    9999, 10003, 10007, 10011, 10015, 10019, 10023, 10027, 10031, 10035, 10039, 10043, 10047, 10051, 10055, 10059,
    10063, 10067, 10071, 10075]
  [9681, 9721, 9709, 9701, 9793, 9749, 9705, 9769, 9689, 9753, 9729, 9777, 9669, 9861, 9673, 9677, 9685, 9689, 9873,
    9693, 9697, 9705, 9713, 9717, 9869, 9725, 9865, 9729, 9733, 9737, 9741, 9881, 9745, 9753, 9757, 9761, 9765, 9769,
    9773, 9777, 9781, 9877, 9785, 9789]
def live242 : Flapjack.NumSet := setValue1069
def coloured242 : Flapjack.NumSet := setValue1075
def result242 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1092, setValue1102)
def tree243 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree242 tree241)).val
theorem tree243_def : tree243 = (.seq tree242 tree241) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal243 : Flapjack.RegAlloc.ClashTree := .seq literal242 literal241
def live243 : Flapjack.NumSet := setValue674
def coloured243 : Flapjack.NumSet := setValue683
def result243 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1092, setValue1102)
def tree244 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree244_def : tree244 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal244 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live244 : Flapjack.NumSet := setValue1092
def coloured244 : Flapjack.NumSet := setValue1102
def result244 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1092, setValue1102)
def tree245 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree244 tree243)).val
theorem tree245_def : tree245 = (.seq tree244 tree243) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal245 : Flapjack.RegAlloc.ClashTree := .seq literal244 literal243
def live245 : Flapjack.NumSet := setValue674
def coloured245 : Flapjack.NumSet := setValue683
def result245 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1092, setValue1102)
def setValue1103 : Flapjack.NumSet := .bn setValue0 setValue1080
def setValue1104 : Flapjack.NumSet := .bn setValue0 setValue1103
def setValue1105 : Flapjack.NumSet := .bn setValue1079 setValue1104
def setValue1106 : Flapjack.NumSet := .bn setValue0 setValue1028
def setValue1107 : Flapjack.NumSet := .bn setValue1078 setValue1106
def setValue1108 : Flapjack.NumSet := .bn setValue0 setValue1077
def setValue1109 : Flapjack.NumSet := .bn setValue1076 setValue1028
def setValue1110 : Flapjack.NumSet := .bn setValue1108 setValue1109
def setValue1111 : Flapjack.NumSet := .bn setValue1107 setValue1110
def setValue1112 : Flapjack.NumSet := .bn setValue1105 setValue1111
def setValue1113 : Flapjack.NumSet := .bn setValue1108 setValue1081
def setValue1114 : Flapjack.NumSet := .bn setValue1113 setValue1082
def setValue1115 : Flapjack.NumSet := .bn setValue1108 setValue1106
def setValue1116 : Flapjack.NumSet := .bn setValue1078 setValue1108
def setValue1117 : Flapjack.NumSet := .bn setValue1115 setValue1116
def setValue1118 : Flapjack.NumSet := .bn setValue1114 setValue1117
def setValue1119 : Flapjack.NumSet := .bn setValue1112 setValue1118
def setValue1120 : Flapjack.NumSet := .bn setValue1119 setValue0
def setValue1121 : Flapjack.NumSet := .bn setValue0 setValue1120
def setValue1122 : Flapjack.NumSet := .bs setValue15 () setValue15
def setValue1123 : Flapjack.NumSet := .bn setValue1094 setValue1122
def setValue1124 : Flapjack.NumSet := .bn setValue675 setValue1123
def setValue1125 : Flapjack.NumSet := .bn setValue37 setValue1
def setValue1126 : Flapjack.NumSet := .bs setValue0 () setValue411
def setValue1127 : Flapjack.NumSet := .bn setValue1125 setValue1126
def setValue1128 : Flapjack.NumSet := .bs setValue37 () setValue0
def setValue1129 : Flapjack.NumSet := .bn setValue1098 setValue1128
def setValue1130 : Flapjack.NumSet := .bn setValue1127 setValue1129
def setValue1131 : Flapjack.NumSet := .bn setValue1124 setValue1130
def setValue1132 : Flapjack.NumSet := .bs setValue1131 () setValue0
def tree246 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [11393, 11389, 11385, 11381, 11377, 11373, 11369, 11365, 11361, 11357, 11353, 11349, 11345, 11341, 11337, 11333,
    11329, 11325, 11321, 11317, 11313, 11309, 11305, 11301, 11297, 11293]
  [9669, 9861, 9673, 9689, 9873, 9693, 9697, 9705, 9717, 9869, 9725, 9865, 9729, 9737, 9741, 9881, 9753, 9757, 9761,
    9765, 9769, 9777, 9781, 9877, 9785, 9789])).val
theorem tree246_def : tree246 = (Flapjack.RegAlloc.ClashTree.delta
  [11393, 11389, 11385, 11381, 11377, 11373, 11369, 11365, 11361, 11357, 11353, 11349, 11345, 11341, 11337, 11333,
    11329, 11325, 11321, 11317, 11313, 11309, 11305, 11301, 11297, 11293]
  [9669, 9861, 9673, 9689, 9873, 9693, 9697, 9705, 9717, 9869, 9725, 9865, 9729, 9737, 9741, 9881, 9753, 9757, 9761,
    9765, 9769, 9777, 9781, 9877, 9785, 9789]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal246 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [11393, 11389, 11385, 11381, 11377, 11373, 11369, 11365, 11361, 11357, 11353, 11349, 11345, 11341, 11337, 11333,
    11329, 11325, 11321, 11317, 11313, 11309, 11305, 11301, 11297, 11293]
  [9669, 9861, 9673, 9689, 9873, 9693, 9697, 9705, 9717, 9869, 9725, 9865, 9729, 9737, 9741, 9881, 9753, 9757, 9761,
    9765, 9769, 9777, 9781, 9877, 9785, 9789]
def live246 : Flapjack.NumSet := setValue674
def coloured246 : Flapjack.NumSet := setValue683
def result246 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1121, setValue1132)
def tree247 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree247_def : tree247 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal247 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live247 : Flapjack.NumSet := setValue1121
def coloured247 : Flapjack.NumSet := setValue1132
def result247 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1121, setValue1132)
def tree248 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree247 tree246)).val
theorem tree248_def : tree248 = (.seq tree247 tree246) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal248 : Flapjack.RegAlloc.ClashTree := .seq literal247 literal246
def live248 : Flapjack.NumSet := setValue674
def coloured248 : Flapjack.NumSet := setValue683
def result248 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1121, setValue1132)
def tree249 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree245 tree248)).val
theorem tree249_def : tree249 = (.branch (none) tree245 tree248) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal249 : Flapjack.RegAlloc.ClashTree := .branch (none) literal245 literal248
def live249 : Flapjack.NumSet := setValue674
def coloured249 : Flapjack.NumSet := setValue683
def result249 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1092, setValue1102)
def setValue1133 : Flapjack.NumSet := .bn setValue1084 setValue1084
def setValue1134 : Flapjack.NumSet := .bn setValue1081 setValue1086
def setValue1135 : Flapjack.NumSet := .bn setValue1082 setValue1134
def setValue1136 : Flapjack.NumSet := .bn setValue1084 setValue1135
def setValue1137 : Flapjack.NumSet := .bn setValue1133 setValue1136
def setValue1138 : Flapjack.NumSet := .bn setValue1137 setValue0
def setValue1139 : Flapjack.NumSet := .bn setValue0 setValue1138
def setValue1140 : Flapjack.NumSet := .bn setValue1098 setValue366
def setValue1141 : Flapjack.NumSet := .bn setValue1093 setValue1140
def setValue1142 : Flapjack.NumSet := .bs setValue1141 () setValue1100
def setValue1143 : Flapjack.NumSet := .bs setValue1142 () setValue0
def tree250 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [9885, 9889])).val
theorem tree250_def : tree250 = (Flapjack.RegAlloc.ClashTree.delta [] [9885, 9889]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal250 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [9885, 9889]
def live250 : Flapjack.NumSet := setValue1092
def coloured250 : Flapjack.NumSet := setValue1102
def result250 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1139, setValue1143)
def tree251 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree250 tree249)).val
theorem tree251_def : tree251 = (.seq tree250 tree249) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal251 : Flapjack.RegAlloc.ClashTree := .seq literal250 literal249
def live251 : Flapjack.NumSet := setValue674
def coloured251 : Flapjack.NumSet := setValue683
def result251 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1139, setValue1143)
def tree252 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree251 tree156)).val
theorem tree252_def : tree252 = (.seq tree251 tree156) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal252 : Flapjack.RegAlloc.ClashTree := .seq literal251 literal156
def live252 : Flapjack.NumSet := setValue0
def coloured252 : Flapjack.NumSet := setValue0
def result252 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1139, setValue1143)
def setValue1144 : Flapjack.NumSet := .bn setValue1133 setValue1089
def setValue1145 : Flapjack.NumSet := .bn setValue1144 setValue0
def setValue1146 : Flapjack.NumSet := .bn setValue0 setValue1145
def setValue1147 : Flapjack.NumSet := .bn setValue1141 setValue1100
def setValue1148 : Flapjack.NumSet := .bs setValue1147 () setValue0
def tree253 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [9889] [])).val
theorem tree253_def : tree253 = (Flapjack.RegAlloc.ClashTree.delta [9889] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal253 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [9889] []
def live253 : Flapjack.NumSet := setValue1139
def coloured253 : Flapjack.NumSet := setValue1143
def result253 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1146, setValue1148)
def tree254 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree253 tree252)).val
theorem tree254_def : tree254 = (.seq tree253 tree252) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal254 : Flapjack.RegAlloc.ClashTree := .seq literal253 literal252
def live254 : Flapjack.NumSet := setValue0
def coloured254 : Flapjack.NumSet := setValue0
def result254 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1146, setValue1148)
def setValue1149 : Flapjack.NumSet := .bn setValue31 setValue1027
def setValue1150 : Flapjack.NumSet := .bn setValue1149 setValue1077
def setValue1151 : Flapjack.NumSet := .bn setValue1150 setValue1078
def setValue1152 : Flapjack.NumSet := .bn setValue1151 setValue1151
def setValue1153 : Flapjack.NumSet := .bn setValue1152 setValue1152
def setValue1154 : Flapjack.NumSet := .bn setValue1151 setValue1087
def setValue1155 : Flapjack.NumSet := .bn setValue1152 setValue1154
def setValue1156 : Flapjack.NumSet := .bn setValue1153 setValue1155
def setValue1157 : Flapjack.NumSet := .bn setValue1156 setValue0
def setValue1158 : Flapjack.NumSet := .bn setValue0 setValue1157
def setValue1159 : Flapjack.NumSet := .bs setValue180 () setValue311
def setValue1160 : Flapjack.NumSet := .bs setValue1098 () setValue161
def setValue1161 : Flapjack.NumSet := .bs setValue1159 () setValue1160
def setValue1162 : Flapjack.NumSet := .bs setValue37 () setValue101
def setValue1163 : Flapjack.NumSet := .bs setValue366 () setValue1162
def setValue1164 : Flapjack.NumSet := .bs setValue1126 () setValue395
def setValue1165 : Flapjack.NumSet := .bs setValue1163 () setValue1164
def setValue1166 : Flapjack.NumSet := .bn setValue1161 setValue1165
def setValue1167 : Flapjack.NumSet := .bs setValue1166 () setValue0
def tree255 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [9885, 9881, 9877, 9873, 9869, 9865, 9861] [9849, 9837, 9833, 9829, 9841, 9845, 9853])).val
theorem tree255_def : tree255 = (Flapjack.RegAlloc.ClashTree.delta [9885, 9881, 9877, 9873, 9869, 9865, 9861] [9849, 9837, 9833, 9829, 9841, 9845, 9853]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal255 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [9885, 9881, 9877, 9873, 9869, 9865, 9861] [9849, 9837, 9833, 9829, 9841, 9845, 9853]
def live255 : Flapjack.NumSet := setValue1146
def coloured255 : Flapjack.NumSet := setValue1148
def result255 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1158, setValue1167)
def tree256 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree255 tree254)).val
theorem tree256_def : tree256 = (.seq tree255 tree254) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal256 : Flapjack.RegAlloc.ClashTree := .seq literal255 literal254
def live256 : Flapjack.NumSet := setValue0
def coloured256 : Flapjack.NumSet := setValue0
def result256 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1158, setValue1167)
def tree257 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree257_def : tree257 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal257 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live257 : Flapjack.NumSet := setValue1158
def coloured257 : Flapjack.NumSet := setValue1167
def result257 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1158, setValue1167)
def tree258 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree257 tree256)).val
theorem tree258_def : tree258 = (.seq tree257 tree256) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal258 : Flapjack.RegAlloc.ClashTree := .seq literal257 literal256
def live258 : Flapjack.NumSet := setValue0
def coloured258 : Flapjack.NumSet := setValue0
def result258 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1158, setValue1167)
def setValue1168 : Flapjack.NumSet := .bs setValue311 () setValue311
def setValue1169 : Flapjack.NumSet := .bn setValue0 setValue31
def setValue1170 : Flapjack.NumSet := .bn setValue1169 setValue1076
def setValue1171 : Flapjack.NumSet := .bn setValue1170 setValue1170
def setValue1172 : Flapjack.NumSet := .bn setValue1171 setValue1171
def setValue1173 : Flapjack.NumSet := .bn setValue1172 setValue1172
def setValue1174 : Flapjack.NumSet := .bn setValue1076 setValue1076
def setValue1175 : Flapjack.NumSet := .bn setValue1170 setValue1174
def setValue1176 : Flapjack.NumSet := .bn setValue1171 setValue1175
def setValue1177 : Flapjack.NumSet := .bn setValue1172 setValue1176
def setValue1178 : Flapjack.NumSet := .bn setValue1173 setValue1177
def setValue1179 : Flapjack.NumSet := .bn setValue0 setValue1178
def setValue1180 : Flapjack.NumSet := .bn setValue1168 setValue1179
def setValue1181 : Flapjack.NumSet := .bs setValue1042 () setValue1042
def setValue1182 : Flapjack.NumSet := .bn setValue1181 setValue0
def tree259 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [9853, 9849, 9845, 9841, 9837, 9833, 9829, 9669, 9673, 9677, 9681, 9685, 9689, 9693, 9697, 9701, 9705, 9709, 9713,
    9717, 9721, 9725, 9729, 9733, 9737, 9741, 9745, 9749, 9753, 9757, 9761, 9765, 9769, 9773, 9777, 9781, 9785, 9789,
    9793]
  [4, 2, 6, 8, 14, 12, 10, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583, 9587, 9591, 9595,
    9599, 9603, 9607, 9611, 9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659, 9663])).val
theorem tree259_def : tree259 = (Flapjack.RegAlloc.ClashTree.delta
  [9853, 9849, 9845, 9841, 9837, 9833, 9829, 9669, 9673, 9677, 9681, 9685, 9689, 9693, 9697, 9701, 9705, 9709, 9713,
    9717, 9721, 9725, 9729, 9733, 9737, 9741, 9745, 9749, 9753, 9757, 9761, 9765, 9769, 9773, 9777, 9781, 9785, 9789,
    9793]
  [4, 2, 6, 8, 14, 12, 10, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583, 9587, 9591, 9595,
    9599, 9603, 9607, 9611, 9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659, 9663]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal259 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [9853, 9849, 9845, 9841, 9837, 9833, 9829, 9669, 9673, 9677, 9681, 9685, 9689, 9693, 9697, 9701, 9705, 9709, 9713,
    9717, 9721, 9725, 9729, 9733, 9737, 9741, 9745, 9749, 9753, 9757, 9761, 9765, 9769, 9773, 9777, 9781, 9785, 9789,
    9793]
  [4, 2, 6, 8, 14, 12, 10, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583, 9587, 9591, 9595,
    9599, 9603, 9607, 9611, 9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659, 9663]
def live259 : Flapjack.NumSet := setValue1158
def coloured259 : Flapjack.NumSet := setValue1167
def result259 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1180, setValue1182)
def tree260 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1180)).val
theorem tree260_def : tree260 = (.set setValue1180) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal260 : Flapjack.RegAlloc.ClashTree := .set setValue1180
def live260 : Flapjack.NumSet := setValue1180
def coloured260 : Flapjack.NumSet := setValue1182
def result260 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1180, setValue1182)
def tree261 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree260 tree259)).val
theorem tree261_def : tree261 = (.seq tree260 tree259) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal261 : Flapjack.RegAlloc.ClashTree := .seq literal260 literal259
def live261 : Flapjack.NumSet := setValue1158
def coloured261 : Flapjack.NumSet := setValue1167
def result261 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1180, setValue1182)
def setValue1183 : Flapjack.NumSet := .bn setValue1 setValue1157
def setValue1184 : Flapjack.NumSet := .bs setValue1161 () setValue1165
def setValue1185 : Flapjack.NumSet := .bs setValue1184 () setValue0
def tree262 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree262_def : tree262 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal262 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live262 : Flapjack.NumSet := setValue1158
def coloured262 : Flapjack.NumSet := setValue1167
def result262 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1183, setValue1185)
def setValue1186 : Flapjack.NumSet := .bn setValue1077 setValue0
def setValue1187 : Flapjack.NumSet := .bn setValue1186 setValue0
def setValue1188 : Flapjack.NumSet := .bn setValue1187 setValue1187
def setValue1189 : Flapjack.NumSet := .bn setValue1188 setValue1188
def setValue1190 : Flapjack.NumSet := .bn setValue1187 setValue0
def setValue1191 : Flapjack.NumSet := .bn setValue1188 setValue1190
def setValue1192 : Flapjack.NumSet := .bn setValue1189 setValue1191
def setValue1193 : Flapjack.NumSet := .bn setValue1192 setValue1178
def setValue1194 : Flapjack.NumSet := .bn setValue1 setValue1193
def setValue1195 : Flapjack.NumSet := .bs setValue1055 () setValue1037
def setValue1196 : Flapjack.NumSet := .bs setValue1041 () setValue1195
def setValue1197 : Flapjack.NumSet := .bs setValue1196 () setValue1042
def setValue1198 : Flapjack.NumSet := .bn setValue1197 setValue0
def tree263 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 9669, 9673, 9677, 9681, 9685, 9689, 9693, 9697, 9701, 9705, 9709, 9713, 9717, 9721, 9725, 9729, 9733, 9737, 9741,
    9745, 9749, 9753, 9757, 9761, 9765, 9769, 9773, 9777, 9781, 9785, 9789, 9793]
  [2, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583, 9587, 9591, 9595, 9599, 9603, 9607, 9611,
    9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659, 9663])).val
theorem tree263_def : tree263 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 9669, 9673, 9677, 9681, 9685, 9689, 9693, 9697, 9701, 9705, 9709, 9713, 9717, 9721, 9725, 9729, 9733, 9737, 9741,
    9745, 9749, 9753, 9757, 9761, 9765, 9769, 9773, 9777, 9781, 9785, 9789, 9793]
  [2, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583, 9587, 9591, 9595, 9599, 9603, 9607, 9611,
    9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659, 9663]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal263 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 9669, 9673, 9677, 9681, 9685, 9689, 9693, 9697, 9701, 9705, 9709, 9713, 9717, 9721, 9725, 9729, 9733, 9737, 9741,
    9745, 9749, 9753, 9757, 9761, 9765, 9769, 9773, 9777, 9781, 9785, 9789, 9793]
  [2, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583, 9587, 9591, 9595, 9599, 9603, 9607, 9611,
    9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659, 9663]
def live263 : Flapjack.NumSet := setValue1183
def coloured263 : Flapjack.NumSet := setValue1185
def result263 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1194, setValue1198)
def tree264 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree263 tree262)).val
theorem tree264_def : tree264 = (.seq tree263 tree262) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal264 : Flapjack.RegAlloc.ClashTree := .seq literal263 literal262
def live264 : Flapjack.NumSet := setValue1158
def coloured264 : Flapjack.NumSet := setValue1167
def result264 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1194, setValue1198)
def setValue1199 : Flapjack.NumSet := .bn setValue1 setValue1179
def tree265 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1199)).val
theorem tree265_def : tree265 = (.set setValue1199) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal265 : Flapjack.RegAlloc.ClashTree := .set setValue1199
def live265 : Flapjack.NumSet := setValue1194
def coloured265 : Flapjack.NumSet := setValue1198
def result265 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1199, setValue1068)
def tree266 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree265 tree264)).val
theorem tree266_def : tree266 = (.seq tree265 tree264) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal266 : Flapjack.RegAlloc.ClashTree := .seq literal265 literal264
def live266 : Flapjack.NumSet := setValue1158
def coloured266 : Flapjack.NumSet := setValue1167
def result266 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1199, setValue1068)
def setValue1200 : Flapjack.NumSet := .bn setValue440 setValue1179
def tree267 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1200) tree261 tree266)).val
theorem tree267_def : tree267 = (.branch (some setValue1200) tree261 tree266) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal267 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1200) literal261 literal266
def live267 : Flapjack.NumSet := setValue1158
def coloured267 : Flapjack.NumSet := setValue1167
def result267 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1200, setValue1075)
def tree268 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree267 tree258)).val
theorem tree268_def : tree268 = (.seq tree267 tree258) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal268 : Flapjack.RegAlloc.ClashTree := .seq literal267 literal258
def live268 : Flapjack.NumSet := setValue0
def coloured268 : Flapjack.NumSet := setValue0
def result268 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1200, setValue1075)
def setValue1201 : Flapjack.NumSet := .bn setValue0 setValue30
def setValue1202 : Flapjack.NumSet := .bn setValue1201 setValue1201
def setValue1203 : Flapjack.NumSet := .bn setValue1201 setValue0
def setValue1204 : Flapjack.NumSet := .bn setValue1202 setValue1203
def setValue1205 : Flapjack.NumSet := .bn setValue0 setValue1201
def setValue1206 : Flapjack.NumSet := .bn setValue1205 setValue1203
def setValue1207 : Flapjack.NumSet := .bn setValue1204 setValue1206
def setValue1208 : Flapjack.NumSet := .bn setValue1201 setValue31
def setValue1209 : Flapjack.NumSet := .bn setValue1202 setValue1208
def setValue1210 : Flapjack.NumSet := .bn setValue1206 setValue1209
def setValue1211 : Flapjack.NumSet := .bn setValue1207 setValue1210
def setValue1212 : Flapjack.NumSet := .bn setValue1204 setValue1204
def setValue1213 : Flapjack.NumSet := .bn setValue1206 setValue1204
def setValue1214 : Flapjack.NumSet := .bn setValue1212 setValue1213
def setValue1215 : Flapjack.NumSet := .bn setValue1211 setValue1214
def setValue1216 : Flapjack.NumSet := .bn setValue1213 setValue1210
def setValue1217 : Flapjack.NumSet := .bn setValue1211 setValue1216
def setValue1218 : Flapjack.NumSet := .bn setValue1215 setValue1217
def setValue1219 : Flapjack.NumSet := .bn setValue1218 setValue0
def setValue1220 : Flapjack.NumSet := .bn setValue0 setValue1219
def setValue1221 : Flapjack.NumSet := .bn setValue1071 setValue1073
def setValue1222 : Flapjack.NumSet := .bs setValue1221 () setValue0
def tree269 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583,
    9587, 9591, 9595, 9599, 9603, 9607, 9611, 9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659,
    9663]
  [9465, 9461, 9469, 9481, 9473, 9485, 9373, 9313, 9361, 9293, 9341, 9397, 9281, 9285, 9289, 9297, 9301, 9305, 9309,
    9317, 9321, 9325, 9329, 9333, 9337, 9345, 9349, 9353, 9357, 9365, 9369, 9377, 9381, 9385, 9389, 9393, 9401, 9405,
    9409, 9413, 9417, 9421, 9425, 9429])).val
theorem tree269_def : tree269 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583,
    9587, 9591, 9595, 9599, 9603, 9607, 9611, 9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659,
    9663]
  [9465, 9461, 9469, 9481, 9473, 9485, 9373, 9313, 9361, 9293, 9341, 9397, 9281, 9285, 9289, 9297, 9301, 9305, 9309,
    9317, 9321, 9325, 9329, 9333, 9337, 9345, 9349, 9353, 9357, 9365, 9369, 9377, 9381, 9385, 9389, 9393, 9401, 9405,
    9409, 9413, 9417, 9421, 9425, 9429]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal269 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9539, 9543, 9547, 9551, 9555, 9559, 9563, 9567, 9571, 9575, 9579, 9583,
    9587, 9591, 9595, 9599, 9603, 9607, 9611, 9615, 9619, 9623, 9627, 9631, 9635, 9639, 9643, 9647, 9651, 9655, 9659,
    9663]
  [9465, 9461, 9469, 9481, 9473, 9485, 9373, 9313, 9361, 9293, 9341, 9397, 9281, 9285, 9289, 9297, 9301, 9305, 9309,
    9317, 9321, 9325, 9329, 9333, 9337, 9345, 9349, 9353, 9357, 9365, 9369, 9377, 9381, 9385, 9389, 9393, 9401, 9405,
    9409, 9413, 9417, 9421, 9425, 9429]
def live269 : Flapjack.NumSet := setValue1200
def coloured269 : Flapjack.NumSet := setValue1075
def result269 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1220, setValue1222)
def tree270 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree269 tree268)).val
theorem tree270_def : tree270 = (.seq tree269 tree268) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal270 : Flapjack.RegAlloc.ClashTree := .seq literal269 literal268
def live270 : Flapjack.NumSet := setValue0
def coloured270 : Flapjack.NumSet := setValue0
def result270 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1220, setValue1222)
def tree271 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree271_def : tree271 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal271 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live271 : Flapjack.NumSet := setValue1220
def coloured271 : Flapjack.NumSet := setValue1222
def result271 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1220, setValue1222)
def tree272 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree271 tree270)).val
theorem tree272_def : tree272 = (.seq tree271 tree270) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal272 : Flapjack.RegAlloc.ClashTree := .seq literal271 literal270
def live272 : Flapjack.NumSet := setValue0
def coloured272 : Flapjack.NumSet := setValue0
def result272 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1220, setValue1222)
def setValue1223 : Flapjack.NumSet := .bn setValue0 setValue16
def setValue1224 : Flapjack.NumSet := .bn setValue1223 setValue0
def setValue1225 : Flapjack.NumSet := .bn setValue1224 setValue0
def setValue1226 : Flapjack.NumSet := .bn setValue1225 setValue0
def setValue1227 : Flapjack.NumSet := .bn setValue1225 setValue1201
def setValue1228 : Flapjack.NumSet := .bn setValue1226 setValue1227
def setValue1229 : Flapjack.NumSet := .bn setValue1226 setValue1205
def setValue1230 : Flapjack.NumSet := .bn setValue1228 setValue1229
def setValue1231 : Flapjack.NumSet := .bn setValue1230 setValue1230
def setValue1232 : Flapjack.NumSet := .bn setValue1229 setValue1229
def setValue1233 : Flapjack.NumSet := .bn setValue1230 setValue1232
def setValue1234 : Flapjack.NumSet := .bn setValue1231 setValue1233
def setValue1235 : Flapjack.NumSet := .bn setValue1234 setValue1234
def setValue1236 : Flapjack.NumSet := .bn setValue0 setValue1235
def setValue1237 : Flapjack.NumSet := .bn setValue395 setValue1236
def setValue1238 : Flapjack.NumSet := .bn setValue37 setValue311
def setValue1239 : Flapjack.NumSet := .bn setValue311 setValue411
def setValue1240 : Flapjack.NumSet := .bn setValue1238 setValue1239
def setValue1241 : Flapjack.NumSet := .bs setValue1037 () setValue1239
def setValue1242 : Flapjack.NumSet := .bs setValue1240 () setValue1241
def setValue1243 : Flapjack.NumSet := .bs setValue1238 () setValue1239
def setValue1244 : Flapjack.NumSet := .bs setValue1243 () setValue1241
def setValue1245 : Flapjack.NumSet := .bs setValue1242 () setValue1244
def setValue1246 : Flapjack.NumSet := .bn setValue1245 setValue0
def tree273 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [9485, 9481, 9473, 9469, 9465, 9461, 9281, 9285, 9289, 9293, 9297, 9301, 9305, 9309, 9313, 9317, 9321, 9325, 9329,
    9333, 9337, 9341, 9345, 9349, 9353, 9357, 9361, 9365, 9369, 9373, 9377, 9381, 9385, 9389, 9393, 9397, 9401, 9405,
    9409, 9413, 9417, 9421, 9425, 9429]
  [12, 8, 10, 6, 2, 4, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171, 9175, 9179, 9183, 9187,
    9191, 9195, 9199, 9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247, 9251, 9255, 9259, 9263,
    9267, 9271, 9275])).val
theorem tree273_def : tree273 = (Flapjack.RegAlloc.ClashTree.delta
  [9485, 9481, 9473, 9469, 9465, 9461, 9281, 9285, 9289, 9293, 9297, 9301, 9305, 9309, 9313, 9317, 9321, 9325, 9329,
    9333, 9337, 9341, 9345, 9349, 9353, 9357, 9361, 9365, 9369, 9373, 9377, 9381, 9385, 9389, 9393, 9397, 9401, 9405,
    9409, 9413, 9417, 9421, 9425, 9429]
  [12, 8, 10, 6, 2, 4, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171, 9175, 9179, 9183, 9187,
    9191, 9195, 9199, 9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247, 9251, 9255, 9259, 9263,
    9267, 9271, 9275]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal273 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [9485, 9481, 9473, 9469, 9465, 9461, 9281, 9285, 9289, 9293, 9297, 9301, 9305, 9309, 9313, 9317, 9321, 9325, 9329,
    9333, 9337, 9341, 9345, 9349, 9353, 9357, 9361, 9365, 9369, 9373, 9377, 9381, 9385, 9389, 9393, 9397, 9401, 9405,
    9409, 9413, 9417, 9421, 9425, 9429]
  [12, 8, 10, 6, 2, 4, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171, 9175, 9179, 9183, 9187,
    9191, 9195, 9199, 9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247, 9251, 9255, 9259, 9263,
    9267, 9271, 9275]
def live273 : Flapjack.NumSet := setValue1220
def coloured273 : Flapjack.NumSet := setValue1222
def result273 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1237, setValue1246)
def tree274 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1237)).val
theorem tree274_def : tree274 = (.set setValue1237) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal274 : Flapjack.RegAlloc.ClashTree := .set setValue1237
def live274 : Flapjack.NumSet := setValue1237
def coloured274 : Flapjack.NumSet := setValue1246
def result274 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1237, setValue1246)
def tree275 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree274 tree273)).val
theorem tree275_def : tree275 = (.seq tree274 tree273) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal275 : Flapjack.RegAlloc.ClashTree := .seq literal274 literal273
def live275 : Flapjack.NumSet := setValue1220
def coloured275 : Flapjack.NumSet := setValue1222
def result275 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1237, setValue1246)
def setValue1247 : Flapjack.NumSet := .bn setValue1 setValue1219
def setValue1248 : Flapjack.NumSet := .bs setValue1074 () setValue0
def tree276 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree276_def : tree276 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal276 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live276 : Flapjack.NumSet := setValue1220
def coloured276 : Flapjack.NumSet := setValue1222
def result276 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1247, setValue1248)
def setValue1249 : Flapjack.NumSet := .bn setValue1203 setValue0
def setValue1250 : Flapjack.NumSet := .bn setValue1249 setValue0
def setValue1251 : Flapjack.NumSet := .bn setValue0 setValue1169
def setValue1252 : Flapjack.NumSet := .bn setValue0 setValue1251
def setValue1253 : Flapjack.NumSet := .bn setValue1250 setValue1252
def setValue1254 : Flapjack.NumSet := .bn setValue1250 setValue0
def setValue1255 : Flapjack.NumSet := .bn setValue1253 setValue1254
def setValue1256 : Flapjack.NumSet := .bn setValue0 setValue1252
def setValue1257 : Flapjack.NumSet := .bn setValue1253 setValue1256
def setValue1258 : Flapjack.NumSet := .bn setValue1255 setValue1257
def setValue1259 : Flapjack.NumSet := .bn setValue1258 setValue1235
def setValue1260 : Flapjack.NumSet := .bn setValue1 setValue1259
def setValue1261 : Flapjack.NumSet := .bs setValue1245 () setValue0
def tree277 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 9281, 9285, 9289, 9293, 9297, 9301, 9305, 9309, 9313, 9317, 9321, 9325, 9329, 9333, 9337, 9341, 9345, 9349, 9353,
    9357, 9361, 9365, 9369, 9373, 9377, 9381, 9385, 9389, 9393, 9397, 9401, 9405, 9409, 9413, 9417, 9421, 9425, 9429]
  [2, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171, 9175, 9179, 9183, 9187, 9191, 9195, 9199,
    9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247, 9251, 9255, 9259, 9263, 9267, 9271, 9275])).val
theorem tree277_def : tree277 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 9281, 9285, 9289, 9293, 9297, 9301, 9305, 9309, 9313, 9317, 9321, 9325, 9329, 9333, 9337, 9341, 9345, 9349, 9353,
    9357, 9361, 9365, 9369, 9373, 9377, 9381, 9385, 9389, 9393, 9397, 9401, 9405, 9409, 9413, 9417, 9421, 9425, 9429]
  [2, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171, 9175, 9179, 9183, 9187, 9191, 9195, 9199,
    9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247, 9251, 9255, 9259, 9263, 9267, 9271, 9275]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal277 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 9281, 9285, 9289, 9293, 9297, 9301, 9305, 9309, 9313, 9317, 9321, 9325, 9329, 9333, 9337, 9341, 9345, 9349, 9353,
    9357, 9361, 9365, 9369, 9373, 9377, 9381, 9385, 9389, 9393, 9397, 9401, 9405, 9409, 9413, 9417, 9421, 9425, 9429]
  [2, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171, 9175, 9179, 9183, 9187, 9191, 9195, 9199,
    9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247, 9251, 9255, 9259, 9263, 9267, 9271, 9275]
def live277 : Flapjack.NumSet := setValue1247
def coloured277 : Flapjack.NumSet := setValue1248
def result277 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1260, setValue1261)
def tree278 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree277 tree276)).val
theorem tree278_def : tree278 = (.seq tree277 tree276) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal278 : Flapjack.RegAlloc.ClashTree := .seq literal277 literal276
def live278 : Flapjack.NumSet := setValue1220
def coloured278 : Flapjack.NumSet := setValue1222
def result278 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1260, setValue1261)
def setValue1262 : Flapjack.NumSet := .bn setValue1 setValue1236
def setValue1263 : Flapjack.NumSet := .bn setValue1037 setValue1239
def setValue1264 : Flapjack.NumSet := .bn setValue1240 setValue1263
def setValue1265 : Flapjack.NumSet := .bs setValue1264 () setValue1264
def setValue1266 : Flapjack.NumSet := .bn setValue1265 setValue0
def tree279 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1262)).val
theorem tree279_def : tree279 = (.set setValue1262) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal279 : Flapjack.RegAlloc.ClashTree := .set setValue1262
def live279 : Flapjack.NumSet := setValue1260
def coloured279 : Flapjack.NumSet := setValue1261
def result279 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1262, setValue1266)
def tree280 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree279 tree278)).val
theorem tree280_def : tree280 = (.seq tree279 tree278) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal280 : Flapjack.RegAlloc.ClashTree := .seq literal279 literal278
def live280 : Flapjack.NumSet := setValue1220
def coloured280 : Flapjack.NumSet := setValue1222
def result280 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1262, setValue1266)
def setValue1267 : Flapjack.NumSet := .bn setValue440 setValue1236
def setValue1268 : Flapjack.NumSet := .bs setValue311 () setValue411
def setValue1269 : Flapjack.NumSet := .bs setValue1238 () setValue1268
def setValue1270 : Flapjack.NumSet := .bs setValue1037 () setValue1268
def setValue1271 : Flapjack.NumSet := .bs setValue1269 () setValue1270
def setValue1272 : Flapjack.NumSet := .bs setValue1055 () setValue1268
def setValue1273 : Flapjack.NumSet := .bs setValue1269 () setValue1272
def setValue1274 : Flapjack.NumSet := .bs setValue1271 () setValue1273
def setValue1275 : Flapjack.NumSet := .bn setValue1274 setValue0
def tree281 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1267) tree275 tree280)).val
theorem tree281_def : tree281 = (.branch (some setValue1267) tree275 tree280) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal281 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1267) literal275 literal280
def live281 : Flapjack.NumSet := setValue1220
def coloured281 : Flapjack.NumSet := setValue1222
def result281 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1267, setValue1275)
def tree282 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree281 tree272)).val
theorem tree282_def : tree282 = (.seq tree281 tree272) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal282 : Flapjack.RegAlloc.ClashTree := .seq literal281 literal272
def live282 : Flapjack.NumSet := setValue0
def coloured282 : Flapjack.NumSet := setValue0
def result282 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1267, setValue1275)
def setValue1276 : Flapjack.NumSet := .bn setValue0 setValue1224
def setValue1277 : Flapjack.NumSet := .bn setValue1276 setValue0
def setValue1278 : Flapjack.NumSet := .bn setValue1277 setValue1277
def setValue1279 : Flapjack.NumSet := .bn setValue1276 setValue1225
def setValue1280 : Flapjack.NumSet := .bn setValue1279 setValue1279
def setValue1281 : Flapjack.NumSet := .bn setValue1278 setValue1280
def setValue1282 : Flapjack.NumSet := .bn setValue1277 setValue1279
def setValue1283 : Flapjack.NumSet := .bn setValue1282 setValue1282
def setValue1284 : Flapjack.NumSet := .bn setValue1281 setValue1283
def setValue1285 : Flapjack.NumSet := .bn setValue0 setValue1225
def setValue1286 : Flapjack.NumSet := .bn setValue1277 setValue1285
def setValue1287 : Flapjack.NumSet := .bn setValue1280 setValue1286
def setValue1288 : Flapjack.NumSet := .bn setValue1283 setValue1287
def setValue1289 : Flapjack.NumSet := .bn setValue1284 setValue1288
def setValue1290 : Flapjack.NumSet := .bn setValue1282 setValue1280
def setValue1291 : Flapjack.NumSet := .bn setValue1290 setValue1287
def setValue1292 : Flapjack.NumSet := .bn setValue1280 setValue1282
def setValue1293 : Flapjack.NumSet := .bn setValue1292 setValue1287
def setValue1294 : Flapjack.NumSet := .bn setValue1291 setValue1293
def setValue1295 : Flapjack.NumSet := .bn setValue1289 setValue1294
def setValue1296 : Flapjack.NumSet := .bn setValue1295 setValue0
def setValue1297 : Flapjack.NumSet := .bn setValue0 setValue1296
def setValue1298 : Flapjack.NumSet := .bn setValue1271 setValue1273
def setValue1299 : Flapjack.NumSet := .bs setValue1298 () setValue0
def tree283 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171,
    9175, 9179, 9183, 9187, 9191, 9195, 9199, 9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247,
    9251, 9255, 9259, 9263, 9267, 9271, 9275]
  [9001, 9013, 8957, 8893, 8933, 8881, 9065, 9061, 9053, 9049, 9057, 9073, 8845, 8849, 8853, 8857, 8861, 8865, 8869,
    8873, 8877, 8885, 8889, 8897, 8901, 8905, 8909, 8913, 8917, 8921, 8925, 8929, 8937, 8941, 8945, 8949, 8953, 8961,
    8965, 8969, 8973, 8977, 8981, 8985, 8989, 8993, 8997, 9005, 9009, 9017])).val
theorem tree283_def : tree283 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171,
    9175, 9179, 9183, 9187, 9191, 9195, 9199, 9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247,
    9251, 9255, 9259, 9263, 9267, 9271, 9275]
  [9001, 9013, 8957, 8893, 8933, 8881, 9065, 9061, 9053, 9049, 9057, 9073, 8845, 8849, 8853, 8857, 8861, 8865, 8869,
    8873, 8877, 8885, 8889, 8897, 8901, 8905, 8909, 8913, 8917, 8921, 8925, 8929, 8937, 8941, 8945, 8949, 8953, 8961,
    8965, 8969, 8973, 8977, 8981, 8985, 8989, 8993, 8997, 9005, 9009, 9017]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal283 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 9127, 9131, 9135, 9139, 9143, 9147, 9151, 9155, 9159, 9163, 9167, 9171,
    9175, 9179, 9183, 9187, 9191, 9195, 9199, 9203, 9207, 9211, 9215, 9219, 9223, 9227, 9231, 9235, 9239, 9243, 9247,
    9251, 9255, 9259, 9263, 9267, 9271, 9275]
  [9001, 9013, 8957, 8893, 8933, 8881, 9065, 9061, 9053, 9049, 9057, 9073, 8845, 8849, 8853, 8857, 8861, 8865, 8869,
    8873, 8877, 8885, 8889, 8897, 8901, 8905, 8909, 8913, 8917, 8921, 8925, 8929, 8937, 8941, 8945, 8949, 8953, 8961,
    8965, 8969, 8973, 8977, 8981, 8985, 8989, 8993, 8997, 9005, 9009, 9017]
def live283 : Flapjack.NumSet := setValue1267
def coloured283 : Flapjack.NumSet := setValue1275
def result283 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1297, setValue1299)
def tree284 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree283 tree282)).val
theorem tree284_def : tree284 = (.seq tree283 tree282) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal284 : Flapjack.RegAlloc.ClashTree := .seq literal283 literal282
def live284 : Flapjack.NumSet := setValue0
def coloured284 : Flapjack.NumSet := setValue0
def result284 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1297, setValue1299)
def tree285 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree285_def : tree285 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal285 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live285 : Flapjack.NumSet := setValue1297
def coloured285 : Flapjack.NumSet := setValue1299
def result285 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1297, setValue1299)
def tree286 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree285 tree284)).val
theorem tree286_def : tree286 = (.seq tree285 tree284) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal286 : Flapjack.RegAlloc.ClashTree := .seq literal285 literal284
def live286 : Flapjack.NumSet := setValue0
def coloured286 : Flapjack.NumSet := setValue0
def result286 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1297, setValue1299)
def setValue1300 : Flapjack.NumSet := .bn setValue0 setValue1223
def setValue1301 : Flapjack.NumSet := .bn setValue1300 setValue0
def setValue1302 : Flapjack.NumSet := .bn setValue1301 setValue1276
def setValue1303 : Flapjack.NumSet := .bn setValue0 setValue1276
def setValue1304 : Flapjack.NumSet := .bn setValue1302 setValue1303
def setValue1305 : Flapjack.NumSet := .bn setValue1304 setValue1304
def setValue1306 : Flapjack.NumSet := .bn setValue1303 setValue1303
def setValue1307 : Flapjack.NumSet := .bn setValue1304 setValue1306
def setValue1308 : Flapjack.NumSet := .bn setValue1305 setValue1307
def setValue1309 : Flapjack.NumSet := .bn setValue1276 setValue1276
def setValue1310 : Flapjack.NumSet := .bn setValue1303 setValue1309
def setValue1311 : Flapjack.NumSet := .bn setValue1304 setValue1310
def setValue1312 : Flapjack.NumSet := .bn setValue1307 setValue1311
def setValue1313 : Flapjack.NumSet := .bn setValue1308 setValue1312
def setValue1314 : Flapjack.NumSet := .bn setValue1312 setValue1312
def setValue1315 : Flapjack.NumSet := .bn setValue1313 setValue1314
def setValue1316 : Flapjack.NumSet := .bn setValue0 setValue1315
def setValue1317 : Flapjack.NumSet := .bn setValue395 setValue1316
def setValue1318 : Flapjack.NumSet := .bn setValue311 setValue311
def setValue1319 : Flapjack.NumSet := .bn setValue1318 setValue1239
def setValue1320 : Flapjack.NumSet := .bn setValue311 setValue84
def setValue1321 : Flapjack.NumSet := .bs setValue1239 () setValue1320
def setValue1322 : Flapjack.NumSet := .bs setValue1319 () setValue1321
def setValue1323 : Flapjack.NumSet := .bs setValue1318 () setValue1239
def setValue1324 : Flapjack.NumSet := .bs setValue1323 () setValue1321
def setValue1325 : Flapjack.NumSet := .bs setValue1322 () setValue1324
def setValue1326 : Flapjack.NumSet := .bn setValue1325 setValue0
def tree287 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [9073, 9065, 9061, 9057, 9053, 9049, 8845, 8849, 8853, 8857, 8861, 8865, 8869, 8873, 8877, 8881, 8885, 8889, 8893,
    8897, 8901, 8905, 8909, 8913, 8917, 8921, 8925, 8929, 8933, 8937, 8941, 8945, 8949, 8953, 8957, 8961, 8965, 8969,
    8973, 8977, 8981, 8985, 8989, 8993, 8997, 9001, 9005, 9009, 9013, 9017]
  [12, 2, 4, 10, 6, 8, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711, 8715, 8719, 8723, 8727,
    8731, 8735, 8739, 8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787, 8791, 8795, 8799, 8803,
    8807, 8811, 8815, 8819, 8823, 8827, 8831, 8835, 8839])).val
theorem tree287_def : tree287 = (Flapjack.RegAlloc.ClashTree.delta
  [9073, 9065, 9061, 9057, 9053, 9049, 8845, 8849, 8853, 8857, 8861, 8865, 8869, 8873, 8877, 8881, 8885, 8889, 8893,
    8897, 8901, 8905, 8909, 8913, 8917, 8921, 8925, 8929, 8933, 8937, 8941, 8945, 8949, 8953, 8957, 8961, 8965, 8969,
    8973, 8977, 8981, 8985, 8989, 8993, 8997, 9001, 9005, 9009, 9013, 9017]
  [12, 2, 4, 10, 6, 8, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711, 8715, 8719, 8723, 8727,
    8731, 8735, 8739, 8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787, 8791, 8795, 8799, 8803,
    8807, 8811, 8815, 8819, 8823, 8827, 8831, 8835, 8839]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal287 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [9073, 9065, 9061, 9057, 9053, 9049, 8845, 8849, 8853, 8857, 8861, 8865, 8869, 8873, 8877, 8881, 8885, 8889, 8893,
    8897, 8901, 8905, 8909, 8913, 8917, 8921, 8925, 8929, 8933, 8937, 8941, 8945, 8949, 8953, 8957, 8961, 8965, 8969,
    8973, 8977, 8981, 8985, 8989, 8993, 8997, 9001, 9005, 9009, 9013, 9017]
  [12, 2, 4, 10, 6, 8, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711, 8715, 8719, 8723, 8727,
    8731, 8735, 8739, 8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787, 8791, 8795, 8799, 8803,
    8807, 8811, 8815, 8819, 8823, 8827, 8831, 8835, 8839]
def live287 : Flapjack.NumSet := setValue1297
def coloured287 : Flapjack.NumSet := setValue1299
def result287 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1317, setValue1326)
def tree288 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1317)).val
theorem tree288_def : tree288 = (.set setValue1317) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal288 : Flapjack.RegAlloc.ClashTree := .set setValue1317
def live288 : Flapjack.NumSet := setValue1317
def coloured288 : Flapjack.NumSet := setValue1326
def result288 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1317, setValue1326)
def tree289 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree288 tree287)).val
theorem tree289_def : tree289 = (.seq tree288 tree287) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal289 : Flapjack.RegAlloc.ClashTree := .seq literal288 literal287
def live289 : Flapjack.NumSet := setValue1297
def coloured289 : Flapjack.NumSet := setValue1299
def result289 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1317, setValue1326)
def setValue1327 : Flapjack.NumSet := .bn setValue1 setValue1296
def setValue1328 : Flapjack.NumSet := .bs setValue1274 () setValue0
def tree290 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree290_def : tree290 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal290 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live290 : Flapjack.NumSet := setValue1297
def coloured290 : Flapjack.NumSet := setValue1299
def result290 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1327, setValue1328)
def setValue1329 : Flapjack.NumSet := .bn setValue1285 setValue0
def setValue1330 : Flapjack.NumSet := .bn setValue0 setValue1329
def setValue1331 : Flapjack.NumSet := .bn setValue1330 setValue0
def setValue1332 : Flapjack.NumSet := .bn setValue1329 setValue0
def setValue1333 : Flapjack.NumSet := .bn setValue0 setValue1332
def setValue1334 : Flapjack.NumSet := .bn setValue1331 setValue1333
def setValue1335 : Flapjack.NumSet := .bn setValue1330 setValue1332
def setValue1336 : Flapjack.NumSet := .bn setValue1332 setValue1332
def setValue1337 : Flapjack.NumSet := .bn setValue1335 setValue1336
def setValue1338 : Flapjack.NumSet := .bn setValue1334 setValue1337
def setValue1339 : Flapjack.NumSet := .bn setValue1338 setValue1315
def setValue1340 : Flapjack.NumSet := .bn setValue1 setValue1339
def setValue1341 : Flapjack.NumSet := .bs setValue1318 () setValue1268
def setValue1342 : Flapjack.NumSet := .bs setValue311 () setValue84
def setValue1343 : Flapjack.NumSet := .bn setValue1239 setValue1342
def setValue1344 : Flapjack.NumSet := .bn setValue1341 setValue1343
def setValue1345 : Flapjack.NumSet := .bn setValue1318 setValue1268
def setValue1346 : Flapjack.NumSet := .bn setValue1268 setValue1342
def setValue1347 : Flapjack.NumSet := .bn setValue1345 setValue1346
def setValue1348 : Flapjack.NumSet := .bs setValue1344 () setValue1347
def setValue1349 : Flapjack.NumSet := .bn setValue1348 setValue0
def tree291 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 8845, 8849, 8853, 8857, 8861, 8865, 8869, 8873, 8877, 8881, 8885, 8889, 8893, 8897, 8901, 8905, 8909, 8913, 8917,
    8921, 8925, 8929, 8933, 8937, 8941, 8945, 8949, 8953, 8957, 8961, 8965, 8969, 8973, 8977, 8981, 8985, 8989, 8993,
    8997, 9001, 9005, 9009, 9013, 9017]
  [2, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711, 8715, 8719, 8723, 8727, 8731, 8735, 8739,
    8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787, 8791, 8795, 8799, 8803, 8807, 8811, 8815,
    8819, 8823, 8827, 8831, 8835, 8839])).val
theorem tree291_def : tree291 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 8845, 8849, 8853, 8857, 8861, 8865, 8869, 8873, 8877, 8881, 8885, 8889, 8893, 8897, 8901, 8905, 8909, 8913, 8917,
    8921, 8925, 8929, 8933, 8937, 8941, 8945, 8949, 8953, 8957, 8961, 8965, 8969, 8973, 8977, 8981, 8985, 8989, 8993,
    8997, 9001, 9005, 9009, 9013, 9017]
  [2, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711, 8715, 8719, 8723, 8727, 8731, 8735, 8739,
    8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787, 8791, 8795, 8799, 8803, 8807, 8811, 8815,
    8819, 8823, 8827, 8831, 8835, 8839]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal291 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 8845, 8849, 8853, 8857, 8861, 8865, 8869, 8873, 8877, 8881, 8885, 8889, 8893, 8897, 8901, 8905, 8909, 8913, 8917,
    8921, 8925, 8929, 8933, 8937, 8941, 8945, 8949, 8953, 8957, 8961, 8965, 8969, 8973, 8977, 8981, 8985, 8989, 8993,
    8997, 9001, 9005, 9009, 9013, 9017]
  [2, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711, 8715, 8719, 8723, 8727, 8731, 8735, 8739,
    8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787, 8791, 8795, 8799, 8803, 8807, 8811, 8815,
    8819, 8823, 8827, 8831, 8835, 8839]
def live291 : Flapjack.NumSet := setValue1327
def coloured291 : Flapjack.NumSet := setValue1328
def result291 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1340, setValue1349)
def tree292 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree291 tree290)).val
theorem tree292_def : tree292 = (.seq tree291 tree290) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal292 : Flapjack.RegAlloc.ClashTree := .seq literal291 literal290
def live292 : Flapjack.NumSet := setValue1297
def coloured292 : Flapjack.NumSet := setValue1299
def result292 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1340, setValue1349)
def setValue1350 : Flapjack.NumSet := .bn setValue1 setValue1316
def setValue1351 : Flapjack.NumSet := .bn setValue1239 setValue1320
def setValue1352 : Flapjack.NumSet := .bn setValue1319 setValue1351
def setValue1353 : Flapjack.NumSet := .bs setValue1352 () setValue1352
def setValue1354 : Flapjack.NumSet := .bn setValue1353 setValue0
def tree293 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1350)).val
theorem tree293_def : tree293 = (.set setValue1350) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal293 : Flapjack.RegAlloc.ClashTree := .set setValue1350
def live293 : Flapjack.NumSet := setValue1340
def coloured293 : Flapjack.NumSet := setValue1349
def result293 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1350, setValue1354)
def tree294 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree293 tree292)).val
theorem tree294_def : tree294 = (.seq tree293 tree292) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal294 : Flapjack.RegAlloc.ClashTree := .seq literal293 literal292
def live294 : Flapjack.NumSet := setValue1297
def coloured294 : Flapjack.NumSet := setValue1299
def result294 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1350, setValue1354)
def setValue1355 : Flapjack.NumSet := .bn setValue440 setValue1316
def setValue1356 : Flapjack.NumSet := .bs setValue1239 () setValue1342
def setValue1357 : Flapjack.NumSet := .bs setValue1341 () setValue1356
def setValue1358 : Flapjack.NumSet := .bs setValue1268 () setValue1342
def setValue1359 : Flapjack.NumSet := .bs setValue1341 () setValue1358
def setValue1360 : Flapjack.NumSet := .bs setValue1357 () setValue1359
def setValue1361 : Flapjack.NumSet := .bn setValue1360 setValue0
def tree295 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1355) tree289 tree294)).val
theorem tree295_def : tree295 = (.branch (some setValue1355) tree289 tree294) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal295 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1355) literal289 literal294
def live295 : Flapjack.NumSet := setValue1297
def coloured295 : Flapjack.NumSet := setValue1299
def result295 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1355, setValue1361)
def tree296 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree295 tree286)).val
theorem tree296_def : tree296 = (.seq tree295 tree286) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal296 : Flapjack.RegAlloc.ClashTree := .seq literal295 literal286
def live296 : Flapjack.NumSet := setValue0
def coloured296 : Flapjack.NumSet := setValue0
def result296 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1355, setValue1361)
def setValue1362 : Flapjack.NumSet := .bn setValue0 setValue1300
def setValue1363 : Flapjack.NumSet := .bn setValue1362 setValue0
def setValue1364 : Flapjack.NumSet := .bn setValue0 setValue1301
def setValue1365 : Flapjack.NumSet := .bn setValue1363 setValue1364
def setValue1366 : Flapjack.NumSet := .bn setValue1362 setValue1301
def setValue1367 : Flapjack.NumSet := .bn setValue1366 setValue1364
def setValue1368 : Flapjack.NumSet := .bn setValue1365 setValue1367
def setValue1369 : Flapjack.NumSet := .bn setValue1301 setValue1301
def setValue1370 : Flapjack.NumSet := .bn setValue1366 setValue1369
def setValue1371 : Flapjack.NumSet := .bn setValue1367 setValue1370
def setValue1372 : Flapjack.NumSet := .bn setValue1368 setValue1371
def setValue1373 : Flapjack.NumSet := .bn setValue1365 setValue1370
def setValue1374 : Flapjack.NumSet := .bn setValue1370 setValue1367
def setValue1375 : Flapjack.NumSet := .bn setValue1373 setValue1374
def setValue1376 : Flapjack.NumSet := .bn setValue1372 setValue1375
def setValue1377 : Flapjack.NumSet := .bn setValue1367 setValue1367
def setValue1378 : Flapjack.NumSet := .bn setValue1373 setValue1377
def setValue1379 : Flapjack.NumSet := .bn setValue1378 setValue1375
def setValue1380 : Flapjack.NumSet := .bn setValue1376 setValue1379
def setValue1381 : Flapjack.NumSet := .bn setValue1380 setValue0
def setValue1382 : Flapjack.NumSet := .bn setValue0 setValue1381
def setValue1383 : Flapjack.NumSet := .bs setValue411 () setValue0
def setValue1384 : Flapjack.NumSet := .bs setValue1383 () setValue1268
def setValue1385 : Flapjack.NumSet := .bs setValue1098 () setValue312
def setValue1386 : Flapjack.NumSet := .bs setValue1384 () setValue1385
def setValue1387 : Flapjack.NumSet := .bs setValue411 () setValue311
def setValue1388 : Flapjack.NumSet := .bs setValue311 () setValue1
def setValue1389 : Flapjack.NumSet := .bs setValue1387 () setValue1388
def setValue1390 : Flapjack.NumSet := .bs setValue101 () setValue411
def setValue1391 : Flapjack.NumSet := .bs setValue311 () setValue37
def setValue1392 : Flapjack.NumSet := .bs setValue1390 () setValue1391
def setValue1393 : Flapjack.NumSet := .bs setValue1389 () setValue1392
def setValue1394 : Flapjack.NumSet := .bn setValue1386 setValue1393
def setValue1395 : Flapjack.NumSet := .bs setValue1394 () setValue0
def tree297 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711,
    8715, 8719, 8723, 8727, 8731, 8735, 8739, 8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787,
    8791, 8795, 8799, 8803, 8807, 8811, 8815, 8819, 8823, 8827, 8831, 8835, 8839]
  [8537, 8509, 8533, 8501, 8405, 8441, 8485, 8421, 8473, 8397, 8453, 8517, 8385, 8389, 8393, 8397, 8401, 8409, 8413,
    8417, 8421, 8613, 8425, 8429, 8609, 8433, 8437, 8445, 8449, 8453, 8457, 8461, 8465, 8469, 8601, 8473, 8477, 8481,
    8485, 8489, 8597, 8493, 8497, 8505, 8513, 8517, 8521, 8525, 8529, 8541, 8545, 8593, 8549, 8553, 8589, 8557])).val
theorem tree297_def : tree297 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711,
    8715, 8719, 8723, 8727, 8731, 8735, 8739, 8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787,
    8791, 8795, 8799, 8803, 8807, 8811, 8815, 8819, 8823, 8827, 8831, 8835, 8839]
  [8537, 8509, 8533, 8501, 8405, 8441, 8485, 8421, 8473, 8397, 8453, 8517, 8385, 8389, 8393, 8397, 8401, 8409, 8413,
    8417, 8421, 8613, 8425, 8429, 8609, 8433, 8437, 8445, 8449, 8453, 8457, 8461, 8465, 8469, 8601, 8473, 8477, 8481,
    8485, 8489, 8597, 8493, 8497, 8505, 8513, 8517, 8521, 8525, 8529, 8541, 8545, 8593, 8549, 8553, 8589, 8557]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal297 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 8667, 8671, 8675, 8679, 8683, 8687, 8691, 8695, 8699, 8703, 8707, 8711,
    8715, 8719, 8723, 8727, 8731, 8735, 8739, 8743, 8747, 8751, 8755, 8759, 8763, 8767, 8771, 8775, 8779, 8783, 8787,
    8791, 8795, 8799, 8803, 8807, 8811, 8815, 8819, 8823, 8827, 8831, 8835, 8839]
  [8537, 8509, 8533, 8501, 8405, 8441, 8485, 8421, 8473, 8397, 8453, 8517, 8385, 8389, 8393, 8397, 8401, 8409, 8413,
    8417, 8421, 8613, 8425, 8429, 8609, 8433, 8437, 8445, 8449, 8453, 8457, 8461, 8465, 8469, 8601, 8473, 8477, 8481,
    8485, 8489, 8597, 8493, 8497, 8505, 8513, 8517, 8521, 8525, 8529, 8541, 8545, 8593, 8549, 8553, 8589, 8557]
def live297 : Flapjack.NumSet := setValue1355
def coloured297 : Flapjack.NumSet := setValue1361
def result297 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1382, setValue1395)
def tree298 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree297 tree296)).val
theorem tree298_def : tree298 = (.seq tree297 tree296) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal298 : Flapjack.RegAlloc.ClashTree := .seq literal297 literal296
def live298 : Flapjack.NumSet := setValue0
def coloured298 : Flapjack.NumSet := setValue0
def result298 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1382, setValue1395)
def tree299 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree299_def : tree299 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal299 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live299 : Flapjack.NumSet := setValue1382
def coloured299 : Flapjack.NumSet := setValue1395
def result299 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1382, setValue1395)
def tree300 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree299 tree298)).val
theorem tree300_def : tree300 = (.seq tree299 tree298) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal300 : Flapjack.RegAlloc.ClashTree := .seq literal299 literal298
def live300 : Flapjack.NumSet := setValue0
def coloured300 : Flapjack.NumSet := setValue0
def result300 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1382, setValue1395)
def setValue1396 : Flapjack.NumSet := .bn setValue0 setValue1362
def setValue1397 : Flapjack.NumSet := .bn setValue1362 setValue1362
def setValue1398 : Flapjack.NumSet := .bn setValue1396 setValue1397
def setValue1399 : Flapjack.NumSet := .bn setValue1398 setValue1398
def setValue1400 : Flapjack.NumSet := .bn setValue1396 setValue1363
def setValue1401 : Flapjack.NumSet := .bn setValue1398 setValue1400
def setValue1402 : Flapjack.NumSet := .bn setValue1399 setValue1401
def setValue1403 : Flapjack.NumSet := .bn setValue1402 setValue1402
def setValue1404 : Flapjack.NumSet := .bn setValue1403 setValue1403
def setValue1405 : Flapjack.NumSet := .bn setValue0 setValue1404
def setValue1406 : Flapjack.NumSet := .bn setValue395 setValue1405
def tree301 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [8613, 8609, 8601, 8597, 8593, 8589, 8385, 8389, 8393, 8397, 8401, 8405, 8409, 8413, 8417, 8421, 8425, 8429, 8433,
    8437, 8441, 8445, 8449, 8453, 8457, 8461, 8465, 8469, 8473, 8477, 8481, 8485, 8489, 8493, 8497, 8501, 8505, 8509,
    8513, 8517, 8521, 8525, 8529, 8533, 8537, 8541, 8545, 8549, 8553, 8557]
  [12, 8, 10, 6, 2, 4, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251, 8255, 8259, 8263, 8267,
    8271, 8275, 8279, 8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327, 8331, 8335, 8339, 8343,
    8347, 8351, 8355, 8359, 8363, 8367, 8371, 8375, 8379])).val
theorem tree301_def : tree301 = (Flapjack.RegAlloc.ClashTree.delta
  [8613, 8609, 8601, 8597, 8593, 8589, 8385, 8389, 8393, 8397, 8401, 8405, 8409, 8413, 8417, 8421, 8425, 8429, 8433,
    8437, 8441, 8445, 8449, 8453, 8457, 8461, 8465, 8469, 8473, 8477, 8481, 8485, 8489, 8493, 8497, 8501, 8505, 8509,
    8513, 8517, 8521, 8525, 8529, 8533, 8537, 8541, 8545, 8549, 8553, 8557]
  [12, 8, 10, 6, 2, 4, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251, 8255, 8259, 8263, 8267,
    8271, 8275, 8279, 8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327, 8331, 8335, 8339, 8343,
    8347, 8351, 8355, 8359, 8363, 8367, 8371, 8375, 8379]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal301 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [8613, 8609, 8601, 8597, 8593, 8589, 8385, 8389, 8393, 8397, 8401, 8405, 8409, 8413, 8417, 8421, 8425, 8429, 8433,
    8437, 8441, 8445, 8449, 8453, 8457, 8461, 8465, 8469, 8473, 8477, 8481, 8485, 8489, 8493, 8497, 8501, 8505, 8509,
    8513, 8517, 8521, 8525, 8529, 8533, 8537, 8541, 8545, 8549, 8553, 8557]
  [12, 8, 10, 6, 2, 4, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251, 8255, 8259, 8263, 8267,
    8271, 8275, 8279, 8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327, 8331, 8335, 8339, 8343,
    8347, 8351, 8355, 8359, 8363, 8367, 8371, 8375, 8379]
def live301 : Flapjack.NumSet := setValue1382
def coloured301 : Flapjack.NumSet := setValue1395
def result301 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1406, setValue1326)
def tree302 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1406)).val
theorem tree302_def : tree302 = (.set setValue1406) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal302 : Flapjack.RegAlloc.ClashTree := .set setValue1406
def live302 : Flapjack.NumSet := setValue1406
def coloured302 : Flapjack.NumSet := setValue1326
def result302 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1406, setValue1326)
def tree303 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree302 tree301)).val
theorem tree303_def : tree303 = (.seq tree302 tree301) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal303 : Flapjack.RegAlloc.ClashTree := .seq literal302 literal301
def live303 : Flapjack.NumSet := setValue1382
def coloured303 : Flapjack.NumSet := setValue1395
def result303 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1406, setValue1326)
def setValue1407 : Flapjack.NumSet := .bn setValue1 setValue1381
def setValue1408 : Flapjack.NumSet := .bs setValue1386 () setValue1393
def setValue1409 : Flapjack.NumSet := .bs setValue1408 () setValue0
def tree304 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree304_def : tree304 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal304 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live304 : Flapjack.NumSet := setValue1382
def coloured304 : Flapjack.NumSet := setValue1395
def result304 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1407, setValue1409)
def setValue1410 : Flapjack.NumSet := .bn setValue1301 setValue0
def setValue1411 : Flapjack.NumSet := .bn setValue0 setValue1410
def setValue1412 : Flapjack.NumSet := .bn setValue0 setValue1411
def setValue1413 : Flapjack.NumSet := .bn setValue0 setValue1412
def setValue1414 : Flapjack.NumSet := .bn setValue1411 setValue0
def setValue1415 : Flapjack.NumSet := .bn setValue1412 setValue1414
def setValue1416 : Flapjack.NumSet := .bn setValue1413 setValue1415
def setValue1417 : Flapjack.NumSet := .bn setValue1412 setValue0
def setValue1418 : Flapjack.NumSet := .bn setValue1417 setValue1415
def setValue1419 : Flapjack.NumSet := .bn setValue1416 setValue1418
def setValue1420 : Flapjack.NumSet := .bn setValue1419 setValue1404
def setValue1421 : Flapjack.NumSet := .bn setValue1 setValue1420
def setValue1422 : Flapjack.NumSet := .bs setValue1318 () setValue1318
def setValue1423 : Flapjack.NumSet := .bs setValue1422 () setValue1321
def setValue1424 : Flapjack.NumSet := .bs setValue1322 () setValue1423
def setValue1425 : Flapjack.NumSet := .bn setValue1424 setValue0
def tree305 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 8385, 8389, 8393, 8397, 8401, 8405, 8409, 8413, 8417, 8421, 8425, 8429, 8433, 8437, 8441, 8445, 8449, 8453, 8457,
    8461, 8465, 8469, 8473, 8477, 8481, 8485, 8489, 8493, 8497, 8501, 8505, 8509, 8513, 8517, 8521, 8525, 8529, 8533,
    8537, 8541, 8545, 8549, 8553, 8557]
  [2, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251, 8255, 8259, 8263, 8267, 8271, 8275, 8279,
    8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327, 8331, 8335, 8339, 8343, 8347, 8351, 8355,
    8359, 8363, 8367, 8371, 8375, 8379])).val
theorem tree305_def : tree305 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 8385, 8389, 8393, 8397, 8401, 8405, 8409, 8413, 8417, 8421, 8425, 8429, 8433, 8437, 8441, 8445, 8449, 8453, 8457,
    8461, 8465, 8469, 8473, 8477, 8481, 8485, 8489, 8493, 8497, 8501, 8505, 8509, 8513, 8517, 8521, 8525, 8529, 8533,
    8537, 8541, 8545, 8549, 8553, 8557]
  [2, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251, 8255, 8259, 8263, 8267, 8271, 8275, 8279,
    8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327, 8331, 8335, 8339, 8343, 8347, 8351, 8355,
    8359, 8363, 8367, 8371, 8375, 8379]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal305 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 8385, 8389, 8393, 8397, 8401, 8405, 8409, 8413, 8417, 8421, 8425, 8429, 8433, 8437, 8441, 8445, 8449, 8453, 8457,
    8461, 8465, 8469, 8473, 8477, 8481, 8485, 8489, 8493, 8497, 8501, 8505, 8509, 8513, 8517, 8521, 8525, 8529, 8533,
    8537, 8541, 8545, 8549, 8553, 8557]
  [2, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251, 8255, 8259, 8263, 8267, 8271, 8275, 8279,
    8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327, 8331, 8335, 8339, 8343, 8347, 8351, 8355,
    8359, 8363, 8367, 8371, 8375, 8379]
def live305 : Flapjack.NumSet := setValue1407
def coloured305 : Flapjack.NumSet := setValue1409
def result305 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1421, setValue1425)
def tree306 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree305 tree304)).val
theorem tree306_def : tree306 = (.seq tree305 tree304) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal306 : Flapjack.RegAlloc.ClashTree := .seq literal305 literal304
def live306 : Flapjack.NumSet := setValue1382
def coloured306 : Flapjack.NumSet := setValue1395
def result306 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1421, setValue1425)
def setValue1426 : Flapjack.NumSet := .bn setValue1 setValue1405
def tree307 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1426)).val
theorem tree307_def : tree307 = (.set setValue1426) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal307 : Flapjack.RegAlloc.ClashTree := .set setValue1426
def live307 : Flapjack.NumSet := setValue1421
def coloured307 : Flapjack.NumSet := setValue1425
def result307 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1426, setValue1354)
def tree308 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree307 tree306)).val
theorem tree308_def : tree308 = (.seq tree307 tree306) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal308 : Flapjack.RegAlloc.ClashTree := .seq literal307 literal306
def live308 : Flapjack.NumSet := setValue1382
def coloured308 : Flapjack.NumSet := setValue1395
def result308 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1426, setValue1354)
def setValue1427 : Flapjack.NumSet := .bn setValue440 setValue1405
def tree309 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1427) tree303 tree308)).val
theorem tree309_def : tree309 = (.branch (some setValue1427) tree303 tree308) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal309 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1427) literal303 literal308
def live309 : Flapjack.NumSet := setValue1382
def coloured309 : Flapjack.NumSet := setValue1395
def result309 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1427, setValue1361)
def tree310 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree309 tree300)).val
theorem tree310_def : tree310 = (.seq tree309 tree300) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal310 : Flapjack.RegAlloc.ClashTree := .seq literal309 literal300
def live310 : Flapjack.NumSet := setValue0
def coloured310 : Flapjack.NumSet := setValue0
def result310 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1427, setValue1361)
def setValue1428 : Flapjack.NumSet := .bn setValue57 setValue0
def setValue1429 : Flapjack.NumSet := .bn setValue0 setValue1428
def setValue1430 : Flapjack.NumSet := .bn setValue1428 setValue0
def setValue1431 : Flapjack.NumSet := .bn setValue1429 setValue1430
def setValue1432 : Flapjack.NumSet := .bn setValue0 setValue1430
def setValue1433 : Flapjack.NumSet := .bn setValue1431 setValue1432
def setValue1434 : Flapjack.NumSet := .bn setValue1430 setValue1430
def setValue1435 : Flapjack.NumSet := .bn setValue1431 setValue1434
def setValue1436 : Flapjack.NumSet := .bn setValue1433 setValue1435
def setValue1437 : Flapjack.NumSet := .bn setValue1434 setValue1434
def setValue1438 : Flapjack.NumSet := .bn setValue1433 setValue1437
def setValue1439 : Flapjack.NumSet := .bn setValue1436 setValue1438
def setValue1440 : Flapjack.NumSet := .bn setValue1432 setValue1434
def setValue1441 : Flapjack.NumSet := .bn setValue1433 setValue1440
def setValue1442 : Flapjack.NumSet := .bn setValue1441 setValue1438
def setValue1443 : Flapjack.NumSet := .bn setValue1439 setValue1442
def setValue1444 : Flapjack.NumSet := .bn setValue1438 setValue1438
def setValue1445 : Flapjack.NumSet := .bn setValue1435 setValue1437
def setValue1446 : Flapjack.NumSet := .bn setValue1438 setValue1445
def setValue1447 : Flapjack.NumSet := .bn setValue1444 setValue1446
def setValue1448 : Flapjack.NumSet := .bn setValue1443 setValue1447
def setValue1449 : Flapjack.NumSet := .bn setValue1448 setValue0
def setValue1450 : Flapjack.NumSet := .bn setValue0 setValue1449
def setValue1451 : Flapjack.NumSet := .bn setValue1357 setValue1359
def setValue1452 : Flapjack.NumSet := .bs setValue1451 () setValue0
def tree311 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251,
    8255, 8259, 8263, 8267, 8271, 8275, 8279, 8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327,
    8331, 8335, 8339, 8343, 8347, 8351, 8355, 8359, 8363, 8367, 8371, 8375, 8379]
  [8081, 8093, 8021, 7953, 7997, 7941, 8145, 8141, 8133, 8129, 8137, 8153, 7901, 7905, 7909, 7913, 7917, 7921, 7925,
    7929, 7933, 7937, 7945, 7949, 7957, 7961, 7965, 7969, 7973, 7977, 7981, 7985, 7989, 7993, 8001, 8005, 8009, 8013,
    8017, 8025, 8029, 8033, 8037, 8041, 8045, 8049, 8053, 8057, 8061, 8065, 8069, 8073, 8077, 8085, 8089, 8097])).val
theorem tree311_def : tree311 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251,
    8255, 8259, 8263, 8267, 8271, 8275, 8279, 8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327,
    8331, 8335, 8339, 8343, 8347, 8351, 8355, 8359, 8363, 8367, 8371, 8375, 8379]
  [8081, 8093, 8021, 7953, 7997, 7941, 8145, 8141, 8133, 8129, 8137, 8153, 7901, 7905, 7909, 7913, 7917, 7921, 7925,
    7929, 7933, 7937, 7945, 7949, 7957, 7961, 7965, 7969, 7973, 7977, 7981, 7985, 7989, 7993, 8001, 8005, 8009, 8013,
    8017, 8025, 8029, 8033, 8037, 8041, 8045, 8049, 8053, 8057, 8061, 8065, 8069, 8073, 8077, 8085, 8089, 8097]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal311 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 8207, 8211, 8215, 8219, 8223, 8227, 8231, 8235, 8239, 8243, 8247, 8251,
    8255, 8259, 8263, 8267, 8271, 8275, 8279, 8283, 8287, 8291, 8295, 8299, 8303, 8307, 8311, 8315, 8319, 8323, 8327,
    8331, 8335, 8339, 8343, 8347, 8351, 8355, 8359, 8363, 8367, 8371, 8375, 8379]
  [8081, 8093, 8021, 7953, 7997, 7941, 8145, 8141, 8133, 8129, 8137, 8153, 7901, 7905, 7909, 7913, 7917, 7921, 7925,
    7929, 7933, 7937, 7945, 7949, 7957, 7961, 7965, 7969, 7973, 7977, 7981, 7985, 7989, 7993, 8001, 8005, 8009, 8013,
    8017, 8025, 8029, 8033, 8037, 8041, 8045, 8049, 8053, 8057, 8061, 8065, 8069, 8073, 8077, 8085, 8089, 8097]
def live311 : Flapjack.NumSet := setValue1427
def coloured311 : Flapjack.NumSet := setValue1361
def result311 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1450, setValue1452)
def tree312 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree311 tree310)).val
theorem tree312_def : tree312 = (.seq tree311 tree310) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal312 : Flapjack.RegAlloc.ClashTree := .seq literal311 literal310
def live312 : Flapjack.NumSet := setValue0
def coloured312 : Flapjack.NumSet := setValue0
def result312 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1450, setValue1452)
def tree313 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree313_def : tree313 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal313 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live313 : Flapjack.NumSet := setValue1450
def coloured313 : Flapjack.NumSet := setValue1452
def result313 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1450, setValue1452)
def tree314 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree313 tree312)).val
theorem tree314_def : tree314 = (.seq tree313 tree312) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal314 : Flapjack.RegAlloc.ClashTree := .seq literal313 literal312
def live314 : Flapjack.NumSet := setValue0
def coloured314 : Flapjack.NumSet := setValue0
def result314 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1450, setValue1452)
def setValue1453 : Flapjack.NumSet := .bn setValue0 setValue1429
def setValue1454 : Flapjack.NumSet := .bn setValue1429 setValue1429
def setValue1455 : Flapjack.NumSet := .bn setValue1453 setValue1454
def setValue1456 : Flapjack.NumSet := .bn setValue1455 setValue1455
def setValue1457 : Flapjack.NumSet := .bn setValue1429 setValue0
def setValue1458 : Flapjack.NumSet := .bn setValue1454 setValue1457
def setValue1459 : Flapjack.NumSet := .bn setValue1455 setValue1458
def setValue1460 : Flapjack.NumSet := .bn setValue1456 setValue1459
def setValue1461 : Flapjack.NumSet := .bn setValue1454 setValue1454
def setValue1462 : Flapjack.NumSet := .bn setValue1455 setValue1461
def setValue1463 : Flapjack.NumSet := .bn setValue1462 setValue1459
def setValue1464 : Flapjack.NumSet := .bn setValue1460 setValue1463
def setValue1465 : Flapjack.NumSet := .bn setValue1459 setValue1459
def setValue1466 : Flapjack.NumSet := .bn setValue1463 setValue1465
def setValue1467 : Flapjack.NumSet := .bn setValue1464 setValue1466
def setValue1468 : Flapjack.NumSet := .bn setValue0 setValue1467
def setValue1469 : Flapjack.NumSet := .bn setValue395 setValue1468
def setValue1470 : Flapjack.NumSet := .bn setValue311 setValue161
def setValue1471 : Flapjack.NumSet := .bn setValue1470 setValue1320
def setValue1472 : Flapjack.NumSet := .bs setValue1320 () setValue1320
def setValue1473 : Flapjack.NumSet := .bs setValue1471 () setValue1472
def setValue1474 : Flapjack.NumSet := .bs setValue1470 () setValue1320
def setValue1475 : Flapjack.NumSet := .bs setValue1474 () setValue1472
def setValue1476 : Flapjack.NumSet := .bs setValue1473 () setValue1475
def setValue1477 : Flapjack.NumSet := .bn setValue1476 setValue0
def tree315 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [8153, 8145, 8141, 8137, 8133, 8129, 7901, 7905, 7909, 7913, 7917, 7921, 7925, 7929, 7933, 7937, 7941, 7945, 7949,
    7953, 7957, 7961, 7965, 7969, 7973, 7977, 7981, 7985, 7989, 7993, 7997, 8001, 8005, 8009, 8013, 8017, 8021, 8025,
    8029, 8033, 8037, 8041, 8045, 8049, 8053, 8057, 8061, 8065, 8069, 8073, 8077, 8081, 8085, 8089, 8093, 8097]
  [12, 2, 4, 10, 6, 8, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743, 7747, 7751, 7755, 7759,
    7763, 7767, 7771, 7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819, 7823, 7827, 7831, 7835,
    7839, 7843, 7847, 7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895])).val
theorem tree315_def : tree315 = (Flapjack.RegAlloc.ClashTree.delta
  [8153, 8145, 8141, 8137, 8133, 8129, 7901, 7905, 7909, 7913, 7917, 7921, 7925, 7929, 7933, 7937, 7941, 7945, 7949,
    7953, 7957, 7961, 7965, 7969, 7973, 7977, 7981, 7985, 7989, 7993, 7997, 8001, 8005, 8009, 8013, 8017, 8021, 8025,
    8029, 8033, 8037, 8041, 8045, 8049, 8053, 8057, 8061, 8065, 8069, 8073, 8077, 8081, 8085, 8089, 8093, 8097]
  [12, 2, 4, 10, 6, 8, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743, 7747, 7751, 7755, 7759,
    7763, 7767, 7771, 7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819, 7823, 7827, 7831, 7835,
    7839, 7843, 7847, 7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal315 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [8153, 8145, 8141, 8137, 8133, 8129, 7901, 7905, 7909, 7913, 7917, 7921, 7925, 7929, 7933, 7937, 7941, 7945, 7949,
    7953, 7957, 7961, 7965, 7969, 7973, 7977, 7981, 7985, 7989, 7993, 7997, 8001, 8005, 8009, 8013, 8017, 8021, 8025,
    8029, 8033, 8037, 8041, 8045, 8049, 8053, 8057, 8061, 8065, 8069, 8073, 8077, 8081, 8085, 8089, 8093, 8097]
  [12, 2, 4, 10, 6, 8, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743, 7747, 7751, 7755, 7759,
    7763, 7767, 7771, 7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819, 7823, 7827, 7831, 7835,
    7839, 7843, 7847, 7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895]
def live315 : Flapjack.NumSet := setValue1450
def coloured315 : Flapjack.NumSet := setValue1452
def result315 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1469, setValue1477)
def tree316 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1469)).val
theorem tree316_def : tree316 = (.set setValue1469) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal316 : Flapjack.RegAlloc.ClashTree := .set setValue1469
def live316 : Flapjack.NumSet := setValue1469
def coloured316 : Flapjack.NumSet := setValue1477
def result316 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1469, setValue1477)
def tree317 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree316 tree315)).val
theorem tree317_def : tree317 = (.seq tree316 tree315) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal317 : Flapjack.RegAlloc.ClashTree := .seq literal316 literal315
def live317 : Flapjack.NumSet := setValue1450
def coloured317 : Flapjack.NumSet := setValue1452
def result317 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1469, setValue1477)
def setValue1478 : Flapjack.NumSet := .bn setValue1 setValue1449
def setValue1479 : Flapjack.NumSet := .bs setValue1360 () setValue0
def tree318 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree318_def : tree318 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal318 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live318 : Flapjack.NumSet := setValue1450
def coloured318 : Flapjack.NumSet := setValue1452
def result318 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1478, setValue1479)
def setValue1480 : Flapjack.NumSet := .bn setValue1430 setValue0
def setValue1481 : Flapjack.NumSet := .bn setValue1480 setValue0
def setValue1482 : Flapjack.NumSet := .bn setValue0 setValue1481
def setValue1483 : Flapjack.NumSet := .bn setValue0 setValue1482
def setValue1484 : Flapjack.NumSet := .bn setValue1483 setValue1483
def setValue1485 : Flapjack.NumSet := .bn setValue1482 setValue1482
def setValue1486 : Flapjack.NumSet := .bn setValue1485 setValue1485
def setValue1487 : Flapjack.NumSet := .bn setValue1484 setValue1486
def setValue1488 : Flapjack.NumSet := .bn setValue1487 setValue1467
def setValue1489 : Flapjack.NumSet := .bn setValue1 setValue1488
def setValue1490 : Flapjack.NumSet := .bs setValue1470 () setValue1342
def setValue1491 : Flapjack.NumSet := .bn setValue1320 setValue1342
def setValue1492 : Flapjack.NumSet := .bn setValue1490 setValue1491
def setValue1493 : Flapjack.NumSet := .bn setValue1470 setValue1342
def setValue1494 : Flapjack.NumSet := .bn setValue1342 setValue1342
def setValue1495 : Flapjack.NumSet := .bn setValue1493 setValue1494
def setValue1496 : Flapjack.NumSet := .bs setValue1492 () setValue1495
def setValue1497 : Flapjack.NumSet := .bn setValue1496 setValue0
def tree319 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 7901, 7905, 7909, 7913, 7917, 7921, 7925, 7929, 7933, 7937, 7941, 7945, 7949, 7953, 7957, 7961, 7965, 7969, 7973,
    7977, 7981, 7985, 7989, 7993, 7997, 8001, 8005, 8009, 8013, 8017, 8021, 8025, 8029, 8033, 8037, 8041, 8045, 8049,
    8053, 8057, 8061, 8065, 8069, 8073, 8077, 8081, 8085, 8089, 8093, 8097]
  [2, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743, 7747, 7751, 7755, 7759, 7763, 7767, 7771,
    7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819, 7823, 7827, 7831, 7835, 7839, 7843, 7847,
    7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895])).val
theorem tree319_def : tree319 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 7901, 7905, 7909, 7913, 7917, 7921, 7925, 7929, 7933, 7937, 7941, 7945, 7949, 7953, 7957, 7961, 7965, 7969, 7973,
    7977, 7981, 7985, 7989, 7993, 7997, 8001, 8005, 8009, 8013, 8017, 8021, 8025, 8029, 8033, 8037, 8041, 8045, 8049,
    8053, 8057, 8061, 8065, 8069, 8073, 8077, 8081, 8085, 8089, 8093, 8097]
  [2, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743, 7747, 7751, 7755, 7759, 7763, 7767, 7771,
    7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819, 7823, 7827, 7831, 7835, 7839, 7843, 7847,
    7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal319 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 7901, 7905, 7909, 7913, 7917, 7921, 7925, 7929, 7933, 7937, 7941, 7945, 7949, 7953, 7957, 7961, 7965, 7969, 7973,
    7977, 7981, 7985, 7989, 7993, 7997, 8001, 8005, 8009, 8013, 8017, 8021, 8025, 8029, 8033, 8037, 8041, 8045, 8049,
    8053, 8057, 8061, 8065, 8069, 8073, 8077, 8081, 8085, 8089, 8093, 8097]
  [2, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743, 7747, 7751, 7755, 7759, 7763, 7767, 7771,
    7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819, 7823, 7827, 7831, 7835, 7839, 7843, 7847,
    7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895]
def live319 : Flapjack.NumSet := setValue1478
def coloured319 : Flapjack.NumSet := setValue1479
def result319 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1489, setValue1497)
def tree320 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree319 tree318)).val
theorem tree320_def : tree320 = (.seq tree319 tree318) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal320 : Flapjack.RegAlloc.ClashTree := .seq literal319 literal318
def live320 : Flapjack.NumSet := setValue1450
def coloured320 : Flapjack.NumSet := setValue1452
def result320 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1489, setValue1497)
def setValue1498 : Flapjack.NumSet := .bn setValue1 setValue1468
def setValue1499 : Flapjack.NumSet := .bn setValue1320 setValue1320
def setValue1500 : Flapjack.NumSet := .bn setValue1471 setValue1499
def setValue1501 : Flapjack.NumSet := .bs setValue1500 () setValue1500
def setValue1502 : Flapjack.NumSet := .bn setValue1501 setValue0
def tree321 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1498)).val
theorem tree321_def : tree321 = (.set setValue1498) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal321 : Flapjack.RegAlloc.ClashTree := .set setValue1498
def live321 : Flapjack.NumSet := setValue1489
def coloured321 : Flapjack.NumSet := setValue1497
def result321 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1498, setValue1502)
def tree322 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree321 tree320)).val
theorem tree322_def : tree322 = (.seq tree321 tree320) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal322 : Flapjack.RegAlloc.ClashTree := .seq literal321 literal320
def live322 : Flapjack.NumSet := setValue1450
def coloured322 : Flapjack.NumSet := setValue1452
def result322 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1498, setValue1502)
def setValue1503 : Flapjack.NumSet := .bn setValue440 setValue1468
def setValue1504 : Flapjack.NumSet := .bs setValue1320 () setValue1342
def setValue1505 : Flapjack.NumSet := .bs setValue1490 () setValue1504
def setValue1506 : Flapjack.NumSet := .bs setValue1342 () setValue1342
def setValue1507 : Flapjack.NumSet := .bs setValue1490 () setValue1506
def setValue1508 : Flapjack.NumSet := .bs setValue1505 () setValue1507
def setValue1509 : Flapjack.NumSet := .bn setValue1508 setValue0
def tree323 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1503) tree317 tree322)).val
theorem tree323_def : tree323 = (.branch (some setValue1503) tree317 tree322) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal323 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1503) literal317 literal322
def live323 : Flapjack.NumSet := setValue1450
def coloured323 : Flapjack.NumSet := setValue1452
def result323 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1503, setValue1509)
def tree324 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree323 tree314)).val
theorem tree324_def : tree324 = (.seq tree323 tree314) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal324 : Flapjack.RegAlloc.ClashTree := .seq literal323 literal314
def live324 : Flapjack.NumSet := setValue0
def coloured324 : Flapjack.NumSet := setValue0
def result324 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1503, setValue1509)
def setValue1510 : Flapjack.NumSet := .bn setValue0 setValue57
def setValue1511 : Flapjack.NumSet := .bn setValue0 setValue1510
def setValue1512 : Flapjack.NumSet := .bn setValue1510 setValue0
def setValue1513 : Flapjack.NumSet := .bn setValue1511 setValue1512
def setValue1514 : Flapjack.NumSet := .bn setValue0 setValue1512
def setValue1515 : Flapjack.NumSet := .bn setValue1513 setValue1514
def setValue1516 : Flapjack.NumSet := .bn setValue1510 setValue1510
def setValue1517 : Flapjack.NumSet := .bn setValue1516 setValue1512
def setValue1518 : Flapjack.NumSet := .bn setValue1512 setValue1512
def setValue1519 : Flapjack.NumSet := .bn setValue1517 setValue1518
def setValue1520 : Flapjack.NumSet := .bn setValue1515 setValue1519
def setValue1521 : Flapjack.NumSet := .bn setValue1520 setValue1520
def setValue1522 : Flapjack.NumSet := .bn setValue1513 setValue1518
def setValue1523 : Flapjack.NumSet := .bn setValue1518 setValue1518
def setValue1524 : Flapjack.NumSet := .bn setValue1522 setValue1523
def setValue1525 : Flapjack.NumSet := .bn setValue1520 setValue1524
def setValue1526 : Flapjack.NumSet := .bn setValue1521 setValue1525
def setValue1527 : Flapjack.NumSet := .bn setValue1515 setValue1522
def setValue1528 : Flapjack.NumSet := .bn setValue1527 setValue1520
def setValue1529 : Flapjack.NumSet := .bn setValue1514 setValue1518
def setValue1530 : Flapjack.NumSet := .bn setValue1522 setValue1529
def setValue1531 : Flapjack.NumSet := .bn setValue1520 setValue1530
def setValue1532 : Flapjack.NumSet := .bn setValue1528 setValue1531
def setValue1533 : Flapjack.NumSet := .bn setValue1526 setValue1532
def setValue1534 : Flapjack.NumSet := .bn setValue1533 setValue0
def setValue1535 : Flapjack.NumSet := .bn setValue0 setValue1534
def setValue1536 : Flapjack.NumSet := .bn setValue1505 setValue1507
def setValue1537 : Flapjack.NumSet := .bs setValue1536 () setValue0
def tree325 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743,
    7747, 7751, 7755, 7759, 7763, 7767, 7771, 7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819,
    7823, 7827, 7831, 7835, 7839, 7843, 7847, 7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895]
  [7637, 7633, 7625, 7621, 7629, 7645, 7553, 7389, 7433, 7513, 7585, 7569, 7369, 7373, 7377, 7381, 7385, 7393, 7397,
    7401, 7405, 7409, 7413, 7417, 7421, 7425, 7429, 7437, 7441, 7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477,
    7481, 7485, 7489, 7493, 7497, 7501, 7505, 7509, 7517, 7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7557, 7561,
    7565, 7573, 7577, 7581, 7589])).val
theorem tree325_def : tree325 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743,
    7747, 7751, 7755, 7759, 7763, 7767, 7771, 7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819,
    7823, 7827, 7831, 7835, 7839, 7843, 7847, 7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895]
  [7637, 7633, 7625, 7621, 7629, 7645, 7553, 7389, 7433, 7513, 7585, 7569, 7369, 7373, 7377, 7381, 7385, 7393, 7397,
    7401, 7405, 7409, 7413, 7417, 7421, 7425, 7429, 7437, 7441, 7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477,
    7481, 7485, 7489, 7493, 7497, 7501, 7505, 7509, 7517, 7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7557, 7561,
    7565, 7573, 7577, 7581, 7589]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal325 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 7699, 7703, 7707, 7711, 7715, 7719, 7723, 7727, 7731, 7735, 7739, 7743,
    7747, 7751, 7755, 7759, 7763, 7767, 7771, 7775, 7779, 7783, 7787, 7791, 7795, 7799, 7803, 7807, 7811, 7815, 7819,
    7823, 7827, 7831, 7835, 7839, 7843, 7847, 7851, 7855, 7859, 7863, 7867, 7871, 7875, 7879, 7883, 7887, 7891, 7895]
  [7637, 7633, 7625, 7621, 7629, 7645, 7553, 7389, 7433, 7513, 7585, 7569, 7369, 7373, 7377, 7381, 7385, 7393, 7397,
    7401, 7405, 7409, 7413, 7417, 7421, 7425, 7429, 7437, 7441, 7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477,
    7481, 7485, 7489, 7493, 7497, 7501, 7505, 7509, 7517, 7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7557, 7561,
    7565, 7573, 7577, 7581, 7589]
def live325 : Flapjack.NumSet := setValue1503
def coloured325 : Flapjack.NumSet := setValue1509
def result325 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1535, setValue1537)
def tree326 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree325 tree324)).val
theorem tree326_def : tree326 = (.seq tree325 tree324) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal326 : Flapjack.RegAlloc.ClashTree := .seq literal325 literal324
def live326 : Flapjack.NumSet := setValue0
def coloured326 : Flapjack.NumSet := setValue0
def result326 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1535, setValue1537)
def tree327 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree327_def : tree327 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal327 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live327 : Flapjack.NumSet := setValue1535
def coloured327 : Flapjack.NumSet := setValue1537
def result327 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1535, setValue1537)
def tree328 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree327 tree326)).val
theorem tree328_def : tree328 = (.seq tree327 tree326) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal328 : Flapjack.RegAlloc.ClashTree := .seq literal327 literal326
def live328 : Flapjack.NumSet := setValue0
def coloured328 : Flapjack.NumSet := setValue0
def result328 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1535, setValue1537)
def setValue1538 : Flapjack.NumSet := .bn setValue3 setValue0
def setValue1539 : Flapjack.NumSet := .bn setValue1538 setValue0
def setValue1540 : Flapjack.NumSet := .bn setValue1539 setValue1511
def setValue1541 : Flapjack.NumSet := .bn setValue1511 setValue1511
def setValue1542 : Flapjack.NumSet := .bn setValue1540 setValue1541
def setValue1543 : Flapjack.NumSet := .bn setValue0 setValue1511
def setValue1544 : Flapjack.NumSet := .bn setValue1543 setValue1541
def setValue1545 : Flapjack.NumSet := .bn setValue1542 setValue1544
def setValue1546 : Flapjack.NumSet := .bn setValue1545 setValue1545
def setValue1547 : Flapjack.NumSet := .bn setValue1541 setValue1541
def setValue1548 : Flapjack.NumSet := .bn setValue1544 setValue1547
def setValue1549 : Flapjack.NumSet := .bn setValue1545 setValue1548
def setValue1550 : Flapjack.NumSet := .bn setValue1546 setValue1549
def setValue1551 : Flapjack.NumSet := .bn setValue1550 setValue1550
def setValue1552 : Flapjack.NumSet := .bn setValue0 setValue1551
def setValue1553 : Flapjack.NumSet := .bn setValue395 setValue1552
def setValue1554 : Flapjack.NumSet := .bn setValue161 setValue84
def setValue1555 : Flapjack.NumSet := .bn setValue1470 setValue1554
def setValue1556 : Flapjack.NumSet := .bs setValue1554 () setValue1554
def setValue1557 : Flapjack.NumSet := .bs setValue1555 () setValue1556
def setValue1558 : Flapjack.NumSet := .bs setValue1470 () setValue1554
def setValue1559 : Flapjack.NumSet := .bs setValue1558 () setValue1556
def setValue1560 : Flapjack.NumSet := .bs setValue1557 () setValue1559
def setValue1561 : Flapjack.NumSet := .bn setValue1560 setValue0
def tree329 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [7645, 7637, 7633, 7629, 7625, 7621, 7369, 7373, 7377, 7381, 7385, 7389, 7393, 7397, 7401, 7405, 7409, 7413, 7417,
    7421, 7425, 7429, 7433, 7437, 7441, 7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477, 7481, 7485, 7489, 7493,
    7497, 7501, 7505, 7509, 7513, 7517, 7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7553, 7557, 7561, 7565, 7569,
    7573, 7577, 7581, 7585, 7589]
  [12, 2, 4, 10, 6, 8, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187, 7191, 7195, 7199, 7203,
    7207, 7211, 7215, 7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263, 7267, 7271, 7275, 7279,
    7283, 7287, 7291, 7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339, 7343, 7347, 7351, 7355,
    7359, 7363])).val
theorem tree329_def : tree329 = (Flapjack.RegAlloc.ClashTree.delta
  [7645, 7637, 7633, 7629, 7625, 7621, 7369, 7373, 7377, 7381, 7385, 7389, 7393, 7397, 7401, 7405, 7409, 7413, 7417,
    7421, 7425, 7429, 7433, 7437, 7441, 7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477, 7481, 7485, 7489, 7493,
    7497, 7501, 7505, 7509, 7513, 7517, 7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7553, 7557, 7561, 7565, 7569,
    7573, 7577, 7581, 7585, 7589]
  [12, 2, 4, 10, 6, 8, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187, 7191, 7195, 7199, 7203,
    7207, 7211, 7215, 7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263, 7267, 7271, 7275, 7279,
    7283, 7287, 7291, 7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339, 7343, 7347, 7351, 7355,
    7359, 7363]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal329 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [7645, 7637, 7633, 7629, 7625, 7621, 7369, 7373, 7377, 7381, 7385, 7389, 7393, 7397, 7401, 7405, 7409, 7413, 7417,
    7421, 7425, 7429, 7433, 7437, 7441, 7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477, 7481, 7485, 7489, 7493,
    7497, 7501, 7505, 7509, 7513, 7517, 7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7553, 7557, 7561, 7565, 7569,
    7573, 7577, 7581, 7585, 7589]
  [12, 2, 4, 10, 6, 8, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187, 7191, 7195, 7199, 7203,
    7207, 7211, 7215, 7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263, 7267, 7271, 7275, 7279,
    7283, 7287, 7291, 7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339, 7343, 7347, 7351, 7355,
    7359, 7363]
def live329 : Flapjack.NumSet := setValue1535
def coloured329 : Flapjack.NumSet := setValue1537
def result329 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1553, setValue1561)
def tree330 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1553)).val
theorem tree330_def : tree330 = (.set setValue1553) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal330 : Flapjack.RegAlloc.ClashTree := .set setValue1553
def live330 : Flapjack.NumSet := setValue1553
def coloured330 : Flapjack.NumSet := setValue1561
def result330 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1553, setValue1561)
def tree331 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree330 tree329)).val
theorem tree331_def : tree331 = (.seq tree330 tree329) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal331 : Flapjack.RegAlloc.ClashTree := .seq literal330 literal329
def live331 : Flapjack.NumSet := setValue1535
def coloured331 : Flapjack.NumSet := setValue1537
def result331 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1553, setValue1561)
def setValue1562 : Flapjack.NumSet := .bn setValue1 setValue1534
def setValue1563 : Flapjack.NumSet := .bs setValue1508 () setValue0
def tree332 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree332_def : tree332 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal332 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live332 : Flapjack.NumSet := setValue1535
def coloured332 : Flapjack.NumSet := setValue1537
def result332 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1562, setValue1563)
def setValue1564 : Flapjack.NumSet := .bn setValue1512 setValue0
def setValue1565 : Flapjack.NumSet := .bn setValue1564 setValue0
def setValue1566 : Flapjack.NumSet := .bn setValue0 setValue1565
def setValue1567 : Flapjack.NumSet := .bn setValue1566 setValue1566
def setValue1568 : Flapjack.NumSet := .bn setValue1567 setValue1567
def setValue1569 : Flapjack.NumSet := .bn setValue0 setValue1566
def setValue1570 : Flapjack.NumSet := .bn setValue1566 setValue0
def setValue1571 : Flapjack.NumSet := .bn setValue1569 setValue1570
def setValue1572 : Flapjack.NumSet := .bn setValue1568 setValue1571
def setValue1573 : Flapjack.NumSet := .bn setValue1572 setValue1551
def setValue1574 : Flapjack.NumSet := .bn setValue1 setValue1573
def setValue1575 : Flapjack.NumSet := .bs setValue1560 () setValue0
def tree333 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 7369, 7373, 7377, 7381, 7385, 7389, 7393, 7397, 7401, 7405, 7409, 7413, 7417, 7421, 7425, 7429, 7433, 7437, 7441,
    7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477, 7481, 7485, 7489, 7493, 7497, 7501, 7505, 7509, 7513, 7517,
    7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7553, 7557, 7561, 7565, 7569, 7573, 7577, 7581, 7585, 7589]
  [2, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187, 7191, 7195, 7199, 7203, 7207, 7211, 7215,
    7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263, 7267, 7271, 7275, 7279, 7283, 7287, 7291,
    7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339, 7343, 7347, 7351, 7355, 7359, 7363])).val
theorem tree333_def : tree333 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 7369, 7373, 7377, 7381, 7385, 7389, 7393, 7397, 7401, 7405, 7409, 7413, 7417, 7421, 7425, 7429, 7433, 7437, 7441,
    7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477, 7481, 7485, 7489, 7493, 7497, 7501, 7505, 7509, 7513, 7517,
    7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7553, 7557, 7561, 7565, 7569, 7573, 7577, 7581, 7585, 7589]
  [2, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187, 7191, 7195, 7199, 7203, 7207, 7211, 7215,
    7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263, 7267, 7271, 7275, 7279, 7283, 7287, 7291,
    7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339, 7343, 7347, 7351, 7355, 7359, 7363]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal333 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 7369, 7373, 7377, 7381, 7385, 7389, 7393, 7397, 7401, 7405, 7409, 7413, 7417, 7421, 7425, 7429, 7433, 7437, 7441,
    7445, 7449, 7453, 7457, 7461, 7465, 7469, 7473, 7477, 7481, 7485, 7489, 7493, 7497, 7501, 7505, 7509, 7513, 7517,
    7521, 7525, 7529, 7533, 7537, 7541, 7545, 7549, 7553, 7557, 7561, 7565, 7569, 7573, 7577, 7581, 7585, 7589]
  [2, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187, 7191, 7195, 7199, 7203, 7207, 7211, 7215,
    7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263, 7267, 7271, 7275, 7279, 7283, 7287, 7291,
    7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339, 7343, 7347, 7351, 7355, 7359, 7363]
def live333 : Flapjack.NumSet := setValue1562
def coloured333 : Flapjack.NumSet := setValue1563
def result333 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1574, setValue1575)
def tree334 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree333 tree332)).val
theorem tree334_def : tree334 = (.seq tree333 tree332) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal334 : Flapjack.RegAlloc.ClashTree := .seq literal333 literal332
def live334 : Flapjack.NumSet := setValue1535
def coloured334 : Flapjack.NumSet := setValue1537
def result334 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1574, setValue1575)
def setValue1576 : Flapjack.NumSet := .bn setValue1 setValue1552
def setValue1577 : Flapjack.NumSet := .bn setValue1554 setValue1554
def setValue1578 : Flapjack.NumSet := .bn setValue1555 setValue1577
def setValue1579 : Flapjack.NumSet := .bs setValue1578 () setValue1578
def setValue1580 : Flapjack.NumSet := .bn setValue1579 setValue0
def tree335 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1576)).val
theorem tree335_def : tree335 = (.set setValue1576) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal335 : Flapjack.RegAlloc.ClashTree := .set setValue1576
def live335 : Flapjack.NumSet := setValue1574
def coloured335 : Flapjack.NumSet := setValue1575
def result335 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1576, setValue1580)
def tree336 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree335 tree334)).val
theorem tree336_def : tree336 = (.seq tree335 tree334) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal336 : Flapjack.RegAlloc.ClashTree := .seq literal335 literal334
def live336 : Flapjack.NumSet := setValue1535
def coloured336 : Flapjack.NumSet := setValue1537
def result336 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1576, setValue1580)
def setValue1581 : Flapjack.NumSet := .bn setValue440 setValue1552
def setValue1582 : Flapjack.NumSet := .bs setValue161 () setValue84
def setValue1583 : Flapjack.NumSet := .bs setValue1470 () setValue1582
def setValue1584 : Flapjack.NumSet := .bs setValue1554 () setValue1582
def setValue1585 : Flapjack.NumSet := .bs setValue1583 () setValue1584
def setValue1586 : Flapjack.NumSet := .bs setValue1582 () setValue1582
def setValue1587 : Flapjack.NumSet := .bs setValue1583 () setValue1586
def setValue1588 : Flapjack.NumSet := .bs setValue1585 () setValue1587
def setValue1589 : Flapjack.NumSet := .bn setValue1588 setValue0
def tree337 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1581) tree331 tree336)).val
theorem tree337_def : tree337 = (.branch (some setValue1581) tree331 tree336) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal337 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1581) literal331 literal336
def live337 : Flapjack.NumSet := setValue1535
def coloured337 : Flapjack.NumSet := setValue1537
def result337 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1581, setValue1589)
def tree338 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree337 tree328)).val
theorem tree338_def : tree338 = (.seq tree337 tree328) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal338 : Flapjack.RegAlloc.ClashTree := .seq literal337 literal328
def live338 : Flapjack.NumSet := setValue0
def coloured338 : Flapjack.NumSet := setValue0
def result338 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1581, setValue1589)
def setValue1590 : Flapjack.NumSet := .bn setValue0 setValue1538
def setValue1591 : Flapjack.NumSet := .bn setValue1590 setValue0
def setValue1592 : Flapjack.NumSet := .bn setValue1590 setValue1539
def setValue1593 : Flapjack.NumSet := .bn setValue1591 setValue1592
def setValue1594 : Flapjack.NumSet := .bn setValue1538 setValue1538
def setValue1595 : Flapjack.NumSet := .bn setValue1594 setValue1539
def setValue1596 : Flapjack.NumSet := .bn setValue1592 setValue1595
def setValue1597 : Flapjack.NumSet := .bn setValue1593 setValue1596
def setValue1598 : Flapjack.NumSet := .bn setValue0 setValue1539
def setValue1599 : Flapjack.NumSet := .bn setValue1592 setValue1598
def setValue1600 : Flapjack.NumSet := .bn setValue1596 setValue1599
def setValue1601 : Flapjack.NumSet := .bn setValue1597 setValue1600
def setValue1602 : Flapjack.NumSet := .bn setValue1592 setValue1592
def setValue1603 : Flapjack.NumSet := .bn setValue1602 setValue1599
def setValue1604 : Flapjack.NumSet := .bn setValue1603 setValue1600
def setValue1605 : Flapjack.NumSet := .bn setValue1601 setValue1604
def setValue1606 : Flapjack.NumSet := .bn setValue1539 setValue1539
def setValue1607 : Flapjack.NumSet := .bn setValue1592 setValue1606
def setValue1608 : Flapjack.NumSet := .bn setValue1602 setValue1607
def setValue1609 : Flapjack.NumSet := .bn setValue1608 setValue1603
def setValue1610 : Flapjack.NumSet := .bn setValue1600 setValue1600
def setValue1611 : Flapjack.NumSet := .bn setValue1609 setValue1610
def setValue1612 : Flapjack.NumSet := .bn setValue1605 setValue1611
def setValue1613 : Flapjack.NumSet := .bn setValue1612 setValue0
def setValue1614 : Flapjack.NumSet := .bn setValue0 setValue1613
def setValue1615 : Flapjack.NumSet := .bs setValue37 () setValue84
def setValue1616 : Flapjack.NumSet := .bs setValue1387 () setValue1615
def setValue1617 : Flapjack.NumSet := .bs setValue161 () setValue430
def setValue1618 : Flapjack.NumSet := .bs setValue1582 () setValue1617
def setValue1619 : Flapjack.NumSet := .bs setValue1616 () setValue1618
def setValue1620 : Flapjack.NumSet := .bs setValue311 () setValue249
def setValue1621 : Flapjack.NumSet := .bs setValue1620 () setValue214
def setValue1622 : Flapjack.NumSet := .bs setValue161 () setValue412
def setValue1623 : Flapjack.NumSet := .bs setValue161 () setValue249
def setValue1624 : Flapjack.NumSet := .bs setValue1622 () setValue1623
def setValue1625 : Flapjack.NumSet := .bs setValue1621 () setValue1624
def setValue1626 : Flapjack.NumSet := .bn setValue1619 setValue1625
def setValue1627 : Flapjack.NumSet := .bs setValue1626 () setValue0
def tree339 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187,
    7191, 7195, 7199, 7203, 7207, 7211, 7215, 7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263,
    7267, 7271, 7275, 7279, 7283, 7287, 7291, 7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339,
    7343, 7347, 7351, 7355, 7359, 7363]
  [7021, 6945, 6861, 6917, 6925, 6845, 6965, 7025, 6893, 6865, 6853, 6929, 6813, 6817, 6821, 6825, 6829, 6833, 6837,
    6841, 6849, 6853, 6857, 7089, 6865, 6869, 7085, 6873, 6877, 6881, 6885, 6889, 6893, 6897, 6901, 6905, 6909, 6913,
    7077, 6921, 6929, 6933, 6937, 6941, 7073, 6949, 6953, 6957, 6961, 6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993,
    6997, 7001, 7005, 7009, 7069, 7013, 7017, 7025, 7065, 7029, 7033])).val
theorem tree339_def : tree339 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187,
    7191, 7195, 7199, 7203, 7207, 7211, 7215, 7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263,
    7267, 7271, 7275, 7279, 7283, 7287, 7291, 7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339,
    7343, 7347, 7351, 7355, 7359, 7363]
  [7021, 6945, 6861, 6917, 6925, 6845, 6965, 7025, 6893, 6865, 6853, 6929, 6813, 6817, 6821, 6825, 6829, 6833, 6837,
    6841, 6849, 6853, 6857, 7089, 6865, 6869, 7085, 6873, 6877, 6881, 6885, 6889, 6893, 6897, 6901, 6905, 6909, 6913,
    7077, 6921, 6929, 6933, 6937, 6941, 7073, 6949, 6953, 6957, 6961, 6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993,
    6997, 7001, 7005, 7009, 7069, 7013, 7017, 7025, 7065, 7029, 7033]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal339 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 7143, 7147, 7151, 7155, 7159, 7163, 7167, 7171, 7175, 7179, 7183, 7187,
    7191, 7195, 7199, 7203, 7207, 7211, 7215, 7219, 7223, 7227, 7231, 7235, 7239, 7243, 7247, 7251, 7255, 7259, 7263,
    7267, 7271, 7275, 7279, 7283, 7287, 7291, 7295, 7299, 7303, 7307, 7311, 7315, 7319, 7323, 7327, 7331, 7335, 7339,
    7343, 7347, 7351, 7355, 7359, 7363]
  [7021, 6945, 6861, 6917, 6925, 6845, 6965, 7025, 6893, 6865, 6853, 6929, 6813, 6817, 6821, 6825, 6829, 6833, 6837,
    6841, 6849, 6853, 6857, 7089, 6865, 6869, 7085, 6873, 6877, 6881, 6885, 6889, 6893, 6897, 6901, 6905, 6909, 6913,
    7077, 6921, 6929, 6933, 6937, 6941, 7073, 6949, 6953, 6957, 6961, 6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993,
    6997, 7001, 7005, 7009, 7069, 7013, 7017, 7025, 7065, 7029, 7033]
def live339 : Flapjack.NumSet := setValue1581
def coloured339 : Flapjack.NumSet := setValue1589
def result339 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1614, setValue1627)
def tree340 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree339 tree338)).val
theorem tree340_def : tree340 = (.seq tree339 tree338) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal340 : Flapjack.RegAlloc.ClashTree := .seq literal339 literal338
def live340 : Flapjack.NumSet := setValue0
def coloured340 : Flapjack.NumSet := setValue0
def result340 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1614, setValue1627)
def tree341 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree341_def : tree341 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal341 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live341 : Flapjack.NumSet := setValue1614
def coloured341 : Flapjack.NumSet := setValue1627
def result341 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1614, setValue1627)
def tree342 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree341 tree340)).val
theorem tree342_def : tree342 = (.seq tree341 tree340) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal342 : Flapjack.RegAlloc.ClashTree := .seq literal341 literal340
def live342 : Flapjack.NumSet := setValue0
def coloured342 : Flapjack.NumSet := setValue0
def result342 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1614, setValue1627)
def setValue1628 : Flapjack.NumSet := .bn setValue4 setValue0
def setValue1629 : Flapjack.NumSet := .bn setValue1628 setValue1590
def setValue1630 : Flapjack.NumSet := .bn setValue1629 setValue1629
def setValue1631 : Flapjack.NumSet := .bn setValue0 setValue1590
def setValue1632 : Flapjack.NumSet := .bn setValue1629 setValue1631
def setValue1633 : Flapjack.NumSet := .bn setValue1630 setValue1632
def setValue1634 : Flapjack.NumSet := .bn setValue1590 setValue1590
def setValue1635 : Flapjack.NumSet := .bn setValue1629 setValue1634
def setValue1636 : Flapjack.NumSet := .bn setValue1632 setValue1635
def setValue1637 : Flapjack.NumSet := .bn setValue1633 setValue1636
def setValue1638 : Flapjack.NumSet := .bn setValue1636 setValue1636
def setValue1639 : Flapjack.NumSet := .bn setValue1637 setValue1638
def setValue1640 : Flapjack.NumSet := .bn setValue1638 setValue1638
def setValue1641 : Flapjack.NumSet := .bn setValue1639 setValue1640
def setValue1642 : Flapjack.NumSet := .bn setValue0 setValue1641
def setValue1643 : Flapjack.NumSet := .bn setValue395 setValue1642
def tree343 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [7089, 7085, 7077, 7073, 7069, 7065, 6813, 6817, 6821, 6825, 6829, 6833, 6837, 6841, 6845, 6849, 6853, 6857, 6861,
    6865, 6869, 6873, 6877, 6881, 6885, 6889, 6893, 6897, 6901, 6905, 6909, 6913, 6917, 6921, 6925, 6929, 6933, 6937,
    6941, 6945, 6949, 6953, 6957, 6961, 6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993, 6997, 7001, 7005, 7009, 7013,
    7017, 7021, 7025, 7029, 7033]
  [12, 8, 10, 6, 2, 4, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631, 6635, 6639, 6643, 6647,
    6651, 6655, 6659, 6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707, 6711, 6715, 6719, 6723,
    6727, 6731, 6735, 6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783, 6787, 6791, 6795, 6799,
    6803, 6807])).val
theorem tree343_def : tree343 = (Flapjack.RegAlloc.ClashTree.delta
  [7089, 7085, 7077, 7073, 7069, 7065, 6813, 6817, 6821, 6825, 6829, 6833, 6837, 6841, 6845, 6849, 6853, 6857, 6861,
    6865, 6869, 6873, 6877, 6881, 6885, 6889, 6893, 6897, 6901, 6905, 6909, 6913, 6917, 6921, 6925, 6929, 6933, 6937,
    6941, 6945, 6949, 6953, 6957, 6961, 6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993, 6997, 7001, 7005, 7009, 7013,
    7017, 7021, 7025, 7029, 7033]
  [12, 8, 10, 6, 2, 4, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631, 6635, 6639, 6643, 6647,
    6651, 6655, 6659, 6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707, 6711, 6715, 6719, 6723,
    6727, 6731, 6735, 6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783, 6787, 6791, 6795, 6799,
    6803, 6807]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal343 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [7089, 7085, 7077, 7073, 7069, 7065, 6813, 6817, 6821, 6825, 6829, 6833, 6837, 6841, 6845, 6849, 6853, 6857, 6861,
    6865, 6869, 6873, 6877, 6881, 6885, 6889, 6893, 6897, 6901, 6905, 6909, 6913, 6917, 6921, 6925, 6929, 6933, 6937,
    6941, 6945, 6949, 6953, 6957, 6961, 6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993, 6997, 7001, 7005, 7009, 7013,
    7017, 7021, 7025, 7029, 7033]
  [12, 8, 10, 6, 2, 4, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631, 6635, 6639, 6643, 6647,
    6651, 6655, 6659, 6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707, 6711, 6715, 6719, 6723,
    6727, 6731, 6735, 6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783, 6787, 6791, 6795, 6799,
    6803, 6807]
def live343 : Flapjack.NumSet := setValue1614
def coloured343 : Flapjack.NumSet := setValue1627
def result343 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1643, setValue1561)
def tree344 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1643)).val
theorem tree344_def : tree344 = (.set setValue1643) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal344 : Flapjack.RegAlloc.ClashTree := .set setValue1643
def live344 : Flapjack.NumSet := setValue1643
def coloured344 : Flapjack.NumSet := setValue1561
def result344 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1643, setValue1561)
def tree345 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree344 tree343)).val
theorem tree345_def : tree345 = (.seq tree344 tree343) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal345 : Flapjack.RegAlloc.ClashTree := .seq literal344 literal343
def live345 : Flapjack.NumSet := setValue1614
def coloured345 : Flapjack.NumSet := setValue1627
def result345 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1643, setValue1561)
def setValue1644 : Flapjack.NumSet := .bn setValue1 setValue1613
def setValue1645 : Flapjack.NumSet := .bs setValue1619 () setValue1625
def setValue1646 : Flapjack.NumSet := .bs setValue1645 () setValue0
def tree346 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree346_def : tree346 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal346 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live346 : Flapjack.NumSet := setValue1614
def coloured346 : Flapjack.NumSet := setValue1627
def result346 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1644, setValue1646)
def setValue1647 : Flapjack.NumSet := .bn setValue1539 setValue0
def setValue1648 : Flapjack.NumSet := .bn setValue0 setValue1647
def setValue1649 : Flapjack.NumSet := .bn setValue0 setValue1648
def setValue1650 : Flapjack.NumSet := .bn setValue1648 setValue0
def setValue1651 : Flapjack.NumSet := .bn setValue1649 setValue1650
def setValue1652 : Flapjack.NumSet := .bn setValue0 setValue1650
def setValue1653 : Flapjack.NumSet := .bn setValue1651 setValue1652
def setValue1654 : Flapjack.NumSet := .bn setValue1649 setValue0
def setValue1655 : Flapjack.NumSet := .bn setValue1650 setValue1650
def setValue1656 : Flapjack.NumSet := .bn setValue1654 setValue1655
def setValue1657 : Flapjack.NumSet := .bn setValue1653 setValue1656
def setValue1658 : Flapjack.NumSet := .bn setValue1657 setValue1641
def setValue1659 : Flapjack.NumSet := .bn setValue1 setValue1658
def setValue1660 : Flapjack.NumSet := .bs setValue1470 () setValue1093
def setValue1661 : Flapjack.NumSet := .bs setValue1660 () setValue1556
def setValue1662 : Flapjack.NumSet := .bs setValue1557 () setValue1661
def setValue1663 : Flapjack.NumSet := .bn setValue1662 setValue0
def tree347 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 6813, 6817, 6821, 6825, 6829, 6833, 6837, 6841, 6845, 6849, 6853, 6857, 6861, 6865, 6869, 6873, 6877, 6881, 6885,
    6889, 6893, 6897, 6901, 6905, 6909, 6913, 6917, 6921, 6925, 6929, 6933, 6937, 6941, 6945, 6949, 6953, 6957, 6961,
    6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993, 6997, 7001, 7005, 7009, 7013, 7017, 7021, 7025, 7029, 7033]
  [2, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631, 6635, 6639, 6643, 6647, 6651, 6655, 6659,
    6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707, 6711, 6715, 6719, 6723, 6727, 6731, 6735,
    6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783, 6787, 6791, 6795, 6799, 6803, 6807])).val
theorem tree347_def : tree347 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 6813, 6817, 6821, 6825, 6829, 6833, 6837, 6841, 6845, 6849, 6853, 6857, 6861, 6865, 6869, 6873, 6877, 6881, 6885,
    6889, 6893, 6897, 6901, 6905, 6909, 6913, 6917, 6921, 6925, 6929, 6933, 6937, 6941, 6945, 6949, 6953, 6957, 6961,
    6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993, 6997, 7001, 7005, 7009, 7013, 7017, 7021, 7025, 7029, 7033]
  [2, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631, 6635, 6639, 6643, 6647, 6651, 6655, 6659,
    6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707, 6711, 6715, 6719, 6723, 6727, 6731, 6735,
    6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783, 6787, 6791, 6795, 6799, 6803, 6807]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal347 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 6813, 6817, 6821, 6825, 6829, 6833, 6837, 6841, 6845, 6849, 6853, 6857, 6861, 6865, 6869, 6873, 6877, 6881, 6885,
    6889, 6893, 6897, 6901, 6905, 6909, 6913, 6917, 6921, 6925, 6929, 6933, 6937, 6941, 6945, 6949, 6953, 6957, 6961,
    6965, 6969, 6973, 6977, 6981, 6985, 6989, 6993, 6997, 7001, 7005, 7009, 7013, 7017, 7021, 7025, 7029, 7033]
  [2, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631, 6635, 6639, 6643, 6647, 6651, 6655, 6659,
    6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707, 6711, 6715, 6719, 6723, 6727, 6731, 6735,
    6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783, 6787, 6791, 6795, 6799, 6803, 6807]
def live347 : Flapjack.NumSet := setValue1644
def coloured347 : Flapjack.NumSet := setValue1646
def result347 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1659, setValue1663)
def tree348 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree347 tree346)).val
theorem tree348_def : tree348 = (.seq tree347 tree346) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal348 : Flapjack.RegAlloc.ClashTree := .seq literal347 literal346
def live348 : Flapjack.NumSet := setValue1614
def coloured348 : Flapjack.NumSet := setValue1627
def result348 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1659, setValue1663)
def setValue1664 : Flapjack.NumSet := .bn setValue1 setValue1642
def tree349 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1664)).val
theorem tree349_def : tree349 = (.set setValue1664) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal349 : Flapjack.RegAlloc.ClashTree := .set setValue1664
def live349 : Flapjack.NumSet := setValue1659
def coloured349 : Flapjack.NumSet := setValue1663
def result349 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1664, setValue1580)
def tree350 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree349 tree348)).val
theorem tree350_def : tree350 = (.seq tree349 tree348) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal350 : Flapjack.RegAlloc.ClashTree := .seq literal349 literal348
def live350 : Flapjack.NumSet := setValue1614
def coloured350 : Flapjack.NumSet := setValue1627
def result350 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1664, setValue1580)
def setValue1665 : Flapjack.NumSet := .bn setValue440 setValue1642
def tree351 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1665) tree345 tree350)).val
theorem tree351_def : tree351 = (.branch (some setValue1665) tree345 tree350) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal351 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1665) literal345 literal350
def live351 : Flapjack.NumSet := setValue1614
def coloured351 : Flapjack.NumSet := setValue1627
def result351 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1665, setValue1589)
def tree352 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree351 tree342)).val
theorem tree352_def : tree352 = (.seq tree351 tree342) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal352 : Flapjack.RegAlloc.ClashTree := .seq literal351 literal342
def live352 : Flapjack.NumSet := setValue0
def coloured352 : Flapjack.NumSet := setValue0
def result352 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1665, setValue1589)
def setValue1666 : Flapjack.NumSet := .bn setValue5 setValue1628
def setValue1667 : Flapjack.NumSet := .bn setValue151 setValue1666
def setValue1668 : Flapjack.NumSet := .bn setValue20 setValue1666
def setValue1669 : Flapjack.NumSet := .bn setValue1667 setValue1668
def setValue1670 : Flapjack.NumSet := .bn setValue1666 setValue1666
def setValue1671 : Flapjack.NumSet := .bn setValue1670 setValue1670
def setValue1672 : Flapjack.NumSet := .bn setValue1669 setValue1671
def setValue1673 : Flapjack.NumSet := .bn setValue4 setValue4
def setValue1674 : Flapjack.NumSet := .bn setValue5 setValue1673
def setValue1675 : Flapjack.NumSet := .bn setValue1674 setValue1666
def setValue1676 : Flapjack.NumSet := .bn setValue1675 setValue1668
def setValue1677 : Flapjack.NumSet := .bn setValue1673 setValue1628
def setValue1678 : Flapjack.NumSet := .bn setValue1666 setValue1677
def setValue1679 : Flapjack.NumSet := .bn setValue1668 setValue1678
def setValue1680 : Flapjack.NumSet := .bn setValue1676 setValue1679
def setValue1681 : Flapjack.NumSet := .bn setValue1672 setValue1680
def setValue1682 : Flapjack.NumSet := .bn setValue1668 setValue1670
def setValue1683 : Flapjack.NumSet := .bn setValue1676 setValue1682
def setValue1684 : Flapjack.NumSet := .bn setValue1683 setValue1680
def setValue1685 : Flapjack.NumSet := .bn setValue1681 setValue1684
def setValue1686 : Flapjack.NumSet := .bn setValue1685 setValue0
def setValue1687 : Flapjack.NumSet := .bn setValue0 setValue1686
def setValue1688 : Flapjack.NumSet := .bs setValue311 () setValue16
def setValue1689 : Flapjack.NumSet := .bs setValue1470 () setValue1688
def setValue1690 : Flapjack.NumSet := .bs setValue1689 () setValue1584
def setValue1691 : Flapjack.NumSet := .bs setValue430 () setValue84
def setValue1692 : Flapjack.NumSet := .bs setValue1470 () setValue1691
def setValue1693 : Flapjack.NumSet := .bs setValue249 () setValue84
def setValue1694 : Flapjack.NumSet := .bs setValue1693 () setValue1622
def setValue1695 : Flapjack.NumSet := .bs setValue1692 () setValue1694
def setValue1696 : Flapjack.NumSet := .bn setValue1690 setValue1695
def setValue1697 : Flapjack.NumSet := .bs setValue1696 () setValue0
def tree353 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631,
    6635, 6639, 6643, 6647, 6651, 6655, 6659, 6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707,
    6711, 6715, 6719, 6723, 6727, 6731, 6735, 6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783,
    6787, 6791, 6795, 6799, 6803, 6807]
  [6513, 6509, 6517, 6529, 6521, 6533, 6409, 6469, 6337, 6309, 6297, 6373, 6257, 6261, 6265, 6269, 6273, 6277, 6281,
    6285, 6289, 6293, 6297, 6301, 6305, 6309, 6313, 6317, 6321, 6325, 6329, 6333, 6337, 6341, 6345, 6349, 6353, 6357,
    6361, 6365, 6369, 6373, 6377, 6381, 6385, 6389, 6393, 6397, 6401, 6405, 6409, 6413, 6417, 6421, 6425, 6429, 6433,
    6437, 6441, 6445, 6449, 6453, 6457, 6461, 6465, 6469, 6473, 6477])).val
theorem tree353_def : tree353 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631,
    6635, 6639, 6643, 6647, 6651, 6655, 6659, 6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707,
    6711, 6715, 6719, 6723, 6727, 6731, 6735, 6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783,
    6787, 6791, 6795, 6799, 6803, 6807]
  [6513, 6509, 6517, 6529, 6521, 6533, 6409, 6469, 6337, 6309, 6297, 6373, 6257, 6261, 6265, 6269, 6273, 6277, 6281,
    6285, 6289, 6293, 6297, 6301, 6305, 6309, 6313, 6317, 6321, 6325, 6329, 6333, 6337, 6341, 6345, 6349, 6353, 6357,
    6361, 6365, 6369, 6373, 6377, 6381, 6385, 6389, 6393, 6397, 6401, 6405, 6409, 6413, 6417, 6421, 6425, 6429, 6433,
    6437, 6441, 6445, 6449, 6453, 6457, 6461, 6465, 6469, 6473, 6477]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal353 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 6587, 6591, 6595, 6599, 6603, 6607, 6611, 6615, 6619, 6623, 6627, 6631,
    6635, 6639, 6643, 6647, 6651, 6655, 6659, 6663, 6667, 6671, 6675, 6679, 6683, 6687, 6691, 6695, 6699, 6703, 6707,
    6711, 6715, 6719, 6723, 6727, 6731, 6735, 6739, 6743, 6747, 6751, 6755, 6759, 6763, 6767, 6771, 6775, 6779, 6783,
    6787, 6791, 6795, 6799, 6803, 6807]
  [6513, 6509, 6517, 6529, 6521, 6533, 6409, 6469, 6337, 6309, 6297, 6373, 6257, 6261, 6265, 6269, 6273, 6277, 6281,
    6285, 6289, 6293, 6297, 6301, 6305, 6309, 6313, 6317, 6321, 6325, 6329, 6333, 6337, 6341, 6345, 6349, 6353, 6357,
    6361, 6365, 6369, 6373, 6377, 6381, 6385, 6389, 6393, 6397, 6401, 6405, 6409, 6413, 6417, 6421, 6425, 6429, 6433,
    6437, 6441, 6445, 6449, 6453, 6457, 6461, 6465, 6469, 6473, 6477]
def live353 : Flapjack.NumSet := setValue1665
def coloured353 : Flapjack.NumSet := setValue1589
def result353 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1687, setValue1697)
def tree354 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree353 tree352)).val
theorem tree354_def : tree354 = (.seq tree353 tree352) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal354 : Flapjack.RegAlloc.ClashTree := .seq literal353 literal352
def live354 : Flapjack.NumSet := setValue0
def coloured354 : Flapjack.NumSet := setValue0
def result354 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1687, setValue1697)
def tree355 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree355_def : tree355 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal355 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live355 : Flapjack.NumSet := setValue1687
def coloured355 : Flapjack.NumSet := setValue1697
def result355 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1687, setValue1697)
def tree356 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree355 tree354)).val
theorem tree356_def : tree356 = (.seq tree355 tree354) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal356 : Flapjack.RegAlloc.ClashTree := .seq literal355 literal354
def live356 : Flapjack.NumSet := setValue0
def coloured356 : Flapjack.NumSet := setValue0
def result356 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1687, setValue1697)
def setValue1698 : Flapjack.NumSet := .bn setValue398 setValue5
def setValue1699 : Flapjack.NumSet := .bn setValue399 setValue1698
def setValue1700 : Flapjack.NumSet := .bn setValue1698 setValue1698
def setValue1701 : Flapjack.NumSet := .bn setValue1699 setValue1700
def setValue1702 : Flapjack.NumSet := .bn setValue1698 setValue6
def setValue1703 : Flapjack.NumSet := .bn setValue1700 setValue1702
def setValue1704 : Flapjack.NumSet := .bn setValue1701 setValue1703
def setValue1705 : Flapjack.NumSet := .bn setValue1704 setValue1704
def setValue1706 : Flapjack.NumSet := .bn setValue1705 setValue1705
def setValue1707 : Flapjack.NumSet := .bn setValue0 setValue1706
def setValue1708 : Flapjack.NumSet := .bn setValue395 setValue1707
def tree357 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [6533, 6529, 6521, 6517, 6513, 6509, 6257, 6261, 6265, 6269, 6273, 6277, 6281, 6285, 6289, 6293, 6297, 6301, 6305,
    6309, 6313, 6317, 6321, 6325, 6329, 6333, 6337, 6341, 6345, 6349, 6353, 6357, 6361, 6365, 6369, 6373, 6377, 6381,
    6385, 6389, 6393, 6397, 6401, 6405, 6409, 6413, 6417, 6421, 6425, 6429, 6433, 6437, 6441, 6445, 6449, 6453, 6457,
    6461, 6465, 6469, 6473, 6477]
  [12, 8, 10, 6, 2, 4, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091,
    6095, 6099, 6103, 6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167,
    6171, 6175, 6179, 6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243,
    6247, 6251])).val
theorem tree357_def : tree357 = (Flapjack.RegAlloc.ClashTree.delta
  [6533, 6529, 6521, 6517, 6513, 6509, 6257, 6261, 6265, 6269, 6273, 6277, 6281, 6285, 6289, 6293, 6297, 6301, 6305,
    6309, 6313, 6317, 6321, 6325, 6329, 6333, 6337, 6341, 6345, 6349, 6353, 6357, 6361, 6365, 6369, 6373, 6377, 6381,
    6385, 6389, 6393, 6397, 6401, 6405, 6409, 6413, 6417, 6421, 6425, 6429, 6433, 6437, 6441, 6445, 6449, 6453, 6457,
    6461, 6465, 6469, 6473, 6477]
  [12, 8, 10, 6, 2, 4, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091,
    6095, 6099, 6103, 6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167,
    6171, 6175, 6179, 6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243,
    6247, 6251]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal357 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [6533, 6529, 6521, 6517, 6513, 6509, 6257, 6261, 6265, 6269, 6273, 6277, 6281, 6285, 6289, 6293, 6297, 6301, 6305,
    6309, 6313, 6317, 6321, 6325, 6329, 6333, 6337, 6341, 6345, 6349, 6353, 6357, 6361, 6365, 6369, 6373, 6377, 6381,
    6385, 6389, 6393, 6397, 6401, 6405, 6409, 6413, 6417, 6421, 6425, 6429, 6433, 6437, 6441, 6445, 6449, 6453, 6457,
    6461, 6465, 6469, 6473, 6477]
  [12, 8, 10, 6, 2, 4, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091,
    6095, 6099, 6103, 6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167,
    6171, 6175, 6179, 6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243,
    6247, 6251]
def live357 : Flapjack.NumSet := setValue1687
def coloured357 : Flapjack.NumSet := setValue1697
def result357 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1708, setValue1561)
def tree358 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1708)).val
theorem tree358_def : tree358 = (.set setValue1708) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal358 : Flapjack.RegAlloc.ClashTree := .set setValue1708
def live358 : Flapjack.NumSet := setValue1708
def coloured358 : Flapjack.NumSet := setValue1561
def result358 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1708, setValue1561)
def tree359 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree358 tree357)).val
theorem tree359_def : tree359 = (.seq tree358 tree357) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal359 : Flapjack.RegAlloc.ClashTree := .seq literal358 literal357
def live359 : Flapjack.NumSet := setValue1687
def coloured359 : Flapjack.NumSet := setValue1697
def result359 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1708, setValue1561)
def setValue1709 : Flapjack.NumSet := .bn setValue1 setValue1686
def setValue1710 : Flapjack.NumSet := .bs setValue1690 () setValue1695
def setValue1711 : Flapjack.NumSet := .bs setValue1710 () setValue0
def tree360 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree360_def : tree360 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal360 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live360 : Flapjack.NumSet := setValue1687
def coloured360 : Flapjack.NumSet := setValue1697
def result360 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1709, setValue1711)
def setValue1712 : Flapjack.NumSet := .bn setValue0 setValue1628
def setValue1713 : Flapjack.NumSet := .bn setValue1712 setValue0
def setValue1714 : Flapjack.NumSet := .bn setValue1713 setValue0
def setValue1715 : Flapjack.NumSet := .bn setValue0 setValue1714
def setValue1716 : Flapjack.NumSet := .bn setValue1628 setValue0
def setValue1717 : Flapjack.NumSet := .bn setValue0 setValue1716
def setValue1718 : Flapjack.NumSet := .bn setValue0 setValue1717
def setValue1719 : Flapjack.NumSet := .bn setValue1714 setValue1718
def setValue1720 : Flapjack.NumSet := .bn setValue1715 setValue1719
def setValue1721 : Flapjack.NumSet := .bn setValue1714 setValue0
def setValue1722 : Flapjack.NumSet := .bn setValue1721 setValue1719
def setValue1723 : Flapjack.NumSet := .bn setValue1720 setValue1722
def setValue1724 : Flapjack.NumSet := .bn setValue1723 setValue1706
def setValue1725 : Flapjack.NumSet := .bn setValue1 setValue1724
def tree361 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 6257, 6261, 6265, 6269, 6273, 6277, 6281, 6285, 6289, 6293, 6297, 6301, 6305, 6309, 6313, 6317, 6321, 6325, 6329,
    6333, 6337, 6341, 6345, 6349, 6353, 6357, 6361, 6365, 6369, 6373, 6377, 6381, 6385, 6389, 6393, 6397, 6401, 6405,
    6409, 6413, 6417, 6421, 6425, 6429, 6433, 6437, 6441, 6445, 6449, 6453, 6457, 6461, 6465, 6469, 6473, 6477]
  [2, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091, 6095, 6099, 6103,
    6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167, 6171, 6175, 6179,
    6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243, 6247, 6251])).val
theorem tree361_def : tree361 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 6257, 6261, 6265, 6269, 6273, 6277, 6281, 6285, 6289, 6293, 6297, 6301, 6305, 6309, 6313, 6317, 6321, 6325, 6329,
    6333, 6337, 6341, 6345, 6349, 6353, 6357, 6361, 6365, 6369, 6373, 6377, 6381, 6385, 6389, 6393, 6397, 6401, 6405,
    6409, 6413, 6417, 6421, 6425, 6429, 6433, 6437, 6441, 6445, 6449, 6453, 6457, 6461, 6465, 6469, 6473, 6477]
  [2, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091, 6095, 6099, 6103,
    6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167, 6171, 6175, 6179,
    6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243, 6247, 6251]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal361 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 6257, 6261, 6265, 6269, 6273, 6277, 6281, 6285, 6289, 6293, 6297, 6301, 6305, 6309, 6313, 6317, 6321, 6325, 6329,
    6333, 6337, 6341, 6345, 6349, 6353, 6357, 6361, 6365, 6369, 6373, 6377, 6381, 6385, 6389, 6393, 6397, 6401, 6405,
    6409, 6413, 6417, 6421, 6425, 6429, 6433, 6437, 6441, 6445, 6449, 6453, 6457, 6461, 6465, 6469, 6473, 6477]
  [2, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091, 6095, 6099, 6103,
    6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167, 6171, 6175, 6179,
    6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243, 6247, 6251]
def live361 : Flapjack.NumSet := setValue1709
def coloured361 : Flapjack.NumSet := setValue1711
def result361 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1725, setValue1575)
def tree362 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree361 tree360)).val
theorem tree362_def : tree362 = (.seq tree361 tree360) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal362 : Flapjack.RegAlloc.ClashTree := .seq literal361 literal360
def live362 : Flapjack.NumSet := setValue1687
def coloured362 : Flapjack.NumSet := setValue1697
def result362 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1725, setValue1575)
def setValue1726 : Flapjack.NumSet := .bn setValue1 setValue1707
def tree363 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1726)).val
theorem tree363_def : tree363 = (.set setValue1726) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal363 : Flapjack.RegAlloc.ClashTree := .set setValue1726
def live363 : Flapjack.NumSet := setValue1725
def coloured363 : Flapjack.NumSet := setValue1575
def result363 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1726, setValue1580)
def tree364 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree363 tree362)).val
theorem tree364_def : tree364 = (.seq tree363 tree362) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal364 : Flapjack.RegAlloc.ClashTree := .seq literal363 literal362
def live364 : Flapjack.NumSet := setValue1687
def coloured364 : Flapjack.NumSet := setValue1697
def result364 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1726, setValue1580)
def tree365 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1708) tree359 tree364)).val
theorem tree365_def : tree365 = (.branch (some setValue1708) tree359 tree364) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal365 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1708) literal359 literal364
def live365 : Flapjack.NumSet := setValue1687
def coloured365 : Flapjack.NumSet := setValue1697
def result365 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1708, setValue1561)
def tree366 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree365 tree356)).val
theorem tree366_def : tree366 = (.seq tree365 tree356) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal366 : Flapjack.RegAlloc.ClashTree := .seq literal365 literal356
def live366 : Flapjack.NumSet := setValue0
def coloured366 : Flapjack.NumSet := setValue0
def result366 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1708, setValue1561)
def setValue1727 : Flapjack.NumSet := .bn setValue556 setValue556
def setValue1728 : Flapjack.NumSet := .bn setValue1727 setValue557
def setValue1729 : Flapjack.NumSet := .bn setValue556 setValue398
def setValue1730 : Flapjack.NumSet := .bn setValue1729 setValue1729
def setValue1731 : Flapjack.NumSet := .bn setValue1728 setValue1730
def setValue1732 : Flapjack.NumSet := .bn setValue557 setValue1729
def setValue1733 : Flapjack.NumSet := .bn setValue1730 setValue1732
def setValue1734 : Flapjack.NumSet := .bn setValue1731 setValue1733
def setValue1735 : Flapjack.NumSet := .bn setValue1727 setValue1729
def setValue1736 : Flapjack.NumSet := .bn setValue1735 setValue1732
def setValue1737 : Flapjack.NumSet := .bn setValue1736 setValue1733
def setValue1738 : Flapjack.NumSet := .bn setValue1734 setValue1737
def setValue1739 : Flapjack.NumSet := .bn setValue1733 setValue1733
def setValue1740 : Flapjack.NumSet := .bn setValue1737 setValue1739
def setValue1741 : Flapjack.NumSet := .bn setValue1738 setValue1740
def setValue1742 : Flapjack.NumSet := .bn setValue1741 setValue0
def setValue1743 : Flapjack.NumSet := .bn setValue0 setValue1742
def setValue1744 : Flapjack.NumSet := .bn setValue37 setValue84
def setValue1745 : Flapjack.NumSet := .bs setValue101 () setValue16
def setValue1746 : Flapjack.NumSet := .bs setValue1744 () setValue1745
def setValue1747 : Flapjack.NumSet := .bn setValue161 setValue38
def setValue1748 : Flapjack.NumSet := .bs setValue161 () setValue16
def setValue1749 : Flapjack.NumSet := .bs setValue1747 () setValue1748
def setValue1750 : Flapjack.NumSet := .bs setValue1746 () setValue1749
def setValue1751 : Flapjack.NumSet := .bn setValue1750 setValue1695
def setValue1752 : Flapjack.NumSet := .bs setValue1751 () setValue0
def tree367 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091,
    6095, 6099, 6103, 6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167,
    6171, 6175, 6179, 6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243,
    6247, 6251]
  [5881, 5937, 5821, 5793, 5785, 5849, 5749, 5753, 5757, 6001, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5997, 5789,
    5793, 5797, 5801, 5805, 5809, 5813, 5817, 5821, 5993, 5825, 5829, 5833, 5837, 5841, 5989, 5845, 5849, 5853, 5985,
    5857, 5861, 5865, 5869, 5873, 5877, 5881, 5885, 5889, 5981, 5893, 5897, 5901, 5905, 5909, 5913, 5917, 5921, 5925,
    5929, 5933, 5937, 5941, 5945])).val
theorem tree367_def : tree367 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091,
    6095, 6099, 6103, 6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167,
    6171, 6175, 6179, 6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243,
    6247, 6251]
  [5881, 5937, 5821, 5793, 5785, 5849, 5749, 5753, 5757, 6001, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5997, 5789,
    5793, 5797, 5801, 5805, 5809, 5813, 5817, 5821, 5993, 5825, 5829, 5833, 5837, 5841, 5989, 5845, 5849, 5853, 5985,
    5857, 5861, 5865, 5869, 5873, 5877, 5881, 5885, 5889, 5981, 5893, 5897, 5901, 5905, 5909, 5913, 5917, 5921, 5925,
    5929, 5933, 5937, 5941, 5945]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal367 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 6031, 6035, 6039, 6043, 6047, 6051, 6055, 6059, 6063, 6067, 6071, 6075, 6079, 6083, 6087, 6091,
    6095, 6099, 6103, 6107, 6111, 6115, 6119, 6123, 6127, 6131, 6135, 6139, 6143, 6147, 6151, 6155, 6159, 6163, 6167,
    6171, 6175, 6179, 6183, 6187, 6191, 6195, 6199, 6203, 6207, 6211, 6215, 6219, 6223, 6227, 6231, 6235, 6239, 6243,
    6247, 6251]
  [5881, 5937, 5821, 5793, 5785, 5849, 5749, 5753, 5757, 6001, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5997, 5789,
    5793, 5797, 5801, 5805, 5809, 5813, 5817, 5821, 5993, 5825, 5829, 5833, 5837, 5841, 5989, 5845, 5849, 5853, 5985,
    5857, 5861, 5865, 5869, 5873, 5877, 5881, 5885, 5889, 5981, 5893, 5897, 5901, 5905, 5909, 5913, 5917, 5921, 5925,
    5929, 5933, 5937, 5941, 5945]
def live367 : Flapjack.NumSet := setValue1708
def coloured367 : Flapjack.NumSet := setValue1561
def result367 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1743, setValue1752)
def tree368 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree367 tree366)).val
theorem tree368_def : tree368 = (.seq tree367 tree366) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal368 : Flapjack.RegAlloc.ClashTree := .seq literal367 literal366
def live368 : Flapjack.NumSet := setValue0
def coloured368 : Flapjack.NumSet := setValue0
def result368 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1743, setValue1752)
def tree369 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree369_def : tree369 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal369 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live369 : Flapjack.NumSet := setValue1743
def coloured369 : Flapjack.NumSet := setValue1752
def result369 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1743, setValue1752)
def tree370 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree369 tree368)).val
theorem tree370_def : tree370 = (.seq tree369 tree368) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal370 : Flapjack.RegAlloc.ClashTree := .seq literal369 literal368
def live370 : Flapjack.NumSet := setValue0
def coloured370 : Flapjack.NumSet := setValue0
def result370 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1743, setValue1752)
def setValue1753 : Flapjack.NumSet := .bn setValue685 setValue556
def setValue1754 : Flapjack.NumSet := .bn setValue686 setValue1753
def setValue1755 : Flapjack.NumSet := .bn setValue1753 setValue626
def setValue1756 : Flapjack.NumSet := .bn setValue1754 setValue1755
def setValue1757 : Flapjack.NumSet := .bn setValue1753 setValue1753
def setValue1758 : Flapjack.NumSet := .bn setValue1757 setValue1755
def setValue1759 : Flapjack.NumSet := .bn setValue1756 setValue1758
def setValue1760 : Flapjack.NumSet := .bn setValue1755 setValue1755
def setValue1761 : Flapjack.NumSet := .bn setValue1756 setValue1760
def setValue1762 : Flapjack.NumSet := .bn setValue1759 setValue1761
def setValue1763 : Flapjack.NumSet := .bn setValue1758 setValue1760
def setValue1764 : Flapjack.NumSet := .bn setValue1761 setValue1763
def setValue1765 : Flapjack.NumSet := .bn setValue1762 setValue1764
def setValue1766 : Flapjack.NumSet := .bn setValue0 setValue1765
def setValue1767 : Flapjack.NumSet := .bn setValue395 setValue1766
def setValue1768 : Flapjack.NumSet := .bn setValue37 setValue161
def setValue1769 : Flapjack.NumSet := .bn setValue311 setValue38
def setValue1770 : Flapjack.NumSet := .bn setValue1768 setValue1769
def setValue1771 : Flapjack.NumSet := .bs setValue1747 () setValue1747
def setValue1772 : Flapjack.NumSet := .bs setValue1770 () setValue1771
def setValue1773 : Flapjack.NumSet := .bn setValue249 setValue84
def setValue1774 : Flapjack.NumSet := .bs setValue1773 () setValue1554
def setValue1775 : Flapjack.NumSet := .bs setValue1558 () setValue1774
def setValue1776 : Flapjack.NumSet := .bs setValue1772 () setValue1775
def setValue1777 : Flapjack.NumSet := .bn setValue1776 setValue0
def tree371 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [6001, 5997, 5993, 5989, 5985, 5981, 5749, 5753, 5757, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5789, 5793, 5797,
    5801, 5805, 5809, 5813, 5817, 5821, 5825, 5829, 5833, 5837, 5841, 5845, 5849, 5853, 5857, 5861, 5865, 5869, 5873,
    5877, 5881, 5885, 5889, 5893, 5897, 5901, 5905, 5909, 5913, 5917, 5921, 5925, 5929, 5933, 5937, 5941, 5945]
  [8, 4, 10, 6, 2, 12, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591, 5595, 5599, 5603, 5607,
    5611, 5615, 5619, 5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667, 5671, 5675, 5679, 5683,
    5687, 5691, 5695, 5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743])).val
theorem tree371_def : tree371 = (Flapjack.RegAlloc.ClashTree.delta
  [6001, 5997, 5993, 5989, 5985, 5981, 5749, 5753, 5757, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5789, 5793, 5797,
    5801, 5805, 5809, 5813, 5817, 5821, 5825, 5829, 5833, 5837, 5841, 5845, 5849, 5853, 5857, 5861, 5865, 5869, 5873,
    5877, 5881, 5885, 5889, 5893, 5897, 5901, 5905, 5909, 5913, 5917, 5921, 5925, 5929, 5933, 5937, 5941, 5945]
  [8, 4, 10, 6, 2, 12, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591, 5595, 5599, 5603, 5607,
    5611, 5615, 5619, 5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667, 5671, 5675, 5679, 5683,
    5687, 5691, 5695, 5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal371 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [6001, 5997, 5993, 5989, 5985, 5981, 5749, 5753, 5757, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5789, 5793, 5797,
    5801, 5805, 5809, 5813, 5817, 5821, 5825, 5829, 5833, 5837, 5841, 5845, 5849, 5853, 5857, 5861, 5865, 5869, 5873,
    5877, 5881, 5885, 5889, 5893, 5897, 5901, 5905, 5909, 5913, 5917, 5921, 5925, 5929, 5933, 5937, 5941, 5945]
  [8, 4, 10, 6, 2, 12, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591, 5595, 5599, 5603, 5607,
    5611, 5615, 5619, 5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667, 5671, 5675, 5679, 5683,
    5687, 5691, 5695, 5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743]
def live371 : Flapjack.NumSet := setValue1743
def coloured371 : Flapjack.NumSet := setValue1752
def result371 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1767, setValue1777)
def tree372 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1767)).val
theorem tree372_def : tree372 = (.set setValue1767) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal372 : Flapjack.RegAlloc.ClashTree := .set setValue1767
def live372 : Flapjack.NumSet := setValue1767
def coloured372 : Flapjack.NumSet := setValue1777
def result372 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1767, setValue1777)
def tree373 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree372 tree371)).val
theorem tree373_def : tree373 = (.seq tree372 tree371) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal373 : Flapjack.RegAlloc.ClashTree := .seq literal372 literal371
def live373 : Flapjack.NumSet := setValue1743
def coloured373 : Flapjack.NumSet := setValue1752
def result373 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1767, setValue1777)
def setValue1778 : Flapjack.NumSet := .bn setValue1 setValue1742
def setValue1779 : Flapjack.NumSet := .bs setValue1750 () setValue1695
def setValue1780 : Flapjack.NumSet := .bs setValue1779 () setValue0
def tree374 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree374_def : tree374 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal374 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live374 : Flapjack.NumSet := setValue1743
def coloured374 : Flapjack.NumSet := setValue1752
def result374 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1778, setValue1780)
def setValue1781 : Flapjack.NumSet := .bn setValue494 setValue497
def setValue1782 : Flapjack.NumSet := .bn setValue495 setValue1781
def setValue1783 : Flapjack.NumSet := .bn setValue1782 setValue1765
def setValue1784 : Flapjack.NumSet := .bn setValue1 setValue1783
def setValue1785 : Flapjack.NumSet := .bs setValue1693 () setValue1554
def setValue1786 : Flapjack.NumSet := .bs setValue1558 () setValue1785
def setValue1787 : Flapjack.NumSet := .bs setValue1772 () setValue1786
def setValue1788 : Flapjack.NumSet := .bn setValue1787 setValue0
def tree375 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 5749, 5753, 5757, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5789, 5793, 5797, 5801, 5805, 5809, 5813, 5817, 5821,
    5825, 5829, 5833, 5837, 5841, 5845, 5849, 5853, 5857, 5861, 5865, 5869, 5873, 5877, 5881, 5885, 5889, 5893, 5897,
    5901, 5905, 5909, 5913, 5917, 5921, 5925, 5929, 5933, 5937, 5941, 5945]
  [2, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591, 5595, 5599, 5603, 5607, 5611, 5615, 5619,
    5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667, 5671, 5675, 5679, 5683, 5687, 5691, 5695,
    5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743])).val
theorem tree375_def : tree375 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 5749, 5753, 5757, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5789, 5793, 5797, 5801, 5805, 5809, 5813, 5817, 5821,
    5825, 5829, 5833, 5837, 5841, 5845, 5849, 5853, 5857, 5861, 5865, 5869, 5873, 5877, 5881, 5885, 5889, 5893, 5897,
    5901, 5905, 5909, 5913, 5917, 5921, 5925, 5929, 5933, 5937, 5941, 5945]
  [2, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591, 5595, 5599, 5603, 5607, 5611, 5615, 5619,
    5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667, 5671, 5675, 5679, 5683, 5687, 5691, 5695,
    5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal375 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 5749, 5753, 5757, 5761, 5765, 5769, 5773, 5777, 5781, 5785, 5789, 5793, 5797, 5801, 5805, 5809, 5813, 5817, 5821,
    5825, 5829, 5833, 5837, 5841, 5845, 5849, 5853, 5857, 5861, 5865, 5869, 5873, 5877, 5881, 5885, 5889, 5893, 5897,
    5901, 5905, 5909, 5913, 5917, 5921, 5925, 5929, 5933, 5937, 5941, 5945]
  [2, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591, 5595, 5599, 5603, 5607, 5611, 5615, 5619,
    5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667, 5671, 5675, 5679, 5683, 5687, 5691, 5695,
    5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743]
def live375 : Flapjack.NumSet := setValue1778
def coloured375 : Flapjack.NumSet := setValue1780
def result375 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1784, setValue1788)
def tree376 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree375 tree374)).val
theorem tree376_def : tree376 = (.seq tree375 tree374) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal376 : Flapjack.RegAlloc.ClashTree := .seq literal375 literal374
def live376 : Flapjack.NumSet := setValue1743
def coloured376 : Flapjack.NumSet := setValue1752
def result376 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1784, setValue1788)
def setValue1789 : Flapjack.NumSet := .bn setValue1 setValue1766
def setValue1790 : Flapjack.NumSet := .bn setValue1747 setValue1747
def setValue1791 : Flapjack.NumSet := .bn setValue1770 setValue1790
def setValue1792 : Flapjack.NumSet := .bn setValue1773 setValue1554
def setValue1793 : Flapjack.NumSet := .bn setValue1555 setValue1792
def setValue1794 : Flapjack.NumSet := .bs setValue1791 () setValue1793
def setValue1795 : Flapjack.NumSet := .bn setValue1794 setValue0
def tree377 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1789)).val
theorem tree377_def : tree377 = (.set setValue1789) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal377 : Flapjack.RegAlloc.ClashTree := .set setValue1789
def live377 : Flapjack.NumSet := setValue1784
def coloured377 : Flapjack.NumSet := setValue1788
def result377 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1789, setValue1795)
def tree378 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree377 tree376)).val
theorem tree378_def : tree378 = (.seq tree377 tree376) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal378 : Flapjack.RegAlloc.ClashTree := .seq literal377 literal376
def live378 : Flapjack.NumSet := setValue1743
def coloured378 : Flapjack.NumSet := setValue1752
def result378 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1789, setValue1795)
def setValue1796 : Flapjack.NumSet := .bn setValue440 setValue1766
def setValue1797 : Flapjack.NumSet := .bs setValue311 () setValue38
def setValue1798 : Flapjack.NumSet := .bs setValue1768 () setValue1797
def setValue1799 : Flapjack.NumSet := .bs setValue161 () setValue38
def setValue1800 : Flapjack.NumSet := .bs setValue1747 () setValue1799
def setValue1801 : Flapjack.NumSet := .bs setValue1798 () setValue1800
def setValue1802 : Flapjack.NumSet := .bs setValue1693 () setValue1582
def setValue1803 : Flapjack.NumSet := .bs setValue1583 () setValue1802
def setValue1804 : Flapjack.NumSet := .bs setValue1801 () setValue1803
def setValue1805 : Flapjack.NumSet := .bn setValue1804 setValue0
def tree379 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1796) tree373 tree378)).val
theorem tree379_def : tree379 = (.branch (some setValue1796) tree373 tree378) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal379 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1796) literal373 literal378
def live379 : Flapjack.NumSet := setValue1743
def coloured379 : Flapjack.NumSet := setValue1752
def result379 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1796, setValue1805)
def tree380 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree379 tree370)).val
theorem tree380_def : tree380 = (.seq tree379 tree370) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal380 : Flapjack.RegAlloc.ClashTree := .seq literal379 literal370
def live380 : Flapjack.NumSet := setValue0
def coloured380 : Flapjack.NumSet := setValue0
def result380 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1796, setValue1805)
def setValue1806 : Flapjack.NumSet := .bn setValue840 setValue685
def setValue1807 : Flapjack.NumSet := .bn setValue843 setValue1806
def setValue1808 : Flapjack.NumSet := .bn setValue1806 setValue1806
def setValue1809 : Flapjack.NumSet := .bn setValue1807 setValue1808
def setValue1810 : Flapjack.NumSet := .bn setValue843 setValue758
def setValue1811 : Flapjack.NumSet := .bn setValue1807 setValue1810
def setValue1812 : Flapjack.NumSet := .bn setValue1809 setValue1811
def setValue1813 : Flapjack.NumSet := .bn setValue1808 setValue1807
def setValue1814 : Flapjack.NumSet := .bn setValue1808 setValue1810
def setValue1815 : Flapjack.NumSet := .bn setValue1813 setValue1814
def setValue1816 : Flapjack.NumSet := .bn setValue1812 setValue1815
def setValue1817 : Flapjack.NumSet := .bn setValue1807 setValue1807
def setValue1818 : Flapjack.NumSet := .bn setValue1817 setValue1814
def setValue1819 : Flapjack.NumSet := .bn setValue1818 setValue1815
def setValue1820 : Flapjack.NumSet := .bn setValue1816 setValue1819
def setValue1821 : Flapjack.NumSet := .bn setValue1820 setValue0
def setValue1822 : Flapjack.NumSet := .bn setValue0 setValue1821
def setValue1823 : Flapjack.NumSet := .bs setValue15 () setValue38
def setValue1824 : Flapjack.NumSet := .bs setValue1238 () setValue1823
def setValue1825 : Flapjack.NumSet := .bn setValue430 setValue15
def setValue1826 : Flapjack.NumSet := .bs setValue1825 () setValue1797
def setValue1827 : Flapjack.NumSet := .bs setValue1824 () setValue1826
def setValue1828 : Flapjack.NumSet := .bn setValue37 setValue430
def setValue1829 : Flapjack.NumSet := .bs setValue1828 () setValue1582
def setValue1830 : Flapjack.NumSet := .bs setValue411 () setValue411
def setValue1831 : Flapjack.NumSet := .bs setValue1615 () setValue1830
def setValue1832 : Flapjack.NumSet := .bs setValue1829 () setValue1831
def setValue1833 : Flapjack.NumSet := .bn setValue1827 setValue1832
def setValue1834 : Flapjack.NumSet := .bs setValue1833 () setValue0
def tree381 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591,
    5595, 5599, 5603, 5607, 5611, 5615, 5619, 5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667,
    5671, 5675, 5679, 5683, 5687, 5691, 5695, 5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743]
  [5477, 5493, 5489, 5481, 5469, 5473, 5269, 5337, 5397, 5425, 5393, 5421, 5265, 5269, 5273, 5277, 5493, 5281, 5285,
    5289, 5293, 5297, 5301, 5305, 5309, 5313, 5489, 5317, 5321, 5325, 5329, 5333, 5337, 5341, 5345, 5349, 5353, 5357,
    5361, 5365, 5369, 5373, 5377, 5381, 5481, 5385, 5389, 5393, 5397, 5401, 5405, 5409, 5413, 5477, 5417, 5421, 5473,
    5425, 5429, 5433, 5469, 5437])).val
theorem tree381_def : tree381 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591,
    5595, 5599, 5603, 5607, 5611, 5615, 5619, 5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667,
    5671, 5675, 5679, 5683, 5687, 5691, 5695, 5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743]
  [5477, 5493, 5489, 5481, 5469, 5473, 5269, 5337, 5397, 5425, 5393, 5421, 5265, 5269, 5273, 5277, 5493, 5281, 5285,
    5289, 5293, 5297, 5301, 5305, 5309, 5313, 5489, 5317, 5321, 5325, 5329, 5333, 5337, 5341, 5345, 5349, 5353, 5357,
    5361, 5365, 5369, 5373, 5377, 5381, 5481, 5385, 5389, 5393, 5397, 5401, 5405, 5409, 5413, 5477, 5417, 5421, 5473,
    5425, 5429, 5433, 5469, 5437]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal381 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 5547, 5551, 5555, 5559, 5563, 5567, 5571, 5575, 5579, 5583, 5587, 5591,
    5595, 5599, 5603, 5607, 5611, 5615, 5619, 5623, 5627, 5631, 5635, 5639, 5643, 5647, 5651, 5655, 5659, 5663, 5667,
    5671, 5675, 5679, 5683, 5687, 5691, 5695, 5699, 5703, 5707, 5711, 5715, 5719, 5723, 5727, 5731, 5735, 5739, 5743]
  [5477, 5493, 5489, 5481, 5469, 5473, 5269, 5337, 5397, 5425, 5393, 5421, 5265, 5269, 5273, 5277, 5493, 5281, 5285,
    5289, 5293, 5297, 5301, 5305, 5309, 5313, 5489, 5317, 5321, 5325, 5329, 5333, 5337, 5341, 5345, 5349, 5353, 5357,
    5361, 5365, 5369, 5373, 5377, 5381, 5481, 5385, 5389, 5393, 5397, 5401, 5405, 5409, 5413, 5477, 5417, 5421, 5473,
    5425, 5429, 5433, 5469, 5437]
def live381 : Flapjack.NumSet := setValue1796
def coloured381 : Flapjack.NumSet := setValue1805
def result381 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1822, setValue1834)
def tree382 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree381 tree380)).val
theorem tree382_def : tree382 = (.seq tree381 tree380) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal382 : Flapjack.RegAlloc.ClashTree := .seq literal381 literal380
def live382 : Flapjack.NumSet := setValue0
def coloured382 : Flapjack.NumSet := setValue0
def result382 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1822, setValue1834)
def tree383 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree383_def : tree383 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal383 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live383 : Flapjack.NumSet := setValue1822
def coloured383 : Flapjack.NumSet := setValue1834
def result383 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1822, setValue1834)
def tree384 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree383 tree382)).val
theorem tree384_def : tree384 = (.seq tree383 tree382) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal384 : Flapjack.RegAlloc.ClashTree := .seq literal383 literal382
def live384 : Flapjack.NumSet := setValue0
def coloured384 : Flapjack.NumSet := setValue0
def result384 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1822, setValue1834)
def setValue1835 : Flapjack.NumSet := .bn setValue1009 setValue840
def setValue1836 : Flapjack.NumSet := .bn setValue1835 setValue841
def setValue1837 : Flapjack.NumSet := .bn setValue841 setValue841
def setValue1838 : Flapjack.NumSet := .bn setValue1836 setValue1837
def setValue1839 : Flapjack.NumSet := .bn setValue841 setValue852
def setValue1840 : Flapjack.NumSet := .bn setValue1836 setValue1839
def setValue1841 : Flapjack.NumSet := .bn setValue1838 setValue1840
def setValue1842 : Flapjack.NumSet := .bn setValue1841 setValue1841
def setValue1843 : Flapjack.NumSet := .bn setValue1842 setValue1842
def setValue1844 : Flapjack.NumSet := .bn setValue0 setValue1843
def setValue1845 : Flapjack.NumSet := .bn setValue395 setValue1844
def setValue1846 : Flapjack.NumSet := .bn setValue1238 setValue1744
def setValue1847 : Flapjack.NumSet := .bs setValue162 () setValue1320
def setValue1848 : Flapjack.NumSet := .bs setValue1846 () setValue1847
def setValue1849 : Flapjack.NumSet := .bs setValue1768 () setValue1554
def setValue1850 : Flapjack.NumSet := .bs setValue1744 () setValue1239
def setValue1851 : Flapjack.NumSet := .bs setValue1849 () setValue1850
def setValue1852 : Flapjack.NumSet := .bs setValue1848 () setValue1851
def setValue1853 : Flapjack.NumSet := .bn setValue1852 setValue0
def tree385 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [5493, 5489, 5481, 5477, 5473, 5469, 5265, 5269, 5273, 5277, 5281, 5285, 5289, 5293, 5297, 5301, 5305, 5309, 5313,
    5317, 5321, 5325, 5329, 5333, 5337, 5341, 5345, 5349, 5353, 5357, 5361, 5365, 5369, 5373, 5377, 5381, 5385, 5389,
    5393, 5397, 5401, 5405, 5409, 5413, 5417, 5421, 5425, 5429, 5433, 5437]
  [4, 6, 8, 2, 12, 10, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147,
    5151, 5155, 5159, 5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223,
    5227, 5231, 5235, 5239, 5243, 5247, 5251, 5255, 5259])).val
theorem tree385_def : tree385 = (Flapjack.RegAlloc.ClashTree.delta
  [5493, 5489, 5481, 5477, 5473, 5469, 5265, 5269, 5273, 5277, 5281, 5285, 5289, 5293, 5297, 5301, 5305, 5309, 5313,
    5317, 5321, 5325, 5329, 5333, 5337, 5341, 5345, 5349, 5353, 5357, 5361, 5365, 5369, 5373, 5377, 5381, 5385, 5389,
    5393, 5397, 5401, 5405, 5409, 5413, 5417, 5421, 5425, 5429, 5433, 5437]
  [4, 6, 8, 2, 12, 10, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147,
    5151, 5155, 5159, 5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223,
    5227, 5231, 5235, 5239, 5243, 5247, 5251, 5255, 5259]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal385 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [5493, 5489, 5481, 5477, 5473, 5469, 5265, 5269, 5273, 5277, 5281, 5285, 5289, 5293, 5297, 5301, 5305, 5309, 5313,
    5317, 5321, 5325, 5329, 5333, 5337, 5341, 5345, 5349, 5353, 5357, 5361, 5365, 5369, 5373, 5377, 5381, 5385, 5389,
    5393, 5397, 5401, 5405, 5409, 5413, 5417, 5421, 5425, 5429, 5433, 5437]
  [4, 6, 8, 2, 12, 10, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147,
    5151, 5155, 5159, 5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223,
    5227, 5231, 5235, 5239, 5243, 5247, 5251, 5255, 5259]
def live385 : Flapjack.NumSet := setValue1822
def coloured385 : Flapjack.NumSet := setValue1834
def result385 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1845, setValue1853)
def tree386 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1845)).val
theorem tree386_def : tree386 = (.set setValue1845) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal386 : Flapjack.RegAlloc.ClashTree := .set setValue1845
def live386 : Flapjack.NumSet := setValue1845
def coloured386 : Flapjack.NumSet := setValue1853
def result386 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1845, setValue1853)
def tree387 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree386 tree385)).val
theorem tree387_def : tree387 = (.seq tree386 tree385) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal387 : Flapjack.RegAlloc.ClashTree := .seq literal386 literal385
def live387 : Flapjack.NumSet := setValue1822
def coloured387 : Flapjack.NumSet := setValue1834
def result387 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1845, setValue1853)
def setValue1854 : Flapjack.NumSet := .bn setValue1 setValue1821
def setValue1855 : Flapjack.NumSet := .bs setValue1827 () setValue1832
def setValue1856 : Flapjack.NumSet := .bs setValue1855 () setValue0
def tree388 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree388_def : tree388 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal388 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live388 : Flapjack.NumSet := setValue1822
def coloured388 : Flapjack.NumSet := setValue1834
def result388 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1854, setValue1856)
def setValue1857 : Flapjack.NumSet := .bn setValue762 setValue0
def setValue1858 : Flapjack.NumSet := .bn setValue810 setValue810
def setValue1859 : Flapjack.NumSet := .bn setValue1857 setValue1858
def setValue1860 : Flapjack.NumSet := .bn setValue0 setValue810
def setValue1861 : Flapjack.NumSet := .bn setValue1860 setValue1858
def setValue1862 : Flapjack.NumSet := .bn setValue1859 setValue1861
def setValue1863 : Flapjack.NumSet := .bn setValue1862 setValue1843
def setValue1864 : Flapjack.NumSet := .bn setValue1 setValue1863
def setValue1865 : Flapjack.NumSet := .bs setValue1852 () setValue0
def tree389 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 5265, 5269, 5273, 5277, 5281, 5285, 5289, 5293, 5297, 5301, 5305, 5309, 5313, 5317, 5321, 5325, 5329, 5333, 5337,
    5341, 5345, 5349, 5353, 5357, 5361, 5365, 5369, 5373, 5377, 5381, 5385, 5389, 5393, 5397, 5401, 5405, 5409, 5413,
    5417, 5421, 5425, 5429, 5433, 5437]
  [2, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147, 5151, 5155, 5159,
    5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223, 5227, 5231, 5235,
    5239, 5243, 5247, 5251, 5255, 5259])).val
theorem tree389_def : tree389 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 5265, 5269, 5273, 5277, 5281, 5285, 5289, 5293, 5297, 5301, 5305, 5309, 5313, 5317, 5321, 5325, 5329, 5333, 5337,
    5341, 5345, 5349, 5353, 5357, 5361, 5365, 5369, 5373, 5377, 5381, 5385, 5389, 5393, 5397, 5401, 5405, 5409, 5413,
    5417, 5421, 5425, 5429, 5433, 5437]
  [2, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147, 5151, 5155, 5159,
    5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223, 5227, 5231, 5235,
    5239, 5243, 5247, 5251, 5255, 5259]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal389 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 5265, 5269, 5273, 5277, 5281, 5285, 5289, 5293, 5297, 5301, 5305, 5309, 5313, 5317, 5321, 5325, 5329, 5333, 5337,
    5341, 5345, 5349, 5353, 5357, 5361, 5365, 5369, 5373, 5377, 5381, 5385, 5389, 5393, 5397, 5401, 5405, 5409, 5413,
    5417, 5421, 5425, 5429, 5433, 5437]
  [2, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147, 5151, 5155, 5159,
    5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223, 5227, 5231, 5235,
    5239, 5243, 5247, 5251, 5255, 5259]
def live389 : Flapjack.NumSet := setValue1854
def coloured389 : Flapjack.NumSet := setValue1856
def result389 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1864, setValue1865)
def tree390 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree389 tree388)).val
theorem tree390_def : tree390 = (.seq tree389 tree388) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal390 : Flapjack.RegAlloc.ClashTree := .seq literal389 literal388
def live390 : Flapjack.NumSet := setValue1822
def coloured390 : Flapjack.NumSet := setValue1834
def result390 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1864, setValue1865)
def setValue1866 : Flapjack.NumSet := .bn setValue1 setValue1844
def setValue1867 : Flapjack.NumSet := .bn setValue162 setValue1320
def setValue1868 : Flapjack.NumSet := .bn setValue1846 setValue1867
def setValue1869 : Flapjack.NumSet := .bn setValue1768 setValue1554
def setValue1870 : Flapjack.NumSet := .bn setValue1744 setValue1239
def setValue1871 : Flapjack.NumSet := .bn setValue1869 setValue1870
def setValue1872 : Flapjack.NumSet := .bs setValue1868 () setValue1871
def setValue1873 : Flapjack.NumSet := .bn setValue1872 setValue0
def tree391 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1866)).val
theorem tree391_def : tree391 = (.set setValue1866) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal391 : Flapjack.RegAlloc.ClashTree := .set setValue1866
def live391 : Flapjack.NumSet := setValue1864
def coloured391 : Flapjack.NumSet := setValue1865
def result391 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1866, setValue1873)
def tree392 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree391 tree390)).val
theorem tree392_def : tree392 = (.seq tree391 tree390) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal392 : Flapjack.RegAlloc.ClashTree := .seq literal391 literal390
def live392 : Flapjack.NumSet := setValue1822
def coloured392 : Flapjack.NumSet := setValue1834
def result392 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1866, setValue1873)
def tree393 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1845) tree387 tree392)).val
theorem tree393_def : tree393 = (.branch (some setValue1845) tree387 tree392) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal393 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1845) literal387 literal392
def live393 : Flapjack.NumSet := setValue1822
def coloured393 : Flapjack.NumSet := setValue1834
def result393 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1845, setValue1853)
def tree394 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree393 tree384)).val
theorem tree394_def : tree394 = (.seq tree393 tree384) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal394 : Flapjack.RegAlloc.ClashTree := .seq literal393 literal384
def live394 : Flapjack.NumSet := setValue0
def coloured394 : Flapjack.NumSet := setValue0
def result394 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1845, setValue1853)
def setValue1874 : Flapjack.NumSet := .bn setValue30 setValue1009
def setValue1875 : Flapjack.NumSet := .bn setValue1874 setValue1027
def setValue1876 : Flapjack.NumSet := .bn setValue1875 setValue1080
def setValue1877 : Flapjack.NumSet := .bn setValue1009 setValue1009
def setValue1878 : Flapjack.NumSet := .bn setValue1027 setValue1877
def setValue1879 : Flapjack.NumSet := .bn setValue1875 setValue1878
def setValue1880 : Flapjack.NumSet := .bn setValue1876 setValue1879
def setValue1881 : Flapjack.NumSet := .bn setValue1080 setValue1878
def setValue1882 : Flapjack.NumSet := .bn setValue1879 setValue1881
def setValue1883 : Flapjack.NumSet := .bn setValue1880 setValue1882
def setValue1884 : Flapjack.NumSet := .bn setValue1879 setValue1879
def setValue1885 : Flapjack.NumSet := .bn setValue1027 setValue1010
def setValue1886 : Flapjack.NumSet := .bn setValue1080 setValue1885
def setValue1887 : Flapjack.NumSet := .bn setValue1879 setValue1886
def setValue1888 : Flapjack.NumSet := .bn setValue1884 setValue1887
def setValue1889 : Flapjack.NumSet := .bn setValue1883 setValue1888
def setValue1890 : Flapjack.NumSet := .bn setValue1889 setValue0
def setValue1891 : Flapjack.NumSet := .bn setValue0 setValue1890
def setValue1892 : Flapjack.NumSet := .bn setValue0 setValue84
def setValue1893 : Flapjack.NumSet := .bn setValue1037 setValue1892
def setValue1894 : Flapjack.NumSet := .bs setValue1825 () setValue1769
def setValue1895 : Flapjack.NumSet := .bs setValue1893 () setValue1894
def setValue1896 : Flapjack.NumSet := .bs setValue1828 () setValue1554
def setValue1897 : Flapjack.NumSet := .bs setValue1896 () setValue1850
def setValue1898 : Flapjack.NumSet := .bn setValue1895 setValue1897
def setValue1899 : Flapjack.NumSet := .bs setValue1898 () setValue0
def tree395 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147,
    5151, 5155, 5159, 5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223,
    5227, 5231, 5235, 5239, 5243, 5247, 5251, 5255, 5259]
  [5013, 4945, 4885, 4853, 4889, 4857, 5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969,
    4965, 4961, 4957, 4953, 4949, 4945, 4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893,
    4889, 4885, 4881, 4877, 4873, 4869, 4861, 4857, 4853, 4849, 4845, 4841])).val
theorem tree395_def : tree395 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147,
    5151, 5155, 5159, 5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223,
    5227, 5231, 5235, 5239, 5243, 5247, 5251, 5255, 5259]
  [5013, 4945, 4885, 4853, 4889, 4857, 5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969,
    4965, 4961, 4957, 4953, 4949, 4945, 4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893,
    4889, 4885, 4881, 4877, 4873, 4869, 4861, 4857, 4853, 4849, 4845, 4841]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal395 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 5087, 5091, 5095, 5099, 5103, 5107, 5111, 5115, 5119, 5123, 5127, 5131, 5135, 5139, 5143, 5147,
    5151, 5155, 5159, 5163, 5167, 5171, 5175, 5179, 5183, 5187, 5191, 5195, 5199, 5203, 5207, 5211, 5215, 5219, 5223,
    5227, 5231, 5235, 5239, 5243, 5247, 5251, 5255, 5259]
  [5013, 4945, 4885, 4853, 4889, 4857, 5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969,
    4965, 4961, 4957, 4953, 4949, 4945, 4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893,
    4889, 4885, 4881, 4877, 4873, 4869, 4861, 4857, 4853, 4849, 4845, 4841]
def live395 : Flapjack.NumSet := setValue1845
def coloured395 : Flapjack.NumSet := setValue1853
def result395 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1891, setValue1899)
def tree396 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree395 tree394)).val
theorem tree396_def : tree396 = (.seq tree395 tree394) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal396 : Flapjack.RegAlloc.ClashTree := .seq literal395 literal394
def live396 : Flapjack.NumSet := setValue0
def coloured396 : Flapjack.NumSet := setValue0
def result396 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1891, setValue1899)
def tree397 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree397_def : tree397 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal397 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live397 : Flapjack.NumSet := setValue1891
def coloured397 : Flapjack.NumSet := setValue1899
def result397 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1891, setValue1899)
def tree398 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree397 tree396)).val
theorem tree398_def : tree398 = (.seq tree397 tree396) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal398 : Flapjack.RegAlloc.ClashTree := .seq literal397 literal396
def live398 : Flapjack.NumSet := setValue0
def coloured398 : Flapjack.NumSet := setValue0
def result398 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1891, setValue1899)
def setValue1900 : Flapjack.NumSet := .bn setValue30 setValue30
def setValue1901 : Flapjack.NumSet := .bn setValue1900 setValue1900
def setValue1902 : Flapjack.NumSet := .bn setValue1202 setValue1901
def setValue1903 : Flapjack.NumSet := .bn setValue1902 setValue1209
def setValue1904 : Flapjack.NumSet := .bn setValue1201 setValue1900
def setValue1905 : Flapjack.NumSet := .bn setValue1900 setValue31
def setValue1906 : Flapjack.NumSet := .bn setValue1904 setValue1905
def setValue1907 : Flapjack.NumSet := .bn setValue1902 setValue1906
def setValue1908 : Flapjack.NumSet := .bn setValue1903 setValue1907
def setValue1909 : Flapjack.NumSet := .bn setValue1202 setValue1905
def setValue1910 : Flapjack.NumSet := .bn setValue1902 setValue1909
def setValue1911 : Flapjack.NumSet := .bn setValue1904 setValue1208
def setValue1912 : Flapjack.NumSet := .bn setValue1902 setValue1911
def setValue1913 : Flapjack.NumSet := .bn setValue1910 setValue1912
def setValue1914 : Flapjack.NumSet := .bn setValue1908 setValue1913
def setValue1915 : Flapjack.NumSet := .bn setValue1914 setValue0
def setValue1916 : Flapjack.NumSet := .bn setValue0 setValue1915
def tree399 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969, 4965, 4961, 4957, 4953, 4949, 4945,
    4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893, 4889, 4885, 4881, 4877, 4873, 4869,
    4861, 4857, 4853, 4849, 4845, 4841]
  [4625, 4829, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673, 4677, 4681, 4685, 4689, 4825,
    4693, 4697, 4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4821, 4817, 4745, 4749, 4753, 4757,
    4761, 4809, 4805, 4765, 4769, 4773])).val
theorem tree399_def : tree399 = (Flapjack.RegAlloc.ClashTree.delta
  [5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969, 4965, 4961, 4957, 4953, 4949, 4945,
    4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893, 4889, 4885, 4881, 4877, 4873, 4869,
    4861, 4857, 4853, 4849, 4845, 4841]
  [4625, 4829, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673, 4677, 4681, 4685, 4689, 4825,
    4693, 4697, 4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4821, 4817, 4745, 4749, 4753, 4757,
    4761, 4809, 4805, 4765, 4769, 4773]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal399 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969, 4965, 4961, 4957, 4953, 4949, 4945,
    4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893, 4889, 4885, 4881, 4877, 4873, 4869,
    4861, 4857, 4853, 4849, 4845, 4841]
  [4625, 4829, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673, 4677, 4681, 4685, 4689, 4825,
    4693, 4697, 4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4821, 4817, 4745, 4749, 4753, 4757,
    4761, 4809, 4805, 4765, 4769, 4773]
def live399 : Flapjack.NumSet := setValue1891
def coloured399 : Flapjack.NumSet := setValue1899
def result399 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1916, setValue1899)
def tree400 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree400_def : tree400 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal400 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live400 : Flapjack.NumSet := setValue1916
def coloured400 : Flapjack.NumSet := setValue1899
def result400 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1916, setValue1899)
def tree401 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree400 tree399)).val
theorem tree401_def : tree401 = (.seq tree400 tree399) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal401 : Flapjack.RegAlloc.ClashTree := .seq literal400 literal399
def live401 : Flapjack.NumSet := setValue1891
def coloured401 : Flapjack.NumSet := setValue1899
def result401 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1916, setValue1899)
def setValue1917 : Flapjack.NumSet := .bn setValue1224 setValue1224
def setValue1918 : Flapjack.NumSet := .bn setValue1917 setValue1225
def setValue1919 : Flapjack.NumSet := .bn setValue1225 setValue1225
def setValue1920 : Flapjack.NumSet := .bn setValue1918 setValue1919
def setValue1921 : Flapjack.NumSet := .bn setValue1224 setValue30
def setValue1922 : Flapjack.NumSet := .bn setValue1225 setValue1921
def setValue1923 : Flapjack.NumSet := .bn setValue1919 setValue1922
def setValue1924 : Flapjack.NumSet := .bn setValue1920 setValue1923
def setValue1925 : Flapjack.NumSet := .bn setValue1919 setValue1919
def setValue1926 : Flapjack.NumSet := .bn setValue1925 setValue1923
def setValue1927 : Flapjack.NumSet := .bn setValue1924 setValue1926
def setValue1928 : Flapjack.NumSet := .bn setValue1927 setValue1927
def setValue1929 : Flapjack.NumSet := .bn setValue0 setValue1928
def setValue1930 : Flapjack.NumSet := .bn setValue395 setValue1929
def setValue1931 : Flapjack.NumSet := .bs setValue1895 () setValue1897
def setValue1932 : Flapjack.NumSet := .bn setValue1931 setValue0
def tree402 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [4829, 4825, 4821, 4817, 4809, 4805, 4625, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673,
    4677, 4681, 4685, 4689, 4693, 4697, 4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4745, 4749,
    4753, 4757, 4761, 4765, 4769, 4773]
  [2, 4, 10, 6, 12, 8, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515, 4519, 4523, 4527, 4531,
    4535, 4539, 4543, 4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591, 4595, 4599, 4603, 4607,
    4611, 4615, 4619])).val
theorem tree402_def : tree402 = (Flapjack.RegAlloc.ClashTree.delta
  [4829, 4825, 4821, 4817, 4809, 4805, 4625, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673,
    4677, 4681, 4685, 4689, 4693, 4697, 4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4745, 4749,
    4753, 4757, 4761, 4765, 4769, 4773]
  [2, 4, 10, 6, 12, 8, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515, 4519, 4523, 4527, 4531,
    4535, 4539, 4543, 4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591, 4595, 4599, 4603, 4607,
    4611, 4615, 4619]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal402 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [4829, 4825, 4821, 4817, 4809, 4805, 4625, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673,
    4677, 4681, 4685, 4689, 4693, 4697, 4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4745, 4749,
    4753, 4757, 4761, 4765, 4769, 4773]
  [2, 4, 10, 6, 12, 8, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515, 4519, 4523, 4527, 4531,
    4535, 4539, 4543, 4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591, 4595, 4599, 4603, 4607,
    4611, 4615, 4619]
def live402 : Flapjack.NumSet := setValue1916
def coloured402 : Flapjack.NumSet := setValue1899
def result402 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1930, setValue1932)
def tree403 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1930)).val
theorem tree403_def : tree403 = (.set setValue1930) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal403 : Flapjack.RegAlloc.ClashTree := .set setValue1930
def live403 : Flapjack.NumSet := setValue1930
def coloured403 : Flapjack.NumSet := setValue1932
def result403 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1930, setValue1932)
def tree404 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree403 tree402)).val
theorem tree404_def : tree404 = (.seq tree403 tree402) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal404 : Flapjack.RegAlloc.ClashTree := .seq literal403 literal402
def live404 : Flapjack.NumSet := setValue1916
def coloured404 : Flapjack.NumSet := setValue1899
def result404 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1930, setValue1932)
def setValue1933 : Flapjack.NumSet := .bn setValue1 setValue1915
def setValue1934 : Flapjack.NumSet := .bs setValue1931 () setValue0
def tree405 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree405_def : tree405 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal405 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live405 : Flapjack.NumSet := setValue1916
def coloured405 : Flapjack.NumSet := setValue1899
def result405 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1933, setValue1934)
def setValue1935 : Flapjack.NumSet := .bn setValue0 setValue1076
def setValue1936 : Flapjack.NumSet := .bn setValue1935 setValue0
def setValue1937 : Flapjack.NumSet := .bn setValue1935 setValue1935
def setValue1938 : Flapjack.NumSet := .bn setValue1936 setValue1937
def setValue1939 : Flapjack.NumSet := .bn setValue1937 setValue1936
def setValue1940 : Flapjack.NumSet := .bn setValue1938 setValue1939
def setValue1941 : Flapjack.NumSet := .bn setValue1940 setValue1928
def setValue1942 : Flapjack.NumSet := .bn setValue1 setValue1941
def tree406 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4625, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673, 4677, 4681, 4685, 4689, 4693, 4697,
    4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4745, 4749, 4753, 4757, 4761, 4765, 4769, 4773]
  [2, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515, 4519, 4523, 4527, 4531, 4535, 4539, 4543,
    4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591, 4595, 4599, 4603, 4607, 4611, 4615, 4619])).val
theorem tree406_def : tree406 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4625, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673, 4677, 4681, 4685, 4689, 4693, 4697,
    4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4745, 4749, 4753, 4757, 4761, 4765, 4769, 4773]
  [2, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515, 4519, 4523, 4527, 4531, 4535, 4539, 4543,
    4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591, 4595, 4599, 4603, 4607, 4611, 4615, 4619]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal406 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4625, 4629, 4633, 4637, 4641, 4645, 4649, 4653, 4657, 4661, 4665, 4669, 4673, 4677, 4681, 4685, 4689, 4693, 4697,
    4701, 4705, 4709, 4713, 4717, 4721, 4725, 4729, 4733, 4737, 4741, 4745, 4749, 4753, 4757, 4761, 4765, 4769, 4773]
  [2, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515, 4519, 4523, 4527, 4531, 4535, 4539, 4543,
    4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591, 4595, 4599, 4603, 4607, 4611, 4615, 4619]
def live406 : Flapjack.NumSet := setValue1933
def coloured406 : Flapjack.NumSet := setValue1934
def result406 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1942, setValue1934)
def tree407 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree406 tree405)).val
theorem tree407_def : tree407 = (.seq tree406 tree405) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal407 : Flapjack.RegAlloc.ClashTree := .seq literal406 literal405
def live407 : Flapjack.NumSet := setValue1916
def coloured407 : Flapjack.NumSet := setValue1899
def result407 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1942, setValue1934)
def setValue1943 : Flapjack.NumSet := .bn setValue1 setValue1929
def setValue1944 : Flapjack.NumSet := .bn setValue1825 setValue1769
def setValue1945 : Flapjack.NumSet := .bn setValue1893 setValue1944
def setValue1946 : Flapjack.NumSet := .bn setValue1828 setValue1554
def setValue1947 : Flapjack.NumSet := .bn setValue1946 setValue1870
def setValue1948 : Flapjack.NumSet := .bs setValue1945 () setValue1947
def setValue1949 : Flapjack.NumSet := .bn setValue1948 setValue0
def tree408 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue1943)).val
theorem tree408_def : tree408 = (.set setValue1943) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal408 : Flapjack.RegAlloc.ClashTree := .set setValue1943
def live408 : Flapjack.NumSet := setValue1942
def coloured408 : Flapjack.NumSet := setValue1934
def result408 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1943, setValue1949)
def tree409 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree408 tree407)).val
theorem tree409_def : tree409 = (.seq tree408 tree407) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal409 : Flapjack.RegAlloc.ClashTree := .seq literal408 literal407
def live409 : Flapjack.NumSet := setValue1916
def coloured409 : Flapjack.NumSet := setValue1899
def result409 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1943, setValue1949)
def setValue1950 : Flapjack.NumSet := .bn setValue440 setValue1929
def setValue1951 : Flapjack.NumSet := .bs setValue0 () setValue84
def setValue1952 : Flapjack.NumSet := .bs setValue1037 () setValue1951
def setValue1953 : Flapjack.NumSet := .bs setValue1952 () setValue1826
def setValue1954 : Flapjack.NumSet := .bs setValue1615 () setValue1268
def setValue1955 : Flapjack.NumSet := .bs setValue1829 () setValue1954
def setValue1956 : Flapjack.NumSet := .bs setValue1953 () setValue1955
def setValue1957 : Flapjack.NumSet := .bn setValue1956 setValue0
def tree410 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue1950) tree404 tree409)).val
theorem tree410_def : tree410 = (.branch (some setValue1950) tree404 tree409) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal410 : Flapjack.RegAlloc.ClashTree := .branch (some setValue1950) literal404 literal409
def live410 : Flapjack.NumSet := setValue1916
def coloured410 : Flapjack.NumSet := setValue1899
def result410 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1950, setValue1957)
def tree411 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree410 tree401)).val
theorem tree411_def : tree411 = (.seq tree410 tree401) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal411 : Flapjack.RegAlloc.ClashTree := .seq literal410 literal401
def live411 : Flapjack.NumSet := setValue1891
def coloured411 : Flapjack.NumSet := setValue1899
def result411 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1950, setValue1957)
def setValue1958 : Flapjack.NumSet := .bn setValue1300 setValue1300
def setValue1959 : Flapjack.NumSet := .bn setValue1958 setValue1301
def setValue1960 : Flapjack.NumSet := .bn setValue1300 setValue1224
def setValue1961 : Flapjack.NumSet := .bn setValue1958 setValue1960
def setValue1962 : Flapjack.NumSet := .bn setValue1959 setValue1961
def setValue1963 : Flapjack.NumSet := .bn setValue1958 setValue0
def setValue1964 : Flapjack.NumSet := .bn setValue1963 setValue1369
def setValue1965 : Flapjack.NumSet := .bn setValue1962 setValue1964
def setValue1966 : Flapjack.NumSet := .bn setValue1959 setValue1369
def setValue1967 : Flapjack.NumSet := .bn setValue1301 setValue1960
def setValue1968 : Flapjack.NumSet := .bn setValue1959 setValue1967
def setValue1969 : Flapjack.NumSet := .bn setValue1966 setValue1968
def setValue1970 : Flapjack.NumSet := .bn setValue1965 setValue1969
def setValue1971 : Flapjack.NumSet := .bn setValue1366 setValue1967
def setValue1972 : Flapjack.NumSet := .bn setValue1968 setValue1971
def setValue1973 : Flapjack.NumSet := .bn setValue1967 setValue1967
def setValue1974 : Flapjack.NumSet := .bn setValue1971 setValue1973
def setValue1975 : Flapjack.NumSet := .bn setValue1972 setValue1974
def setValue1976 : Flapjack.NumSet := .bn setValue1970 setValue1975
def setValue1977 : Flapjack.NumSet := .bn setValue1976 setValue0
def setValue1978 : Flapjack.NumSet := .bn setValue0 setValue1977
def setValue1979 : Flapjack.NumSet := .bs setValue430 () setValue15
def setValue1980 : Flapjack.NumSet := .bn setValue1979 setValue1797
def setValue1981 : Flapjack.NumSet := .bn setValue1952 setValue1980
def setValue1982 : Flapjack.NumSet := .bn setValue1828 setValue1582
def setValue1983 : Flapjack.NumSet := .bn setValue1744 setValue1268
def setValue1984 : Flapjack.NumSet := .bn setValue1982 setValue1983
def setValue1985 : Flapjack.NumSet := .bn setValue1981 setValue1984
def setValue1986 : Flapjack.NumSet := .bn setValue1985 setValue0
def tree412 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515,
    4519, 4523, 4527, 4531, 4535, 4539, 4543, 4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591,
    4595, 4599, 4603, 4607, 4611, 4615, 4619]
  [4265, 4225, 4369, 4297, 4349, 4333, 4377, 4305, 4229, 4281, 4285, 4213, 4189, 4197, 4201, 4205, 4209, 4213, 4217,
    4221, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261, 4273, 4277, 4281, 4285, 4289, 4293, 4301, 4305, 4309,
    4313, 4317, 4321, 4325, 4341, 4345, 4353, 4357, 4361, 4377, 4381, 4385])).val
theorem tree412_def : tree412 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515,
    4519, 4523, 4527, 4531, 4535, 4539, 4543, 4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591,
    4595, 4599, 4603, 4607, 4611, 4615, 4619]
  [4265, 4225, 4369, 4297, 4349, 4333, 4377, 4305, 4229, 4281, 4285, 4213, 4189, 4197, 4201, 4205, 4209, 4213, 4217,
    4221, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261, 4273, 4277, 4281, 4285, 4289, 4293, 4301, 4305, 4309,
    4313, 4317, 4321, 4325, 4341, 4345, 4353, 4357, 4361, 4377, 4381, 4385]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal412 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 4471, 4475, 4479, 4483, 4487, 4491, 4495, 4499, 4503, 4507, 4511, 4515,
    4519, 4523, 4527, 4531, 4535, 4539, 4543, 4547, 4551, 4555, 4559, 4563, 4567, 4571, 4575, 4579, 4583, 4587, 4591,
    4595, 4599, 4603, 4607, 4611, 4615, 4619]
  [4265, 4225, 4369, 4297, 4349, 4333, 4377, 4305, 4229, 4281, 4285, 4213, 4189, 4197, 4201, 4205, 4209, 4213, 4217,
    4221, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261, 4273, 4277, 4281, 4285, 4289, 4293, 4301, 4305, 4309,
    4313, 4317, 4321, 4325, 4341, 4345, 4353, 4357, 4361, 4377, 4381, 4385]
def live412 : Flapjack.NumSet := setValue1950
def coloured412 : Flapjack.NumSet := setValue1957
def result412 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1978, setValue1986)
def tree413 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree412 tree411)).val
theorem tree413_def : tree413 = (.seq tree412 tree411) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal413 : Flapjack.RegAlloc.ClashTree := .seq literal412 literal411
def live413 : Flapjack.NumSet := setValue1891
def coloured413 : Flapjack.NumSet := setValue1899
def result413 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1978, setValue1986)
def tree414 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree414_def : tree414 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal414 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live414 : Flapjack.NumSet := setValue1978
def coloured414 : Flapjack.NumSet := setValue1986
def result414 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1978, setValue1986)
def tree415 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree414 tree413)).val
theorem tree415_def : tree415 = (.seq tree414 tree413) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal415 : Flapjack.RegAlloc.ClashTree := .seq literal414 literal413
def live415 : Flapjack.NumSet := setValue1891
def coloured415 : Flapjack.NumSet := setValue1899
def result415 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1978, setValue1986)
def setValue1987 : Flapjack.NumSet := .bn setValue1366 setValue1961
def setValue1988 : Flapjack.NumSet := .bn setValue1987 setValue1971
def setValue1989 : Flapjack.NumSet := .bn setValue1968 setValue1968
def setValue1990 : Flapjack.NumSet := .bn setValue1988 setValue1989
def setValue1991 : Flapjack.NumSet := .bn setValue0 setValue1960
def setValue1992 : Flapjack.NumSet := .bn setValue1963 setValue1991
def setValue1993 : Flapjack.NumSet := .bn setValue1968 setValue1992
def setValue1994 : Flapjack.NumSet := .bn setValue1961 setValue1302
def setValue1995 : Flapjack.NumSet := .bn setValue1966 setValue1994
def setValue1996 : Flapjack.NumSet := .bn setValue1993 setValue1995
def setValue1997 : Flapjack.NumSet := .bn setValue1990 setValue1996
def setValue1998 : Flapjack.NumSet := .bn setValue1997 setValue0
def setValue1999 : Flapjack.NumSet := .bn setValue0 setValue1998
def tree416 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969, 4965, 4961, 4957, 4953, 4949, 4945,
    4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893, 4889, 4885, 4881, 4877, 4873, 4869,
    4861, 4857, 4853, 4849, 4845, 4841]
  [4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261, 4269,
    4273, 4277, 4281, 4285, 4289, 4293, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4337, 4341, 4345, 4353, 4357,
    4361, 4365, 4373, 4377, 4381, 4385])).val
theorem tree416_def : tree416 = (Flapjack.RegAlloc.ClashTree.delta
  [5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969, 4965, 4961, 4957, 4953, 4949, 4945,
    4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893, 4889, 4885, 4881, 4877, 4873, 4869,
    4861, 4857, 4853, 4849, 4845, 4841]
  [4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261, 4269,
    4273, 4277, 4281, 4285, 4289, 4293, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4337, 4341, 4345, 4353, 4357,
    4361, 4365, 4373, 4377, 4381, 4385]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal416 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [5017, 5013, 5009, 5005, 5001, 4997, 4993, 4989, 4985, 4981, 4977, 4973, 4969, 4965, 4961, 4957, 4953, 4949, 4945,
    4941, 4937, 4933, 4929, 4925, 4921, 4917, 4913, 4909, 4905, 4901, 4897, 4893, 4889, 4885, 4881, 4877, 4873, 4869,
    4861, 4857, 4853, 4849, 4845, 4841]
  [4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261, 4269,
    4273, 4277, 4281, 4285, 4289, 4293, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4337, 4341, 4345, 4353, 4357,
    4361, 4365, 4373, 4377, 4381, 4385]
def live416 : Flapjack.NumSet := setValue1891
def coloured416 : Flapjack.NumSet := setValue1899
def result416 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1999, setValue1899)
def tree417 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree417_def : tree417 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal417 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live417 : Flapjack.NumSet := setValue1999
def coloured417 : Flapjack.NumSet := setValue1899
def result417 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1999, setValue1899)
def tree418 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree417 tree416)).val
theorem tree418_def : tree418 = (.seq tree417 tree416) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal418 : Flapjack.RegAlloc.ClashTree := .seq literal417 literal416
def live418 : Flapjack.NumSet := setValue1891
def coloured418 : Flapjack.NumSet := setValue1899
def result418 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue1999, setValue1899)
def setValue2000 : Flapjack.NumSet := .bn setValue1962 setValue1968
def setValue2001 : Flapjack.NumSet := .bn setValue2000 setValue1989
def setValue2002 : Flapjack.NumSet := .bn setValue1961 setValue1967
def setValue2003 : Flapjack.NumSet := .bn setValue1968 setValue2002
def setValue2004 : Flapjack.NumSet := .bn setValue1989 setValue2003
def setValue2005 : Flapjack.NumSet := .bn setValue2001 setValue2004
def setValue2006 : Flapjack.NumSet := .bn setValue2005 setValue0
def setValue2007 : Flapjack.NumSet := .bn setValue0 setValue2006
def setValue2008 : Flapjack.NumSet := .bs setValue1979 () setValue1797
def setValue2009 : Flapjack.NumSet := .bs setValue1952 () setValue2008
def setValue2010 : Flapjack.NumSet := .bs setValue1744 () setValue1268
def setValue2011 : Flapjack.NumSet := .bs setValue1829 () setValue2010
def setValue2012 : Flapjack.NumSet := .bn setValue2009 setValue2011
def setValue2013 : Flapjack.NumSet := .bs setValue2012 () setValue0
def tree419 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (none) tree415 tree418)).val
theorem tree419_def : tree419 = (.branch (none) tree415 tree418) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal419 : Flapjack.RegAlloc.ClashTree := .branch (none) literal415 literal418
def live419 : Flapjack.NumSet := setValue1891
def coloured419 : Flapjack.NumSet := setValue1899
def result419 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2007, setValue2013)
def setValue2014 : Flapjack.NumSet := .bn setValue2002 setValue1968
def setValue2015 : Flapjack.NumSet := .bn setValue2000 setValue2014
def setValue2016 : Flapjack.NumSet := .bn setValue2014 setValue2003
def setValue2017 : Flapjack.NumSet := .bn setValue2015 setValue2016
def setValue2018 : Flapjack.NumSet := .bn setValue2017 setValue0
def setValue2019 : Flapjack.NumSet := .bn setValue0 setValue2018
def setValue2020 : Flapjack.NumSet := .bs setValue2009 () setValue1955
def setValue2021 : Flapjack.NumSet := .bs setValue2020 () setValue0
def tree420 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [4405, 4409])).val
theorem tree420_def : tree420 = (Flapjack.RegAlloc.ClashTree.delta [] [4405, 4409]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal420 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [4405, 4409]
def live420 : Flapjack.NumSet := setValue2007
def coloured420 : Flapjack.NumSet := setValue2013
def result420 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2019, setValue2021)
def tree421 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree420 tree419)).val
theorem tree421_def : tree421 = (.seq tree420 tree419) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal421 : Flapjack.RegAlloc.ClashTree := .seq literal420 literal419
def live421 : Flapjack.NumSet := setValue1891
def coloured421 : Flapjack.NumSet := setValue1899
def result421 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2019, setValue2021)
def tree422 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree421 tree398)).val
theorem tree422_def : tree422 = (.seq tree421 tree398) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal422 : Flapjack.RegAlloc.ClashTree := .seq literal421 literal398
def live422 : Flapjack.NumSet := setValue0
def coloured422 : Flapjack.NumSet := setValue0
def result422 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2019, setValue2021)
def setValue2022 : Flapjack.NumSet := .bn setValue2015 setValue2004
def setValue2023 : Flapjack.NumSet := .bn setValue2022 setValue0
def setValue2024 : Flapjack.NumSet := .bn setValue0 setValue2023
def setValue2025 : Flapjack.NumSet := .bn setValue2009 setValue1955
def setValue2026 : Flapjack.NumSet := .bs setValue2025 () setValue0
def tree423 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4409] [])).val
theorem tree423_def : tree423 = (Flapjack.RegAlloc.ClashTree.delta [4409] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal423 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4409] []
def live423 : Flapjack.NumSet := setValue2019
def coloured423 : Flapjack.NumSet := setValue2021
def result423 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2024, setValue2026)
def tree424 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree423 tree422)).val
theorem tree424_def : tree424 = (.seq tree423 tree422) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal424 : Flapjack.RegAlloc.ClashTree := .seq literal423 literal422
def live424 : Flapjack.NumSet := setValue0
def coloured424 : Flapjack.NumSet := setValue0
def result424 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2024, setValue2026)
def setValue2027 : Flapjack.NumSet := .bn setValue2002 setValue2002
def setValue2028 : Flapjack.NumSet := .bn setValue1989 setValue2027
def setValue2029 : Flapjack.NumSet := .bn setValue2001 setValue2028
def setValue2030 : Flapjack.NumSet := .bn setValue2029 setValue0
def setValue2031 : Flapjack.NumSet := .bn setValue0 setValue2030
def tree425 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [4405] [4401])).val
theorem tree425_def : tree425 = (Flapjack.RegAlloc.ClashTree.delta [4405] [4401]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal425 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [4405] [4401]
def live425 : Flapjack.NumSet := setValue2024
def coloured425 : Flapjack.NumSet := setValue2026
def result425 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2031, setValue2026)
def tree426 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree425 tree424)).val
theorem tree426_def : tree426 = (.seq tree425 tree424) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal426 : Flapjack.RegAlloc.ClashTree := .seq literal425 literal424
def live426 : Flapjack.NumSet := setValue0
def coloured426 : Flapjack.NumSet := setValue0
def result426 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2031, setValue2026)
def tree427 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree427_def : tree427 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal427 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live427 : Flapjack.NumSet := setValue2031
def coloured427 : Flapjack.NumSet := setValue2026
def result427 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2031, setValue2026)
def tree428 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree427 tree426)).val
theorem tree428_def : tree428 = (.seq tree427 tree426) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal428 : Flapjack.RegAlloc.ClashTree := .seq literal427 literal426
def live428 : Flapjack.NumSet := setValue0
def coloured428 : Flapjack.NumSet := setValue0
def result428 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2031, setValue2026)
def setValue2032 : Flapjack.NumSet := .bn setValue1428 setValue1300
def setValue2033 : Flapjack.NumSet := .bn setValue1430 setValue2032
def setValue2034 : Flapjack.NumSet := .bn setValue2033 setValue2033
def setValue2035 : Flapjack.NumSet := .bn setValue2032 setValue1362
def setValue2036 : Flapjack.NumSet := .bn setValue2033 setValue2035
def setValue2037 : Flapjack.NumSet := .bn setValue2034 setValue2036
def setValue2038 : Flapjack.NumSet := .bn setValue2032 setValue2032
def setValue2039 : Flapjack.NumSet := .bn setValue2033 setValue2038
def setValue2040 : Flapjack.NumSet := .bn setValue2039 setValue2036
def setValue2041 : Flapjack.NumSet := .bn setValue2037 setValue2040
def setValue2042 : Flapjack.NumSet := .bn setValue2036 setValue2036
def setValue2043 : Flapjack.NumSet := .bn setValue2040 setValue2042
def setValue2044 : Flapjack.NumSet := .bn setValue2041 setValue2043
def setValue2045 : Flapjack.NumSet := .bn setValue0 setValue2044
def setValue2046 : Flapjack.NumSet := .bn setValue1 setValue2045
def setValue2047 : Flapjack.NumSet := .bn setValue1318 setValue1320
def setValue2048 : Flapjack.NumSet := .bn setValue161 setValue411
def setValue2049 : Flapjack.NumSet := .bn setValue2048 setValue1320
def setValue2050 : Flapjack.NumSet := .bn setValue2047 setValue2049
def setValue2051 : Flapjack.NumSet := .bn setValue1555 setValue1499
def setValue2052 : Flapjack.NumSet := .bs setValue2050 () setValue2051
def setValue2053 : Flapjack.NumSet := .bn setValue2052 setValue0
def tree429 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [4401, 4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4225, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257,
    4261, 4265, 4269, 4273, 4277, 4281, 4285, 4289, 4293, 4297, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4333,
    4337, 4341, 4345, 4349, 4353, 4357, 4361, 4365, 4369, 4373, 4377, 4381, 4385]
  [2, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047, 4051, 4055, 4059,
    4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135,
    4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183])).val
theorem tree429_def : tree429 = (Flapjack.RegAlloc.ClashTree.delta
  [4401, 4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4225, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257,
    4261, 4265, 4269, 4273, 4277, 4281, 4285, 4289, 4293, 4297, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4333,
    4337, 4341, 4345, 4349, 4353, 4357, 4361, 4365, 4369, 4373, 4377, 4381, 4385]
  [2, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047, 4051, 4055, 4059,
    4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135,
    4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal429 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [4401, 4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4225, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257,
    4261, 4265, 4269, 4273, 4277, 4281, 4285, 4289, 4293, 4297, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4333,
    4337, 4341, 4345, 4349, 4353, 4357, 4361, 4365, 4369, 4373, 4377, 4381, 4385]
  [2, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047, 4051, 4055, 4059,
    4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135,
    4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183]
def live429 : Flapjack.NumSet := setValue2031
def coloured429 : Flapjack.NumSet := setValue2026
def result429 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2046, setValue2053)
def tree430 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2046)).val
theorem tree430_def : tree430 = (.set setValue2046) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal430 : Flapjack.RegAlloc.ClashTree := .set setValue2046
def live430 : Flapjack.NumSet := setValue2046
def coloured430 : Flapjack.NumSet := setValue2053
def result430 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2046, setValue2053)
def tree431 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree430 tree429)).val
theorem tree431_def : tree431 = (.seq tree430 tree429) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal431 : Flapjack.RegAlloc.ClashTree := .seq literal430 literal429
def live431 : Flapjack.NumSet := setValue2031
def coloured431 : Flapjack.NumSet := setValue2026
def result431 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2046, setValue2053)
def setValue2054 : Flapjack.NumSet := .bn setValue1 setValue2030
def tree432 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree432_def : tree432 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal432 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live432 : Flapjack.NumSet := setValue2031
def coloured432 : Flapjack.NumSet := setValue2026
def result432 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2054, setValue2021)
def setValue2055 : Flapjack.NumSet := .bn setValue1303 setValue0
def setValue2056 : Flapjack.NumSet := .bn setValue2055 setValue0
def setValue2057 : Flapjack.NumSet := .bn setValue0 setValue2056
def setValue2058 : Flapjack.NumSet := .bn setValue0 setValue2057
def setValue2059 : Flapjack.NumSet := .bn setValue2058 setValue2044
def setValue2060 : Flapjack.NumSet := .bn setValue1 setValue2059
def setValue2061 : Flapjack.NumSet := .bn setValue1342 setValue1320
def setValue2062 : Flapjack.NumSet := .bn setValue1555 setValue2061
def setValue2063 : Flapjack.NumSet := .bs setValue2050 () setValue2062
def setValue2064 : Flapjack.NumSet := .bn setValue2063 setValue0
def tree433 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4225, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261,
    4265, 4269, 4273, 4277, 4281, 4285, 4289, 4293, 4297, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4333, 4337,
    4341, 4345, 4349, 4353, 4357, 4361, 4365, 4369, 4373, 4377, 4381, 4385]
  [2, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047, 4051, 4055, 4059,
    4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135,
    4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183])).val
theorem tree433_def : tree433 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4225, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261,
    4265, 4269, 4273, 4277, 4281, 4285, 4289, 4293, 4297, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4333, 4337,
    4341, 4345, 4349, 4353, 4357, 4361, 4365, 4369, 4373, 4377, 4381, 4385]
  [2, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047, 4051, 4055, 4059,
    4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135,
    4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal433 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4189, 4193, 4197, 4201, 4205, 4209, 4213, 4217, 4221, 4225, 4229, 4233, 4237, 4241, 4245, 4249, 4253, 4257, 4261,
    4265, 4269, 4273, 4277, 4281, 4285, 4289, 4293, 4297, 4301, 4305, 4309, 4313, 4317, 4321, 4325, 4329, 4333, 4337,
    4341, 4345, 4349, 4353, 4357, 4361, 4365, 4369, 4373, 4377, 4381, 4385]
  [2, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047, 4051, 4055, 4059,
    4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123, 4127, 4131, 4135,
    4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183]
def live433 : Flapjack.NumSet := setValue2054
def coloured433 : Flapjack.NumSet := setValue2021
def result433 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2060, setValue2064)
def tree434 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree433 tree432)).val
theorem tree434_def : tree434 = (.seq tree433 tree432) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal434 : Flapjack.RegAlloc.ClashTree := .seq literal433 literal432
def live434 : Flapjack.NumSet := setValue2031
def coloured434 : Flapjack.NumSet := setValue2026
def result434 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2060, setValue2064)
def tree435 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2046)).val
theorem tree435_def : tree435 = (.set setValue2046) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal435 : Flapjack.RegAlloc.ClashTree := .set setValue2046
def live435 : Flapjack.NumSet := setValue2060
def coloured435 : Flapjack.NumSet := setValue2064
def result435 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2046, setValue2053)
def tree436 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree435 tree434)).val
theorem tree436_def : tree436 = (.seq tree435 tree434) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal436 : Flapjack.RegAlloc.ClashTree := .seq literal435 literal434
def live436 : Flapjack.NumSet := setValue2031
def coloured436 : Flapjack.NumSet := setValue2026
def result436 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2046, setValue2053)
def setValue2065 : Flapjack.NumSet := .bn setValue395 setValue2045
def setValue2066 : Flapjack.NumSet := .bs setValue2048 () setValue1320
def setValue2067 : Flapjack.NumSet := .bs setValue2047 () setValue2066
def setValue2068 : Flapjack.NumSet := .bs setValue1558 () setValue1472
def setValue2069 : Flapjack.NumSet := .bs setValue2067 () setValue2068
def setValue2070 : Flapjack.NumSet := .bn setValue2069 setValue0
def tree437 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2065) tree431 tree436)).val
theorem tree437_def : tree437 = (.branch (some setValue2065) tree431 tree436) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal437 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2065) literal431 literal436
def live437 : Flapjack.NumSet := setValue2031
def coloured437 : Flapjack.NumSet := setValue2026
def result437 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2065, setValue2070)
def tree438 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree437 tree428)).val
theorem tree438_def : tree438 = (.seq tree437 tree428) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal438 : Flapjack.RegAlloc.ClashTree := .seq literal437 literal428
def live438 : Flapjack.NumSet := setValue0
def coloured438 : Flapjack.NumSet := setValue0
def result438 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2065, setValue2070)
def setValue2071 : Flapjack.NumSet := .bn setValue1510 setValue1428
def setValue2072 : Flapjack.NumSet := .bn setValue1512 setValue2071
def setValue2073 : Flapjack.NumSet := .bn setValue2071 setValue2071
def setValue2074 : Flapjack.NumSet := .bn setValue2072 setValue2073
def setValue2075 : Flapjack.NumSet := .bn setValue1512 setValue1429
def setValue2076 : Flapjack.NumSet := .bn setValue2073 setValue2075
def setValue2077 : Flapjack.NumSet := .bn setValue2074 setValue2076
def setValue2078 : Flapjack.NumSet := .bn setValue2073 setValue2072
def setValue2079 : Flapjack.NumSet := .bn setValue2072 setValue2075
def setValue2080 : Flapjack.NumSet := .bn setValue2078 setValue2079
def setValue2081 : Flapjack.NumSet := .bn setValue2077 setValue2080
def setValue2082 : Flapjack.NumSet := .bn setValue2072 setValue2072
def setValue2083 : Flapjack.NumSet := .bn setValue2082 setValue2076
def setValue2084 : Flapjack.NumSet := .bn setValue2078 setValue2076
def setValue2085 : Flapjack.NumSet := .bn setValue2083 setValue2084
def setValue2086 : Flapjack.NumSet := .bn setValue2081 setValue2085
def setValue2087 : Flapjack.NumSet := .bn setValue2086 setValue0
def setValue2088 : Flapjack.NumSet := .bn setValue0 setValue2087
def setValue2089 : Flapjack.NumSet := .bs setValue1037 () setValue1342
def setValue2090 : Flapjack.NumSet := .bs setValue1825 () setValue1688
def setValue2091 : Flapjack.NumSet := .bs setValue2089 () setValue2090
def setValue2092 : Flapjack.NumSet := .bn setValue311 setValue430
def setValue2093 : Flapjack.NumSet := .bs setValue2092 () setValue1691
def setValue2094 : Flapjack.NumSet := .bs setValue411 () setValue2
def setValue2095 : Flapjack.NumSet := .bs setValue1615 () setValue2094
def setValue2096 : Flapjack.NumSet := .bs setValue2093 () setValue2095
def setValue2097 : Flapjack.NumSet := .bn setValue2091 setValue2096
def setValue2098 : Flapjack.NumSet := .bs setValue2097 () setValue0
def tree439 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047,
    4051, 4055, 4059, 4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123,
    4127, 4131, 4135, 4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183]
  [3733, 3797, 3857, 3893, 3849, 3885, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3957, 3761, 3765, 3953, 3769,
    3773, 3777, 3781, 3785, 3949, 3789, 3793, 3797, 3801, 3805, 3809, 3813, 3945, 3817, 3821, 3825, 3829, 3833, 3837,
    3841, 3937, 3845, 3849, 3853, 3857, 3861, 3865, 3869, 3873, 3877, 3881, 3885, 3889, 3893, 3897, 3933, 3901])).val
theorem tree439_def : tree439 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047,
    4051, 4055, 4059, 4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123,
    4127, 4131, 4135, 4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183]
  [3733, 3797, 3857, 3893, 3849, 3885, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3957, 3761, 3765, 3953, 3769,
    3773, 3777, 3781, 3785, 3949, 3789, 3793, 3797, 3801, 3805, 3809, 3813, 3945, 3817, 3821, 3825, 3829, 3833, 3837,
    3841, 3937, 3845, 3849, 3853, 3857, 3861, 3865, 3869, 3873, 3877, 3881, 3885, 3889, 3893, 3897, 3933, 3901]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal439 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 3987, 3991, 3995, 3999, 4003, 4007, 4011, 4015, 4019, 4023, 4027, 4031, 4035, 4039, 4043, 4047,
    4051, 4055, 4059, 4063, 4067, 4071, 4075, 4079, 4083, 4087, 4091, 4095, 4099, 4103, 4107, 4111, 4115, 4119, 4123,
    4127, 4131, 4135, 4139, 4143, 4147, 4151, 4155, 4159, 4163, 4167, 4171, 4175, 4179, 4183]
  [3733, 3797, 3857, 3893, 3849, 3885, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3957, 3761, 3765, 3953, 3769,
    3773, 3777, 3781, 3785, 3949, 3789, 3793, 3797, 3801, 3805, 3809, 3813, 3945, 3817, 3821, 3825, 3829, 3833, 3837,
    3841, 3937, 3845, 3849, 3853, 3857, 3861, 3865, 3869, 3873, 3877, 3881, 3885, 3889, 3893, 3897, 3933, 3901]
def live439 : Flapjack.NumSet := setValue2065
def coloured439 : Flapjack.NumSet := setValue2070
def result439 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2088, setValue2098)
def tree440 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree439 tree438)).val
theorem tree440_def : tree440 = (.seq tree439 tree438) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal440 : Flapjack.RegAlloc.ClashTree := .seq literal439 literal438
def live440 : Flapjack.NumSet := setValue0
def coloured440 : Flapjack.NumSet := setValue0
def result440 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2088, setValue2098)
def tree441 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree441_def : tree441 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal441 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live441 : Flapjack.NumSet := setValue2088
def coloured441 : Flapjack.NumSet := setValue2098
def result441 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2088, setValue2098)
def tree442 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree441 tree440)).val
theorem tree442_def : tree442 = (.seq tree441 tree440) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal442 : Flapjack.RegAlloc.ClashTree := .seq literal441 literal440
def live442 : Flapjack.NumSet := setValue0
def coloured442 : Flapjack.NumSet := setValue0
def result442 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2088, setValue2098)
def setValue2099 : Flapjack.NumSet := .bn setValue1538 setValue1510
def setValue2100 : Flapjack.NumSet := .bn setValue2099 setValue1511
def setValue2101 : Flapjack.NumSet := .bn setValue2100 setValue1541
def setValue2102 : Flapjack.NumSet := .bn setValue1511 setValue1516
def setValue2103 : Flapjack.NumSet := .bn setValue2100 setValue2102
def setValue2104 : Flapjack.NumSet := .bn setValue2101 setValue2103
def setValue2105 : Flapjack.NumSet := .bn setValue2104 setValue2104
def setValue2106 : Flapjack.NumSet := .bn setValue2105 setValue2105
def setValue2107 : Flapjack.NumSet := .bn setValue0 setValue2106
def setValue2108 : Flapjack.NumSet := .bn setValue395 setValue2107
def setValue2109 : Flapjack.NumSet := .bn setValue1238 setValue1320
def setValue2110 : Flapjack.NumSet := .bs setValue2109 () setValue1894
def setValue2111 : Flapjack.NumSet := .bs setValue1558 () setValue1850
def setValue2112 : Flapjack.NumSet := .bs setValue2110 () setValue2111
def setValue2113 : Flapjack.NumSet := .bn setValue2112 setValue0
def tree443 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [3957, 3953, 3949, 3945, 3937, 3933, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3761, 3765, 3769, 3773, 3777,
    3781, 3785, 3789, 3793, 3797, 3801, 3805, 3809, 3813, 3817, 3821, 3825, 3829, 3833, 3837, 3841, 3845, 3849, 3853,
    3857, 3861, 3865, 3869, 3873, 3877, 3881, 3885, 3889, 3893, 3897, 3901]
  [10, 8, 6, 12, 2, 4, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595, 3599, 3603, 3607, 3611,
    3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671, 3675, 3679, 3683, 3687,
    3691, 3695, 3699, 3703, 3707, 3711, 3715, 3719, 3723])).val
theorem tree443_def : tree443 = (Flapjack.RegAlloc.ClashTree.delta
  [3957, 3953, 3949, 3945, 3937, 3933, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3761, 3765, 3769, 3773, 3777,
    3781, 3785, 3789, 3793, 3797, 3801, 3805, 3809, 3813, 3817, 3821, 3825, 3829, 3833, 3837, 3841, 3845, 3849, 3853,
    3857, 3861, 3865, 3869, 3873, 3877, 3881, 3885, 3889, 3893, 3897, 3901]
  [10, 8, 6, 12, 2, 4, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595, 3599, 3603, 3607, 3611,
    3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671, 3675, 3679, 3683, 3687,
    3691, 3695, 3699, 3703, 3707, 3711, 3715, 3719, 3723]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal443 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [3957, 3953, 3949, 3945, 3937, 3933, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3761, 3765, 3769, 3773, 3777,
    3781, 3785, 3789, 3793, 3797, 3801, 3805, 3809, 3813, 3817, 3821, 3825, 3829, 3833, 3837, 3841, 3845, 3849, 3853,
    3857, 3861, 3865, 3869, 3873, 3877, 3881, 3885, 3889, 3893, 3897, 3901]
  [10, 8, 6, 12, 2, 4, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595, 3599, 3603, 3607, 3611,
    3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671, 3675, 3679, 3683, 3687,
    3691, 3695, 3699, 3703, 3707, 3711, 3715, 3719, 3723]
def live443 : Flapjack.NumSet := setValue2088
def coloured443 : Flapjack.NumSet := setValue2098
def result443 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2108, setValue2113)
def tree444 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2108)).val
theorem tree444_def : tree444 = (.set setValue2108) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal444 : Flapjack.RegAlloc.ClashTree := .set setValue2108
def live444 : Flapjack.NumSet := setValue2108
def coloured444 : Flapjack.NumSet := setValue2113
def result444 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2108, setValue2113)
def tree445 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree444 tree443)).val
theorem tree445_def : tree445 = (.seq tree444 tree443) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal445 : Flapjack.RegAlloc.ClashTree := .seq literal444 literal443
def live445 : Flapjack.NumSet := setValue2088
def coloured445 : Flapjack.NumSet := setValue2098
def result445 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2108, setValue2113)
def setValue2114 : Flapjack.NumSet := .bn setValue1 setValue2087
def setValue2115 : Flapjack.NumSet := .bs setValue2091 () setValue2096
def setValue2116 : Flapjack.NumSet := .bs setValue2115 () setValue0
def tree446 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree446_def : tree446 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal446 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live446 : Flapjack.NumSet := setValue2088
def coloured446 : Flapjack.NumSet := setValue2098
def result446 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2114, setValue2116)
def setValue2117 : Flapjack.NumSet := .bn setValue0 setValue1457
def setValue2118 : Flapjack.NumSet := .bn setValue1457 setValue0
def setValue2119 : Flapjack.NumSet := .bn setValue2117 setValue2118
def setValue2120 : Flapjack.NumSet := .bn setValue2118 setValue0
def setValue2121 : Flapjack.NumSet := .bn setValue2119 setValue2120
def setValue2122 : Flapjack.NumSet := .bn setValue0 setValue2118
def setValue2123 : Flapjack.NumSet := .bn setValue2118 setValue2118
def setValue2124 : Flapjack.NumSet := .bn setValue2122 setValue2123
def setValue2125 : Flapjack.NumSet := .bn setValue2121 setValue2124
def setValue2126 : Flapjack.NumSet := .bn setValue2125 setValue2106
def setValue2127 : Flapjack.NumSet := .bn setValue1 setValue2126
def setValue2128 : Flapjack.NumSet := .bs setValue1615 () setValue1239
def setValue2129 : Flapjack.NumSet := .bs setValue1558 () setValue2128
def setValue2130 : Flapjack.NumSet := .bs setValue2110 () setValue2129
def setValue2131 : Flapjack.NumSet := .bn setValue2130 setValue0
def tree447 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3761, 3765, 3769, 3773, 3777, 3781, 3785, 3789, 3793, 3797, 3801,
    3805, 3809, 3813, 3817, 3821, 3825, 3829, 3833, 3837, 3841, 3845, 3849, 3853, 3857, 3861, 3865, 3869, 3873, 3877,
    3881, 3885, 3889, 3893, 3897, 3901]
  [2, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595, 3599, 3603, 3607, 3611, 3615, 3619, 3623,
    3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671, 3675, 3679, 3683, 3687, 3691, 3695, 3699,
    3703, 3707, 3711, 3715, 3719, 3723])).val
theorem tree447_def : tree447 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3761, 3765, 3769, 3773, 3777, 3781, 3785, 3789, 3793, 3797, 3801,
    3805, 3809, 3813, 3817, 3821, 3825, 3829, 3833, 3837, 3841, 3845, 3849, 3853, 3857, 3861, 3865, 3869, 3873, 3877,
    3881, 3885, 3889, 3893, 3897, 3901]
  [2, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595, 3599, 3603, 3607, 3611, 3615, 3619, 3623,
    3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671, 3675, 3679, 3683, 3687, 3691, 3695, 3699,
    3703, 3707, 3711, 3715, 3719, 3723]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal447 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 3729, 3733, 3737, 3741, 3745, 3749, 3753, 3757, 3761, 3765, 3769, 3773, 3777, 3781, 3785, 3789, 3793, 3797, 3801,
    3805, 3809, 3813, 3817, 3821, 3825, 3829, 3833, 3837, 3841, 3845, 3849, 3853, 3857, 3861, 3865, 3869, 3873, 3877,
    3881, 3885, 3889, 3893, 3897, 3901]
  [2, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595, 3599, 3603, 3607, 3611, 3615, 3619, 3623,
    3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671, 3675, 3679, 3683, 3687, 3691, 3695, 3699,
    3703, 3707, 3711, 3715, 3719, 3723]
def live447 : Flapjack.NumSet := setValue2114
def coloured447 : Flapjack.NumSet := setValue2116
def result447 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2127, setValue2131)
def tree448 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree447 tree446)).val
theorem tree448_def : tree448 = (.seq tree447 tree446) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal448 : Flapjack.RegAlloc.ClashTree := .seq literal447 literal446
def live448 : Flapjack.NumSet := setValue2088
def coloured448 : Flapjack.NumSet := setValue2098
def result448 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2127, setValue2131)
def setValue2132 : Flapjack.NumSet := .bn setValue1 setValue2107
def setValue2133 : Flapjack.NumSet := .bn setValue2109 setValue1944
def setValue2134 : Flapjack.NumSet := .bn setValue1555 setValue1870
def setValue2135 : Flapjack.NumSet := .bs setValue2133 () setValue2134
def setValue2136 : Flapjack.NumSet := .bn setValue2135 setValue0
def tree449 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2132)).val
theorem tree449_def : tree449 = (.set setValue2132) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal449 : Flapjack.RegAlloc.ClashTree := .set setValue2132
def live449 : Flapjack.NumSet := setValue2127
def coloured449 : Flapjack.NumSet := setValue2131
def result449 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2132, setValue2136)
def tree450 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree449 tree448)).val
theorem tree450_def : tree450 = (.seq tree449 tree448) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal450 : Flapjack.RegAlloc.ClashTree := .seq literal449 literal448
def live450 : Flapjack.NumSet := setValue2088
def coloured450 : Flapjack.NumSet := setValue2098
def result450 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2132, setValue2136)
def setValue2137 : Flapjack.NumSet := .bn setValue440 setValue2107
def setValue2138 : Flapjack.NumSet := .bs setValue1238 () setValue1342
def setValue2139 : Flapjack.NumSet := .bs setValue2138 () setValue1826
def setValue2140 : Flapjack.NumSet := .bs setValue1583 () setValue1954
def setValue2141 : Flapjack.NumSet := .bs setValue2139 () setValue2140
def setValue2142 : Flapjack.NumSet := .bn setValue2141 setValue0
def tree451 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2137) tree445 tree450)).val
theorem tree451_def : tree451 = (.branch (some setValue2137) tree445 tree450) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal451 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2137) literal445 literal450
def live451 : Flapjack.NumSet := setValue2088
def coloured451 : Flapjack.NumSet := setValue2098
def result451 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2137, setValue2142)
def tree452 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree451 tree442)).val
theorem tree452_def : tree452 = (.seq tree451 tree442) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal452 : Flapjack.RegAlloc.ClashTree := .seq literal451 literal442
def live452 : Flapjack.NumSet := setValue0
def coloured452 : Flapjack.NumSet := setValue0
def result452 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2137, setValue2142)
def setValue2143 : Flapjack.NumSet := .bn setValue4 setValue1538
def setValue2144 : Flapjack.NumSet := .bn setValue2143 setValue1590
def setValue2145 : Flapjack.NumSet := .bn setValue1629 setValue2144
def setValue2146 : Flapjack.NumSet := .bn setValue2144 setValue2144
def setValue2147 : Flapjack.NumSet := .bn setValue2145 setValue2146
def setValue2148 : Flapjack.NumSet := .bn setValue2143 setValue1594
def setValue2149 : Flapjack.NumSet := .bn setValue1629 setValue2148
def setValue2150 : Flapjack.NumSet := .bn setValue2148 setValue2144
def setValue2151 : Flapjack.NumSet := .bn setValue2149 setValue2150
def setValue2152 : Flapjack.NumSet := .bn setValue2147 setValue2151
def setValue2153 : Flapjack.NumSet := .bn setValue2144 setValue2148
def setValue2154 : Flapjack.NumSet := .bn setValue2148 setValue1634
def setValue2155 : Flapjack.NumSet := .bn setValue2153 setValue2154
def setValue2156 : Flapjack.NumSet := .bn setValue2151 setValue2155
def setValue2157 : Flapjack.NumSet := .bn setValue2152 setValue2156
def setValue2158 : Flapjack.NumSet := .bn setValue2157 setValue0
def setValue2159 : Flapjack.NumSet := .bn setValue0 setValue2158
def setValue2160 : Flapjack.NumSet := .bn setValue180 setValue15
def setValue2161 : Flapjack.NumSet := .bs setValue2160 () setValue1797
def setValue2162 : Flapjack.NumSet := .bs setValue1269 () setValue2161
def setValue2163 : Flapjack.NumSet := .bs setValue1470 () setValue1693
def setValue2164 : Flapjack.NumSet := .bs setValue15 () setValue411
def setValue2165 : Flapjack.NumSet := .bs setValue2164 () setValue1390
def setValue2166 : Flapjack.NumSet := .bs setValue2163 () setValue2165
def setValue2167 : Flapjack.NumSet := .bn setValue2162 setValue2166
def setValue2168 : Flapjack.NumSet := .bs setValue2167 () setValue0
def tree453 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595,
    3599, 3603, 3607, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671,
    3675, 3679, 3683, 3687, 3691, 3695, 3699, 3703, 3707, 3711, 3715, 3719, 3723]
  [3417, 3385, 3413, 3381, 3285, 3321, 3481, 3473, 3489, 3477, 3493, 3497, 3269, 3273, 3277, 3281, 3285, 3289, 3293,
    3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369,
    3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437, 3441])).val
theorem tree453_def : tree453 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595,
    3599, 3603, 3607, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671,
    3675, 3679, 3683, 3687, 3691, 3695, 3699, 3703, 3707, 3711, 3715, 3719, 3723]
  [3417, 3385, 3413, 3381, 3285, 3321, 3481, 3473, 3489, 3477, 3493, 3497, 3269, 3273, 3277, 3281, 3285, 3289, 3293,
    3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369,
    3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437, 3441]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal453 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 3551, 3555, 3559, 3563, 3567, 3571, 3575, 3579, 3583, 3587, 3591, 3595,
    3599, 3603, 3607, 3611, 3615, 3619, 3623, 3627, 3631, 3635, 3639, 3643, 3647, 3651, 3655, 3659, 3663, 3667, 3671,
    3675, 3679, 3683, 3687, 3691, 3695, 3699, 3703, 3707, 3711, 3715, 3719, 3723]
  [3417, 3385, 3413, 3381, 3285, 3321, 3481, 3473, 3489, 3477, 3493, 3497, 3269, 3273, 3277, 3281, 3285, 3289, 3293,
    3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369,
    3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437, 3441]
def live453 : Flapjack.NumSet := setValue2137
def coloured453 : Flapjack.NumSet := setValue2142
def result453 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2159, setValue2168)
def tree454 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree453 tree452)).val
theorem tree454_def : tree454 = (.seq tree453 tree452) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal454 : Flapjack.RegAlloc.ClashTree := .seq literal453 literal452
def live454 : Flapjack.NumSet := setValue0
def coloured454 : Flapjack.NumSet := setValue0
def result454 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2159, setValue2168)
def tree455 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree455_def : tree455 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal455 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live455 : Flapjack.NumSet := setValue2159
def coloured455 : Flapjack.NumSet := setValue2168
def result455 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2159, setValue2168)
def tree456 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree455 tree454)).val
theorem tree456_def : tree456 = (.seq tree455 tree454) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal456 : Flapjack.RegAlloc.ClashTree := .seq literal455 literal454
def live456 : Flapjack.NumSet := setValue0
def coloured456 : Flapjack.NumSet := setValue0
def result456 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2159, setValue2168)
def setValue2169 : Flapjack.NumSet := .bn setValue1674 setValue1674
def setValue2170 : Flapjack.NumSet := .bn setValue2169 setValue1675
def setValue2171 : Flapjack.NumSet := .bn setValue2170 setValue2170
def setValue2172 : Flapjack.NumSet := .bn setValue1674 setValue1677
def setValue2173 : Flapjack.NumSet := .bn setValue1675 setValue2172
def setValue2174 : Flapjack.NumSet := .bn setValue2170 setValue2173
def setValue2175 : Flapjack.NumSet := .bn setValue2171 setValue2174
def setValue2176 : Flapjack.NumSet := .bn setValue0 setValue2175
def setValue2177 : Flapjack.NumSet := .bn setValue395 setValue2176
def setValue2178 : Flapjack.NumSet := .bn setValue249 setValue411
def setValue2179 : Flapjack.NumSet := .bs setValue2178 () setValue1320
def setValue2180 : Flapjack.NumSet := .bs setValue1240 () setValue2179
def setValue2181 : Flapjack.NumSet := .bs setValue1558 () setValue1241
def setValue2182 : Flapjack.NumSet := .bs setValue2180 () setValue2181
def setValue2183 : Flapjack.NumSet := .bn setValue2182 setValue0
def tree457 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [3497, 3493, 3489, 3481, 3477, 3473, 3269, 3273, 3277, 3281, 3285, 3289, 3293, 3297, 3301, 3305, 3309, 3313, 3317,
    3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369, 3373, 3377, 3381, 3385, 3389, 3393,
    3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437, 3441]
  [12, 10, 6, 2, 8, 4, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135, 3139, 3143, 3147, 3151,
    3155, 3159, 3163, 3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211, 3215, 3219, 3223, 3227,
    3231, 3235, 3239, 3243, 3247, 3251, 3255, 3259, 3263])).val
theorem tree457_def : tree457 = (Flapjack.RegAlloc.ClashTree.delta
  [3497, 3493, 3489, 3481, 3477, 3473, 3269, 3273, 3277, 3281, 3285, 3289, 3293, 3297, 3301, 3305, 3309, 3313, 3317,
    3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369, 3373, 3377, 3381, 3385, 3389, 3393,
    3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437, 3441]
  [12, 10, 6, 2, 8, 4, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135, 3139, 3143, 3147, 3151,
    3155, 3159, 3163, 3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211, 3215, 3219, 3223, 3227,
    3231, 3235, 3239, 3243, 3247, 3251, 3255, 3259, 3263]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal457 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [3497, 3493, 3489, 3481, 3477, 3473, 3269, 3273, 3277, 3281, 3285, 3289, 3293, 3297, 3301, 3305, 3309, 3313, 3317,
    3321, 3325, 3329, 3333, 3337, 3341, 3345, 3349, 3353, 3357, 3361, 3365, 3369, 3373, 3377, 3381, 3385, 3389, 3393,
    3397, 3401, 3405, 3409, 3413, 3417, 3421, 3425, 3429, 3433, 3437, 3441]
  [12, 10, 6, 2, 8, 4, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135, 3139, 3143, 3147, 3151,
    3155, 3159, 3163, 3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211, 3215, 3219, 3223, 3227,
    3231, 3235, 3239, 3243, 3247, 3251, 3255, 3259, 3263]
def live457 : Flapjack.NumSet := setValue2159
def coloured457 : Flapjack.NumSet := setValue2168
def result457 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2177, setValue2183)
def tree458 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2177)).val
theorem tree458_def : tree458 = (.set setValue2177) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal458 : Flapjack.RegAlloc.ClashTree := .set setValue2177
def live458 : Flapjack.NumSet := setValue2177
def coloured458 : Flapjack.NumSet := setValue2183
def result458 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2177, setValue2183)
def tree459 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree458 tree457)).val
theorem tree459_def : tree459 = (.seq tree458 tree457) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal459 : Flapjack.RegAlloc.ClashTree := .seq literal458 literal457
def live459 : Flapjack.NumSet := setValue2159
def coloured459 : Flapjack.NumSet := setValue2168
def result459 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2177, setValue2183)
def setValue2184 : Flapjack.NumSet := .bn setValue1 setValue2158
def setValue2185 : Flapjack.NumSet := .bs setValue2162 () setValue2166
def setValue2186 : Flapjack.NumSet := .bs setValue2185 () setValue0
def tree460 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree460_def : tree460 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal460 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live460 : Flapjack.NumSet := setValue2159
def coloured460 : Flapjack.NumSet := setValue2168
def result460 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2184, setValue2186)
def setValue2187 : Flapjack.NumSet := .bn setValue0 setValue1598
def setValue2188 : Flapjack.NumSet := .bn setValue1598 setValue0
def setValue2189 : Flapjack.NumSet := .bn setValue2187 setValue2188
def setValue2190 : Flapjack.NumSet := .bn setValue0 setValue2189
def setValue2191 : Flapjack.NumSet := .bn setValue2189 setValue2189
def setValue2192 : Flapjack.NumSet := .bn setValue2190 setValue2191
def setValue2193 : Flapjack.NumSet := .bn setValue2192 setValue2175
def setValue2194 : Flapjack.NumSet := .bn setValue1 setValue2193
def setValue2195 : Flapjack.NumSet := .bn setValue2178 setValue1342
def setValue2196 : Flapjack.NumSet := .bn setValue1269 setValue2195
def setValue2197 : Flapjack.NumSet := .bn setValue1470 setValue1582
def setValue2198 : Flapjack.NumSet := .bn setValue1055 setValue1268
def setValue2199 : Flapjack.NumSet := .bn setValue2197 setValue2198
def setValue2200 : Flapjack.NumSet := .bs setValue2196 () setValue2199
def setValue2201 : Flapjack.NumSet := .bn setValue2200 setValue0
def tree461 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 3269, 3273, 3277, 3281, 3285, 3289, 3293, 3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341,
    3345, 3349, 3353, 3357, 3361, 3365, 3369, 3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417,
    3421, 3425, 3429, 3433, 3437, 3441]
  [2, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135, 3139, 3143, 3147, 3151, 3155, 3159, 3163,
    3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211, 3215, 3219, 3223, 3227, 3231, 3235, 3239,
    3243, 3247, 3251, 3255, 3259, 3263])).val
theorem tree461_def : tree461 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 3269, 3273, 3277, 3281, 3285, 3289, 3293, 3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341,
    3345, 3349, 3353, 3357, 3361, 3365, 3369, 3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417,
    3421, 3425, 3429, 3433, 3437, 3441]
  [2, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135, 3139, 3143, 3147, 3151, 3155, 3159, 3163,
    3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211, 3215, 3219, 3223, 3227, 3231, 3235, 3239,
    3243, 3247, 3251, 3255, 3259, 3263]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal461 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 3269, 3273, 3277, 3281, 3285, 3289, 3293, 3297, 3301, 3305, 3309, 3313, 3317, 3321, 3325, 3329, 3333, 3337, 3341,
    3345, 3349, 3353, 3357, 3361, 3365, 3369, 3373, 3377, 3381, 3385, 3389, 3393, 3397, 3401, 3405, 3409, 3413, 3417,
    3421, 3425, 3429, 3433, 3437, 3441]
  [2, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135, 3139, 3143, 3147, 3151, 3155, 3159, 3163,
    3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211, 3215, 3219, 3223, 3227, 3231, 3235, 3239,
    3243, 3247, 3251, 3255, 3259, 3263]
def live461 : Flapjack.NumSet := setValue2184
def coloured461 : Flapjack.NumSet := setValue2186
def result461 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2194, setValue2201)
def tree462 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree461 tree460)).val
theorem tree462_def : tree462 = (.seq tree461 tree460) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal462 : Flapjack.RegAlloc.ClashTree := .seq literal461 literal460
def live462 : Flapjack.NumSet := setValue2159
def coloured462 : Flapjack.NumSet := setValue2168
def result462 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2194, setValue2201)
def setValue2202 : Flapjack.NumSet := .bn setValue1 setValue2176
def setValue2203 : Flapjack.NumSet := .bn setValue2178 setValue1320
def setValue2204 : Flapjack.NumSet := .bn setValue1240 setValue2203
def setValue2205 : Flapjack.NumSet := .bn setValue1555 setValue1263
def setValue2206 : Flapjack.NumSet := .bs setValue2204 () setValue2205
def setValue2207 : Flapjack.NumSet := .bn setValue2206 setValue0
def tree463 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2202)).val
theorem tree463_def : tree463 = (.set setValue2202) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal463 : Flapjack.RegAlloc.ClashTree := .set setValue2202
def live463 : Flapjack.NumSet := setValue2194
def coloured463 : Flapjack.NumSet := setValue2201
def result463 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2202, setValue2207)
def tree464 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree463 tree462)).val
theorem tree464_def : tree464 = (.seq tree463 tree462) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal464 : Flapjack.RegAlloc.ClashTree := .seq literal463 literal462
def live464 : Flapjack.NumSet := setValue2159
def coloured464 : Flapjack.NumSet := setValue2168
def result464 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2202, setValue2207)
def setValue2208 : Flapjack.NumSet := .bn setValue440 setValue2176
def setValue2209 : Flapjack.NumSet := .bs setValue2178 () setValue1342
def setValue2210 : Flapjack.NumSet := .bs setValue1269 () setValue2209
def setValue2211 : Flapjack.NumSet := .bs setValue1583 () setValue1272
def setValue2212 : Flapjack.NumSet := .bs setValue2210 () setValue2211
def setValue2213 : Flapjack.NumSet := .bn setValue2212 setValue0
def tree465 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2208) tree459 tree464)).val
theorem tree465_def : tree465 = (.branch (some setValue2208) tree459 tree464) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal465 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2208) literal459 literal464
def live465 : Flapjack.NumSet := setValue2159
def coloured465 : Flapjack.NumSet := setValue2168
def result465 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2208, setValue2213)
def tree466 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree465 tree456)).val
theorem tree466_def : tree466 = (.seq tree465 tree456) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal466 : Flapjack.RegAlloc.ClashTree := .seq literal465 literal456
def live466 : Flapjack.NumSet := setValue0
def coloured466 : Flapjack.NumSet := setValue0
def result466 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2208, setValue2213)
def setValue2214 : Flapjack.NumSet := .bn setValue396 setValue396
def setValue2215 : Flapjack.NumSet := .bn setValue2214 setValue0
def setValue2216 : Flapjack.NumSet := .bn setValue2215 setValue556
def setValue2217 : Flapjack.NumSet := .bn setValue397 setValue397
def setValue2218 : Flapjack.NumSet := .bn setValue2215 setValue2217
def setValue2219 : Flapjack.NumSet := .bn setValue2216 setValue2218
def setValue2220 : Flapjack.NumSet := .bn setValue684 setValue397
def setValue2221 : Flapjack.NumSet := .bn setValue2220 setValue2217
def setValue2222 : Flapjack.NumSet := .bn setValue2214 setValue397
def setValue2223 : Flapjack.NumSet := .bn setValue396 setValue3
def setValue2224 : Flapjack.NumSet := .bn setValue0 setValue2223
def setValue2225 : Flapjack.NumSet := .bn setValue2222 setValue2224
def setValue2226 : Flapjack.NumSet := .bn setValue2221 setValue2225
def setValue2227 : Flapjack.NumSet := .bn setValue2219 setValue2226
def setValue2228 : Flapjack.NumSet := .bn setValue2220 setValue556
def setValue2229 : Flapjack.NumSet := .bn setValue2222 setValue2217
def setValue2230 : Flapjack.NumSet := .bn setValue2228 setValue2229
def setValue2231 : Flapjack.NumSet := .bn setValue2220 setValue398
def setValue2232 : Flapjack.NumSet := .bn setValue556 setValue2224
def setValue2233 : Flapjack.NumSet := .bn setValue2231 setValue2232
def setValue2234 : Flapjack.NumSet := .bn setValue2230 setValue2233
def setValue2235 : Flapjack.NumSet := .bn setValue2227 setValue2234
def setValue2236 : Flapjack.NumSet := .bn setValue2217 setValue398
def setValue2237 : Flapjack.NumSet := .bn setValue2216 setValue2236
def setValue2238 : Flapjack.NumSet := .bn setValue2228 setValue2225
def setValue2239 : Flapjack.NumSet := .bn setValue2237 setValue2238
def setValue2240 : Flapjack.NumSet := .bn setValue2222 setValue556
def setValue2241 : Flapjack.NumSet := .bn setValue1753 setValue2240
def setValue2242 : Flapjack.NumSet := .bn setValue0 setValue2224
def setValue2243 : Flapjack.NumSet := .bn setValue2221 setValue2242
def setValue2244 : Flapjack.NumSet := .bn setValue2241 setValue2243
def setValue2245 : Flapjack.NumSet := .bn setValue2239 setValue2244
def setValue2246 : Flapjack.NumSet := .bn setValue2235 setValue2245
def setValue2247 : Flapjack.NumSet := .bn setValue2246 setValue0
def setValue2248 : Flapjack.NumSet := .bn setValue0 setValue2247
def setValue2249 : Flapjack.NumSet := .bs setValue249 () setValue15
def setValue2250 : Flapjack.NumSet := .bs setValue2249 () setValue312
def setValue2251 : Flapjack.NumSet := .bs setValue1272 () setValue2250
def setValue2252 : Flapjack.NumSet := .bs setValue180 () setValue161
def setValue2253 : Flapjack.NumSet := .bs setValue312 () setValue2252
def setValue2254 : Flapjack.NumSet := .bs setValue1055 () setValue465
def setValue2255 : Flapjack.NumSet := .bs setValue2253 () setValue2254
def setValue2256 : Flapjack.NumSet := .bs setValue2251 () setValue2255
def setValue2257 : Flapjack.NumSet := .bn setValue2256 setValue0
def tree467 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135,
    3139, 3143, 3147, 3151, 3155, 3159, 3163, 3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211,
    3215, 3219, 3223, 3227, 3231, 3235, 3239, 3243, 3247, 3251, 3255, 3259, 3263]
  [3017, 3021, 3025, 3029, 3033, 3037, 3085, 3081, 3077, 3073, 3069, 3065, 2761, 2989, 2765, 2769, 2773, 2781, 2785,
    2789, 2793, 2797, 2801, 2805, 2809, 2813, 2817, 2821, 2825, 2981, 2829, 2833, 2837, 2845, 2849, 2857, 2861, 2865,
    2869, 2873, 2877, 2885, 2977, 2889, 2973, 2893, 2897, 2901, 2905, 2913, 2917, 2969, 2921, 2965, 2925, 2933])).val
theorem tree467_def : tree467 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135,
    3139, 3143, 3147, 3151, 3155, 3159, 3163, 3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211,
    3215, 3219, 3223, 3227, 3231, 3235, 3239, 3243, 3247, 3251, 3255, 3259, 3263]
  [3017, 3021, 3025, 3029, 3033, 3037, 3085, 3081, 3077, 3073, 3069, 3065, 2761, 2989, 2765, 2769, 2773, 2781, 2785,
    2789, 2793, 2797, 2801, 2805, 2809, 2813, 2817, 2821, 2825, 2981, 2829, 2833, 2837, 2845, 2849, 2857, 2861, 2865,
    2869, 2873, 2877, 2885, 2977, 2889, 2973, 2893, 2897, 2901, 2905, 2913, 2917, 2969, 2921, 2965, 2925, 2933]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal467 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 3091, 3095, 3099, 3103, 3107, 3111, 3115, 3119, 3123, 3127, 3131, 3135,
    3139, 3143, 3147, 3151, 3155, 3159, 3163, 3167, 3171, 3175, 3179, 3183, 3187, 3191, 3195, 3199, 3203, 3207, 3211,
    3215, 3219, 3223, 3227, 3231, 3235, 3239, 3243, 3247, 3251, 3255, 3259, 3263]
  [3017, 3021, 3025, 3029, 3033, 3037, 3085, 3081, 3077, 3073, 3069, 3065, 2761, 2989, 2765, 2769, 2773, 2781, 2785,
    2789, 2793, 2797, 2801, 2805, 2809, 2813, 2817, 2821, 2825, 2981, 2829, 2833, 2837, 2845, 2849, 2857, 2861, 2865,
    2869, 2873, 2877, 2885, 2977, 2889, 2973, 2893, 2897, 2901, 2905, 2913, 2917, 2969, 2921, 2965, 2925, 2933]
def live467 : Flapjack.NumSet := setValue2208
def coloured467 : Flapjack.NumSet := setValue2213
def result467 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2248, setValue2257)
def tree468 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree467 tree466)).val
theorem tree468_def : tree468 = (.seq tree467 tree466) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal468 : Flapjack.RegAlloc.ClashTree := .seq literal467 literal466
def live468 : Flapjack.NumSet := setValue0
def coloured468 : Flapjack.NumSet := setValue0
def result468 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2248, setValue2257)
def setValue2258 : Flapjack.NumSet := .bn setValue2221 setValue2240
def setValue2259 : Flapjack.NumSet := .bn setValue2219 setValue2258
def setValue2260 : Flapjack.NumSet := .bn setValue2259 setValue2234
def setValue2261 : Flapjack.NumSet := .bn setValue2260 setValue2245
def setValue2262 : Flapjack.NumSet := .bn setValue2261 setValue0
def setValue2263 : Flapjack.NumSet := .bn setValue0 setValue2262
def setValue2264 : Flapjack.NumSet := .bs setValue2198 () setValue2250
def setValue2265 : Flapjack.NumSet := .bs setValue2264 () setValue2255
def setValue2266 : Flapjack.NumSet := .bn setValue2265 setValue0
def tree469 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3085] [])).val
theorem tree469_def : tree469 = (Flapjack.RegAlloc.ClashTree.delta [3085] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal469 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3085] []
def live469 : Flapjack.NumSet := setValue2248
def coloured469 : Flapjack.NumSet := setValue2257
def result469 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2263, setValue2266)
def tree470 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree469 tree468)).val
theorem tree470_def : tree470 = (.seq tree469 tree468) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal470 : Flapjack.RegAlloc.ClashTree := .seq literal469 literal468
def live470 : Flapjack.NumSet := setValue0
def coloured470 : Flapjack.NumSet := setValue0
def result470 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2263, setValue2266)
def setValue2267 : Flapjack.NumSet := .bn setValue2228 setValue2240
def setValue2268 : Flapjack.NumSet := .bn setValue2237 setValue2267
def setValue2269 : Flapjack.NumSet := .bn setValue2268 setValue2244
def setValue2270 : Flapjack.NumSet := .bn setValue2260 setValue2269
def setValue2271 : Flapjack.NumSet := .bn setValue2270 setValue0
def setValue2272 : Flapjack.NumSet := .bn setValue0 setValue2271
def setValue2273 : Flapjack.NumSet := .bn setValue101 setValue101
def setValue2274 : Flapjack.NumSet := .bs setValue1055 () setValue2273
def setValue2275 : Flapjack.NumSet := .bs setValue2253 () setValue2274
def setValue2276 : Flapjack.NumSet := .bs setValue2264 () setValue2275
def setValue2277 : Flapjack.NumSet := .bn setValue2276 setValue0
def tree471 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3081] [])).val
theorem tree471_def : tree471 = (Flapjack.RegAlloc.ClashTree.delta [3081] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal471 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3081] []
def live471 : Flapjack.NumSet := setValue2263
def coloured471 : Flapjack.NumSet := setValue2266
def result471 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2272, setValue2277)
def tree472 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree471 tree470)).val
theorem tree472_def : tree472 = (.seq tree471 tree470) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal472 : Flapjack.RegAlloc.ClashTree := .seq literal471 literal470
def live472 : Flapjack.NumSet := setValue0
def coloured472 : Flapjack.NumSet := setValue0
def result472 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2272, setValue2277)
def setValue2278 : Flapjack.NumSet := .bn setValue2231 setValue1727
def setValue2279 : Flapjack.NumSet := .bn setValue2230 setValue2278
def setValue2280 : Flapjack.NumSet := .bn setValue2259 setValue2279
def setValue2281 : Flapjack.NumSet := .bn setValue2280 setValue2269
def setValue2282 : Flapjack.NumSet := .bn setValue2281 setValue0
def setValue2283 : Flapjack.NumSet := .bn setValue0 setValue2282
def setValue2284 : Flapjack.NumSet := .bs setValue2249 () setValue1470
def setValue2285 : Flapjack.NumSet := .bs setValue2198 () setValue2284
def setValue2286 : Flapjack.NumSet := .bs setValue2285 () setValue2275
def setValue2287 : Flapjack.NumSet := .bn setValue2286 setValue0
def tree473 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3077] [])).val
theorem tree473_def : tree473 = (Flapjack.RegAlloc.ClashTree.delta [3077] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal473 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3077] []
def live473 : Flapjack.NumSet := setValue2272
def coloured473 : Flapjack.NumSet := setValue2277
def result473 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2283, setValue2287)
def tree474 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree473 tree472)).val
theorem tree474_def : tree474 = (.seq tree473 tree472) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal474 : Flapjack.RegAlloc.ClashTree := .seq literal473 literal472
def live474 : Flapjack.NumSet := setValue0
def coloured474 : Flapjack.NumSet := setValue0
def result474 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2283, setValue2287)
def setValue2288 : Flapjack.NumSet := .bn setValue2221 setValue626
def setValue2289 : Flapjack.NumSet := .bn setValue2241 setValue2288
def setValue2290 : Flapjack.NumSet := .bn setValue2268 setValue2289
def setValue2291 : Flapjack.NumSet := .bn setValue2280 setValue2290
def setValue2292 : Flapjack.NumSet := .bn setValue2291 setValue0
def setValue2293 : Flapjack.NumSet := .bn setValue0 setValue2292
def setValue2294 : Flapjack.NumSet := .bn setValue180 setValue161
def setValue2295 : Flapjack.NumSet := .bs setValue312 () setValue2294
def setValue2296 : Flapjack.NumSet := .bs setValue2295 () setValue2274
def setValue2297 : Flapjack.NumSet := .bs setValue2285 () setValue2296
def setValue2298 : Flapjack.NumSet := .bn setValue2297 setValue0
def tree475 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3073] [])).val
theorem tree475_def : tree475 = (Flapjack.RegAlloc.ClashTree.delta [3073] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal475 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3073] []
def live475 : Flapjack.NumSet := setValue2283
def coloured475 : Flapjack.NumSet := setValue2287
def result475 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2293, setValue2298)
def tree476 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree475 tree474)).val
theorem tree476_def : tree476 = (.seq tree475 tree474) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal476 : Flapjack.RegAlloc.ClashTree := .seq literal475 literal474
def live476 : Flapjack.NumSet := setValue0
def coloured476 : Flapjack.NumSet := setValue0
def result476 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2293, setValue2298)
def setValue2299 : Flapjack.NumSet := .bn setValue1753 setValue2218
def setValue2300 : Flapjack.NumSet := .bn setValue2299 setValue2258
def setValue2301 : Flapjack.NumSet := .bn setValue2300 setValue2279
def setValue2302 : Flapjack.NumSet := .bn setValue2301 setValue2290
def setValue2303 : Flapjack.NumSet := .bn setValue2302 setValue0
def setValue2304 : Flapjack.NumSet := .bn setValue0 setValue2303
def setValue2305 : Flapjack.NumSet := .bn setValue1055 setValue1239
def setValue2306 : Flapjack.NumSet := .bs setValue2305 () setValue2284
def setValue2307 : Flapjack.NumSet := .bs setValue2306 () setValue2296
def setValue2308 : Flapjack.NumSet := .bn setValue2307 setValue0
def tree477 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3069] [])).val
theorem tree477_def : tree477 = (Flapjack.RegAlloc.ClashTree.delta [3069] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal477 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3069] []
def live477 : Flapjack.NumSet := setValue2293
def coloured477 : Flapjack.NumSet := setValue2298
def result477 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2304, setValue2308)
def tree478 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree477 tree476)).val
theorem tree478_def : tree478 = (.seq tree477 tree476) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal478 : Flapjack.RegAlloc.ClashTree := .seq literal477 literal476
def live478 : Flapjack.NumSet := setValue0
def coloured478 : Flapjack.NumSet := setValue0
def result478 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2304, setValue2308)
def setValue2309 : Flapjack.NumSet := .bn setValue1753 setValue2236
def setValue2310 : Flapjack.NumSet := .bn setValue2309 setValue2267
def setValue2311 : Flapjack.NumSet := .bn setValue2310 setValue2289
def setValue2312 : Flapjack.NumSet := .bn setValue2301 setValue2311
def setValue2313 : Flapjack.NumSet := .bn setValue2312 setValue0
def setValue2314 : Flapjack.NumSet := .bn setValue0 setValue2313
def setValue2315 : Flapjack.NumSet := .bs setValue1037 () setValue2273
def setValue2316 : Flapjack.NumSet := .bs setValue2295 () setValue2315
def setValue2317 : Flapjack.NumSet := .bs setValue2306 () setValue2316
def setValue2318 : Flapjack.NumSet := .bn setValue2317 setValue0
def tree479 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3065] [])).val
theorem tree479_def : tree479 = (Flapjack.RegAlloc.ClashTree.delta [3065] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal479 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3065] []
def live479 : Flapjack.NumSet := setValue2304
def coloured479 : Flapjack.NumSet := setValue2308
def result479 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2314, setValue2318)
def tree480 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree479 tree478)).val
theorem tree480_def : tree480 = (.seq tree479 tree478) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal480 : Flapjack.RegAlloc.ClashTree := .seq literal479 literal478
def live480 : Flapjack.NumSet := setValue0
def coloured480 : Flapjack.NumSet := setValue0
def result480 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2314, setValue2318)
def setValue2319 : Flapjack.NumSet := .bn setValue1753 setValue2221
def setValue2320 : Flapjack.NumSet := .bn setValue2221 setValue2228
def setValue2321 : Flapjack.NumSet := .bn setValue2319 setValue2320
def setValue2322 : Flapjack.NumSet := .bn setValue2228 setValue2221
def setValue2323 : Flapjack.NumSet := .bn setValue2221 setValue1727
def setValue2324 : Flapjack.NumSet := .bn setValue2322 setValue2323
def setValue2325 : Flapjack.NumSet := .bn setValue2321 setValue2324
def setValue2326 : Flapjack.NumSet := .bn setValue2228 setValue2228
def setValue2327 : Flapjack.NumSet := .bn setValue2319 setValue2326
def setValue2328 : Flapjack.NumSet := .bn setValue2326 setValue2323
def setValue2329 : Flapjack.NumSet := .bn setValue2327 setValue2328
def setValue2330 : Flapjack.NumSet := .bn setValue2325 setValue2329
def setValue2331 : Flapjack.NumSet := .bn setValue2330 setValue0
def setValue2332 : Flapjack.NumSet := .bn setValue0 setValue2331
def setValue2333 : Flapjack.NumSet := .bn setValue2306 setValue2316
def setValue2334 : Flapjack.NumSet := .bs setValue2333 () setValue0
def tree481 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [3037, 3033, 3029, 3025, 3021, 3017] [2777, 2841, 2909, 2853, 2929, 2881])).val
theorem tree481_def : tree481 = (Flapjack.RegAlloc.ClashTree.delta [3037, 3033, 3029, 3025, 3021, 3017] [2777, 2841, 2909, 2853, 2929, 2881]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal481 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [3037, 3033, 3029, 3025, 3021, 3017] [2777, 2841, 2909, 2853, 2929, 2881]
def live481 : Flapjack.NumSet := setValue2314
def coloured481 : Flapjack.NumSet := setValue2318
def result481 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2332, setValue2334)
def tree482 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree481 tree480)).val
theorem tree482_def : tree482 = (.seq tree481 tree480) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal482 : Flapjack.RegAlloc.ClashTree := .seq literal481 literal480
def live482 : Flapjack.NumSet := setValue0
def coloured482 : Flapjack.NumSet := setValue0
def result482 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2332, setValue2334)
def tree483 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree483_def : tree483 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal483 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live483 : Flapjack.NumSet := setValue2332
def coloured483 : Flapjack.NumSet := setValue2334
def result483 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2332, setValue2334)
def tree484 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree483 tree482)).val
theorem tree484_def : tree484 = (.seq tree483 tree482) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal484 : Flapjack.RegAlloc.ClashTree := .seq literal483 literal482
def live484 : Flapjack.NumSet := setValue0
def coloured484 : Flapjack.NumSet := setValue0
def result484 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2332, setValue2334)
def setValue2335 : Flapjack.NumSet := .bn setValue684 setValue684
def setValue2336 : Flapjack.NumSet := .bn setValue840 setValue2335
def setValue2337 : Flapjack.NumSet := .bn setValue2336 setValue2336
def setValue2338 : Flapjack.NumSet := .bn setValue2336 setValue1806
def setValue2339 : Flapjack.NumSet := .bn setValue2337 setValue2338
def setValue2340 : Flapjack.NumSet := .bn setValue2335 setValue685
def setValue2341 : Flapjack.NumSet := .bn setValue2336 setValue2340
def setValue2342 : Flapjack.NumSet := .bn setValue2338 setValue2341
def setValue2343 : Flapjack.NumSet := .bn setValue2339 setValue2342
def setValue2344 : Flapjack.NumSet := .bn setValue2343 setValue2343
def setValue2345 : Flapjack.NumSet := .bn setValue0 setValue2344
def setValue2346 : Flapjack.NumSet := .bn setValue395 setValue2345
def tree485 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2989, 2981, 2977, 2973, 2969, 2965, 2761, 2765, 2769, 2773, 2777, 2781, 2785, 2789, 2793, 2797, 2801, 2805, 2809,
    2813, 2817, 2821, 2825, 2829, 2833, 2837, 2841, 2845, 2849, 2853, 2857, 2861, 2865, 2869, 2873, 2877, 2881, 2885,
    2889, 2893, 2897, 2901, 2905, 2909, 2913, 2917, 2921, 2925, 2929, 2933]
  [2, 4, 10, 6, 12, 8, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643,
    2647, 2651, 2655, 2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719,
    2723, 2727, 2731, 2735, 2739, 2743, 2747, 2751, 2755])).val
theorem tree485_def : tree485 = (Flapjack.RegAlloc.ClashTree.delta
  [2989, 2981, 2977, 2973, 2969, 2965, 2761, 2765, 2769, 2773, 2777, 2781, 2785, 2789, 2793, 2797, 2801, 2805, 2809,
    2813, 2817, 2821, 2825, 2829, 2833, 2837, 2841, 2845, 2849, 2853, 2857, 2861, 2865, 2869, 2873, 2877, 2881, 2885,
    2889, 2893, 2897, 2901, 2905, 2909, 2913, 2917, 2921, 2925, 2929, 2933]
  [2, 4, 10, 6, 12, 8, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643,
    2647, 2651, 2655, 2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719,
    2723, 2727, 2731, 2735, 2739, 2743, 2747, 2751, 2755]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal485 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2989, 2981, 2977, 2973, 2969, 2965, 2761, 2765, 2769, 2773, 2777, 2781, 2785, 2789, 2793, 2797, 2801, 2805, 2809,
    2813, 2817, 2821, 2825, 2829, 2833, 2837, 2841, 2845, 2849, 2853, 2857, 2861, 2865, 2869, 2873, 2877, 2881, 2885,
    2889, 2893, 2897, 2901, 2905, 2909, 2913, 2917, 2921, 2925, 2929, 2933]
  [2, 4, 10, 6, 12, 8, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643,
    2647, 2651, 2655, 2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719,
    2723, 2727, 2731, 2735, 2739, 2743, 2747, 2751, 2755]
def live485 : Flapjack.NumSet := setValue2332
def coloured485 : Flapjack.NumSet := setValue2334
def result485 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2346, setValue2183)
def tree486 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2346)).val
theorem tree486_def : tree486 = (.set setValue2346) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal486 : Flapjack.RegAlloc.ClashTree := .set setValue2346
def live486 : Flapjack.NumSet := setValue2346
def coloured486 : Flapjack.NumSet := setValue2183
def result486 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2346, setValue2183)
def tree487 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree486 tree485)).val
theorem tree487_def : tree487 = (.seq tree486 tree485) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal487 : Flapjack.RegAlloc.ClashTree := .seq literal486 literal485
def live487 : Flapjack.NumSet := setValue2332
def coloured487 : Flapjack.NumSet := setValue2334
def result487 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2346, setValue2183)
def setValue2347 : Flapjack.NumSet := .bn setValue1 setValue2331
def setValue2348 : Flapjack.NumSet := .bs setValue2317 () setValue0
def tree488 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree488_def : tree488 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal488 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live488 : Flapjack.NumSet := setValue2332
def coloured488 : Flapjack.NumSet := setValue2334
def result488 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2347, setValue2348)
def setValue2349 : Flapjack.NumSet := .bn setValue539 setValue539
def setValue2350 : Flapjack.NumSet := .bn setValue525 setValue491
def setValue2351 : Flapjack.NumSet := .bn setValue2349 setValue2350
def setValue2352 : Flapjack.NumSet := .bn setValue2351 setValue2344
def setValue2353 : Flapjack.NumSet := .bn setValue1 setValue2352
def setValue2354 : Flapjack.NumSet := .bn setValue395 setValue1239
def setValue2355 : Flapjack.NumSet := .bs setValue249 () setValue411
def setValue2356 : Flapjack.NumSet := .bn setValue2355 setValue1470
def setValue2357 : Flapjack.NumSet := .bn setValue2354 setValue2356
def setValue2358 : Flapjack.NumSet := .bn setValue312 setValue1093
def setValue2359 : Flapjack.NumSet := .bn setValue1037 setValue1318
def setValue2360 : Flapjack.NumSet := .bn setValue2358 setValue2359
def setValue2361 : Flapjack.NumSet := .bs setValue2357 () setValue2360
def setValue2362 : Flapjack.NumSet := .bn setValue2361 setValue0
def tree489 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 2761, 2765, 2769, 2773, 2777, 2781, 2785, 2789, 2793, 2797, 2801, 2805, 2809, 2813, 2817, 2821, 2825, 2829, 2833,
    2837, 2841, 2845, 2849, 2853, 2857, 2861, 2865, 2869, 2873, 2877, 2881, 2885, 2889, 2893, 2897, 2901, 2905, 2909,
    2913, 2917, 2921, 2925, 2929, 2933]
  [2, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643, 2647, 2651, 2655,
    2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719, 2723, 2727, 2731,
    2735, 2739, 2743, 2747, 2751, 2755])).val
theorem tree489_def : tree489 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 2761, 2765, 2769, 2773, 2777, 2781, 2785, 2789, 2793, 2797, 2801, 2805, 2809, 2813, 2817, 2821, 2825, 2829, 2833,
    2837, 2841, 2845, 2849, 2853, 2857, 2861, 2865, 2869, 2873, 2877, 2881, 2885, 2889, 2893, 2897, 2901, 2905, 2909,
    2913, 2917, 2921, 2925, 2929, 2933]
  [2, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643, 2647, 2651, 2655,
    2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719, 2723, 2727, 2731,
    2735, 2739, 2743, 2747, 2751, 2755]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal489 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 2761, 2765, 2769, 2773, 2777, 2781, 2785, 2789, 2793, 2797, 2801, 2805, 2809, 2813, 2817, 2821, 2825, 2829, 2833,
    2837, 2841, 2845, 2849, 2853, 2857, 2861, 2865, 2869, 2873, 2877, 2881, 2885, 2889, 2893, 2897, 2901, 2905, 2909,
    2913, 2917, 2921, 2925, 2929, 2933]
  [2, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643, 2647, 2651, 2655,
    2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719, 2723, 2727, 2731,
    2735, 2739, 2743, 2747, 2751, 2755]
def live489 : Flapjack.NumSet := setValue2347
def coloured489 : Flapjack.NumSet := setValue2348
def result489 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2353, setValue2362)
def tree490 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree489 tree488)).val
theorem tree490_def : tree490 = (.seq tree489 tree488) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal490 : Flapjack.RegAlloc.ClashTree := .seq literal489 literal488
def live490 : Flapjack.NumSet := setValue2332
def coloured490 : Flapjack.NumSet := setValue2334
def result490 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2353, setValue2362)
def setValue2363 : Flapjack.NumSet := .bn setValue1 setValue2345
def tree491 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2363)).val
theorem tree491_def : tree491 = (.set setValue2363) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal491 : Flapjack.RegAlloc.ClashTree := .set setValue2363
def live491 : Flapjack.NumSet := setValue2353
def coloured491 : Flapjack.NumSet := setValue2362
def result491 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2363, setValue2207)
def tree492 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree491 tree490)).val
theorem tree492_def : tree492 = (.seq tree491 tree490) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal492 : Flapjack.RegAlloc.ClashTree := .seq literal491 literal490
def live492 : Flapjack.NumSet := setValue2332
def coloured492 : Flapjack.NumSet := setValue2334
def result492 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2363, setValue2207)
def tree493 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2346) tree487 tree492)).val
theorem tree493_def : tree493 = (.branch (some setValue2346) tree487 tree492) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal493 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2346) literal487 literal492
def live493 : Flapjack.NumSet := setValue2332
def coloured493 : Flapjack.NumSet := setValue2334
def result493 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2346, setValue2183)
def tree494 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree493 tree484)).val
theorem tree494_def : tree494 = (.seq tree493 tree484) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal494 : Flapjack.RegAlloc.ClashTree := .seq literal493 literal484
def live494 : Flapjack.NumSet := setValue0
def coloured494 : Flapjack.NumSet := setValue0
def result494 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2346, setValue2183)
def setValue2364 : Flapjack.NumSet := .bn setValue17 setValue17
def setValue2365 : Flapjack.NumSet := .bn setValue30 setValue2364
def setValue2366 : Flapjack.NumSet := .bn setValue2365 setValue2365
def setValue2367 : Flapjack.NumSet := .bn setValue2364 setValue2364
def setValue2368 : Flapjack.NumSet := .bn setValue2367 setValue1874
def setValue2369 : Flapjack.NumSet := .bn setValue2366 setValue2368
def setValue2370 : Flapjack.NumSet := .bn setValue2369 setValue2369
def setValue2371 : Flapjack.NumSet := .bn setValue2367 setValue2365
def setValue2372 : Flapjack.NumSet := .bn setValue2371 setValue2368
def setValue2373 : Flapjack.NumSet := .bn setValue2364 setValue1009
def setValue2374 : Flapjack.NumSet := .bn setValue2367 setValue2373
def setValue2375 : Flapjack.NumSet := .bn setValue2368 setValue2374
def setValue2376 : Flapjack.NumSet := .bn setValue2372 setValue2375
def setValue2377 : Flapjack.NumSet := .bn setValue2370 setValue2376
def setValue2378 : Flapjack.NumSet := .bn setValue2377 setValue0
def setValue2379 : Flapjack.NumSet := .bn setValue0 setValue2378
def setValue2380 : Flapjack.NumSet := .bn setValue2180 setValue2181
def setValue2381 : Flapjack.NumSet := .bs setValue2380 () setValue0
def tree495 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643,
    2647, 2651, 2655, 2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719,
    2723, 2727, 2731, 2735, 2739, 2743, 2747, 2751, 2755]
  [2553, 2545, 2537, 2529, 2541, 2533, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373,
    2377, 2381, 2385, 2389, 2393, 2397, 2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449,
    2453, 2457, 2461, 2465, 2469, 2473, 2477, 2481, 2485, 2489, 2493, 2497])).val
theorem tree495_def : tree495 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643,
    2647, 2651, 2655, 2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719,
    2723, 2727, 2731, 2735, 2739, 2743, 2747, 2751, 2755]
  [2553, 2545, 2537, 2529, 2541, 2533, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373,
    2377, 2381, 2385, 2389, 2393, 2397, 2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449,
    2453, 2457, 2461, 2465, 2469, 2473, 2477, 2481, 2485, 2489, 2493, 2497]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal495 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 2583, 2587, 2591, 2595, 2599, 2603, 2607, 2611, 2615, 2619, 2623, 2627, 2631, 2635, 2639, 2643,
    2647, 2651, 2655, 2659, 2663, 2667, 2671, 2675, 2679, 2683, 2687, 2691, 2695, 2699, 2703, 2707, 2711, 2715, 2719,
    2723, 2727, 2731, 2735, 2739, 2743, 2747, 2751, 2755]
  [2553, 2545, 2537, 2529, 2541, 2533, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373,
    2377, 2381, 2385, 2389, 2393, 2397, 2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449,
    2453, 2457, 2461, 2465, 2469, 2473, 2477, 2481, 2485, 2489, 2493, 2497]
def live495 : Flapjack.NumSet := setValue2346
def coloured495 : Flapjack.NumSet := setValue2183
def result495 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2379, setValue2381)
def tree496 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree495 tree494)).val
theorem tree496_def : tree496 = (.seq tree495 tree494) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal496 : Flapjack.RegAlloc.ClashTree := .seq literal495 literal494
def live496 : Flapjack.NumSet := setValue0
def coloured496 : Flapjack.NumSet := setValue0
def result496 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2379, setValue2381)
def tree497 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree497_def : tree497 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal497 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live497 : Flapjack.NumSet := setValue2379
def coloured497 : Flapjack.NumSet := setValue2381
def result497 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2379, setValue2381)
def tree498 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree497 tree496)).val
theorem tree498_def : tree498 = (.seq tree497 tree496) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal498 : Flapjack.RegAlloc.ClashTree := .seq literal497 literal496
def live498 : Flapjack.NumSet := setValue0
def coloured498 : Flapjack.NumSet := setValue0
def result498 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2379, setValue2381)
def setValue2382 : Flapjack.NumSet := .bn setValue1223 setValue1223
def setValue2383 : Flapjack.NumSet := .bn setValue2382 setValue1224
def setValue2384 : Flapjack.NumSet := .bn setValue2383 setValue1917
def setValue2385 : Flapjack.NumSet := .bn setValue1223 setValue17
def setValue2386 : Flapjack.NumSet := .bn setValue1224 setValue2385
def setValue2387 : Flapjack.NumSet := .bn setValue2383 setValue2386
def setValue2388 : Flapjack.NumSet := .bn setValue2384 setValue2387
def setValue2389 : Flapjack.NumSet := .bn setValue2388 setValue2388
def setValue2390 : Flapjack.NumSet := .bn setValue1917 setValue2386
def setValue2391 : Flapjack.NumSet := .bn setValue2387 setValue2390
def setValue2392 : Flapjack.NumSet := .bn setValue2388 setValue2391
def setValue2393 : Flapjack.NumSet := .bn setValue2389 setValue2392
def setValue2394 : Flapjack.NumSet := .bn setValue0 setValue2393
def setValue2395 : Flapjack.NumSet := .bn setValue395 setValue2394
def tree499 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2553, 2545, 2541, 2537, 2533, 2529, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373,
    2377, 2381, 2385, 2389, 2393, 2397, 2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449,
    2453, 2457, 2461, 2465, 2469, 2473, 2477, 2481, 2485, 2489, 2493, 2497]
  [2, 4, 10, 6, 12, 8, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207,
    2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267, 2271, 2275, 2279, 2283,
    2287, 2291, 2295, 2299, 2303, 2307, 2311, 2315, 2319])).val
theorem tree499_def : tree499 = (Flapjack.RegAlloc.ClashTree.delta
  [2553, 2545, 2541, 2537, 2533, 2529, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373,
    2377, 2381, 2385, 2389, 2393, 2397, 2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449,
    2453, 2457, 2461, 2465, 2469, 2473, 2477, 2481, 2485, 2489, 2493, 2497]
  [2, 4, 10, 6, 12, 8, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207,
    2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267, 2271, 2275, 2279, 2283,
    2287, 2291, 2295, 2299, 2303, 2307, 2311, 2315, 2319]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal499 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2553, 2545, 2541, 2537, 2533, 2529, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373,
    2377, 2381, 2385, 2389, 2393, 2397, 2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449,
    2453, 2457, 2461, 2465, 2469, 2473, 2477, 2481, 2485, 2489, 2493, 2497]
  [2, 4, 10, 6, 12, 8, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207,
    2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267, 2271, 2275, 2279, 2283,
    2287, 2291, 2295, 2299, 2303, 2307, 2311, 2315, 2319]
def live499 : Flapjack.NumSet := setValue2379
def coloured499 : Flapjack.NumSet := setValue2381
def result499 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2395, setValue2183)
def tree500 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2395)).val
theorem tree500_def : tree500 = (.set setValue2395) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal500 : Flapjack.RegAlloc.ClashTree := .set setValue2395
def live500 : Flapjack.NumSet := setValue2395
def coloured500 : Flapjack.NumSet := setValue2183
def result500 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2395, setValue2183)
def tree501 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree500 tree499)).val
theorem tree501_def : tree501 = (.seq tree500 tree499) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal501 : Flapjack.RegAlloc.ClashTree := .seq literal500 literal499
def live501 : Flapjack.NumSet := setValue2379
def coloured501 : Flapjack.NumSet := setValue2381
def result501 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2395, setValue2183)
def setValue2396 : Flapjack.NumSet := .bn setValue1 setValue2378
def setValue2397 : Flapjack.NumSet := .bs setValue2182 () setValue0
def tree502 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree502_def : tree502 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal502 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live502 : Flapjack.NumSet := setValue2379
def coloured502 : Flapjack.NumSet := setValue2381
def result502 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2396, setValue2397)
def setValue2398 : Flapjack.NumSet := .bn setValue0 setValue1012
def setValue2399 : Flapjack.NumSet := .bn setValue2398 setValue2398
def setValue2400 : Flapjack.NumSet := .bn setValue1014 setValue1014
def setValue2401 : Flapjack.NumSet := .bn setValue2399 setValue2400
def setValue2402 : Flapjack.NumSet := .bn setValue2401 setValue2393
def setValue2403 : Flapjack.NumSet := .bn setValue1 setValue2402
def tree503 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373, 2377, 2381, 2385, 2389, 2393, 2397,
    2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449, 2453, 2457, 2461, 2465, 2469, 2473,
    2477, 2481, 2485, 2489, 2493, 2497]
  [2, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219,
    2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267, 2271, 2275, 2279, 2283, 2287, 2291, 2295,
    2299, 2303, 2307, 2311, 2315, 2319])).val
theorem tree503_def : tree503 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373, 2377, 2381, 2385, 2389, 2393, 2397,
    2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449, 2453, 2457, 2461, 2465, 2469, 2473,
    2477, 2481, 2485, 2489, 2493, 2497]
  [2, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219,
    2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267, 2271, 2275, 2279, 2283, 2287, 2291, 2295,
    2299, 2303, 2307, 2311, 2315, 2319]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal503 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 2325, 2329, 2333, 2337, 2341, 2345, 2349, 2353, 2357, 2361, 2365, 2369, 2373, 2377, 2381, 2385, 2389, 2393, 2397,
    2401, 2405, 2409, 2413, 2417, 2421, 2425, 2429, 2433, 2437, 2441, 2445, 2449, 2453, 2457, 2461, 2465, 2469, 2473,
    2477, 2481, 2485, 2489, 2493, 2497]
  [2, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191, 2195, 2199, 2203, 2207, 2211, 2215, 2219,
    2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267, 2271, 2275, 2279, 2283, 2287, 2291, 2295,
    2299, 2303, 2307, 2311, 2315, 2319]
def live503 : Flapjack.NumSet := setValue2396
def coloured503 : Flapjack.NumSet := setValue2397
def result503 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2403, setValue2397)
def tree504 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree503 tree502)).val
theorem tree504_def : tree504 = (.seq tree503 tree502) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal504 : Flapjack.RegAlloc.ClashTree := .seq literal503 literal502
def live504 : Flapjack.NumSet := setValue2379
def coloured504 : Flapjack.NumSet := setValue2381
def result504 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2403, setValue2397)
def setValue2404 : Flapjack.NumSet := .bn setValue1 setValue2394
def tree505 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2404)).val
theorem tree505_def : tree505 = (.set setValue2404) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal505 : Flapjack.RegAlloc.ClashTree := .set setValue2404
def live505 : Flapjack.NumSet := setValue2403
def coloured505 : Flapjack.NumSet := setValue2397
def result505 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2404, setValue2207)
def tree506 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree505 tree504)).val
theorem tree506_def : tree506 = (.seq tree505 tree504) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal506 : Flapjack.RegAlloc.ClashTree := .seq literal505 literal504
def live506 : Flapjack.NumSet := setValue2379
def coloured506 : Flapjack.NumSet := setValue2381
def result506 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2404, setValue2207)
def setValue2405 : Flapjack.NumSet := .bn setValue440 setValue2394
def tree507 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2405) tree501 tree506)).val
theorem tree507_def : tree507 = (.branch (some setValue2405) tree501 tree506) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal507 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2405) literal501 literal506
def live507 : Flapjack.NumSet := setValue2379
def coloured507 : Flapjack.NumSet := setValue2381
def result507 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2405, setValue2213)
def tree508 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree507 tree498)).val
theorem tree508_def : tree508 = (.seq tree507 tree498) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal508 : Flapjack.RegAlloc.ClashTree := .seq literal507 literal498
def live508 : Flapjack.NumSet := setValue0
def coloured508 : Flapjack.NumSet := setValue0
def result508 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2405, setValue2213)
def setValue2406 : Flapjack.NumSet := .bn setValue57 setValue1223
def setValue2407 : Flapjack.NumSet := .bn setValue1428 setValue2406
def setValue2408 : Flapjack.NumSet := .bn setValue2071 setValue2407
def setValue2409 : Flapjack.NumSet := .bn setValue57 setValue57
def setValue2410 : Flapjack.NumSet := .bn setValue2409 setValue1428
def setValue2411 : Flapjack.NumSet := .bn setValue1428 setValue1428
def setValue2412 : Flapjack.NumSet := .bn setValue2410 setValue2411
def setValue2413 : Flapjack.NumSet := .bn setValue2408 setValue2412
def setValue2414 : Flapjack.NumSet := .bn setValue2410 setValue2407
def setValue2415 : Flapjack.NumSet := .bn setValue2409 setValue2406
def setValue2416 : Flapjack.NumSet := .bn setValue2415 setValue2411
def setValue2417 : Flapjack.NumSet := .bn setValue2414 setValue2416
def setValue2418 : Flapjack.NumSet := .bn setValue2413 setValue2417
def setValue2419 : Flapjack.NumSet := .bn setValue2408 setValue2416
def setValue2420 : Flapjack.NumSet := .bn setValue2412 setValue2416
def setValue2421 : Flapjack.NumSet := .bn setValue2419 setValue2420
def setValue2422 : Flapjack.NumSet := .bn setValue2418 setValue2421
def setValue2423 : Flapjack.NumSet := .bn setValue2422 setValue0
def setValue2424 : Flapjack.NumSet := .bn setValue0 setValue2423
def setValue2425 : Flapjack.NumSet := .bs setValue573 () setValue1268
def setValue2426 : Flapjack.NumSet := .bs setValue2178 () setValue1688
def setValue2427 : Flapjack.NumSet := .bs setValue2425 () setValue2426
def setValue2428 : Flapjack.NumSet := .bn setValue411 setValue161
def setValue2429 : Flapjack.NumSet := .bs setValue37 () setValue16
def setValue2430 : Flapjack.NumSet := .bs setValue2428 () setValue2429
def setValue2431 : Flapjack.NumSet := .bs setValue101 () setValue0
def setValue2432 : Flapjack.NumSet := .bs setValue1055 () setValue2431
def setValue2433 : Flapjack.NumSet := .bs setValue2430 () setValue2432
def setValue2434 : Flapjack.NumSet := .bn setValue2427 setValue2433
def setValue2435 : Flapjack.NumSet := .bs setValue2434 () setValue0
def tree509 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191,
    2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267,
    2271, 2275, 2279, 2283, 2287, 2291, 2295, 2299, 2303, 2307, 2311, 2315, 2319]
  [2033, 1981, 1921, 1961, 1965, 1909, 2077, 2069, 2081, 2073, 2085, 2089, 1889, 1893, 1897, 1901, 2089, 1905, 1909,
    1913, 1917, 1921, 1925, 1929, 1933, 1937, 1941, 1945, 1949, 1953, 1957, 1961, 2085, 1965, 1969, 2081, 1973, 1977,
    1981, 1985, 1989, 1993, 2077, 1997, 2001, 2005, 2009, 2013, 2017, 2073, 2021, 2025, 2029, 2033, 2069, 2037])).val
theorem tree509_def : tree509 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191,
    2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267,
    2271, 2275, 2279, 2283, 2287, 2291, 2295, 2299, 2303, 2307, 2311, 2315, 2319]
  [2033, 1981, 1921, 1961, 1965, 1909, 2077, 2069, 2081, 2073, 2085, 2089, 1889, 1893, 1897, 1901, 2089, 1905, 1909,
    1913, 1917, 1921, 1925, 1929, 1933, 1937, 1941, 1945, 1949, 1953, 1957, 1961, 2085, 1965, 1969, 2081, 1973, 1977,
    1981, 1985, 1989, 1993, 2077, 1997, 2001, 2005, 2009, 2013, 2017, 2073, 2021, 2025, 2029, 2033, 2069, 2037]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal509 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 2147, 2151, 2155, 2159, 2163, 2167, 2171, 2175, 2179, 2183, 2187, 2191,
    2195, 2199, 2203, 2207, 2211, 2215, 2219, 2223, 2227, 2231, 2235, 2239, 2243, 2247, 2251, 2255, 2259, 2263, 2267,
    2271, 2275, 2279, 2283, 2287, 2291, 2295, 2299, 2303, 2307, 2311, 2315, 2319]
  [2033, 1981, 1921, 1961, 1965, 1909, 2077, 2069, 2081, 2073, 2085, 2089, 1889, 1893, 1897, 1901, 2089, 1905, 1909,
    1913, 1917, 1921, 1925, 1929, 1933, 1937, 1941, 1945, 1949, 1953, 1957, 1961, 2085, 1965, 1969, 2081, 1973, 1977,
    1981, 1985, 1989, 1993, 2077, 1997, 2001, 2005, 2009, 2013, 2017, 2073, 2021, 2025, 2029, 2033, 2069, 2037]
def live509 : Flapjack.NumSet := setValue2405
def coloured509 : Flapjack.NumSet := setValue2213
def result509 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2424, setValue2435)
def tree510 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree509 tree508)).val
theorem tree510_def : tree510 = (.seq tree509 tree508) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal510 : Flapjack.RegAlloc.ClashTree := .seq literal509 literal508
def live510 : Flapjack.NumSet := setValue0
def coloured510 : Flapjack.NumSet := setValue0
def result510 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2424, setValue2435)
def tree511 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree511_def : tree511 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal511 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live511 : Flapjack.NumSet := setValue2424
def coloured511 : Flapjack.NumSet := setValue2435
def result511 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2424, setValue2435)
def tree512 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree511 tree510)).val
theorem tree512_def : tree512 = (.seq tree511 tree510) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal512 : Flapjack.RegAlloc.ClashTree := .seq literal511 literal510
def live512 : Flapjack.NumSet := setValue0
def coloured512 : Flapjack.NumSet := setValue0
def result512 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2424, setValue2435)
def setValue2436 : Flapjack.NumSet := .bn setValue3 setValue57
def setValue2437 : Flapjack.NumSet := .bn setValue2436 setValue1510
def setValue2438 : Flapjack.NumSet := .bn setValue2099 setValue2437
def setValue2439 : Flapjack.NumSet := .bn setValue2438 setValue2438
def setValue2440 : Flapjack.NumSet := .bn setValue2099 setValue1516
def setValue2441 : Flapjack.NumSet := .bn setValue2438 setValue2440
def setValue2442 : Flapjack.NumSet := .bn setValue2439 setValue2441
def setValue2443 : Flapjack.NumSet := .bn setValue2442 setValue2442
def setValue2444 : Flapjack.NumSet := .bn setValue0 setValue2443
def setValue2445 : Flapjack.NumSet := .bn setValue395 setValue2444
def setValue2446 : Flapjack.NumSet := .bn setValue799 setValue1239
def setValue2447 : Flapjack.NumSet := .bs setValue2178 () setValue1769
def setValue2448 : Flapjack.NumSet := .bs setValue2446 () setValue2447
def setValue2449 : Flapjack.NumSet := .bn setValue37 setValue38
def setValue2450 : Flapjack.NumSet := .bs setValue1470 () setValue2449
def setValue2451 : Flapjack.NumSet := .bn setValue311 setValue15
def setValue2452 : Flapjack.NumSet := .bs setValue1037 () setValue2451
def setValue2453 : Flapjack.NumSet := .bs setValue2450 () setValue2452
def setValue2454 : Flapjack.NumSet := .bs setValue2448 () setValue2453
def setValue2455 : Flapjack.NumSet := .bn setValue2454 setValue0
def tree513 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2089, 2085, 2081, 2077, 2073, 2069, 1889, 1893, 1897, 1901, 1905, 1909, 1913, 1917, 1921, 1925, 1929, 1933, 1937,
    1941, 1945, 1949, 1953, 1957, 1961, 1965, 1969, 1973, 1977, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013,
    2017, 2021, 2025, 2029, 2033, 2037]
  [12, 10, 6, 2, 8, 4, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779, 1783, 1787, 1791, 1795,
    1799, 1803, 1807, 1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855, 1859, 1863, 1867, 1871,
    1875, 1879, 1883])).val
theorem tree513_def : tree513 = (Flapjack.RegAlloc.ClashTree.delta
  [2089, 2085, 2081, 2077, 2073, 2069, 1889, 1893, 1897, 1901, 1905, 1909, 1913, 1917, 1921, 1925, 1929, 1933, 1937,
    1941, 1945, 1949, 1953, 1957, 1961, 1965, 1969, 1973, 1977, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013,
    2017, 2021, 2025, 2029, 2033, 2037]
  [12, 10, 6, 2, 8, 4, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779, 1783, 1787, 1791, 1795,
    1799, 1803, 1807, 1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855, 1859, 1863, 1867, 1871,
    1875, 1879, 1883]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal513 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2089, 2085, 2081, 2077, 2073, 2069, 1889, 1893, 1897, 1901, 1905, 1909, 1913, 1917, 1921, 1925, 1929, 1933, 1937,
    1941, 1945, 1949, 1953, 1957, 1961, 1965, 1969, 1973, 1977, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013,
    2017, 2021, 2025, 2029, 2033, 2037]
  [12, 10, 6, 2, 8, 4, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779, 1783, 1787, 1791, 1795,
    1799, 1803, 1807, 1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855, 1859, 1863, 1867, 1871,
    1875, 1879, 1883]
def live513 : Flapjack.NumSet := setValue2424
def coloured513 : Flapjack.NumSet := setValue2435
def result513 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2445, setValue2455)
def tree514 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2445)).val
theorem tree514_def : tree514 = (.set setValue2445) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal514 : Flapjack.RegAlloc.ClashTree := .set setValue2445
def live514 : Flapjack.NumSet := setValue2445
def coloured514 : Flapjack.NumSet := setValue2455
def result514 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2445, setValue2455)
def tree515 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree514 tree513)).val
theorem tree515_def : tree515 = (.seq tree514 tree513) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal515 : Flapjack.RegAlloc.ClashTree := .seq literal514 literal513
def live515 : Flapjack.NumSet := setValue2424
def coloured515 : Flapjack.NumSet := setValue2435
def result515 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2445, setValue2455)
def setValue2456 : Flapjack.NumSet := .bn setValue1 setValue2423
def setValue2457 : Flapjack.NumSet := .bs setValue2427 () setValue2433
def setValue2458 : Flapjack.NumSet := .bs setValue2457 () setValue0
def tree516 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree516_def : tree516 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal516 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live516 : Flapjack.NumSet := setValue2424
def coloured516 : Flapjack.NumSet := setValue2435
def result516 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2456, setValue2458)
def setValue2459 : Flapjack.NumSet := .bn setValue1396 setValue0
def setValue2460 : Flapjack.NumSet := .bn setValue2459 setValue1400
def setValue2461 : Flapjack.NumSet := .bn setValue0 setValue1363
def setValue2462 : Flapjack.NumSet := .bn setValue1400 setValue2461
def setValue2463 : Flapjack.NumSet := .bn setValue2460 setValue2462
def setValue2464 : Flapjack.NumSet := .bn setValue2463 setValue2443
def setValue2465 : Flapjack.NumSet := .bn setValue1 setValue2464
def setValue2466 : Flapjack.NumSet := .bs setValue799 () setValue1268
def setValue2467 : Flapjack.NumSet := .bn setValue2178 setValue1797
def setValue2468 : Flapjack.NumSet := .bn setValue2466 setValue2467
def setValue2469 : Flapjack.NumSet := .bs setValue37 () setValue38
def setValue2470 : Flapjack.NumSet := .bn setValue1470 setValue2469
def setValue2471 : Flapjack.NumSet := .bs setValue311 () setValue15
def setValue2472 : Flapjack.NumSet := .bn setValue1055 setValue2471
def setValue2473 : Flapjack.NumSet := .bn setValue2470 setValue2472
def setValue2474 : Flapjack.NumSet := .bs setValue2468 () setValue2473
def setValue2475 : Flapjack.NumSet := .bn setValue2474 setValue0
def tree517 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 1889, 1893, 1897, 1901, 1905, 1909, 1913, 1917, 1921, 1925, 1929, 1933, 1937, 1941, 1945, 1949, 1953, 1957, 1961,
    1965, 1969, 1973, 1977, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037]
  [2, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779, 1783, 1787, 1791, 1795, 1799, 1803, 1807,
    1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855, 1859, 1863, 1867, 1871, 1875, 1879, 1883])).val
theorem tree517_def : tree517 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 1889, 1893, 1897, 1901, 1905, 1909, 1913, 1917, 1921, 1925, 1929, 1933, 1937, 1941, 1945, 1949, 1953, 1957, 1961,
    1965, 1969, 1973, 1977, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037]
  [2, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779, 1783, 1787, 1791, 1795, 1799, 1803, 1807,
    1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855, 1859, 1863, 1867, 1871, 1875, 1879, 1883]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal517 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 1889, 1893, 1897, 1901, 1905, 1909, 1913, 1917, 1921, 1925, 1929, 1933, 1937, 1941, 1945, 1949, 1953, 1957, 1961,
    1965, 1969, 1973, 1977, 1981, 1985, 1989, 1993, 1997, 2001, 2005, 2009, 2013, 2017, 2021, 2025, 2029, 2033, 2037]
  [2, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779, 1783, 1787, 1791, 1795, 1799, 1803, 1807,
    1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855, 1859, 1863, 1867, 1871, 1875, 1879, 1883]
def live517 : Flapjack.NumSet := setValue2456
def coloured517 : Flapjack.NumSet := setValue2458
def result517 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2465, setValue2475)
def tree518 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree517 tree516)).val
theorem tree518_def : tree518 = (.seq tree517 tree516) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal518 : Flapjack.RegAlloc.ClashTree := .seq literal517 literal516
def live518 : Flapjack.NumSet := setValue2424
def coloured518 : Flapjack.NumSet := setValue2435
def result518 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2465, setValue2475)
def setValue2476 : Flapjack.NumSet := .bn setValue1 setValue2444
def setValue2477 : Flapjack.NumSet := .bn setValue2178 setValue1769
def setValue2478 : Flapjack.NumSet := .bn setValue2446 setValue2477
def setValue2479 : Flapjack.NumSet := .bn setValue1470 setValue2449
def setValue2480 : Flapjack.NumSet := .bn setValue1037 setValue2451
def setValue2481 : Flapjack.NumSet := .bn setValue2479 setValue2480
def setValue2482 : Flapjack.NumSet := .bs setValue2478 () setValue2481
def setValue2483 : Flapjack.NumSet := .bn setValue2482 setValue0
def tree519 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2476)).val
theorem tree519_def : tree519 = (.set setValue2476) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal519 : Flapjack.RegAlloc.ClashTree := .set setValue2476
def live519 : Flapjack.NumSet := setValue2465
def coloured519 : Flapjack.NumSet := setValue2475
def result519 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2476, setValue2483)
def tree520 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree519 tree518)).val
theorem tree520_def : tree520 = (.seq tree519 tree518) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal520 : Flapjack.RegAlloc.ClashTree := .seq literal519 literal518
def live520 : Flapjack.NumSet := setValue2424
def coloured520 : Flapjack.NumSet := setValue2435
def result520 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2476, setValue2483)
def setValue2484 : Flapjack.NumSet := .bn setValue440 setValue2444
def setValue2485 : Flapjack.NumSet := .bs setValue2178 () setValue1797
def setValue2486 : Flapjack.NumSet := .bs setValue2466 () setValue2485
def setValue2487 : Flapjack.NumSet := .bs setValue1470 () setValue2469
def setValue2488 : Flapjack.NumSet := .bs setValue1055 () setValue2471
def setValue2489 : Flapjack.NumSet := .bs setValue2487 () setValue2488
def setValue2490 : Flapjack.NumSet := .bs setValue2486 () setValue2489
def setValue2491 : Flapjack.NumSet := .bn setValue2490 setValue0
def tree521 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2484) tree515 tree520)).val
theorem tree521_def : tree521 = (.branch (some setValue2484) tree515 tree520) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal521 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2484) literal515 literal520
def live521 : Flapjack.NumSet := setValue2424
def coloured521 : Flapjack.NumSet := setValue2435
def result521 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2484, setValue2491)
def tree522 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree521 tree512)).val
theorem tree522_def : tree522 = (.seq tree521 tree512) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal522 : Flapjack.RegAlloc.ClashTree := .seq literal521 literal512
def live522 : Flapjack.NumSet := setValue0
def coloured522 : Flapjack.NumSet := setValue0
def result522 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2484, setValue2491)
def setValue2492 : Flapjack.NumSet := .bn setValue2223 setValue4
def setValue2493 : Flapjack.NumSet := .bn setValue397 setValue4
def setValue2494 : Flapjack.NumSet := .bn setValue2492 setValue2493
def setValue2495 : Flapjack.NumSet := .bn setValue3 setValue3
def setValue2496 : Flapjack.NumSet := .bn setValue2223 setValue2495
def setValue2497 : Flapjack.NumSet := .bn setValue2493 setValue2496
def setValue2498 : Flapjack.NumSet := .bn setValue2494 setValue2497
def setValue2499 : Flapjack.NumSet := .bn setValue2493 setValue2492
def setValue2500 : Flapjack.NumSet := .bn setValue2499 setValue2497
def setValue2501 : Flapjack.NumSet := .bn setValue2498 setValue2500
def setValue2502 : Flapjack.NumSet := .bn setValue2492 setValue2492
def setValue2503 : Flapjack.NumSet := .bn setValue2502 setValue2497
def setValue2504 : Flapjack.NumSet := .bn setValue4 setValue2495
def setValue2505 : Flapjack.NumSet := .bn setValue2493 setValue2504
def setValue2506 : Flapjack.NumSet := .bn setValue2499 setValue2505
def setValue2507 : Flapjack.NumSet := .bn setValue2503 setValue2506
def setValue2508 : Flapjack.NumSet := .bn setValue2501 setValue2507
def setValue2509 : Flapjack.NumSet := .bn setValue2508 setValue0
def setValue2510 : Flapjack.NumSet := .bn setValue0 setValue2509
def setValue2511 : Flapjack.NumSet := .bs setValue84 () setValue1268
def setValue2512 : Flapjack.NumSet := .bn setValue38 setValue411
def setValue2513 : Flapjack.NumSet := .bs setValue2 () setValue38
def setValue2514 : Flapjack.NumSet := .bs setValue2512 () setValue2513
def setValue2515 : Flapjack.NumSet := .bs setValue2511 () setValue2514
def setValue2516 : Flapjack.NumSet := .bn setValue311 setValue249
def setValue2517 : Flapjack.NumSet := .bs setValue2516 () setValue676
def setValue2518 : Flapjack.NumSet := .bs setValue2517 () setValue2488
def setValue2519 : Flapjack.NumSet := .bn setValue2515 setValue2518
def setValue2520 : Flapjack.NumSet := .bs setValue2519 () setValue0
def tree523 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779,
    1783, 1787, 1791, 1795, 1799, 1803, 1807, 1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855,
    1859, 1863, 1867, 1871, 1875, 1879, 1883]
  [1565, 1597, 1545, 1481, 1493, 1529, 1665, 1657, 1669, 1661, 1673, 1677, 1477, 1481, 1485, 1489, 1493, 1497, 1501,
    1505, 1509, 1513, 1517, 1521, 1525, 1529, 1533, 1537, 1541, 1545, 1549, 1553, 1557, 1561, 1565, 1569, 1573, 1577,
    1581, 1585, 1589, 1593, 1597, 1601, 1605, 1609, 1613, 1617, 1621, 1625])).val
theorem tree523_def : tree523 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779,
    1783, 1787, 1791, 1795, 1799, 1803, 1807, 1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855,
    1859, 1863, 1867, 1871, 1875, 1879, 1883]
  [1565, 1597, 1545, 1481, 1493, 1529, 1665, 1657, 1669, 1661, 1673, 1677, 1477, 1481, 1485, 1489, 1493, 1497, 1501,
    1505, 1509, 1513, 1517, 1521, 1525, 1529, 1533, 1537, 1541, 1545, 1549, 1553, 1557, 1561, 1565, 1569, 1573, 1577,
    1581, 1585, 1589, 1593, 1597, 1601, 1605, 1609, 1613, 1617, 1621, 1625]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal523 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 1735, 1739, 1743, 1747, 1751, 1755, 1759, 1763, 1767, 1771, 1775, 1779,
    1783, 1787, 1791, 1795, 1799, 1803, 1807, 1811, 1815, 1819, 1823, 1827, 1831, 1835, 1839, 1843, 1847, 1851, 1855,
    1859, 1863, 1867, 1871, 1875, 1879, 1883]
  [1565, 1597, 1545, 1481, 1493, 1529, 1665, 1657, 1669, 1661, 1673, 1677, 1477, 1481, 1485, 1489, 1493, 1497, 1501,
    1505, 1509, 1513, 1517, 1521, 1525, 1529, 1533, 1537, 1541, 1545, 1549, 1553, 1557, 1561, 1565, 1569, 1573, 1577,
    1581, 1585, 1589, 1593, 1597, 1601, 1605, 1609, 1613, 1617, 1621, 1625]
def live523 : Flapjack.NumSet := setValue2484
def coloured523 : Flapjack.NumSet := setValue2491
def result523 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2510, setValue2520)
def tree524 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree523 tree522)).val
theorem tree524_def : tree524 = (.seq tree523 tree522) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal524 : Flapjack.RegAlloc.ClashTree := .seq literal523 literal522
def live524 : Flapjack.NumSet := setValue0
def coloured524 : Flapjack.NumSet := setValue0
def result524 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2510, setValue2520)
def tree525 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree525_def : tree525 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal525 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live525 : Flapjack.NumSet := setValue2510
def coloured525 : Flapjack.NumSet := setValue2520
def result525 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2510, setValue2520)
def tree526 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree525 tree524)).val
theorem tree526_def : tree526 = (.seq tree525 tree524) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal526 : Flapjack.RegAlloc.ClashTree := .seq literal525 literal524
def live526 : Flapjack.NumSet := setValue0
def coloured526 : Flapjack.NumSet := setValue0
def result526 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2510, setValue2520)
def setValue2521 : Flapjack.NumSet := .bn setValue684 setValue2214
def setValue2522 : Flapjack.NumSet := .bn setValue2521 setValue2220
def setValue2523 : Flapjack.NumSet := .bn setValue2522 setValue2522
def setValue2524 : Flapjack.NumSet := .bn setValue2220 setValue2220
def setValue2525 : Flapjack.NumSet := .bn setValue2522 setValue2524
def setValue2526 : Flapjack.NumSet := .bn setValue2523 setValue2525
def setValue2527 : Flapjack.NumSet := .bn setValue2220 setValue2222
def setValue2528 : Flapjack.NumSet := .bn setValue2522 setValue2527
def setValue2529 : Flapjack.NumSet := .bn setValue2525 setValue2528
def setValue2530 : Flapjack.NumSet := .bn setValue2526 setValue2529
def setValue2531 : Flapjack.NumSet := .bn setValue0 setValue2530
def setValue2532 : Flapjack.NumSet := .bn setValue395 setValue2531
def setValue2533 : Flapjack.NumSet := .bs setValue2446 () setValue2179
def setValue2534 : Flapjack.NumSet := .bs setValue2516 () setValue573
def setValue2535 : Flapjack.NumSet := .bs setValue2534 () setValue1241
def setValue2536 : Flapjack.NumSet := .bs setValue2533 () setValue2535
def setValue2537 : Flapjack.NumSet := .bn setValue2536 setValue0
def tree527 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [1677, 1673, 1669, 1665, 1661, 1657, 1477, 1481, 1485, 1489, 1493, 1497, 1501, 1505, 1509, 1513, 1517, 1521, 1525,
    1529, 1533, 1537, 1541, 1545, 1549, 1553, 1557, 1561, 1565, 1569, 1573, 1577, 1581, 1585, 1589, 1593, 1597, 1601,
    1605, 1609, 1613, 1617, 1621, 1625]
  [12, 10, 6, 2, 8, 4, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383,
    1387, 1391, 1395, 1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459,
    1463, 1467, 1471])).val
theorem tree527_def : tree527 = (Flapjack.RegAlloc.ClashTree.delta
  [1677, 1673, 1669, 1665, 1661, 1657, 1477, 1481, 1485, 1489, 1493, 1497, 1501, 1505, 1509, 1513, 1517, 1521, 1525,
    1529, 1533, 1537, 1541, 1545, 1549, 1553, 1557, 1561, 1565, 1569, 1573, 1577, 1581, 1585, 1589, 1593, 1597, 1601,
    1605, 1609, 1613, 1617, 1621, 1625]
  [12, 10, 6, 2, 8, 4, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383,
    1387, 1391, 1395, 1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459,
    1463, 1467, 1471]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal527 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [1677, 1673, 1669, 1665, 1661, 1657, 1477, 1481, 1485, 1489, 1493, 1497, 1501, 1505, 1509, 1513, 1517, 1521, 1525,
    1529, 1533, 1537, 1541, 1545, 1549, 1553, 1557, 1561, 1565, 1569, 1573, 1577, 1581, 1585, 1589, 1593, 1597, 1601,
    1605, 1609, 1613, 1617, 1621, 1625]
  [12, 10, 6, 2, 8, 4, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383,
    1387, 1391, 1395, 1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459,
    1463, 1467, 1471]
def live527 : Flapjack.NumSet := setValue2510
def coloured527 : Flapjack.NumSet := setValue2520
def result527 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2532, setValue2537)
def tree528 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2532)).val
theorem tree528_def : tree528 = (.set setValue2532) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal528 : Flapjack.RegAlloc.ClashTree := .set setValue2532
def live528 : Flapjack.NumSet := setValue2532
def coloured528 : Flapjack.NumSet := setValue2537
def result528 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2532, setValue2537)
def tree529 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree528 tree527)).val
theorem tree529_def : tree529 = (.seq tree528 tree527) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal529 : Flapjack.RegAlloc.ClashTree := .seq literal528 literal527
def live529 : Flapjack.NumSet := setValue2510
def coloured529 : Flapjack.NumSet := setValue2520
def result529 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2532, setValue2537)
def setValue2538 : Flapjack.NumSet := .bn setValue1 setValue2509
def setValue2539 : Flapjack.NumSet := .bs setValue2515 () setValue2518
def setValue2540 : Flapjack.NumSet := .bs setValue2539 () setValue0
def tree530 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree530_def : tree530 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal530 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live530 : Flapjack.NumSet := setValue2510
def coloured530 : Flapjack.NumSet := setValue2520
def result530 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2538, setValue2540)
def setValue2541 : Flapjack.NumSet := .bn setValue1716 setValue1631
def setValue2542 : Flapjack.NumSet := .bn setValue0 setValue1631
def setValue2543 : Flapjack.NumSet := .bn setValue2541 setValue2542
def setValue2544 : Flapjack.NumSet := .bn setValue2543 setValue2543
def setValue2545 : Flapjack.NumSet := .bn setValue2544 setValue2530
def setValue2546 : Flapjack.NumSet := .bn setValue1 setValue2545
def setValue2547 : Flapjack.NumSet := .bn setValue2466 setValue2195
def setValue2548 : Flapjack.NumSet := .bn setValue2516 setValue676
def setValue2549 : Flapjack.NumSet := .bn setValue2548 setValue2198
def setValue2550 : Flapjack.NumSet := .bs setValue2547 () setValue2549
def setValue2551 : Flapjack.NumSet := .bn setValue2550 setValue0
def tree531 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 1477, 1481, 1485, 1489, 1493, 1497, 1501, 1505, 1509, 1513, 1517, 1521, 1525, 1529, 1533, 1537, 1541, 1545, 1549,
    1553, 1557, 1561, 1565, 1569, 1573, 1577, 1581, 1585, 1589, 1593, 1597, 1601, 1605, 1609, 1613, 1617, 1621, 1625]
  [2, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383, 1387, 1391, 1395,
    1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459, 1463, 1467, 1471])).val
theorem tree531_def : tree531 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 1477, 1481, 1485, 1489, 1493, 1497, 1501, 1505, 1509, 1513, 1517, 1521, 1525, 1529, 1533, 1537, 1541, 1545, 1549,
    1553, 1557, 1561, 1565, 1569, 1573, 1577, 1581, 1585, 1589, 1593, 1597, 1601, 1605, 1609, 1613, 1617, 1621, 1625]
  [2, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383, 1387, 1391, 1395,
    1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459, 1463, 1467, 1471]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal531 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 1477, 1481, 1485, 1489, 1493, 1497, 1501, 1505, 1509, 1513, 1517, 1521, 1525, 1529, 1533, 1537, 1541, 1545, 1549,
    1553, 1557, 1561, 1565, 1569, 1573, 1577, 1581, 1585, 1589, 1593, 1597, 1601, 1605, 1609, 1613, 1617, 1621, 1625]
  [2, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383, 1387, 1391, 1395,
    1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459, 1463, 1467, 1471]
def live531 : Flapjack.NumSet := setValue2538
def coloured531 : Flapjack.NumSet := setValue2540
def result531 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2546, setValue2551)
def tree532 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree531 tree530)).val
theorem tree532_def : tree532 = (.seq tree531 tree530) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal532 : Flapjack.RegAlloc.ClashTree := .seq literal531 literal530
def live532 : Flapjack.NumSet := setValue2510
def coloured532 : Flapjack.NumSet := setValue2520
def result532 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2546, setValue2551)
def setValue2552 : Flapjack.NumSet := .bn setValue1 setValue2531
def setValue2553 : Flapjack.NumSet := .bn setValue2446 setValue2203
def setValue2554 : Flapjack.NumSet := .bn setValue2516 setValue573
def setValue2555 : Flapjack.NumSet := .bn setValue2554 setValue1263
def setValue2556 : Flapjack.NumSet := .bs setValue2553 () setValue2555
def setValue2557 : Flapjack.NumSet := .bn setValue2556 setValue0
def tree533 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2552)).val
theorem tree533_def : tree533 = (.set setValue2552) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal533 : Flapjack.RegAlloc.ClashTree := .set setValue2552
def live533 : Flapjack.NumSet := setValue2546
def coloured533 : Flapjack.NumSet := setValue2551
def result533 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2552, setValue2557)
def tree534 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree533 tree532)).val
theorem tree534_def : tree534 = (.seq tree533 tree532) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal534 : Flapjack.RegAlloc.ClashTree := .seq literal533 literal532
def live534 : Flapjack.NumSet := setValue2510
def coloured534 : Flapjack.NumSet := setValue2520
def result534 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2552, setValue2557)
def tree535 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2532) tree529 tree534)).val
theorem tree535_def : tree535 = (.branch (some setValue2532) tree529 tree534) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal535 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2532) literal529 literal534
def live535 : Flapjack.NumSet := setValue2510
def coloured535 : Flapjack.NumSet := setValue2520
def result535 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2532, setValue2537)
def tree536 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree535 tree526)).val
theorem tree536_def : tree536 = (.seq tree535 tree526) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal536 : Flapjack.RegAlloc.ClashTree := .seq literal535 literal526
def live536 : Flapjack.NumSet := setValue0
def coloured536 : Flapjack.NumSet := setValue0
def result536 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2532, setValue2537)
def setValue2558 : Flapjack.NumSet := .bn setValue16 setValue16
def setValue2559 : Flapjack.NumSet := .bn setValue2558 setValue17
def setValue2560 : Flapjack.NumSet := .bn setValue2559 setValue2385
def setValue2561 : Flapjack.NumSet := .bn setValue16 setValue396
def setValue2562 : Flapjack.NumSet := .bn setValue17 setValue2561
def setValue2563 : Flapjack.NumSet := .bn setValue2385 setValue2562
def setValue2564 : Flapjack.NumSet := .bn setValue2560 setValue2563
def setValue2565 : Flapjack.NumSet := .bn setValue2559 setValue2364
def setValue2566 : Flapjack.NumSet := .bn setValue2565 setValue2563
def setValue2567 : Flapjack.NumSet := .bn setValue2564 setValue2566
def setValue2568 : Flapjack.NumSet := .bn setValue2385 setValue2385
def setValue2569 : Flapjack.NumSet := .bn setValue2568 setValue2563
def setValue2570 : Flapjack.NumSet := .bn setValue2385 setValue2364
def setValue2571 : Flapjack.NumSet := .bn setValue2570 setValue2563
def setValue2572 : Flapjack.NumSet := .bn setValue2569 setValue2571
def setValue2573 : Flapjack.NumSet := .bn setValue2567 setValue2572
def setValue2574 : Flapjack.NumSet := .bn setValue2573 setValue0
def setValue2575 : Flapjack.NumSet := .bn setValue0 setValue2574
def setValue2576 : Flapjack.NumSet := .bn setValue412 setValue1239
def setValue2577 : Flapjack.NumSet := .bs setValue2178 () setValue413
def setValue2578 : Flapjack.NumSet := .bs setValue2576 () setValue2577
def setValue2579 : Flapjack.NumSet := .bn setValue101 setValue2
def setValue2580 : Flapjack.NumSet := .bs setValue1037 () setValue2579
def setValue2581 : Flapjack.NumSet := .bs setValue2534 () setValue2580
def setValue2582 : Flapjack.NumSet := .bn setValue2578 setValue2581
def setValue2583 : Flapjack.NumSet := .bs setValue2582 () setValue0
def tree537 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383,
    1387, 1391, 1395, 1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459,
    1463, 1467, 1471]
  [1277, 1269, 1281, 1293, 1289, 1285, 1113, 1293, 1117, 1121, 1289, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153,
    1285, 1157, 1161, 1165, 1281, 1169, 1173, 1177, 1181, 1277, 1185, 1189, 1193, 1197, 1201, 1205, 1209, 1269, 1213,
    1217, 1221, 1225, 1229, 1233, 1237])).val
theorem tree537_def : tree537 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383,
    1387, 1391, 1395, 1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459,
    1463, 1467, 1471]
  [1277, 1269, 1281, 1293, 1289, 1285, 1113, 1293, 1117, 1121, 1289, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153,
    1285, 1157, 1161, 1165, 1281, 1169, 1173, 1177, 1181, 1277, 1185, 1189, 1193, 1197, 1201, 1205, 1209, 1269, 1213,
    1217, 1221, 1225, 1229, 1233, 1237]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal537 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 1323, 1327, 1331, 1335, 1339, 1343, 1347, 1351, 1355, 1359, 1363, 1367, 1371, 1375, 1379, 1383,
    1387, 1391, 1395, 1399, 1403, 1407, 1411, 1415, 1419, 1423, 1427, 1431, 1435, 1439, 1443, 1447, 1451, 1455, 1459,
    1463, 1467, 1471]
  [1277, 1269, 1281, 1293, 1289, 1285, 1113, 1293, 1117, 1121, 1289, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153,
    1285, 1157, 1161, 1165, 1281, 1169, 1173, 1177, 1181, 1277, 1185, 1189, 1193, 1197, 1201, 1205, 1209, 1269, 1213,
    1217, 1221, 1225, 1229, 1233, 1237]
def live537 : Flapjack.NumSet := setValue2532
def coloured537 : Flapjack.NumSet := setValue2537
def result537 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2575, setValue2583)
def tree538 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree537 tree536)).val
theorem tree538_def : tree538 = (.seq tree537 tree536) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal538 : Flapjack.RegAlloc.ClashTree := .seq literal537 literal536
def live538 : Flapjack.NumSet := setValue0
def coloured538 : Flapjack.NumSet := setValue0
def result538 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2575, setValue2583)
def tree539 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree539_def : tree539 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal539 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live539 : Flapjack.NumSet := setValue2575
def coloured539 : Flapjack.NumSet := setValue2583
def result539 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2575, setValue2583)
def tree540 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree539 tree538)).val
theorem tree540_def : tree540 = (.seq tree539 tree538) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal540 : Flapjack.RegAlloc.ClashTree := .seq literal539 literal538
def live540 : Flapjack.NumSet := setValue0
def coloured540 : Flapjack.NumSet := setValue0
def result540 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2575, setValue2583)
def setValue2584 : Flapjack.NumSet := .bn setValue2406 setValue2406
def setValue2585 : Flapjack.NumSet := .bn setValue2406 setValue2382
def setValue2586 : Flapjack.NumSet := .bn setValue2584 setValue2585
def setValue2587 : Flapjack.NumSet := .bn setValue2585 setValue2585
def setValue2588 : Flapjack.NumSet := .bn setValue2586 setValue2587
def setValue2589 : Flapjack.NumSet := .bn setValue2588 setValue2588
def setValue2590 : Flapjack.NumSet := .bn setValue0 setValue2589
def setValue2591 : Flapjack.NumSet := .bn setValue395 setValue2590
def setValue2592 : Flapjack.NumSet := .bs setValue2578 () setValue2581
def setValue2593 : Flapjack.NumSet := .bn setValue2592 setValue0
def tree541 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [1293, 1289, 1285, 1281, 1277, 1269, 1113, 1117, 1121, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153, 1157, 1161,
    1165, 1169, 1173, 1177, 1181, 1185, 1189, 1193, 1197, 1201, 1205, 1209, 1213, 1217, 1221, 1225, 1229, 1233, 1237]
  [8, 10, 12, 6, 2, 4, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031, 1035, 1039, 1043, 1047,
    1051, 1055, 1059, 1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107])).val
theorem tree541_def : tree541 = (Flapjack.RegAlloc.ClashTree.delta
  [1293, 1289, 1285, 1281, 1277, 1269, 1113, 1117, 1121, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153, 1157, 1161,
    1165, 1169, 1173, 1177, 1181, 1185, 1189, 1193, 1197, 1201, 1205, 1209, 1213, 1217, 1221, 1225, 1229, 1233, 1237]
  [8, 10, 12, 6, 2, 4, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031, 1035, 1039, 1043, 1047,
    1051, 1055, 1059, 1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal541 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [1293, 1289, 1285, 1281, 1277, 1269, 1113, 1117, 1121, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153, 1157, 1161,
    1165, 1169, 1173, 1177, 1181, 1185, 1189, 1193, 1197, 1201, 1205, 1209, 1213, 1217, 1221, 1225, 1229, 1233, 1237]
  [8, 10, 12, 6, 2, 4, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031, 1035, 1039, 1043, 1047,
    1051, 1055, 1059, 1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107]
def live541 : Flapjack.NumSet := setValue2575
def coloured541 : Flapjack.NumSet := setValue2583
def result541 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2591, setValue2593)
def tree542 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2591)).val
theorem tree542_def : tree542 = (.set setValue2591) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal542 : Flapjack.RegAlloc.ClashTree := .set setValue2591
def live542 : Flapjack.NumSet := setValue2591
def coloured542 : Flapjack.NumSet := setValue2593
def result542 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2591, setValue2593)
def tree543 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree542 tree541)).val
theorem tree543_def : tree543 = (.seq tree542 tree541) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal543 : Flapjack.RegAlloc.ClashTree := .seq literal542 literal541
def live543 : Flapjack.NumSet := setValue2575
def coloured543 : Flapjack.NumSet := setValue2583
def result543 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2591, setValue2593)
def setValue2594 : Flapjack.NumSet := .bn setValue1 setValue2574
def setValue2595 : Flapjack.NumSet := .bs setValue2592 () setValue0
def tree544 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree544_def : tree544 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal544 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live544 : Flapjack.NumSet := setValue2575
def coloured544 : Flapjack.NumSet := setValue2583
def result544 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2594, setValue2595)
def setValue2596 : Flapjack.NumSet := .bn setValue1016 setValue1016
def setValue2597 : Flapjack.NumSet := .bn setValue977 setValue977
def setValue2598 : Flapjack.NumSet := .bn setValue2596 setValue2597
def setValue2599 : Flapjack.NumSet := .bn setValue2598 setValue2589
def setValue2600 : Flapjack.NumSet := .bn setValue1 setValue2599
def tree545 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 1113, 1117, 1121, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153, 1157, 1161, 1165, 1169, 1173, 1177, 1181, 1185,
    1189, 1193, 1197, 1201, 1205, 1209, 1213, 1217, 1221, 1225, 1229, 1233, 1237]
  [2, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031, 1035, 1039, 1043, 1047, 1051, 1055, 1059,
    1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107])).val
theorem tree545_def : tree545 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 1113, 1117, 1121, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153, 1157, 1161, 1165, 1169, 1173, 1177, 1181, 1185,
    1189, 1193, 1197, 1201, 1205, 1209, 1213, 1217, 1221, 1225, 1229, 1233, 1237]
  [2, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031, 1035, 1039, 1043, 1047, 1051, 1055, 1059,
    1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal545 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 1113, 1117, 1121, 1125, 1129, 1133, 1137, 1141, 1145, 1149, 1153, 1157, 1161, 1165, 1169, 1173, 1177, 1181, 1185,
    1189, 1193, 1197, 1201, 1205, 1209, 1213, 1217, 1221, 1225, 1229, 1233, 1237]
  [2, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031, 1035, 1039, 1043, 1047, 1051, 1055, 1059,
    1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107]
def live545 : Flapjack.NumSet := setValue2594
def coloured545 : Flapjack.NumSet := setValue2595
def result545 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2600, setValue2595)
def tree546 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree545 tree544)).val
theorem tree546_def : tree546 = (.seq tree545 tree544) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal546 : Flapjack.RegAlloc.ClashTree := .seq literal545 literal544
def live546 : Flapjack.NumSet := setValue2575
def coloured546 : Flapjack.NumSet := setValue2583
def result546 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2600, setValue2595)
def setValue2601 : Flapjack.NumSet := .bn setValue1 setValue2590
def setValue2602 : Flapjack.NumSet := .bn setValue2178 setValue413
def setValue2603 : Flapjack.NumSet := .bn setValue2576 setValue2602
def setValue2604 : Flapjack.NumSet := .bn setValue1037 setValue2579
def setValue2605 : Flapjack.NumSet := .bn setValue2554 setValue2604
def setValue2606 : Flapjack.NumSet := .bs setValue2603 () setValue2605
def setValue2607 : Flapjack.NumSet := .bn setValue2606 setValue0
def tree547 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2601)).val
theorem tree547_def : tree547 = (.set setValue2601) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal547 : Flapjack.RegAlloc.ClashTree := .set setValue2601
def live547 : Flapjack.NumSet := setValue2600
def coloured547 : Flapjack.NumSet := setValue2595
def result547 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2601, setValue2607)
def tree548 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree547 tree546)).val
theorem tree548_def : tree548 = (.seq tree547 tree546) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal548 : Flapjack.RegAlloc.ClashTree := .seq literal547 literal546
def live548 : Flapjack.NumSet := setValue2575
def coloured548 : Flapjack.NumSet := setValue2583
def result548 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2601, setValue2607)
def setValue2608 : Flapjack.NumSet := .bn setValue440 setValue2590
def setValue2609 : Flapjack.NumSet := .bs setValue412 () setValue1268
def setValue2610 : Flapjack.NumSet := .bs setValue2178 () setValue416
def setValue2611 : Flapjack.NumSet := .bs setValue2609 () setValue2610
def setValue2612 : Flapjack.NumSet := .bs setValue101 () setValue2
def setValue2613 : Flapjack.NumSet := .bs setValue1055 () setValue2612
def setValue2614 : Flapjack.NumSet := .bs setValue2517 () setValue2613
def setValue2615 : Flapjack.NumSet := .bs setValue2611 () setValue2614
def setValue2616 : Flapjack.NumSet := .bn setValue2615 setValue0
def tree549 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2608) tree543 tree548)).val
theorem tree549_def : tree549 = (.branch (some setValue2608) tree543 tree548) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal549 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2608) literal543 literal548
def live549 : Flapjack.NumSet := setValue2575
def coloured549 : Flapjack.NumSet := setValue2583
def result549 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2608, setValue2616)
def tree550 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree549 tree540)).val
theorem tree550_def : tree550 = (.seq tree549 tree540) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal550 : Flapjack.RegAlloc.ClashTree := .seq literal549 literal540
def live550 : Flapjack.NumSet := setValue0
def coloured550 : Flapjack.NumSet := setValue0
def result550 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2608, setValue2616)
def setValue2617 : Flapjack.NumSet := .bn setValue2 setValue2
def setValue2618 : Flapjack.NumSet := .bn setValue3 setValue2617
def setValue2619 : Flapjack.NumSet := .bn setValue4 setValue2618
def setValue2620 : Flapjack.NumSet := .bn setValue2619 setValue2619
def setValue2621 : Flapjack.NumSet := .bn setValue2495 setValue2495
def setValue2622 : Flapjack.NumSet := .bn setValue2619 setValue2621
def setValue2623 : Flapjack.NumSet := .bn setValue2620 setValue2622
def setValue2624 : Flapjack.NumSet := .bn setValue2495 setValue2618
def setValue2625 : Flapjack.NumSet := .bn setValue2619 setValue2624
def setValue2626 : Flapjack.NumSet := .bn setValue2618 setValue1538
def setValue2627 : Flapjack.NumSet := .bn setValue2504 setValue2626
def setValue2628 : Flapjack.NumSet := .bn setValue2625 setValue2627
def setValue2629 : Flapjack.NumSet := .bn setValue2623 setValue2628
def setValue2630 : Flapjack.NumSet := .bn setValue2629 setValue0
def setValue2631 : Flapjack.NumSet := .bn setValue0 setValue2630
def setValue2632 : Flapjack.NumSet := .bs setValue2 () setValue101
def setValue2633 : Flapjack.NumSet := .bs setValue1037 () setValue416
def setValue2634 : Flapjack.NumSet := .bs setValue2632 () setValue2633
def setValue2635 : Flapjack.NumSet := .bn setValue37 setValue249
def setValue2636 : Flapjack.NumSet := .bs setValue2635 () setValue1122
def setValue2637 : Flapjack.NumSet := .bs setValue0 () setValue2
def setValue2638 : Flapjack.NumSet := .bs setValue1 () setValue2
def setValue2639 : Flapjack.NumSet := .bs setValue2637 () setValue2638
def setValue2640 : Flapjack.NumSet := .bs setValue2636 () setValue2639
def setValue2641 : Flapjack.NumSet := .bn setValue2634 setValue2640
def setValue2642 : Flapjack.NumSet := .bs setValue2641 () setValue0
def tree551 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031,
    1035, 1039, 1043, 1047, 1051, 1055, 1059, 1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107]
  [805, 789, 869, 825, 853, 845, 929, 917, 921, 925, 905, 909, 773, 929, 777, 781, 785, 789, 793, 925, 797, 921, 801,
    917, 805, 809, 813, 817, 821, 825, 829, 909, 833, 837, 841, 845, 849, 853, 857, 861, 865, 869, 873, 905])).val
theorem tree551_def : tree551 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031,
    1035, 1039, 1043, 1047, 1051, 1055, 1059, 1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107]
  [805, 789, 869, 825, 853, 845, 929, 917, 921, 925, 905, 909, 773, 929, 777, 781, 785, 789, 793, 925, 797, 921, 801,
    917, 805, 809, 813, 817, 821, 825, 829, 909, 833, 837, 841, 845, 849, 853, 857, 861, 865, 869, 873, 905]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal551 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 983, 987, 991, 995, 999, 1003, 1007, 1011, 1015, 1019, 1023, 1027, 1031,
    1035, 1039, 1043, 1047, 1051, 1055, 1059, 1063, 1067, 1071, 1075, 1079, 1083, 1087, 1091, 1095, 1099, 1103, 1107]
  [805, 789, 869, 825, 853, 845, 929, 917, 921, 925, 905, 909, 773, 929, 777, 781, 785, 789, 793, 925, 797, 921, 801,
    917, 805, 809, 813, 817, 821, 825, 829, 909, 833, 837, 841, 845, 849, 853, 857, 861, 865, 869, 873, 905]
def live551 : Flapjack.NumSet := setValue2608
def coloured551 : Flapjack.NumSet := setValue2616
def result551 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2631, setValue2642)
def tree552 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree551 tree550)).val
theorem tree552_def : tree552 = (.seq tree551 tree550) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal552 : Flapjack.RegAlloc.ClashTree := .seq literal551 literal550
def live552 : Flapjack.NumSet := setValue0
def coloured552 : Flapjack.NumSet := setValue0
def result552 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2631, setValue2642)
def tree553 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [])).val
theorem tree553_def : tree553 = (Flapjack.RegAlloc.ClashTree.delta [] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal553 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] []
def live553 : Flapjack.NumSet := setValue2631
def coloured553 : Flapjack.NumSet := setValue2642
def result553 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2631, setValue2642)
def tree554 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree553 tree552)).val
theorem tree554_def : tree554 = (.seq tree553 tree552) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal554 : Flapjack.RegAlloc.ClashTree := .seq literal553 literal552
def live554 : Flapjack.NumSet := setValue0
def coloured554 : Flapjack.NumSet := setValue0
def result554 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2631, setValue2642)
def setValue2643 : Flapjack.NumSet := .bn setValue2214 setValue2214
def setValue2644 : Flapjack.NumSet := .bn setValue2643 setValue2222
def setValue2645 : Flapjack.NumSet := .bn setValue2222 setValue2222
def setValue2646 : Flapjack.NumSet := .bn setValue2644 setValue2645
def setValue2647 : Flapjack.NumSet := .bn setValue2214 setValue2223
def setValue2648 : Flapjack.NumSet := .bn setValue2222 setValue2647
def setValue2649 : Flapjack.NumSet := .bn setValue2645 setValue2648
def setValue2650 : Flapjack.NumSet := .bn setValue2646 setValue2649
def setValue2651 : Flapjack.NumSet := .bn setValue0 setValue2650
def setValue2652 : Flapjack.NumSet := .bn setValue395 setValue2651
def setValue2653 : Flapjack.NumSet := .bn setValue411 setValue2
def setValue2654 : Flapjack.NumSet := .bs setValue1037 () setValue1320
def setValue2655 : Flapjack.NumSet := .bs setValue2653 () setValue2654
def setValue2656 : Flapjack.NumSet := .bs setValue2635 () setValue573
def setValue2657 : Flapjack.NumSet := .bn setValue1 setValue2
def setValue2658 : Flapjack.NumSet := .bs setValue2657 () setValue1094
def setValue2659 : Flapjack.NumSet := .bs setValue2656 () setValue2658
def setValue2660 : Flapjack.NumSet := .bs setValue2655 () setValue2659
def setValue2661 : Flapjack.NumSet := .bn setValue2660 setValue0
def tree555 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [929, 925, 921, 917, 909, 905, 773, 777, 781, 785, 789, 793, 797, 801, 805, 809, 813, 817, 821, 825, 829, 833, 837,
    841, 845, 849, 853, 857, 861, 865, 869, 873]
  [2, 8, 6, 4, 12, 10, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739,
    743, 747, 751, 755, 759, 763, 767])).val
theorem tree555_def : tree555 = (Flapjack.RegAlloc.ClashTree.delta
  [929, 925, 921, 917, 909, 905, 773, 777, 781, 785, 789, 793, 797, 801, 805, 809, 813, 817, 821, 825, 829, 833, 837,
    841, 845, 849, 853, 857, 861, 865, 869, 873]
  [2, 8, 6, 4, 12, 10, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739,
    743, 747, 751, 755, 759, 763, 767]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal555 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [929, 925, 921, 917, 909, 905, 773, 777, 781, 785, 789, 793, 797, 801, 805, 809, 813, 817, 821, 825, 829, 833, 837,
    841, 845, 849, 853, 857, 861, 865, 869, 873]
  [2, 8, 6, 4, 12, 10, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739,
    743, 747, 751, 755, 759, 763, 767]
def live555 : Flapjack.NumSet := setValue2631
def coloured555 : Flapjack.NumSet := setValue2642
def result555 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2652, setValue2661)
def tree556 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2652)).val
theorem tree556_def : tree556 = (.set setValue2652) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal556 : Flapjack.RegAlloc.ClashTree := .set setValue2652
def live556 : Flapjack.NumSet := setValue2652
def coloured556 : Flapjack.NumSet := setValue2661
def result556 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2652, setValue2661)
def tree557 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree556 tree555)).val
theorem tree557_def : tree557 = (.seq tree556 tree555) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal557 : Flapjack.RegAlloc.ClashTree := .seq literal556 literal555
def live557 : Flapjack.NumSet := setValue2631
def coloured557 : Flapjack.NumSet := setValue2642
def result557 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2652, setValue2661)
def setValue2662 : Flapjack.NumSet := .bn setValue1 setValue2630
def setValue2663 : Flapjack.NumSet := .bs setValue2634 () setValue2640
def setValue2664 : Flapjack.NumSet := .bs setValue2663 () setValue0
def tree558 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [] [2])).val
theorem tree558_def : tree558 = (Flapjack.RegAlloc.ClashTree.delta [] [2]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal558 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [] [2]
def live558 : Flapjack.NumSet := setValue2631
def coloured558 : Flapjack.NumSet := setValue2642
def result558 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2662, setValue2664)
def setValue2665 : Flapjack.NumSet := .bn setValue1511 setValue0
def setValue2666 : Flapjack.NumSet := .bn setValue1541 setValue2665
def setValue2667 : Flapjack.NumSet := .bn setValue1541 setValue1514
def setValue2668 : Flapjack.NumSet := .bn setValue2666 setValue2667
def setValue2669 : Flapjack.NumSet := .bn setValue2668 setValue2650
def setValue2670 : Flapjack.NumSet := .bn setValue1 setValue2669
def setValue2671 : Flapjack.NumSet := .bn setValue1037 setValue1342
def setValue2672 : Flapjack.NumSet := .bn setValue467 setValue2671
def setValue2673 : Flapjack.NumSet := .bn setValue2635 setValue676
def setValue2674 : Flapjack.NumSet := .bn setValue2638 setValue1098
def setValue2675 : Flapjack.NumSet := .bn setValue2673 setValue2674
def setValue2676 : Flapjack.NumSet := .bs setValue2672 () setValue2675
def setValue2677 : Flapjack.NumSet := .bn setValue2676 setValue0
def tree559 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 773, 777, 781, 785, 789, 793, 797, 801, 805, 809, 813, 817, 821, 825, 829, 833, 837, 841, 845, 849, 853, 857, 861,
    865, 869, 873]
  [2, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739, 743, 747, 751, 755,
    759, 763, 767])).val
theorem tree559_def : tree559 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 773, 777, 781, 785, 789, 793, 797, 801, 805, 809, 813, 817, 821, 825, 829, 833, 837, 841, 845, 849, 853, 857, 861,
    865, 869, 873]
  [2, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739, 743, 747, 751, 755,
    759, 763, 767]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal559 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 773, 777, 781, 785, 789, 793, 797, 801, 805, 809, 813, 817, 821, 825, 829, 833, 837, 841, 845, 849, 853, 857, 861,
    865, 869, 873]
  [2, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739, 743, 747, 751, 755,
    759, 763, 767]
def live559 : Flapjack.NumSet := setValue2662
def coloured559 : Flapjack.NumSet := setValue2664
def result559 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2670, setValue2677)
def tree560 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree559 tree558)).val
theorem tree560_def : tree560 = (.seq tree559 tree558) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal560 : Flapjack.RegAlloc.ClashTree := .seq literal559 literal558
def live560 : Flapjack.NumSet := setValue2631
def coloured560 : Flapjack.NumSet := setValue2642
def result560 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2670, setValue2677)
def setValue2678 : Flapjack.NumSet := .bn setValue1 setValue2651
def setValue2679 : Flapjack.NumSet := .bn setValue1037 setValue1320
def setValue2680 : Flapjack.NumSet := .bn setValue2653 setValue2679
def setValue2681 : Flapjack.NumSet := .bn setValue2635 setValue573
def setValue2682 : Flapjack.NumSet := .bn setValue2657 setValue1094
def setValue2683 : Flapjack.NumSet := .bn setValue2681 setValue2682
def setValue2684 : Flapjack.NumSet := .bs setValue2680 () setValue2683
def setValue2685 : Flapjack.NumSet := .bn setValue2684 setValue0
def tree561 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.set setValue2678)).val
theorem tree561_def : tree561 = (.set setValue2678) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal561 : Flapjack.RegAlloc.ClashTree := .set setValue2678
def live561 : Flapjack.NumSet := setValue2670
def coloured561 : Flapjack.NumSet := setValue2677
def result561 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2678, setValue2685)
def tree562 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree561 tree560)).val
theorem tree562_def : tree562 = (.seq tree561 tree560) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal562 : Flapjack.RegAlloc.ClashTree := .seq literal561 literal560
def live562 : Flapjack.NumSet := setValue2631
def coloured562 : Flapjack.NumSet := setValue2642
def result562 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2678, setValue2685)
def tree563 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.branch (some setValue2652) tree557 tree562)).val
theorem tree563_def : tree563 = (.branch (some setValue2652) tree557 tree562) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal563 : Flapjack.RegAlloc.ClashTree := .branch (some setValue2652) literal557 literal562
def live563 : Flapjack.NumSet := setValue2631
def coloured563 : Flapjack.NumSet := setValue2642
def result563 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2652, setValue2661)
def tree564 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree563 tree554)).val
theorem tree564_def : tree564 = (.seq tree563 tree554) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal564 : Flapjack.RegAlloc.ClashTree := .seq literal563 literal554
def live564 : Flapjack.NumSet := setValue0
def coloured564 : Flapjack.NumSet := setValue0
def result564 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2652, setValue2661)
def setValue2686 : Flapjack.NumSet := .bn setValue2160 setValue57
def setValue2687 : Flapjack.NumSet := .bn setValue0 setValue411
def setValue2688 : Flapjack.NumSet := .bn setValue1223 setValue2687
def setValue2689 : Flapjack.NumSet := .bn setValue2686 setValue2688
def setValue2690 : Flapjack.NumSet := .bn setValue16 setValue15
def setValue2691 : Flapjack.NumSet := .bn setValue3 setValue2690
def setValue2692 : Flapjack.NumSet := .bn setValue0 setValue38
def setValue2693 : Flapjack.NumSet := .bn setValue396 setValue2692
def setValue2694 : Flapjack.NumSet := .bn setValue2691 setValue2693
def setValue2695 : Flapjack.NumSet := .bn setValue2689 setValue2694
def setValue2696 : Flapjack.NumSet := .bn setValue620 setValue1223
def setValue2697 : Flapjack.NumSet := .bn setValue2 setValue15
def setValue2698 : Flapjack.NumSet := .bn setValue2690 setValue2697
def setValue2699 : Flapjack.NumSet := .bn setValue2696 setValue2698
def setValue2700 : Flapjack.NumSet := .bn setValue57 setValue617
def setValue2701 : Flapjack.NumSet := .bn setValue2700 setValue2691
def setValue2702 : Flapjack.NumSet := .bn setValue2699 setValue2701
def setValue2703 : Flapjack.NumSet := .bn setValue2695 setValue2702
def setValue2704 : Flapjack.NumSet := .bn setValue2703 setValue0
def setValue2705 : Flapjack.NumSet := .bn setValue0 setValue2704
def setValue2706 : Flapjack.NumSet := .bs setValue0 () setValue161
def setValue2707 : Flapjack.NumSet := .bs setValue249 () setValue2706
def setValue2708 : Flapjack.NumSet := .bs setValue161 () setValue2707
def setValue2709 : Flapjack.NumSet := .bs setValue2708 () setValue367
def setValue2710 : Flapjack.NumSet := .bs setValue2709 () setValue0
def tree565 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739,
    743, 747, 751, 755, 759, 763, 767]
  [257, 261, 265, 269, 273, 277, 249, 497, 397, 265, 557, 337, 257, 517, 537, 273, 357, 377, 253, 597, 317, 269, 477,
    437, 637, 261, 617, 457, 417, 277, 577, 297])).val
theorem tree565_def : tree565 = (Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739,
    743, 747, 751, 755, 759, 763, 767]
  [257, 261, 265, 269, 273, 277, 249, 497, 397, 265, 557, 337, 257, 517, 537, 273, 357, 377, 253, 597, 317, 269, 477,
    437, 637, 261, 617, 457, 417, 277, 577, 297]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal565 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta
  [2, 4, 6, 8, 10, 12, 667, 671, 675, 679, 683, 687, 691, 695, 699, 703, 707, 711, 715, 719, 723, 727, 731, 735, 739,
    743, 747, 751, 755, 759, 763, 767]
  [257, 261, 265, 269, 273, 277, 249, 497, 397, 265, 557, 337, 257, 517, 537, 273, 357, 377, 253, 597, 317, 269, 477,
    437, 637, 261, 617, 457, 417, 277, 577, 297]
def live565 : Flapjack.NumSet := setValue2652
def coloured565 : Flapjack.NumSet := setValue2661
def result565 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2705, setValue2710)
def tree566 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree565 tree564)).val
theorem tree566_def : tree566 = (.seq tree565 tree564) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal566 : Flapjack.RegAlloc.ClashTree := .seq literal565 literal564
def live566 : Flapjack.NumSet := setValue0
def coloured566 : Flapjack.NumSet := setValue0
def result566 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2705, setValue2710)
def setValue2711 : Flapjack.NumSet := .bn setValue412 setValue57
def setValue2712 : Flapjack.NumSet := .bn setValue2711 setValue2688
def setValue2713 : Flapjack.NumSet := .bn setValue2712 setValue2694
def setValue2714 : Flapjack.NumSet := .bn setValue249 setValue0
def setValue2715 : Flapjack.NumSet := .bn setValue2714 setValue1223
def setValue2716 : Flapjack.NumSet := .bn setValue2715 setValue2698
def setValue2717 : Flapjack.NumSet := .bn setValue2716 setValue2701
def setValue2718 : Flapjack.NumSet := .bn setValue2713 setValue2717
def setValue2719 : Flapjack.NumSet := .bn setValue2718 setValue0
def setValue2720 : Flapjack.NumSet := .bn setValue0 setValue2719
def tree567 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [637] [633])).val
theorem tree567_def : tree567 = (Flapjack.RegAlloc.ClashTree.delta [637] [633]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal567 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [637] [633]
def live567 : Flapjack.NumSet := setValue2705
def coloured567 : Flapjack.NumSet := setValue2710
def result567 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2720, setValue2710)
def tree568 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree567 tree566)).val
theorem tree568_def : tree568 = (.seq tree567 tree566) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal568 : Flapjack.RegAlloc.ClashTree := .seq literal567 literal566
def live568 : Flapjack.NumSet := setValue0
def coloured568 : Flapjack.NumSet := setValue0
def result568 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2720, setValue2710)
def setValue2721 : Flapjack.NumSet := .bn setValue39 setValue2692
def setValue2722 : Flapjack.NumSet := .bn setValue2691 setValue2721
def setValue2723 : Flapjack.NumSet := .bn setValue2712 setValue2722
def setValue2724 : Flapjack.NumSet := .bn setValue2723 setValue2702
def setValue2725 : Flapjack.NumSet := .bn setValue2724 setValue0
def setValue2726 : Flapjack.NumSet := .bn setValue0 setValue2725
def tree569 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [633] [613])).val
theorem tree569_def : tree569 = (Flapjack.RegAlloc.ClashTree.delta [633] [613]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal569 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [633] [613]
def live569 : Flapjack.NumSet := setValue2720
def coloured569 : Flapjack.NumSet := setValue2710
def result569 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2726, setValue2710)
def tree570 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree569 tree568)).val
theorem tree570_def : tree570 = (.seq tree569 tree568) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal570 : Flapjack.RegAlloc.ClashTree := .seq literal569 literal568
def live570 : Flapjack.NumSet := setValue0
def coloured570 : Flapjack.NumSet := setValue0
def result570 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2726, setValue2710)
def setValue2727 : Flapjack.NumSet := .bn setValue16 setValue2697
def setValue2728 : Flapjack.NumSet := .bn setValue2696 setValue2727
def setValue2729 : Flapjack.NumSet := .bn setValue2728 setValue2701
def setValue2730 : Flapjack.NumSet := .bn setValue2723 setValue2729
def setValue2731 : Flapjack.NumSet := .bn setValue2730 setValue0
def setValue2732 : Flapjack.NumSet := .bn setValue0 setValue2731
def setValue2733 : Flapjack.NumSet := .bs setValue311 () setValue2707
def setValue2734 : Flapjack.NumSet := .bs setValue2733 () setValue367
def setValue2735 : Flapjack.NumSet := .bs setValue2734 () setValue0
def tree571 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [617] [613])).val
theorem tree571_def : tree571 = (Flapjack.RegAlloc.ClashTree.delta [617] [613]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal571 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [617] [613]
def live571 : Flapjack.NumSet := setValue2726
def coloured571 : Flapjack.NumSet := setValue2710
def result571 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2732, setValue2735)
def tree572 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree571 tree570)).val
theorem tree572_def : tree572 = (.seq tree571 tree570) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal572 : Flapjack.RegAlloc.ClashTree := .seq literal571 literal570
def live572 : Flapjack.NumSet := setValue0
def coloured572 : Flapjack.NumSet := setValue0
def result572 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2732, setValue2735)
def setValue2736 : Flapjack.NumSet := .bn setValue38 setValue15
def setValue2737 : Flapjack.NumSet := .bn setValue57 setValue2736
def setValue2738 : Flapjack.NumSet := .bn setValue2737 setValue2691
def setValue2739 : Flapjack.NumSet := .bn setValue2728 setValue2738
def setValue2740 : Flapjack.NumSet := .bn setValue2713 setValue2739
def setValue2741 : Flapjack.NumSet := .bn setValue2740 setValue0
def setValue2742 : Flapjack.NumSet := .bn setValue0 setValue2741
def tree573 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [613] [593])).val
theorem tree573_def : tree573 = (Flapjack.RegAlloc.ClashTree.delta [613] [593]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal573 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [613] [593]
def live573 : Flapjack.NumSet := setValue2732
def coloured573 : Flapjack.NumSet := setValue2735
def result573 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2742, setValue2735)
def tree574 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree573 tree572)).val
theorem tree574_def : tree574 = (.seq tree573 tree572) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal574 : Flapjack.RegAlloc.ClashTree := .seq literal573 literal572
def live574 : Flapjack.NumSet := setValue0
def coloured574 : Flapjack.NumSet := setValue0
def result574 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2742, setValue2735)
def setValue2743 : Flapjack.NumSet := .bn setValue3 setValue16
def setValue2744 : Flapjack.NumSet := .bn setValue2743 setValue2693
def setValue2745 : Flapjack.NumSet := .bn setValue2712 setValue2744
def setValue2746 : Flapjack.NumSet := .bn setValue2745 setValue2739
def setValue2747 : Flapjack.NumSet := .bn setValue2746 setValue0
def setValue2748 : Flapjack.NumSet := .bn setValue0 setValue2747
def setValue2749 : Flapjack.NumSet := .bs setValue249 () setValue366
def setValue2750 : Flapjack.NumSet := .bs setValue2733 () setValue2749
def setValue2751 : Flapjack.NumSet := .bs setValue2750 () setValue0
def tree575 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [597] [593])).val
theorem tree575_def : tree575 = (Flapjack.RegAlloc.ClashTree.delta [597] [593]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal575 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [597] [593]
def live575 : Flapjack.NumSet := setValue2742
def coloured575 : Flapjack.NumSet := setValue2735
def result575 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2748, setValue2751)
def tree576 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree575 tree574)).val
theorem tree576_def : tree576 = (.seq tree575 tree574) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal576 : Flapjack.RegAlloc.ClashTree := .seq literal575 literal574
def live576 : Flapjack.NumSet := setValue0
def coloured576 : Flapjack.NumSet := setValue0
def result576 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2748, setValue2751)
def setValue2752 : Flapjack.NumSet := .bn setValue1 setValue38
def setValue2753 : Flapjack.NumSet := .bn setValue2752 setValue57
def setValue2754 : Flapjack.NumSet := .bn setValue2753 setValue2688
def setValue2755 : Flapjack.NumSet := .bn setValue2754 setValue2744
def setValue2756 : Flapjack.NumSet := .bn setValue2755 setValue2729
def setValue2757 : Flapjack.NumSet := .bn setValue2756 setValue0
def setValue2758 : Flapjack.NumSet := .bn setValue0 setValue2757
def tree577 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [593] [573])).val
theorem tree577_def : tree577 = (Flapjack.RegAlloc.ClashTree.delta [593] [573]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal577 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [593] [573]
def live577 : Flapjack.NumSet := setValue2748
def coloured577 : Flapjack.NumSet := setValue2751
def result577 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2758, setValue2751)
def tree578 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree577 tree576)).val
theorem tree578_def : tree578 = (.seq tree577 tree576) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal578 : Flapjack.RegAlloc.ClashTree := .seq literal577 literal576
def live578 : Flapjack.NumSet := setValue0
def coloured578 : Flapjack.NumSet := setValue0
def result578 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2758, setValue2751)
def setValue2759 : Flapjack.NumSet := .bn setValue2700 setValue2743
def setValue2760 : Flapjack.NumSet := .bn setValue2728 setValue2759
def setValue2761 : Flapjack.NumSet := .bn setValue2755 setValue2760
def setValue2762 : Flapjack.NumSet := .bn setValue2761 setValue0
def setValue2763 : Flapjack.NumSet := .bn setValue0 setValue2762
def setValue2764 : Flapjack.NumSet := .bs setValue0 () setValue430
def setValue2765 : Flapjack.NumSet := .bs setValue249 () setValue2764
def setValue2766 : Flapjack.NumSet := .bs setValue311 () setValue2765
def setValue2767 : Flapjack.NumSet := .bs setValue2766 () setValue2749
def setValue2768 : Flapjack.NumSet := .bs setValue2767 () setValue0
def tree579 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [577] [573])).val
theorem tree579_def : tree579 = (Flapjack.RegAlloc.ClashTree.delta [577] [573]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal579 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [577] [573]
def live579 : Flapjack.NumSet := setValue2758
def coloured579 : Flapjack.NumSet := setValue2751
def result579 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2763, setValue2768)
def tree580 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree579 tree578)).val
theorem tree580_def : tree580 = (.seq tree579 tree578) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal580 : Flapjack.RegAlloc.ClashTree := .seq literal579 literal578
def live580 : Flapjack.NumSet := setValue0
def coloured580 : Flapjack.NumSet := setValue0
def result580 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2763, setValue2768)
def setValue2769 : Flapjack.NumSet := .bn setValue2692 setValue2697
def setValue2770 : Flapjack.NumSet := .bn setValue2696 setValue2769
def setValue2771 : Flapjack.NumSet := .bn setValue2770 setValue2759
def setValue2772 : Flapjack.NumSet := .bn setValue2745 setValue2771
def setValue2773 : Flapjack.NumSet := .bn setValue2772 setValue0
def setValue2774 : Flapjack.NumSet := .bn setValue0 setValue2773
def tree581 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [573] [553])).val
theorem tree581_def : tree581 = (Flapjack.RegAlloc.ClashTree.delta [573] [553]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal581 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [573] [553]
def live581 : Flapjack.NumSet := setValue2763
def coloured581 : Flapjack.NumSet := setValue2768
def result581 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2774, setValue2768)
def tree582 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree581 tree580)).val
theorem tree582_def : tree582 = (.seq tree581 tree580) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal582 : Flapjack.RegAlloc.ClashTree := .seq literal581 literal580
def live582 : Flapjack.NumSet := setValue0
def coloured582 : Flapjack.NumSet := setValue0
def result582 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2774, setValue2768)
def setValue2775 : Flapjack.NumSet := .bn setValue0 setValue2687
def setValue2776 : Flapjack.NumSet := .bn setValue2711 setValue2775
def setValue2777 : Flapjack.NumSet := .bn setValue2776 setValue2744
def setValue2778 : Flapjack.NumSet := .bn setValue2777 setValue2771
def setValue2779 : Flapjack.NumSet := .bn setValue2778 setValue0
def setValue2780 : Flapjack.NumSet := .bn setValue0 setValue2779
def setValue2781 : Flapjack.NumSet := .bs setValue249 () setValue676
def setValue2782 : Flapjack.NumSet := .bs setValue2766 () setValue2781
def setValue2783 : Flapjack.NumSet := .bs setValue2782 () setValue0
def tree583 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [557] [553])).val
theorem tree583_def : tree583 = (Flapjack.RegAlloc.ClashTree.delta [557] [553]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal583 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [557] [553]
def live583 : Flapjack.NumSet := setValue2774
def coloured583 : Flapjack.NumSet := setValue2768
def result583 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2780, setValue2783)
def tree584 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree583 tree582)).val
theorem tree584_def : tree584 = (.seq tree583 tree582) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal584 : Flapjack.RegAlloc.ClashTree := .seq literal583 literal582
def live584 : Flapjack.NumSet := setValue0
def coloured584 : Flapjack.NumSet := setValue0
def result584 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2780, setValue2783)
def setValue2784 : Flapjack.NumSet := .bn setValue3 setValue2692
def setValue2785 : Flapjack.NumSet := .bn setValue2784 setValue2693
def setValue2786 : Flapjack.NumSet := .bn setValue2776 setValue2785
def setValue2787 : Flapjack.NumSet := .bn setValue2786 setValue2760
def setValue2788 : Flapjack.NumSet := .bn setValue2787 setValue0
def setValue2789 : Flapjack.NumSet := .bn setValue0 setValue2788
def tree585 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [553] [533])).val
theorem tree585_def : tree585 = (Flapjack.RegAlloc.ClashTree.delta [553] [533]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal585 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [553] [533]
def live585 : Flapjack.NumSet := setValue2780
def coloured585 : Flapjack.NumSet := setValue2783
def result585 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2789, setValue2783)
def tree586 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree585 tree584)).val
theorem tree586_def : tree586 = (.seq tree585 tree584) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal586 : Flapjack.RegAlloc.ClashTree := .seq literal585 literal584
def live586 : Flapjack.NumSet := setValue0
def coloured586 : Flapjack.NumSet := setValue0
def result586 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2789, setValue2783)
def setValue2790 : Flapjack.NumSet := .bn setValue620 setValue0
def setValue2791 : Flapjack.NumSet := .bn setValue2790 setValue2727
def setValue2792 : Flapjack.NumSet := .bn setValue2791 setValue2759
def setValue2793 : Flapjack.NumSet := .bn setValue2786 setValue2792
def setValue2794 : Flapjack.NumSet := .bn setValue2793 setValue0
def setValue2795 : Flapjack.NumSet := .bn setValue0 setValue2794
def setValue2796 : Flapjack.NumSet := .bs setValue101 () setValue2765
def setValue2797 : Flapjack.NumSet := .bs setValue2796 () setValue2781
def setValue2798 : Flapjack.NumSet := .bs setValue2797 () setValue0
def tree587 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [537] [533])).val
theorem tree587_def : tree587 = (Flapjack.RegAlloc.ClashTree.delta [537] [533]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal587 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [537] [533]
def live587 : Flapjack.NumSet := setValue2789
def coloured587 : Flapjack.NumSet := setValue2783
def result587 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2795, setValue2798)
def tree588 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree587 tree586)).val
theorem tree588_def : tree588 = (.seq tree587 tree586) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal588 : Flapjack.RegAlloc.ClashTree := .seq literal587 literal586
def live588 : Flapjack.NumSet := setValue0
def coloured588 : Flapjack.NumSet := setValue0
def result588 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2795, setValue2798)
def setValue2799 : Flapjack.NumSet := .bn setValue2700 setValue2784
def setValue2800 : Flapjack.NumSet := .bn setValue2791 setValue2799
def setValue2801 : Flapjack.NumSet := .bn setValue2777 setValue2800
def setValue2802 : Flapjack.NumSet := .bn setValue2801 setValue0
def setValue2803 : Flapjack.NumSet := .bn setValue0 setValue2802
def tree589 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [533] [513])).val
theorem tree589_def : tree589 = (Flapjack.RegAlloc.ClashTree.delta [533] [513]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal589 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [533] [513]
def live589 : Flapjack.NumSet := setValue2795
def coloured589 : Flapjack.NumSet := setValue2798
def result589 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2803, setValue2798)
def tree590 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree589 tree588)).val
theorem tree590_def : tree590 = (.seq tree589 tree588) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal590 : Flapjack.RegAlloc.ClashTree := .seq literal589 literal588
def live590 : Flapjack.NumSet := setValue0
def coloured590 : Flapjack.NumSet := setValue0
def result590 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2803, setValue2798)
def setValue2804 : Flapjack.NumSet := .bn setValue396 setValue16
def setValue2805 : Flapjack.NumSet := .bn setValue2743 setValue2804
def setValue2806 : Flapjack.NumSet := .bn setValue2776 setValue2805
def setValue2807 : Flapjack.NumSet := .bn setValue2806 setValue2800
def setValue2808 : Flapjack.NumSet := .bn setValue2807 setValue0
def setValue2809 : Flapjack.NumSet := .bn setValue0 setValue2808
def setValue2810 : Flapjack.NumSet := .bs setValue180 () setValue676
def setValue2811 : Flapjack.NumSet := .bs setValue2796 () setValue2810
def setValue2812 : Flapjack.NumSet := .bs setValue2811 () setValue0
def tree591 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [517] [513])).val
theorem tree591_def : tree591 = (Flapjack.RegAlloc.ClashTree.delta [517] [513]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal591 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [517] [513]
def live591 : Flapjack.NumSet := setValue2803
def coloured591 : Flapjack.NumSet := setValue2798
def result591 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2809, setValue2812)
def tree592 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree591 tree590)).val
theorem tree592_def : tree592 = (.seq tree591 tree590) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal592 : Flapjack.RegAlloc.ClashTree := .seq literal591 literal590
def live592 : Flapjack.NumSet := setValue0
def coloured592 : Flapjack.NumSet := setValue0
def result592 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2809, setValue2812)
def setValue2813 : Flapjack.NumSet := .bn setValue57 setValue2687
def setValue2814 : Flapjack.NumSet := .bn setValue2711 setValue2813
def setValue2815 : Flapjack.NumSet := .bn setValue2814 setValue2805
def setValue2816 : Flapjack.NumSet := .bn setValue2815 setValue2792
def setValue2817 : Flapjack.NumSet := .bn setValue2816 setValue0
def setValue2818 : Flapjack.NumSet := .bn setValue0 setValue2817
def tree593 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [513] [493])).val
theorem tree593_def : tree593 = (Flapjack.RegAlloc.ClashTree.delta [513] [493]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal593 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [513] [493]
def live593 : Flapjack.NumSet := setValue2809
def coloured593 : Flapjack.NumSet := setValue2812
def result593 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2818, setValue2812)
def tree594 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree593 tree592)).val
theorem tree594_def : tree594 = (.seq tree593 tree592) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal594 : Flapjack.RegAlloc.ClashTree := .seq literal593 literal592
def live594 : Flapjack.NumSet := setValue0
def coloured594 : Flapjack.NumSet := setValue0
def result594 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2818, setValue2812)
def setValue2819 : Flapjack.NumSet := .bn setValue0 setValue617
def setValue2820 : Flapjack.NumSet := .bn setValue2819 setValue2743
def setValue2821 : Flapjack.NumSet := .bn setValue2791 setValue2820
def setValue2822 : Flapjack.NumSet := .bn setValue2815 setValue2821
def setValue2823 : Flapjack.NumSet := .bn setValue2822 setValue0
def setValue2824 : Flapjack.NumSet := .bn setValue0 setValue2823
def setValue2825 : Flapjack.NumSet := .bn setValue180 setValue676
def setValue2826 : Flapjack.NumSet := .bs setValue2796 () setValue2825
def setValue2827 : Flapjack.NumSet := .bs setValue2826 () setValue0
def tree595 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [497] [493])).val
theorem tree595_def : tree595 = (Flapjack.RegAlloc.ClashTree.delta [497] [493]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal595 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [497] [493]
def live595 : Flapjack.NumSet := setValue2818
def coloured595 : Flapjack.NumSet := setValue2812
def result595 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2824, setValue2827)
def tree596 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree595 tree594)).val
theorem tree596_def : tree596 = (.seq tree595 tree594) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal596 : Flapjack.RegAlloc.ClashTree := .seq literal595 literal594
def live596 : Flapjack.NumSet := setValue0
def coloured596 : Flapjack.NumSet := setValue0
def result596 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2824, setValue2827)
def setValue2828 : Flapjack.NumSet := .bn setValue620 setValue57
def setValue2829 : Flapjack.NumSet := .bn setValue2828 setValue2727
def setValue2830 : Flapjack.NumSet := .bn setValue2829 setValue2820
def setValue2831 : Flapjack.NumSet := .bn setValue2806 setValue2830
def setValue2832 : Flapjack.NumSet := .bn setValue2831 setValue0
def setValue2833 : Flapjack.NumSet := .bn setValue0 setValue2832
def tree597 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [493] [473])).val
theorem tree597_def : tree597 = (Flapjack.RegAlloc.ClashTree.delta [493] [473]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal597 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [493] [473]
def live597 : Flapjack.NumSet := setValue2824
def coloured597 : Flapjack.NumSet := setValue2827
def result597 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2833, setValue2827)
def tree598 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree597 tree596)).val
theorem tree598_def : tree598 = (.seq tree597 tree596) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal598 : Flapjack.RegAlloc.ClashTree := .seq literal597 literal596
def live598 : Flapjack.NumSet := setValue0
def coloured598 : Flapjack.NumSet := setValue0
def result598 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2833, setValue2827)
def setValue2834 : Flapjack.NumSet := .bn setValue412 setValue0
def setValue2835 : Flapjack.NumSet := .bn setValue2834 setValue2775
def setValue2836 : Flapjack.NumSet := .bn setValue2835 setValue2805
def setValue2837 : Flapjack.NumSet := .bn setValue2836 setValue2830
def setValue2838 : Flapjack.NumSet := .bn setValue2837 setValue0
def setValue2839 : Flapjack.NumSet := .bn setValue0 setValue2838
def setValue2840 : Flapjack.NumSet := .bn setValue180 setValue1128
def setValue2841 : Flapjack.NumSet := .bs setValue2796 () setValue2840
def setValue2842 : Flapjack.NumSet := .bs setValue2841 () setValue0
def tree599 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [477] [473])).val
theorem tree599_def : tree599 = (Flapjack.RegAlloc.ClashTree.delta [477] [473]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal599 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [477] [473]
def live599 : Flapjack.NumSet := setValue2833
def coloured599 : Flapjack.NumSet := setValue2827
def result599 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2839, setValue2842)
def tree600 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree599 tree598)).val
theorem tree600_def : tree600 = (.seq tree599 tree598) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal600 : Flapjack.RegAlloc.ClashTree := .seq literal599 literal598
def live600 : Flapjack.NumSet := setValue0
def coloured600 : Flapjack.NumSet := setValue0
def result600 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2839, setValue2842)
def setValue2843 : Flapjack.NumSet := .bn setValue396 setValue2697
def setValue2844 : Flapjack.NumSet := .bn setValue2743 setValue2843
def setValue2845 : Flapjack.NumSet := .bn setValue2835 setValue2844
def setValue2846 : Flapjack.NumSet := .bn setValue2845 setValue2821
def setValue2847 : Flapjack.NumSet := .bn setValue2846 setValue0
def setValue2848 : Flapjack.NumSet := .bn setValue0 setValue2847
def tree601 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [473] [453])).val
theorem tree601_def : tree601 = (Flapjack.RegAlloc.ClashTree.delta [473] [453]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal601 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [473] [453]
def live601 : Flapjack.NumSet := setValue2839
def coloured601 : Flapjack.NumSet := setValue2842
def result601 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2848, setValue2842)
def tree602 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree601 tree600)).val
theorem tree602_def : tree602 = (.seq tree601 tree600) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal602 : Flapjack.RegAlloc.ClashTree := .seq literal601 literal600
def live602 : Flapjack.NumSet := setValue0
def coloured602 : Flapjack.NumSet := setValue0
def result602 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2848, setValue2842)
def setValue2849 : Flapjack.NumSet := .bn setValue2790 setValue2558
def setValue2850 : Flapjack.NumSet := .bn setValue2849 setValue2820
def setValue2851 : Flapjack.NumSet := .bn setValue2845 setValue2850
def setValue2852 : Flapjack.NumSet := .bn setValue2851 setValue0
def setValue2853 : Flapjack.NumSet := .bn setValue0 setValue2852
def setValue2854 : Flapjack.NumSet := .bn setValue180 setValue101
def setValue2855 : Flapjack.NumSet := .bs setValue2796 () setValue2854
def setValue2856 : Flapjack.NumSet := .bs setValue2855 () setValue0
def tree603 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [457] [453])).val
theorem tree603_def : tree603 = (Flapjack.RegAlloc.ClashTree.delta [457] [453]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal603 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [457] [453]
def live603 : Flapjack.NumSet := setValue2848
def coloured603 : Flapjack.NumSet := setValue2842
def result603 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2853, setValue2856)
def tree604 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree603 tree602)).val
theorem tree604_def : tree604 = (.seq tree603 tree602) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal604 : Flapjack.RegAlloc.ClashTree := .seq literal603 literal602
def live604 : Flapjack.NumSet := setValue0
def coloured604 : Flapjack.NumSet := setValue0
def result604 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2853, setValue2856)
def setValue2857 : Flapjack.NumSet := .bn setValue3 setValue617
def setValue2858 : Flapjack.NumSet := .bn setValue2857 setValue2743
def setValue2859 : Flapjack.NumSet := .bn setValue2849 setValue2858
def setValue2860 : Flapjack.NumSet := .bn setValue2836 setValue2859
def setValue2861 : Flapjack.NumSet := .bn setValue2860 setValue0
def setValue2862 : Flapjack.NumSet := .bn setValue0 setValue2861
def tree605 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [453] [433])).val
theorem tree605_def : tree605 = (Flapjack.RegAlloc.ClashTree.delta [453] [433]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal605 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [453] [433]
def live605 : Flapjack.NumSet := setValue2853
def coloured605 : Flapjack.NumSet := setValue2856
def result605 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2862, setValue2856)
def tree606 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree605 tree604)).val
theorem tree606_def : tree606 = (.seq tree605 tree604) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal606 : Flapjack.RegAlloc.ClashTree := .seq literal605 literal604
def live606 : Flapjack.NumSet := setValue0
def coloured606 : Flapjack.NumSet := setValue0
def result606 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2862, setValue2856)
def setValue2863 : Flapjack.NumSet := .bn setValue1223 setValue2804
def setValue2864 : Flapjack.NumSet := .bn setValue2835 setValue2863
def setValue2865 : Flapjack.NumSet := .bn setValue2864 setValue2859
def setValue2866 : Flapjack.NumSet := .bn setValue2865 setValue0
def setValue2867 : Flapjack.NumSet := .bn setValue0 setValue2866
def setValue2868 : Flapjack.NumSet := .bs setValue0 () setValue412
def setValue2869 : Flapjack.NumSet := .bs setValue249 () setValue2868
def setValue2870 : Flapjack.NumSet := .bs setValue101 () setValue2869
def setValue2871 : Flapjack.NumSet := .bs setValue2870 () setValue2854
def setValue2872 : Flapjack.NumSet := .bs setValue2871 () setValue0
def tree607 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [437] [433])).val
theorem tree607_def : tree607 = (Flapjack.RegAlloc.ClashTree.delta [437] [433]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal607 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [437] [433]
def live607 : Flapjack.NumSet := setValue2862
def coloured607 : Flapjack.NumSet := setValue2856
def result607 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2867, setValue2872)
def tree608 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree607 tree606)).val
theorem tree608_def : tree608 = (.seq tree607 tree606) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal608 : Flapjack.RegAlloc.ClashTree := .seq literal607 literal606
def live608 : Flapjack.NumSet := setValue0
def coloured608 : Flapjack.NumSet := setValue0
def result608 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2867, setValue2872)
def setValue2873 : Flapjack.NumSet := .bn setValue412 setValue3
def setValue2874 : Flapjack.NumSet := .bn setValue2873 setValue2775
def setValue2875 : Flapjack.NumSet := .bn setValue2874 setValue2863
def setValue2876 : Flapjack.NumSet := .bn setValue2875 setValue2850
def setValue2877 : Flapjack.NumSet := .bn setValue2876 setValue0
def setValue2878 : Flapjack.NumSet := .bn setValue0 setValue2877
def tree609 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [433] [413])).val
theorem tree609_def : tree609 = (Flapjack.RegAlloc.ClashTree.delta [433] [413]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal609 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [433] [413]
def live609 : Flapjack.NumSet := setValue2867
def coloured609 : Flapjack.NumSet := setValue2872
def result609 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2878, setValue2872)
def tree610 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree609 tree608)).val
theorem tree610_def : tree610 = (.seq tree609 tree608) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal610 : Flapjack.RegAlloc.ClashTree := .seq literal609 literal608
def live610 : Flapjack.NumSet := setValue0
def coloured610 : Flapjack.NumSet := setValue0
def result610 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2878, setValue2872)
def setValue2879 : Flapjack.NumSet := .bn setValue2819 setValue1223
def setValue2880 : Flapjack.NumSet := .bn setValue2849 setValue2879
def setValue2881 : Flapjack.NumSet := .bn setValue2875 setValue2880
def setValue2882 : Flapjack.NumSet := .bn setValue2881 setValue0
def setValue2883 : Flapjack.NumSet := .bn setValue0 setValue2882
def setValue2884 : Flapjack.NumSet := .bs setValue180 () setValue2868
def setValue2885 : Flapjack.NumSet := .bs setValue101 () setValue2884
def setValue2886 : Flapjack.NumSet := .bs setValue2885 () setValue2854
def setValue2887 : Flapjack.NumSet := .bs setValue2886 () setValue0
def tree611 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [417] [413])).val
theorem tree611_def : tree611 = (Flapjack.RegAlloc.ClashTree.delta [417] [413]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal611 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [417] [413]
def live611 : Flapjack.NumSet := setValue2878
def coloured611 : Flapjack.NumSet := setValue2872
def result611 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2883, setValue2887)
def tree612 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree611 tree610)).val
theorem tree612_def : tree612 = (.seq tree611 tree610) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal612 : Flapjack.RegAlloc.ClashTree := .seq literal611 literal610
def live612 : Flapjack.NumSet := setValue0
def coloured612 : Flapjack.NumSet := setValue0
def result612 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2883, setValue2887)
def setValue2888 : Flapjack.NumSet := .bn setValue16 setValue2687
def setValue2889 : Flapjack.NumSet := .bn setValue2790 setValue2888
def setValue2890 : Flapjack.NumSet := .bn setValue2889 setValue2879
def setValue2891 : Flapjack.NumSet := .bn setValue2864 setValue2890
def setValue2892 : Flapjack.NumSet := .bn setValue2891 setValue0
def setValue2893 : Flapjack.NumSet := .bn setValue0 setValue2892
def tree613 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [413] [393])).val
theorem tree613_def : tree613 = (Flapjack.RegAlloc.ClashTree.delta [413] [393]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal613 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [413] [393]
def live613 : Flapjack.NumSet := setValue2883
def coloured613 : Flapjack.NumSet := setValue2887
def result613 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2893, setValue2887)
def tree614 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree613 tree612)).val
theorem tree614_def : tree614 = (.seq tree613 tree612) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal614 : Flapjack.RegAlloc.ClashTree := .seq literal613 literal612
def live614 : Flapjack.NumSet := setValue0
def coloured614 : Flapjack.NumSet := setValue0
def result614 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2893, setValue2887)
def setValue2894 : Flapjack.NumSet := .bn setValue2834 setValue1223
def setValue2895 : Flapjack.NumSet := .bn setValue2894 setValue2863
def setValue2896 : Flapjack.NumSet := .bn setValue2895 setValue2890
def setValue2897 : Flapjack.NumSet := .bn setValue2896 setValue0
def setValue2898 : Flapjack.NumSet := .bn setValue0 setValue2897
def setValue2899 : Flapjack.NumSet := .bs setValue2 () setValue2884
def setValue2900 : Flapjack.NumSet := .bs setValue2899 () setValue2854
def setValue2901 : Flapjack.NumSet := .bs setValue2900 () setValue0
def tree615 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [397] [393])).val
theorem tree615_def : tree615 = (Flapjack.RegAlloc.ClashTree.delta [397] [393]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal615 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [397] [393]
def live615 : Flapjack.NumSet := setValue2893
def coloured615 : Flapjack.NumSet := setValue2887
def result615 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2898, setValue2901)
def tree616 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree615 tree614)).val
theorem tree616_def : tree616 = (.seq tree615 tree614) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal616 : Flapjack.RegAlloc.ClashTree := .seq literal615 literal614
def live616 : Flapjack.NumSet := setValue0
def coloured616 : Flapjack.NumSet := setValue0
def result616 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2898, setValue2901)
def setValue2902 : Flapjack.NumSet := .bn setValue2804 setValue2804
def setValue2903 : Flapjack.NumSet := .bn setValue2894 setValue2902
def setValue2904 : Flapjack.NumSet := .bn setValue2903 setValue2880
def setValue2905 : Flapjack.NumSet := .bn setValue2904 setValue0
def setValue2906 : Flapjack.NumSet := .bn setValue0 setValue2905
def tree617 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [393] [373])).val
theorem tree617_def : tree617 = (Flapjack.RegAlloc.ClashTree.delta [393] [373]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal617 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [393] [373]
def live617 : Flapjack.NumSet := setValue2898
def coloured617 : Flapjack.NumSet := setValue2901
def result617 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2906, setValue2901)
def tree618 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree617 tree616)).val
theorem tree618_def : tree618 = (.seq tree617 tree616) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal618 : Flapjack.RegAlloc.ClashTree := .seq literal617 literal616
def live618 : Flapjack.NumSet := setValue0
def coloured618 : Flapjack.NumSet := setValue0
def result618 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2906, setValue2901)
def setValue2907 : Flapjack.NumSet := .bn setValue57 setValue2558
def setValue2908 : Flapjack.NumSet := .bn setValue2907 setValue2879
def setValue2909 : Flapjack.NumSet := .bn setValue2903 setValue2908
def setValue2910 : Flapjack.NumSet := .bn setValue2909 setValue0
def setValue2911 : Flapjack.NumSet := .bn setValue0 setValue2910
def setValue2912 : Flapjack.NumSet := .bs setValue16 () setValue2868
def setValue2913 : Flapjack.NumSet := .bs setValue2 () setValue2912
def setValue2914 : Flapjack.NumSet := .bs setValue2913 () setValue2854
def setValue2915 : Flapjack.NumSet := .bs setValue2914 () setValue0
def tree619 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [377] [373])).val
theorem tree619_def : tree619 = (Flapjack.RegAlloc.ClashTree.delta [377] [373]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal619 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [377] [373]
def live619 : Flapjack.NumSet := setValue2906
def coloured619 : Flapjack.NumSet := setValue2901
def result619 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2911, setValue2915)
def tree620 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree619 tree618)).val
theorem tree620_def : tree620 = (.seq tree619 tree618) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal620 : Flapjack.RegAlloc.ClashTree := .seq literal619 literal618
def live620 : Flapjack.NumSet := setValue0
def coloured620 : Flapjack.NumSet := setValue0
def result620 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2911, setValue2915)
def setValue2916 : Flapjack.NumSet := .bn setValue2819 setValue2804
def setValue2917 : Flapjack.NumSet := .bn setValue2907 setValue2916
def setValue2918 : Flapjack.NumSet := .bn setValue2895 setValue2917
def setValue2919 : Flapjack.NumSet := .bn setValue2918 setValue0
def setValue2920 : Flapjack.NumSet := .bn setValue0 setValue2919
def tree621 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [373] [353])).val
theorem tree621_def : tree621 = (Flapjack.RegAlloc.ClashTree.delta [373] [353]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal621 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [373] [353]
def live621 : Flapjack.NumSet := setValue2911
def coloured621 : Flapjack.NumSet := setValue2915
def result621 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2920, setValue2915)
def tree622 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree621 tree620)).val
theorem tree622_def : tree622 = (.seq tree621 tree620) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal622 : Flapjack.RegAlloc.ClashTree := .seq literal621 literal620
def live622 : Flapjack.NumSet := setValue0
def coloured622 : Flapjack.NumSet := setValue0
def result622 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2920, setValue2915)
def setValue2921 : Flapjack.NumSet := .bn setValue2894 setValue2382
def setValue2922 : Flapjack.NumSet := .bn setValue2921 setValue2917
def setValue2923 : Flapjack.NumSet := .bn setValue2922 setValue0
def setValue2924 : Flapjack.NumSet := .bn setValue0 setValue2923
def setValue2925 : Flapjack.NumSet := .bn setValue180 setValue1
def setValue2926 : Flapjack.NumSet := .bs setValue2913 () setValue2925
def setValue2927 : Flapjack.NumSet := .bs setValue2926 () setValue0
def tree623 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [357] [353])).val
theorem tree623_def : tree623 = (Flapjack.RegAlloc.ClashTree.delta [357] [353]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal623 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [357] [353]
def live623 : Flapjack.NumSet := setValue2920
def coloured623 : Flapjack.NumSet := setValue2915
def result623 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2924, setValue2927)
def tree624 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree623 tree622)).val
theorem tree624_def : tree624 = (.seq tree623 tree622) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal624 : Flapjack.RegAlloc.ClashTree := .seq literal623 literal622
def live624 : Flapjack.NumSet := setValue0
def coloured624 : Flapjack.NumSet := setValue0
def result624 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2924, setValue2927)
def setValue2928 : Flapjack.NumSet := .bn setValue2834 setValue2819
def setValue2929 : Flapjack.NumSet := .bn setValue2928 setValue2382
def setValue2930 : Flapjack.NumSet := .bn setValue2929 setValue2908
def setValue2931 : Flapjack.NumSet := .bn setValue2930 setValue0
def setValue2932 : Flapjack.NumSet := .bn setValue0 setValue2931
def tree625 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [353] [333])).val
theorem tree625_def : tree625 = (Flapjack.RegAlloc.ClashTree.delta [353] [333]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal625 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [353] [333]
def live625 : Flapjack.NumSet := setValue2924
def coloured625 : Flapjack.NumSet := setValue2927
def result625 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2932, setValue2927)
def tree626 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree625 tree624)).val
theorem tree626_def : tree626 = (.seq tree625 tree624) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal626 : Flapjack.RegAlloc.ClashTree := .seq literal625 literal624
def live626 : Flapjack.NumSet := setValue0
def coloured626 : Flapjack.NumSet := setValue0
def result626 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2932, setValue2927)
def setValue2933 : Flapjack.NumSet := .bn setValue2907 setValue2382
def setValue2934 : Flapjack.NumSet := .bn setValue2929 setValue2933
def setValue2935 : Flapjack.NumSet := .bn setValue2934 setValue0
def setValue2936 : Flapjack.NumSet := .bn setValue0 setValue2935
def setValue2937 : Flapjack.NumSet := .bn setValue0 setValue412
def setValue2938 : Flapjack.NumSet := .bs setValue16 () setValue2937
def setValue2939 : Flapjack.NumSet := .bs setValue2 () setValue2938
def setValue2940 : Flapjack.NumSet := .bs setValue2939 () setValue2925
def setValue2941 : Flapjack.NumSet := .bs setValue2940 () setValue0
def tree627 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [337] [333])).val
theorem tree627_def : tree627 = (Flapjack.RegAlloc.ClashTree.delta [337] [333]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal627 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [337] [333]
def live627 : Flapjack.NumSet := setValue2932
def coloured627 : Flapjack.NumSet := setValue2927
def result627 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2936, setValue2941)
def tree628 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree627 tree626)).val
theorem tree628_def : tree628 = (.seq tree627 tree626) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal628 : Flapjack.RegAlloc.ClashTree := .seq literal627 literal626
def live628 : Flapjack.NumSet := setValue0
def coloured628 : Flapjack.NumSet := setValue0
def result628 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2936, setValue2941)
def setValue2942 : Flapjack.NumSet := .bn setValue2834 setValue2558
def setValue2943 : Flapjack.NumSet := .bn setValue2942 setValue2382
def setValue2944 : Flapjack.NumSet := .bn setValue2921 setValue2943
def setValue2945 : Flapjack.NumSet := .bn setValue2944 setValue0
def setValue2946 : Flapjack.NumSet := .bn setValue0 setValue2945
def tree629 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [333] [313])).val
theorem tree629_def : tree629 = (Flapjack.RegAlloc.ClashTree.delta [333] [313]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal629 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [333] [313]
def live629 : Flapjack.NumSet := setValue2936
def coloured629 : Flapjack.NumSet := setValue2941
def result629 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2946, setValue2941)
def tree630 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree629 tree628)).val
theorem tree630_def : tree630 = (.seq tree629 tree628) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal630 : Flapjack.RegAlloc.ClashTree := .seq literal629 literal628
def live630 : Flapjack.NumSet := setValue0
def coloured630 : Flapjack.NumSet := setValue0
def result630 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2946, setValue2941)
def setValue2947 : Flapjack.NumSet := .bn setValue2585 setValue2943
def setValue2948 : Flapjack.NumSet := .bn setValue2947 setValue0
def setValue2949 : Flapjack.NumSet := .bn setValue0 setValue2948
def setValue2950 : Flapjack.NumSet := .bs setValue0 () setValue2938
def setValue2951 : Flapjack.NumSet := .bs setValue2950 () setValue2925
def setValue2952 : Flapjack.NumSet := .bs setValue2951 () setValue0
def tree631 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [317] [313])).val
theorem tree631_def : tree631 = (Flapjack.RegAlloc.ClashTree.delta [317] [313]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal631 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [317] [313]
def live631 : Flapjack.NumSet := setValue2946
def coloured631 : Flapjack.NumSet := setValue2941
def result631 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2949, setValue2952)
def tree632 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree631 tree630)).val
theorem tree632_def : tree632 = (.seq tree631 tree630) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal632 : Flapjack.RegAlloc.ClashTree := .seq literal631 literal630
def live632 : Flapjack.NumSet := setValue0
def coloured632 : Flapjack.NumSet := setValue0
def result632 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2949, setValue2952)
def setValue2953 : Flapjack.NumSet := .bn setValue1223 setValue2558
def setValue2954 : Flapjack.NumSet := .bn setValue2406 setValue2953
def setValue2955 : Flapjack.NumSet := .bn setValue2954 setValue2933
def setValue2956 : Flapjack.NumSet := .bn setValue2955 setValue0
def setValue2957 : Flapjack.NumSet := .bn setValue0 setValue2956
def tree633 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [313] [293])).val
theorem tree633_def : tree633 = (Flapjack.RegAlloc.ClashTree.delta [313] [293]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal633 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [313] [293]
def live633 : Flapjack.NumSet := setValue2949
def coloured633 : Flapjack.NumSet := setValue2952
def result633 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2957, setValue2952)
def tree634 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree633 tree632)).val
theorem tree634_def : tree634 = (.seq tree633 tree632) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal634 : Flapjack.RegAlloc.ClashTree := .seq literal633 literal632
def live634 : Flapjack.NumSet := setValue0
def coloured634 : Flapjack.NumSet := setValue0
def result634 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2957, setValue2952)
def setValue2958 : Flapjack.NumSet := .bn setValue2954 setValue2585
def setValue2959 : Flapjack.NumSet := .bn setValue2958 setValue0
def setValue2960 : Flapjack.NumSet := .bn setValue0 setValue2959
def setValue2961 : Flapjack.NumSet := .bs setValue16 () setValue1223
def setValue2962 : Flapjack.NumSet := .bs setValue0 () setValue2961
def setValue2963 : Flapjack.NumSet := .bs setValue2962 () setValue2925
def setValue2964 : Flapjack.NumSet := .bs setValue2963 () setValue0
def tree635 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [297] [293])).val
theorem tree635_def : tree635 = (Flapjack.RegAlloc.ClashTree.delta [297] [293]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal635 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [297] [293]
def live635 : Flapjack.NumSet := setValue2957
def coloured635 : Flapjack.NumSet := setValue2952
def result635 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2960, setValue2964)
def tree636 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree635 tree634)).val
theorem tree636_def : tree636 = (.seq tree635 tree634) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal636 : Flapjack.RegAlloc.ClashTree := .seq literal635 literal634
def live636 : Flapjack.NumSet := setValue0
def coloured636 : Flapjack.NumSet := setValue0
def result636 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2960, setValue2964)
def setValue2965 : Flapjack.NumSet := .bn setValue2585 setValue2954
def setValue2966 : Flapjack.NumSet := .bn setValue2965 setValue0
def setValue2967 : Flapjack.NumSet := .bn setValue0 setValue2966
def setValue2968 : Flapjack.NumSet := .bs setValue2962 () setValue311
def setValue2969 : Flapjack.NumSet := .bs setValue2968 () setValue0
def tree637 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [293] [289])).val
theorem tree637_def : tree637 = (Flapjack.RegAlloc.ClashTree.delta [293] [289]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal637 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [293] [289]
def live637 : Flapjack.NumSet := setValue2960
def coloured637 : Flapjack.NumSet := setValue2964
def result637 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2967, setValue2969)
def tree638 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree637 tree636)).val
theorem tree638_def : tree638 = (.seq tree637 tree636) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal638 : Flapjack.RegAlloc.ClashTree := .seq literal637 literal636
def live638 : Flapjack.NumSet := setValue0
def coloured638 : Flapjack.NumSet := setValue0
def result638 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2967, setValue2969)
def setValue2970 : Flapjack.NumSet := .bn setValue2 setValue16
def setValue2971 : Flapjack.NumSet := .bn setValue2970 setValue1223
def setValue2972 : Flapjack.NumSet := .bn setValue2971 setValue2382
def setValue2973 : Flapjack.NumSet := .bn setValue2972 setValue2585
def setValue2974 : Flapjack.NumSet := .bn setValue2973 setValue0
def setValue2975 : Flapjack.NumSet := .bn setValue0 setValue2974
def tree639 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [289] [285])).val
theorem tree639_def : tree639 = (Flapjack.RegAlloc.ClashTree.delta [289] [285]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal639 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [289] [285]
def live639 : Flapjack.NumSet := setValue2967
def coloured639 : Flapjack.NumSet := setValue2969
def result639 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2975, setValue2969)
def tree640 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree639 tree638)).val
theorem tree640_def : tree640 = (.seq tree639 tree638) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal640 : Flapjack.RegAlloc.ClashTree := .seq literal639 literal638
def live640 : Flapjack.NumSet := setValue0
def coloured640 : Flapjack.NumSet := setValue0
def result640 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2975, setValue2969)
def setValue2976 : Flapjack.NumSet := .bn setValue2585 setValue2972
def setValue2977 : Flapjack.NumSet := .bn setValue2976 setValue0
def setValue2978 : Flapjack.NumSet := .bn setValue0 setValue2977
def tree641 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [285] [281])).val
theorem tree641_def : tree641 = (Flapjack.RegAlloc.ClashTree.delta [285] [281]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal641 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [285] [281]
def live641 : Flapjack.NumSet := setValue2975
def coloured641 : Flapjack.NumSet := setValue2969
def result641 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2978, setValue2969)
def tree642 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree641 tree640)).val
theorem tree642_def : tree642 = (.seq tree641 tree640) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal642 : Flapjack.RegAlloc.ClashTree := .seq literal641 literal640
def live642 : Flapjack.NumSet := setValue0
def coloured642 : Flapjack.NumSet := setValue0
def result642 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2978, setValue2969)
def setValue2979 : Flapjack.NumSet := .bn setValue2587 setValue0
def setValue2980 : Flapjack.NumSet := .bn setValue0 setValue2979
def setValue2981 : Flapjack.NumSet := .bs setValue2962 () setValue411
def setValue2982 : Flapjack.NumSet := .bs setValue2981 () setValue0
def tree643 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [281] [])).val
theorem tree643_def : tree643 = (Flapjack.RegAlloc.ClashTree.delta [281] []) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal643 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [281] []
def live643 : Flapjack.NumSet := setValue2978
def coloured643 : Flapjack.NumSet := setValue2969
def result643 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2980, setValue2982)
def tree644 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree643 tree642)).val
theorem tree644_def : tree644 = (.seq tree643 tree642) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal644 : Flapjack.RegAlloc.ClashTree := .seq literal643 literal642
def live644 : Flapjack.NumSet := setValue0
def coloured644 : Flapjack.NumSet := setValue0
def result644 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2980, setValue2982)
def setValue2983 : Flapjack.NumSet := .bs setValue1168 () setValue0
def tree645 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (Flapjack.RegAlloc.ClashTree.delta [249, 253, 257, 261, 265, 269, 273, 277] [0, 2, 4, 6, 8, 10, 12, 14])).val
theorem tree645_def : tree645 = (Flapjack.RegAlloc.ClashTree.delta [249, 253, 257, 261, 265, 269, 273, 277] [0, 2, 4, 6, 8, 10, 12, 14]) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal645 : Flapjack.RegAlloc.ClashTree := Flapjack.RegAlloc.ClashTree.delta [249, 253, 257, 261, 265, 269, 273, 277] [0, 2, 4, 6, 8, 10, 12, 14]
def live645 : Flapjack.NumSet := setValue2980
def coloured645 : Flapjack.NumSet := setValue2982
def result645 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2983, setValue2983)
def tree646 : Flapjack.RegAlloc.ClashTree :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) (.seq tree645 tree644)).val
theorem tree646_def : tree646 = (.seq tree645 tree644) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _
def literal646 : Flapjack.RegAlloc.ClashTree := .seq literal645 literal644
def live646 : Flapjack.NumSet := setValue0
def coloured646 : Flapjack.NumSet := setValue0
def result646 : Option (Flapjack.NumSet × Flapjack.NumSet) := some (setValue2983, setValue2983)
end InitECandidate.Proofs.ClashStages808
