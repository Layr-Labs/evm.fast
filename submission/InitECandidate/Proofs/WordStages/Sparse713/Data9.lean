import InitE.SourceDeclarations
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Sparse713
def proposed713 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3))))))))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 0)))))))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))))))))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1))))))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            Flapjack.Spt.ln))))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1)))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))))
                  3
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 3
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
                    3
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      3
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.ls 1)))
                        3
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 3
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          3
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 3
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln)))))))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 1))))))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 0))))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1)))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))
                    0
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 0
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      0
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 0
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        0
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 0
                            (Flapjack.Spt.ls 1))
                          0
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 0
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 0)))))))))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 0))))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs Flapjack.Spt.ln 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                    1
                    (Flapjack.Spt.bs
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.ls 1)))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      1
                      (Flapjack.Spt.bs
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        1
                        (Flapjack.Spt.bs
                          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          1
                          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)) 1
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)))))))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3))))))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.ls 1)))))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))
                            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1)))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 3))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))
def word713_9_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def word713_9_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word713_9_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def word713_9_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def word713_9_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def word713_9_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def word713_9_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def word713_9_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word713_9_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2210141511517208575#64)

def word713_9_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7435674573564081700#64)

def word713_9_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7239337960414712511#64)

def word713_9_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5412103778470702295#64)

def word713_9_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1873798617647539866#64)

def word713_9_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def word713_9_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4653388206581612541#64)

def word713_9_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9907120269317136283#64)

def word713_9_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12253596935368579796#64)

def word713_9_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17006226088849104517#64)

def word713_9_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1873798617647539865#64)

def word713_9_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14416168624775744521#64)

def word713_9_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17178867732698629620#64)

def word713_9_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8644499054833844677#64)

def word713_9_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5204293836692734814#64)

def word713_9_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7508032112903159806#64)

def word713_9_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 481619096434065419#64)

def word713_9_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863593#64)

def word713_9_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 552535377879302143#64)

def word713_9_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15693976698673184137#64)

def word713_9_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15644892545385841839#64)

def word713_9_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10576397981472451381#64)

def word713_9_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 468449654411884966#64)

def word713_9_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def word713_9_1108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1012#64)

def word713_9_1134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2861386368603331728#64)

def word713_9_1136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5296890268881783494#64)

def word713_9_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4287227371909732728#64)

def word713_9_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12747537776279478232#64)

def word713_9_1142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6799301371303374023#64)

def word713_9_1144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 475620398632300694#64)

def word713_9_1176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1070667399020015127#64)

def word713_9_1178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5174364179546707956#64)

def word713_9_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12492638376110471938#64)

def word713_9_1182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4971224325420137563#64)

def word713_9_1184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11625236627901062048#64)

def word713_9_1186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 770611415444366652#64)

def word713_9_1272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7077594464397203414#64)

def word713_9_1274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6640057249351452444#64)

def word713_9_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9850925049107374429#64)

def word713_9_1278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3658379999393219626#64)

def word713_9_1280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13500519111022079365#64)

def word713_9_1282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 416399692810564414#64)

def word713_9_1298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1473427674344805717#64)

def word713_9_1300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11106031073612571672#64)

def word713_9_1302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10975139998179658879#64)

def word713_9_1304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3608069185647134863#64)

def word713_9_1306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1249199078431693244#64)

def word713_9_1317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 736713837172402858#64)

def word713_9_1319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14776387573661061644#64)

def word713_9_1321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14710942035944605247#64)

def word713_9_1323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1804034592823567431#64)

def word713_9_1325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 624599539215846622#64)

def word713_9_1396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1355520937843676934#64)

def word713_9_1398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18197961889718808424#64)

def word713_9_1400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17673314439684154624#64)

def word713_9_1402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1116230615302104219#64)

def word713_9_1404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6459500568425337235#64)

def word713_9_1406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1526798873638736187#64)

def word713_9_1459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863163#64)

def word713_9_1535 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7112#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7120#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7128#64)) (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))) (.seq word713_9_7 (.seq (Flapjack.WordLangProgHOL.move 0 [(0, 0)]) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))) (.seq word713_9_7 (.seq word713_9_8 (Flapjack.WordLangProgHOL.return 4 [2])))))))))))))))))))))

def word713_9_1568 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7080#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7088#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7096#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7104#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_1535))))))))))))))))))))))))))))))))

def word713_9_1601 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7040#64)) (.seq word713_9_482 (.seq word713_9_29 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7048#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7056#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7064#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7072#64)) (.seq word713_9_482 word713_9_1568))))))))))))))))))))))))))))))))

def word713_9_1634 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7000#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7008#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7016#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7024#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7032#64)) (.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 word713_9_1601))))))))))))))))))))))))))))))))

def word713_9_1667 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6968#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6976#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6984#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6992#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863577#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_1634))))))))))))))))))))))))))))))))

def word713_9_1699 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6928#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6936#64)) (.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6944#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6952#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6960#64)) word713_9_1667)))))))))))))))))))))))))))))))

def word713_9_1732 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6888#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6896#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863379#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6904#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6912#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6920#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 word713_9_1699))))))))))))))))))))))))))))))))

def word713_9_1765 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6856#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6864#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6872#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6880#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_1732))))))))))))))))))))))))))))))))

def word713_9_1797 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6816#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6824#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6832#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6840#64)) (.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6848#64)) word713_9_1765)))))))))))))))))))))))))))))))

def word713_9_1830 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6776#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6784#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6792#64)) (.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6800#64)) (.seq word713_9_482 (.seq word713_9_1459 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6808#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 word713_9_1797))))))))))))))))))))))))))))))))

def word713_9_1863 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6744#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6752#64)) (.seq word713_9_482 (.seq word713_9_1459 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6760#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6768#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_1830))))))))))))))))))))))))))))))))

def word713_9_1895 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6704#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6712#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6720#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6728#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6736#64)) word713_9_1863)))))))))))))))))))))))))))))))

def word713_9_1920 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6672#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12747851915130467410#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6680#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8510412652460270214#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6688#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18155985086623849168#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6696#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1318599027233453979#64)) (.seq word713_9_8 word713_9_1895))))))))))))))))))))))))

def word713_9_1952 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6640#64)) (.seq word713_9_482 (.seq word713_9_1323 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6648#64)) (.seq word713_9_482 (.seq word713_9_1325 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6656#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16263467779354626832#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6664#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5654561228188306393#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_1920)))))))))))))))))))))))))))))))

def word713_9_1984 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6600#64)) (.seq word713_9_482 (.seq word713_9_1306 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6608#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10616391696595805071#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6616#64)) (.seq word713_9_482 (.seq word713_9_1317 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6624#64)) (.seq word713_9_482 (.seq word713_9_1319 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6632#64)) (.seq word713_9_482 (.seq word713_9_1321 word713_9_1952)))))))))))))))))))))))))))))))

def word713_9_2017 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2786039319482058524#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6568#64)) (.seq word713_9_482 (.seq word713_9_1298 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6576#64)) (.seq word713_9_482 (.seq word713_9_1300 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6584#64)) (.seq word713_9_482 (.seq word713_9_1302 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6592#64)) (.seq word713_9_482 (.seq word713_9_1304 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_1984))))))))))))))))))))))))))))))))

def word713_9_2049 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6528#64)) (.seq word713_9_482 (.seq word713_9_1276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6536#64)) (.seq word713_9_482 (.seq word713_9_1278 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6544#64)) (.seq word713_9_482 (.seq word713_9_1280 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6552#64)) (.seq word713_9_482 (.seq word713_9_1282 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6560#64)) word713_9_2017)))))))))))))))))))))))))))))))

def word713_9_2082 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6488#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6496#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6504#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6512#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7077594464397203390#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6520#64)) (.seq word713_9_482 (.seq word713_9_1274 (.seq word713_9_8 word713_9_2049))))))))))))))))))))))))))))))))

def word713_9_2115 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_1404 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6456#64)) (.seq word713_9_482 (.seq word713_9_1406 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6464#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6472#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6480#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_2082))))))))))))))))))))))))))))))))

def word713_9_2147 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6416#64)) (.seq word713_9_482 (.seq word713_9_1396 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6424#64)) (.seq word713_9_482 (.seq word713_9_1398 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6432#64)) (.seq word713_9_482 (.seq word713_9_1400 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6440#64)) (.seq word713_9_482 (.seq word713_9_1402 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6448#64)) word713_9_2115)))))))))))))))))))))))))))))))

def word713_9_2180 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6376#64)) (.seq word713_9_482 (.seq word713_9_1398 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6384#64)) (.seq word713_9_482 (.seq word713_9_1400 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6392#64)) (.seq word713_9_482 (.seq word713_9_1402 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6400#64)) (.seq word713_9_482 (.seq word713_9_1404 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6408#64)) (.seq word713_9_482 (.seq word713_9_1406 (.seq word713_9_8 word713_9_2147))))))))))))))))))))))))))))))))

def word713_9_2213 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6344#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6352#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6360#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6368#64)) (.seq word713_9_482 (.seq word713_9_1396 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_2180))))))))))))))))))))))))))))))))

def word713_9_2245 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6304#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6312#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6320#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6328#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6336#64)) word713_9_2213)))))))))))))))))))))))))))))))

def word713_9_2278 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6264#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6272#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6280#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6288#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6296#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_2245))))))))))))))))))))))))))))))))

def word713_9_2311 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6232#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6240#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6248#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6256#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_2278))))))))))))))))))))))))))))))))

def word713_9_2343 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6192#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6200#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6208#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6216#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6224#64)) word713_9_2311)))))))))))))))))))))))))))))))

def word713_9_2376 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6152#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6160#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6168#64)) (.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6176#64)) (.seq word713_9_482 (.seq word713_9_29 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6184#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_2343))))))))))))))))))))))))))))))))

def word713_9_2409 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6120#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6128#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863583#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6136#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6144#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_2376))))))))))))))))))))))))))))))))

def word713_9_2441 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6080#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6088#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6096#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6104#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6112#64)) word713_9_2409)))))))))))))))))))))))))))))))

def word713_9_2474 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6040#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6048#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6056#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6064#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6072#64)) (.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 word713_9_2441))))))))))))))))))))))))))))))))

def word713_9_2507 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6008#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6016#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6024#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6032#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863523#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_2474))))))))))))))))))))))))))))))))

def word713_9_2539 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5968#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5976#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5984#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5992#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6000#64)) word713_9_2507)))))))))))))))))))))))))))))))

def word713_9_2572 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5928#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1665598771242257658#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5936#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5944#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5952#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5960#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_2539))))))))))))))))))))))))))))))))

def word713_9_2599 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5896#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8113484923696258161#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5904#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2510212049010394485#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5912#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14633519997572878506#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5920#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17108588296669214228#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_2572))))))))))))))))))))))))))

def word713_9_2632 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_1319 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5864#64)) (.seq word713_9_482 (.seq word713_9_1321 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5872#64)) (.seq word713_9_482 (.seq word713_9_1323 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5880#64)) (.seq word713_9_482 (.seq word713_9_1325 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5888#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9863633783879261905#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_2599))))))))))))))))))))))))))))))))

def word713_9_2665 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5824#64)) (.seq word713_9_482 (.seq word713_9_1304 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5832#64)) (.seq word713_9_482 (.seq word713_9_1306 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5840#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10616391696595805069#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5848#64)) (.seq word713_9_482 (.seq word713_9_1317 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5856#64)) (.seq word713_9_482 word713_9_2632))))))))))))))))))))))))))))))))

def word713_9_2697 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5784#64)) (.seq word713_9_482 (.seq word713_9_1306 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5792#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2786039319482058526#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5800#64)) (.seq word713_9_482 (.seq word713_9_1298 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5808#64)) (.seq word713_9_482 (.seq word713_9_1300 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5816#64)) (.seq word713_9_482 (.seq word713_9_1302 (.seq word713_9_8 word713_9_2665)))))))))))))))))))))))))))))))

def word713_9_2730 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2786039319482058522#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5752#64)) (.seq word713_9_482 (.seq word713_9_1298 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5760#64)) (.seq word713_9_482 (.seq word713_9_1300 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5768#64)) (.seq word713_9_482 (.seq word713_9_1302 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5776#64)) (.seq word713_9_482 (.seq word713_9_1304 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_2697))))))))))))))))))))))))))))))))

def word713_9_2763 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5712#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5720#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5728#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5736#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5744#64)) (.seq word713_9_482 word713_9_2730))))))))))))))))))))))))))))))))

def word713_9_2796 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5672#64)) (.seq word713_9_482 (.seq word713_9_1278 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5680#64)) (.seq word713_9_482 (.seq word713_9_1280 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5688#64)) (.seq word713_9_482 (.seq word713_9_1282 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5696#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5704#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_2763))))))))))))))))))))))))))))))))

def word713_9_2829 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_1280 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5640#64)) (.seq word713_9_482 (.seq word713_9_1282 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5648#64)) (.seq word713_9_482 (.seq word713_9_1272 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5656#64)) (.seq word713_9_482 (.seq word713_9_1274 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5664#64)) (.seq word713_9_482 (.seq word713_9_1276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_2796))))))))))))))))))))))))))))))))

def word713_9_2861 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5600#64)) (.seq word713_9_482 (.seq word713_9_1272 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5608#64)) (.seq word713_9_482 (.seq word713_9_1274 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5616#64)) (.seq word713_9_482 (.seq word713_9_1276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5624#64)) (.seq word713_9_482 (.seq word713_9_1278 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5632#64)) word713_9_2829)))))))))))))))))))))))))))))))

def word713_9_2886 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5568#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17237919592439788638#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5576#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2035044123721977696#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5584#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16350815739277094105#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5592#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1392179521213474446#64)) (.seq word713_9_8 word713_9_2861))))))))))))))))))))))))

def word713_9_2918 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5536#64)) (.seq word713_9_482 (.seq word713_9_274 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5544#64)) (.seq word713_9_482 (.seq word713_9_276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5552#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17433006465011670690#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5560#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3478017852528130570#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_2886)))))))))))))))))))))))))))))))

def word713_9_2951 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5496#64)) (.seq word713_9_482 (.seq word713_9_276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5504#64)) (.seq word713_9_482 (.seq word713_9_266 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5512#64)) (.seq word713_9_482 (.seq word713_9_268 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5520#64)) (.seq word713_9_482 (.seq word713_9_270 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5528#64)) (.seq word713_9_482 (.seq word713_9_272 word713_9_2918))))))))))))))))))))))))))))))))

def word713_9_2984 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5456#64)) (.seq word713_9_482 (.seq word713_9_266 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5464#64)) (.seq word713_9_482 (.seq word713_9_268 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5472#64)) (.seq word713_9_482 (.seq word713_9_270 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5480#64)) (.seq word713_9_482 (.seq word713_9_272 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5488#64)) (.seq word713_9_482 (.seq word713_9_274 (.seq word713_9_8 (.seq word713_9_27 word713_9_2951))))))))))))))))))))))))))))))))

def word713_9_3017 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_268 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5424#64)) (.seq word713_9_482 (.seq word713_9_270 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5432#64)) (.seq word713_9_482 (.seq word713_9_272 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5440#64)) (.seq word713_9_482 (.seq word713_9_274 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5448#64)) (.seq word713_9_482 (.seq word713_9_276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_2984))))))))))))))))))))))))))))))))

def word713_9_3050 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5384#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5392#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5400#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5408#64)) (.seq word713_9_482 (.seq word713_9_266 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5416#64)) (.seq word713_9_482 word713_9_3017))))))))))))))))))))))))))))))))

def word713_9_3083 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5344#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5352#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5360#64)) (.seq word713_9_482 (.seq word713_9_29 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5368#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5376#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_3050))))))))))))))))))))))))))))))))

def word713_9_3116 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5312#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5320#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5328#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5336#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_3083))))))))))))))))))))))))))))))))

def word713_9_3148 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5272#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5280#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5288#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5296#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5304#64)) word713_9_3116)))))))))))))))))))))))))))))))

def word713_9_3181 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5232#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5240#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5248#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5256#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5264#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_3148))))))))))))))))))))))))))))))))

def word713_9_3214 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_1182 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5200#64)) (.seq word713_9_482 (.seq word713_9_1184 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5208#64)) (.seq word713_9_482 (.seq word713_9_1186 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5216#64)) (.seq word713_9_482 (.seq word713_9_29 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5224#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_3181))))))))))))))))))))))))))))))))

def word713_9_3246 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5160#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1107055805787108465#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5168#64)) (.seq word713_9_482 (.seq word713_9_1176 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5176#64)) (.seq word713_9_482 (.seq word713_9_1178 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5184#64)) (.seq word713_9_482 (.seq word713_9_1180 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5192#64)) word713_9_3214)))))))))))))))))))))))))))))))

def word713_9_3271 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5128#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1714901587959661053#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5136#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17538313002046882884#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5144#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13285024879372521030#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5152#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16632812879141198858#64)) (.seq word713_9_8 word713_9_3246))))))))))))))))))))))))

def word713_9_3299 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5096#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12401057154751743096#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5104#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7226034973039055052#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5112#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 766742811860431400#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5120#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3620795695197330154#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3271)))))))))))))))))))))))))))

def word713_9_3327 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5064#64)) (.seq word713_9_482 (.seq word713_9_1186 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5072#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9781635320880533441#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5080#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 495239923557547522#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5088#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8344105645226750432#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3299)))))))))))))))))))))))))))

def word713_9_3360 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_1176 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5032#64)) (.seq word713_9_482 (.seq word713_9_1178 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5040#64)) (.seq word713_9_482 (.seq word713_9_1180 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5048#64)) (.seq word713_9_482 (.seq word713_9_1182 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5056#64)) (.seq word713_9_482 (.seq word713_9_1184 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3327))))))))))))))))))))))))))))))))

def word713_9_3393 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4992#64)) (.seq word713_9_482 (.seq word713_9_1138 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5000#64)) (.seq word713_9_482 (.seq word713_9_1140 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5008#64)) (.seq word713_9_482 (.seq word713_9_1142 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5016#64)) (.seq word713_9_482 (.seq word713_9_1144 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5024#64)) (.seq word713_9_482 word713_9_3360))))))))))))))))))))))))))))))))

def word713_9_3423 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4320969437019325989#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4960#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17098778598708503283#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4968#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1291289622868500826#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4976#64)) (.seq word713_9_482 (.seq word713_9_1134 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4984#64)) (.seq word713_9_482 (.seq word713_9_1136 (.seq word713_9_8 word713_9_3393)))))))))))))))))))))))))))))

def word713_9_3451 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 582508994779039039#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4928#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4491034961976738038#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4936#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16704584376175373328#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4944#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11324565353801852927#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4952#64)) (.seq word713_9_482 word713_9_3423)))))))))))))))))))))))))))

def word713_9_3479 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3952301209051386863#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4896#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14557853293471780388#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4904#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2918368523395386521#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4912#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6760069253471750628#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4920#64)) (.seq word713_9_482 word713_9_3451)))))))))))))))))))))))))))

def word713_9_3512 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4856#64)) (.seq word713_9_482 (.seq word713_9_1140 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4864#64)) (.seq word713_9_482 (.seq word713_9_1142 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4872#64)) (.seq word713_9_482 (.seq word713_9_1144 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4880#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8911396054101125557#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4888#64)) (.seq word713_9_482 word713_9_3479))))))))))))))))))))))))))))))))

def word713_9_3545 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4816#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4824#64)) (.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4832#64)) (.seq word713_9_482 (.seq word713_9_1134 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4840#64)) (.seq word713_9_482 (.seq word713_9_1136 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4848#64)) (.seq word713_9_482 (.seq word713_9_1138 (.seq word713_9_8 word713_9_3512))))))))))))))))))))))))))))))))

def word713_9_3578 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4784#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863594#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4792#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4800#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4808#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_3545))))))))))))))))))))))))))))))))

def word713_9_3610 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4744#64)) (.seq word713_9_482 (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4752#64)) (.seq word713_9_482 (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4760#64)) (.seq word713_9_482 (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4768#64)) (.seq word713_9_482 (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4776#64)) word713_9_3578)))))))))))))))))))))))))))))))

def word713_9_3643 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4704#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4712#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4720#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4728#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4736#64)) (.seq word713_9_482 (.seq word713_9_331 (.seq word713_9_8 word713_9_3610))))))))))))))))))))))))))))))))

def word713_9_3676 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4672#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4680#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4688#64)) (.seq word713_9_482 (.seq word713_9_1108 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4696#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_3643))))))))))))))))))))))))))))))))

def word713_9_3708 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4632#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4640#64)) (.seq word713_9_482 (.seq word713_9_1108 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4648#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4656#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4664#64)) word713_9_3676)))))))))))))))))))))))))))))))

def word713_9_3741 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4592#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 240#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4600#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4608#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4616#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4624#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_3708))))))))))))))))))))))))))))))))

def word713_9_3774 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4560#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4568#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4576#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4584#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_3741))))))))))))))))))))))))))))))))

def word713_9_3806 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4520#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4528#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4536#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4544#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4552#64)) word713_9_3774)))))))))))))))))))))))))))))))

def word713_9_3838 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4480#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7720336747103001025#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4488#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1013206390650290238#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4496#64)) (.seq word713_9_482 (.seq word713_9_29 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4504#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4512#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 word713_9_3806)))))))))))))))))))))))))))))))

def word713_9_3866 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4448#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4905905684016745359#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4456#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6675167463148394368#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4464#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3625112747029342752#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4472#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8197694151986493523#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3838)))))))))))))))))))))))))))

def word713_9_3894 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4416#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14660498759553796110#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4424#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13787308004332873665#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4432#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7101012286790006514#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4440#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 172830037692534587#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3866)))))))))))))))))))))))))))

def word713_9_3922 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4384#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14078588081290548374#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4392#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 781015344221683683#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4400#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15130647872920159991#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4408#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4757234684169342080#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3894)))))))))))))))))))))))))))

def word713_9_3950 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4352#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2204988348113831372#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4360#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10592474449179118273#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4368#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9033357708497886086#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4376#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6067271023149908518#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3922)))))))))))))))))))))))))))

def word713_9_3978 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4320#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10092455202333888821#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4328#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9193253711563866834#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4336#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17691595219776375879#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4344#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 778202887894139711#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3950)))))))))))))))))))))))))))

def word713_9_4006 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4288#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5255719044972187933#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4296#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 347606589330687421#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4304#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10845992994110574738#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4312#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1655469341950262250#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_3978)))))))))))))))))))))))))))

def word713_9_4034 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4256#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 70004379462101672#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4264#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8189165486932690436#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4272#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1033887512062764488#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4280#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11271894388753671721#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4006)))))))))))))))))))))))))))

def word713_9_4062 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4224#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5983130161189999867#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4232#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3609344159736760251#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4240#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16898074901591262352#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4248#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1619701357752249884#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4034)))))))))))))))))))))))))))

def word713_9_4090 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4192#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1881349400343039172#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4200#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1758313625630302499#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4208#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3778226018344582997#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4216#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14355327869992416094#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4062)))))))))))))))))))))))))))

def word713_9_4118 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4160#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7720081932193848650#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4168#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5967237584920922243#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4176#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12377427846571989832#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4184#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18013005311323887904#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4090)))))))))))))))))))))))))))

def word713_9_4146 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4128#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18353100669930795314#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4136#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16547411811928854487#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4144#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 269334146695233390#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4152#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1631410310868805610#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4118)))))))))))))))))))))))))))

def word713_9_4174 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4096#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14103733843373163083#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4104#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1612297190139091759#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4112#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6984591927261867737#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4120#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13339932232668798692#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4146)))))))))))))))))))))))))))

def word713_9_4202 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4064#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4402853133867972444#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4072#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15418807805142572985#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4080#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6760859324815900753#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4088#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6840121186619029743#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4174)))))))))))))))))))))))))))

def word713_9_4230 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4032#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14262012144631372388#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4040#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13186912195705886849#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4048#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11507373155986977154#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4056#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 637792788410719021#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4202)))))))))))))))))))))))))))

def word713_9_4258 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4000#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12685735333705453020#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4008#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 855930740911588324#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4016#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 199925847119476652#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4024#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5328758613570342114#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4230)))))))))))))))))))))))))))

def word713_9_4286 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3968#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15724621714793234461#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3976#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11676450493790612973#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3984#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6066025509460822294#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3992#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14326404096614579120#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4258)))))))))))))))))))))))))))

def word713_9_4314 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3936#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1314387578457599809#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3944#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15066165676546511630#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3952#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17441636237435581649#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3960#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1637008473169220501#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4286)))))))))))))))))))))))))))

def word713_9_4342 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3904#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8046435537999802711#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3912#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 400243331105348135#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3920#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12164906044230685718#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3928#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8247046336453711789#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4314)))))))))))))))))))))))))))

def word713_9_4370 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3872#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2172204746352322546#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3880#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11994630442058346377#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3888#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 879791671491744492#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3896#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8702226981475745585#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4342)))))))))))))))))))))))))))

def word713_9_4398 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3840#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11862766565471805471#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3848#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9640042925497046428#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3856#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1877083417397643448#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3864#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1829261189398470686#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4370)))))))))))))))))))))))))))

def word713_9_4426 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3808#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5915497081334721257#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3816#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1590100849350973618#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3824#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3672140328108400701#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3832#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8693114993904885301#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4398)))))))))))))))))))))))))))

def word713_9_4454 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3776#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 92203205520679873#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3784#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 572916540828819565#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3792#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17204633670617869946#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3800#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6924968209373727718#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4426)))))))))))))))))))))))))))

def word713_9_4482 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3744#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6317940024988860850#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3752#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14634479491382401593#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3760#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5666948055268535989#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3768#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1578157964224562126#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4454)))))))))))))))))))))))))))

def word713_9_4510 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3712#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 189531577938912252#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3720#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 414658151749832465#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3728#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 338991247778166276#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3736#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13142913832013798519#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4482)))))))))))))))))))))))))))

def word713_9_4538 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3680#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9685868895687483979#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3688#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7755485098777620407#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3696#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15684647020317539556#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3704#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6802473390048830824#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4510)))))))))))))))))))))))))))

def word713_9_4566 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3648#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1433942577299613084#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3656#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8465424830341846400#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3664#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8285498163857659356#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3672#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 163716820423854747#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4538)))))))))))))))))))))))))))

def word713_9_4594 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3616#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15083972834952036164#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3624#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 799438051374502809#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3632#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4817114329354076467#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3640#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14325828012864645732#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4566)))))))))))))))))))))))))))

def word713_9_4622 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3584#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 958146249756188408#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3592#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 488730451382505970#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3600#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13846054168121598783#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3608#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8838227588559581326#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4594)))))))))))))))))))))))))))

def word713_9_4650 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3552#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3345046972101780530#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3560#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5923739534552515142#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3568#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13337622794239929804#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3576#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1780164921828767454#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4622)))))))))))))))))))))))))))

def word713_9_4678 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3520#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1007974600900082579#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3528#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1833315000454533566#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3536#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14846055306840460686#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3544#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5321510883028162054#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4650)))))))))))))))))))))))))))

def word713_9_4706 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3488#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16722834201330696498#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3496#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3584647998681889532#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3504#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15066861003931772432#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3512#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14785260176242854207#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4678)))))))))))))))))))))))))))

def word713_9_4734 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3456#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 475233659467912251#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3464#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14135124294293452542#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3472#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2466492548686891555#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3480#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1016611174344998325#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4706)))))))))))))))))))))))))))

def word713_9_4762 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3424#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16756942182913253819#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3432#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 719520515476580427#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3440#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3147922594245844016#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3448#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11186783513499056751#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4734)))))))))))))))))))))))))))

def word713_9_4790 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3392#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6933025920263103879#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3400#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7626373186594408355#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3408#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2200974244968450750#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3416#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10320769399998235244#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4762)))))))))))))))))))))))))))

def word713_9_4818 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3360#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18231571463891878950#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3368#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1660145734357211167#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3376#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16039894141796533876#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3384#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 686738286210365551#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4790)))))))))))))))))))))))))))

def word713_9_4846 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3328#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12882959944969186108#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3336#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 336375361001233340#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3344#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11627815551290637097#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3352#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4825120264949852469#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4818)))))))))))))))))))))))))))

def word713_9_4874 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3296#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14511152726087948018#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3304#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5163511947597922654#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3312#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5922586712221110071#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3320#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16671121624101127371#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4846)))))))))))))))))))))))))))

def word713_9_4902 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3264#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8525415512662168654#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3272#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8405916841409361853#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3280#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2454990789666711200#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3288#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1612358804494830442#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4874)))))))))))))))))))))))))))

def word713_9_4930 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3232#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6678644607214234052#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3240#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 633886036738506515#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3248#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11074978966450447856#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3256#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2323684950984523890#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4902)))))))))))))))))))))))))))

def word713_9_4958 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3200#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4735212769449148123#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3208#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3379943669301788840#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3216#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8755912272271186652#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3224#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1825425679455244472#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4930)))))))))))))))))))))))))))

def word713_9_4986 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3168#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 712874875091754233#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3176#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15288216298323671324#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3184#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8689824239172478807#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3192#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 141972750621744161#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4958)))))))))))))))))))))))))))

def word713_9_5014 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3136#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17628079362768849300#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3144#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 57553299067792998#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3152#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11976580453200426187#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3160#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16014900032503684588#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_4986)))))))))))))))))))))))))))

def word713_9_5042 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3104#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13321614990632673782#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3112#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15162865775551710499#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3120#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14070580367580990887#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3128#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2689461337731570914#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_5014)))))))))))))))))))))))))))

def word713_9_5070 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3072#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1121505450578652468#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3080#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1307144967559264317#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3088#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15352831428748068483#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3096#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1389807578337138705#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_5042)))))))))))))))))))))))))))

def word713_9_5098 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3040#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2710356675495255290#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3048#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 652344406751465184#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3056#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16183658160488302230#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3064#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15475889019760388287#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_5070)))))))))))))))))))))))))))

def word713_9_5126 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3008#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13733803417833814835#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3016#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14775319642720936898#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3024#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3121750372618945491#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3032#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1273695771440998738#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_5098)))))))))))))))))))))))))))

def word713_9_5159 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2976#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2984#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2992#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3000#64)) (.seq word713_9_482 (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_5126))))))))))))))))))))))))))))))))

def word713_9_5187 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17762958817130696759#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2944#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5146891164735334016#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2952#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 675470927100193492#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2960#64)) (.seq word713_9_482 (.seq word713_9_29 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2968#64)) (.seq word713_9_482 word713_9_5159)))))))))))))))))))))))))))

def word713_9_5215 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 725340084226051970#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2912#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3270603789344496906#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2920#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10599026333335446784#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2928#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8565656522589412373#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2936#64)) (.seq word713_9_482 word713_9_5187)))))))))))))))))))))))))))

def word713_9_5243 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 252877309218538352#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2880#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8363199516777220149#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2888#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16176803544133875307#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2896#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6814521545734988748#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2904#64)) (.seq word713_9_482 word713_9_5215)))))))))))))))))))))))))))

def word713_9_5271 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7962192351555381416#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2848#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3509418672874520985#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2856#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1488347500898461874#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2864#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5149562959837648449#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2872#64)) (.seq word713_9_482 word713_9_5243)))))))))))))))))))))))))))

def word713_9_5299 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 536714149743900185#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2816#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1294742680819751518#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2824#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1127511003250156243#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2832#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1843909372225399896#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2840#64)) (.seq word713_9_482 word713_9_5271)))))))))))))))))))))))))))

def word713_9_5327 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16894043798660571244#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2784#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5633448088282521244#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2792#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6273329123533496713#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2800#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1098328982230230817#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2808#64)) (.seq word713_9_482 word713_9_5299)))))))))))))))))))))))))))

def word713_9_5355 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4131830461445745997#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2752#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6140956605115975401#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2760#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1041270466333271993#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2768#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17016134625831438906#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2776#64)) (.seq word713_9_482 word713_9_5327)))))))))))))))))))))))))))

def word713_9_5383 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1416629893867312296#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2720#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13847998906088228005#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2728#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8358912131254619921#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2736#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 739642499118176303#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2744#64)) (.seq word713_9_482 word713_9_5355)))))))))))))))))))))))))))

def word713_9_5411 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11228207967368476701#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2688#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10190314345946351322#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2696#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18437674587247370939#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2704#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 751851957792514173#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2712#64)) (.seq word713_9_482 word713_9_5383)))))))))))))))))))))))))))

def word713_9_5439 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6559532710647391569#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2656#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14428037799351479124#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2664#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 234844145893171966#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2672#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6025034940388909598#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2680#64)) (.seq word713_9_482 word713_9_5411)))))))))))))))))))))))))))

def word713_9_5467 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 804282852993868382#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2624#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1373009181854280920#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2632#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5293652763671852484#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2640#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6110444250091843536#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2648#64)) (.seq word713_9_482 word713_9_5439)))))))))))))))))))))))))))

def word713_9_5495 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15466434890074226396#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2592#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18205324308570099372#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2600#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8037026956533927121#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2608#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9311163821600184607#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2616#64)) (.seq word713_9_482 word713_9_5467)))))))))))))))))))))))))))

def word713_9_5523 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8089002360232247308#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2560#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5238936591227237942#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2568#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1321272531362356291#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2576#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18213183315621985817#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2584#64)) (.seq word713_9_482 word713_9_5495)))))))))))))))))))))))))))

def word713_9_5551 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 633474091881273774#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2528#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16557527386785790975#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2536#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1430641118356186857#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2544#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 82967328719421271#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2552#64)) (.seq word713_9_482 word713_9_5523)))))))))))))))))))))))))))

def word713_9_5579 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13067430171545714168#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2496#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11283074393783708770#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2504#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 132274872219551930#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2512#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1779737893574802031#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2520#64)) (.seq word713_9_482 word713_9_5551)))))))))))))))))))))))))))

def word713_9_5607 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3591512392926246844#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2464#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13627494601717575229#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2472#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 495550047642324592#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2480#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11041975239630265116#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2488#64)) (.seq word713_9_482 word713_9_5579)))))))))))))))))))))))))))

def word713_9_5635 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1167027828517898210#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2432#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12234233096825917993#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2440#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14000314106239596831#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2448#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2576269112800734056#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2456#64)) (.seq word713_9_482 word713_9_5607)))))))))))))))))))))))))))

def word713_9_5663 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17769927732099571180#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2400#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15351349873550116966#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2408#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18049808134997311382#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2416#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8275623842221021965#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2424#64)) (.seq word713_9_482 word713_9_5635)))))))))))))))))))))))))))

def word713_9_5691 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15937899882900905113#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2368#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3318087848058654498#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2376#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1628930385436977092#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2384#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14584871380308065147#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2392#64)) (.seq word713_9_482 word713_9_5663)))))))))))))))))))))))))))

def word713_9_5719 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 580186936973955012#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2336#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9161465579737517214#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2344#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11752436998487615353#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2352#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7449821001803307903#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2360#64)) (.seq word713_9_482 word713_9_5691)))))))))))))))))))))))))))

def word713_9_5747 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5738313744366653077#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2304#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11728946595272970718#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2312#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14140024565662700916#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2320#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8903813505199544589#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2328#64)) (.seq word713_9_482 word713_9_5719)))))))))))))))))))))))))))

def word713_9_5775 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3849985779734105521#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2272#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16750075057192140371#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2280#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1709149555065084898#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2288#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7886252005760951063#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2296#64)) (.seq word713_9_482 word713_9_5747)))))))))))))))))))))))))))

def word713_9_5803 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 967946631563726121#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2240#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11298218755092433038#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2248#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4159013751748851119#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2256#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11998370262181639475#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2264#64)) (.seq word713_9_482 word713_9_5775)))))))))))))))))))))))))))

def word713_9_5831 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10205808941053849290#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2208#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10378793938173061930#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2216#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12760252618317466849#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2224#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7653628713030275775#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2232#64)) (.seq word713_9_482 word713_9_5803)))))))))))))))))))))))))))

def word713_9_5859 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15797696746983946651#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2176#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 130921168661596853#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2184#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1598992431623377919#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2192#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15985511645807504772#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2200#64)) (.seq word713_9_482 word713_9_5831)))))))))))))))))))))))))))

def word713_9_5887 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1051997788391994435#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2144#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14777367860349315459#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2152#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11567228658253249817#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2160#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11444679715590672272#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2168#64)) (.seq word713_9_482 word713_9_5859)))))))))))))))))))))))))))

def word713_9_5915 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10978131499682789316#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2112#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 607681821319080984#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2120#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11086623519836470079#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2128#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7368650625050054228#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2136#64)) (.seq word713_9_482 word713_9_5887)))))))))))))))))))))))))))

def word713_9_5943 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15561595211679121189#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2080#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5622191986793862162#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2088#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1691355743628586423#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2096#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5842660658088809945#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2104#64)) (.seq word713_9_482 word713_9_5915)))))))))))))))))))))))))))

def word713_9_5971 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 960393023080265964#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2048#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14245880009877842017#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2056#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5996228842464768403#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2064#64)) (.seq word713_9_482 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17416319752018800771#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2072#64)) (.seq word713_9_482 word713_9_5943)))))))))))))))))))))))))))

def word713_9_5990 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2016#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7528018573573808732#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2024#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14844748873776858085#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2032#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2094253841180170779#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2040#64)))) word713_9_5971))))))))))))))))))

def word713_9_6009 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1992#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1668951808976071471#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2000#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16147550488514976944#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 2008#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10776056440809943711#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_5990))))))))))))))))))

def word713_9_6029 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1968#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17682789360670468203#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1976#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8941869963990959127#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1984#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 398773841247578140#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_6009)))))))))))))))))))

def word713_9_6048 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1944#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1270119733718627136#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1952#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16732261237459223483#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1960#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5204176168283587414#64)) (.seq word713_9_8 word713_9_6029))))))))))))))))))

def word713_9_6067 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6201670911048166766#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1920#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17465657917644792520#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1928#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7723742117508874335#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1936#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13261148298159854981#64)) word713_9_6048))))))))))))))))))

def word713_9_6086 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1888#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18010667617739806336#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1896#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 276559961644294862#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1904#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12586459670690286007#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1912#64)))) word713_9_6067))))))))))))))))))

def word713_9_6105 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1864#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9962099387040634336#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1872#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8623975380491602827#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1880#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7731696418485440718#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6086))))))))))))))))))

def word713_9_6128 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1832#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1840#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1848#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1856#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8011268957077696501#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_6105))))))))))))))))))))))

def word713_9_6152 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1800#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1360808972976160816#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1808#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1816#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1824#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6128)))))))))))))))))))))))

def word713_9_6171 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1776#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11581500465278574325#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1784#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2312248699302920304#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1792#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 111203405409480251#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6152))))))))))))))))))

def word713_9_6191 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1752#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5707120929990979#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1760#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15117538217124375520#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1768#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6495071758858381989#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_6171)))))))))))))))))))

def word713_9_6210 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1728#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15629909748249821612#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1736#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12748169179688756904#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1744#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4425131892511951234#64)) (.seq word713_9_8 word713_9_6191))))))))))))))))))

def word713_9_6229 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6362576984766887208#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1704#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 848540440590185907#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1712#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6698022561392380957#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1720#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10994253769421683071#64)) word713_9_6210))))))))))))))))))

def word713_9_6248 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1672#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3646841576362204053#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1680#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11062809923385098209#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1688#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9863631852917151592#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1696#64)))) word713_9_6229))))))))))))))))))

def word713_9_6267 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1648#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16813287336095381155#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1656#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3368952460600638490#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1664#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7891079509683868336#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6248))))))))))))))))))

def word713_9_6286 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1624#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15132376222941642753#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1632#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16717924791090763089#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1640#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6451771550755190452#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_6267))))))))))))))))))

def word713_9_6306 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1600#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11397987295268635755#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1608#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8411923172691210846#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1616#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11896141554398716#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_6286)))))))))))))))))))

def word713_9_6325 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1285362188954994119#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1576#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17245150020539748080#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1584#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 363211364668136614#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1592#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5075092668351637693#64)) word713_9_6306))))))))))))))))))

def word713_9_6344 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1544#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3558621301769835471#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1552#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10839030838996704116#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1560#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12867602560861149700#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1568#64)))) word713_9_6325))))))))))))))))))

def word713_9_6367 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_346 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1520#64)))) (.seq word713_9_348 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1528#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12856264008172771555#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1536#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15550602622668079850#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6344))))))))))))))))))))))

def word713_9_6391 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17185665809301629610#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1488#64)))) (.seq word713_9_340 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1496#64)))) (.seq word713_9_342 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1504#64)))) (.seq word713_9_344 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1512#64)))) word713_9_6367)))))))))))))))))))))))

def word713_9_6415 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_342 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1456#64)))) (.seq word713_9_344 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1464#64)))) (.seq word713_9_346 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1472#64)))) (.seq word713_9_348 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1480#64)))) word713_9_6391)))))))))))))))))))))))

def word713_9_6435 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1424#64)))) (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1432#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17185665809301629611#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1440#64)))) (.seq word713_9_340 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1448#64)))) word713_9_6415)))))))))))))))))))

def word713_9_6459 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1392#64)))) (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1400#64)))) (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1408#64)))) (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1416#64)))) (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_6435)))))))))))))))))))))))

def word713_9_6481 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3691218898639771653#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1368#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8353516859464449352#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1376#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15132376222941642752#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1384#64)))) (.seq word713_9_331 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_6459)))))))))))))))))))))

def word713_9_6500 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1336#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1463179570667947713#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1344#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744069414584321#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1352#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6034159408538082302#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1360#64)))) word713_9_6481))))))))))))))))))

def word713_9_6519 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1312#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15800302407253291197#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1320#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8133278142371037904#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1328#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7769744319687806097#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6500))))))))))))))))))

def word713_9_6539 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1288#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 410619046979592152#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1296#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2226472659975678357#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1304#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6373087774271371469#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 word713_9_6519)))))))))))))))))))

def word713_9_6558 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1264#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10082116240020342118#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1272#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17552803891753226222#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1280#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16089103532492447813#64)) (.seq word713_9_8 word713_9_6539))))))))))))))))))

def word713_9_6578 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1232#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1240#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1248#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11175958356102185238#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1256#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14283797810955388722#64)) word713_9_6558)))))))))))))))))))

def word713_9_6602 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1200#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1208#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1216#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1224#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6578)))))))))))))))))))))))

def word713_9_6626 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1168#64)))) (.seq word713_9_258 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1176#64)))) (.seq word713_9_260 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1184#64)))) (.seq word713_9_262 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1192#64)))) (.seq word713_9_264 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6602)))))))))))))))))))))))

def word713_9_6650 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1136#64)))) (.seq word713_9_274 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1144#64)))) (.seq word713_9_276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1152#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10087218740379822765#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1160#64)))) (.seq word713_9_256 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6626)))))))))))))))))))))))

def word713_9_6674 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1104#64)))) (.seq word713_9_266 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1112#64)))) (.seq word713_9_268 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1120#64)))) (.seq word713_9_270 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1128#64)))) (.seq word713_9_272 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6650)))))))))))))))))))))))

def word713_9_6698 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1072#64)))) (.seq word713_9_270 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1080#64)))) (.seq word713_9_272 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1088#64)))) (.seq word713_9_274 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1096#64)))) (.seq word713_9_276 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6674)))))))))))))))))))))))

def word713_9_6722 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1040#64)))) (.seq word713_9_262 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1048#64)))) (.seq word713_9_264 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1056#64)))) (.seq word713_9_266 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1064#64)))) (.seq word713_9_268 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6698)))))))))))))))))))))))

def word713_9_6746 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1008#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10087218740379822764#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1016#64)))) (.seq word713_9_256 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1024#64)))) (.seq word713_9_258 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1032#64)))) (.seq word713_9_260 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6722)))))))))))))))))))))))

def word713_9_6770 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 976#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 984#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 992#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1000#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6746)))))))))))))))))))))))

def word713_9_6794 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 944#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9865672654120263608#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 952#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 71000049454473266#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 960#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 968#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6770)))))))))))))))))))))))

def word713_9_6814 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 920#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2895069921743240898#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 928#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17009126888523054175#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 936#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6098234018649060207#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6794)))))))))))))))))))

def word713_9_6834 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 896#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13993175198059990303#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 904#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1802798568193066599#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 912#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3240210268673559283#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_6814)))))))))))))))))))

def word713_9_6853 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10162220747404304312#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 872#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17761815663483519293#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 880#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8873291758750579140#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 888#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1141103941765652303#64)) word713_9_6834))))))))))))))))))

def word713_9_6872 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 840#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17256067581717210911#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 848#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 235084153942973259#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 856#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1614194442543190677#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 864#64)))) word713_9_6853))))))))))))))))))

def word713_9_6892 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 816#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2523298865781282127#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 824#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10706521341520693709#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 832#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15735244747490068361#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6872)))))))))))))))))))

def word713_9_6912 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 792#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1375121023722642968#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 800#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15552599145772612770#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 808#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 91008491802288749#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_6892)))))))))))))))))))

def word713_9_6931 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1567208541899370792#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 768#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17179152284089789081#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 776#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5540110408603530115#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 784#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16727584683305060729#64)) word713_9_6912))))))))))))))))))

def word713_9_6950 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 736#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1155633786677544253#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 744#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2745067624118087592#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 752#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9528423322296710025#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 760#64)))) word713_9_6931))))))))))))))))))

def word713_9_6970 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 712#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1755488985088075540#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 720#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12658117877867061106#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 728#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2960243223285748434#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_6950)))))))))))))))))))

def word713_9_6990 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 688#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11774750593219085835#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 696#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4118199987566602953#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 704#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8305809481745696994#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_6970)))))))))))))))))))

def word713_9_7009 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3651525051980876697#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 664#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 434250606344352972#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 672#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14523786478703730418#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 680#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 608058373078778093#64)) word713_9_6990))))))))))))))))))

def word713_9_7028 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 632#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4555124010822409633#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 640#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2771000935339432363#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 648#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14645187562128761775#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 656#64)))) word713_9_7009))))))))))))))))))

def word713_9_7048 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 608#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10144865889576432922#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 616#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 929383263523139089#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 624#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12297368366147926462#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7028)))))))))))))))))))

def word713_9_7068 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 584#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10536956157198377609#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 592#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7873024875724591404#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 600#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12537348094477325223#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_7048)))))))))))))))))))

def word713_9_7087 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6443473286224459290#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 560#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 9055845637167730533#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 568#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1432192374203850592#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 576#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16254428414758889473#64)) word713_9_7068))))))))))))))))))

def word713_9_7106 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 528#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16549740192668593022#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 536#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3696594454104530263#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 544#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13103893525273989193#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 552#64)))) word713_9_7087))))))))))))))))))

def word713_9_7126 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 504#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14331714969349929730#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 512#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2740446039084699729#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 520#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 165123225776229009#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7106)))))))))))))))))))

def word713_9_7146 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 480#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15312334153293348280#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 488#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 841050694974028783#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 496#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12993178926126977399#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_7126)))))))))))))))))))

def word713_9_7165 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 61670280795567085#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 456#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18227722000993880822#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 464#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11573741888802228964#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 472#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 627113611842199793#64)) word713_9_7146))))))))))))))))))

def word713_9_7184 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 424#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1725392847304644500#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 432#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 912580534683953121#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 440#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15005087156090211044#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 448#64)))) word713_9_7165))))))))))))))))))

def word713_9_7204 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 400#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11623291730934869080#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 408#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 14080658508445169925#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 416#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2780237799254240271#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7184)))))))))))))))))))

def word713_9_7226 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 368#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 376#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 384#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18103045581585958587#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 392#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7806400890582735599#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_7204)))))))))))))))))))))

def word713_9_7250 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 336#64)))) (.seq word713_9_85 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 344#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 352#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 360#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7226)))))))))))))))))))))))

def word713_9_7274 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 304#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 312#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 320#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 328#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7250)))))))))))))))))))))))

def word713_9_7298 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 272#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 280#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 288#64)))) (.seq word713_9_85 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 296#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7274)))))))))))))))))))))))

def word713_9_7322 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 240#64)))) (.seq word713_9_85 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 248#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 256#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 264#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7298)))))))))))))))))))))))

def word713_9_7342 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 216#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12843041017062132063#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 224#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2706051889235351147#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 232#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 936899308823769933#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7322)))))))))))))))))))

def word713_9_7362 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 192#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15924587544893707605#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 200#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1105070755758604287#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 208#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12941209323636816658#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_7342)))))))))))))))))))

def word713_9_7381 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11120290361046346205#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 168#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3801124253586036577#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 176#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2671430854784468776#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 184#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 767358375875140941#64)) word713_9_7362))))))))))))))))))

def word713_9_7400 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 136#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1267921511277847466#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 144#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17098105564519244256#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 152#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3557706395579559416#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 160#64)))) word713_9_7381))))))))))))))))))

def word713_9_7420 : WordLangProgHOL (BitVec 64) :=
.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 112#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 10224657059481499349#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7488229067341005760#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11130996698012816685#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7400)))))))))))))))))))

def word713_9_7442 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 80#64)))) (.seq word713_9_45 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 88#64)))) (.seq word713_9_47 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 96#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 17644856173732828998#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 104#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 754043588434789617#64)) (.seq word713_9_8 (.seq word713_9_27 word713_9_7420)))))))))))))))))))))

def word713_9_7466 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13402431016077863595#64)) (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))) (.seq word713_9_39 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))) (.seq word713_9_41 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))) (.seq word713_9_43 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7442)))))))))))))))))))))))

def word713_9_7490 : WordLangProgHOL (BitVec 64) :=
.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7466)))))))))))))))))))))))

def word713_9_7511 : WordLangProgHOL (BitVec 64) :=
.seq (.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), (Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 44)]), 713, 2)) (some 68) ([2]) (some (2, (.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]) (Flapjack.WordLangProgHOL.raise 2)), 713, 3))) (.seq word713_9_6 (.seq (Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength) (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))) (.seq (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0) (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551104#64)))) (.seq (Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]) (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq word713_9_29 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))) (.seq word713_9_31 (.seq word713_9_8 (.seq word713_9_27 (.seq word713_9_0 (.seq word713_9_28 word713_9_7490))))))))))))))))))))

def pass713_9 : WordLangProgHOL (BitVec 64) :=
(.seq word713_9_0 (.seq (Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength) (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))) (.seq (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2) (.seq (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551104#64))) (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)) (.seq (.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) (.seq word713_9_6 (.seq word713_9_7 (.seq word713_9_8 (Flapjack.WordLangProgHOL.return 0 [2])))) (Flapjack.WordLangProgHOL.skip)) (.seq word713_9_6 (.seq word713_9_6 (.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7136#64)) (.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]) word713_9_7511)))))))))))
end InitECandidate.Proofs.WordStages.Sparse713
