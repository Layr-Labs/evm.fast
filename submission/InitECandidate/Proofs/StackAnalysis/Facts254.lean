import InitECandidate.Proofs.StackAnalysis.Data254
import InitECandidate.Proofs.StackAnalysis.Entries
import Lean
import Flapjack.RiscV.NativeSource
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.StackAnalysis
def frame254 : Nat := 13
def slim254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 List.nil,
        snd :=
          {
            fst :=
              {
                fst :=
                  Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 2 } } } })
    (Option.some 245) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.seq
    (Flapjack.WordLangProgHOL.call
      (Option.some
        { fst := List.cons 2 List.nil,
          snd :=
            {
              fst :=
                {
                  fst :=
                    Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln,
                  snd := Flapjack.Spt.ln },
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 4 } } } })
      (Option.some 250) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 5 } } }))
    (Flapjack.WordLangProgHOL.seq
      (Flapjack.WordLangProgHOL.call
        (Option.some
          { fst := List.cons 2 List.nil,
            snd :=
              {
                fst :=
                  {
                    fst :=
                      Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 6 } } } })
        (Option.some 68) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 7 } } }))
      (Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.call
          (Option.some
            { fst := List.cons 2 List.nil,
              snd :=
                {
                  fst :=
                    {
                      fst :=
                        Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                          Flapjack.Spt.ln,
                      snd := Flapjack.Spt.ln },
                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 8 } } } })
          (Option.some 252) List.nil
          (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 9 } } }))
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.call
            (Option.some
              { fst := List.cons 2 List.nil,
                snd :=
                  {
                    fst :=
                      {
                        fst :=
                          Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 10 } } } })
            (Option.some 252) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 11 } } }))
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.call
              (Option.some
                { fst := List.cons 2 List.nil,
                  snd :=
                    {
                      fst :=
                        {
                          fst :=
                            Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                              Flapjack.Spt.ln,
                          snd := Flapjack.Spt.ln },
                      snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 12 } } } })
              (Option.some 252) List.nil
              (Option.some
                { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 13 } } }))
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.call
                (Option.some
                  { fst := List.cons 2 List.nil,
                    snd :=
                      {
                        fst :=
                          {
                            fst :=
                              Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 14 } } } })
                (Option.some 252) List.nil
                (Option.some
                  { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 15 } } }))
              (Flapjack.WordLangProgHOL.call
                (Option.some
                  { fst := List.cons 2 List.nil,
                    snd :=
                      {
                        fst :=
                          {
                            fst :=
                              Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 16 } } } })
                (Option.some 252) List.nil
                (Option.some
                  { fst := 2,
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 254, snd := 17 } } }))))))))
theorem frame254_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized254.2.1 optimized254.2.2 = frame254 := by cbv
theorem slim254_eq : WordDepth.Executable.slim optimized254.2.2 = slim254 := by cbv
theorem frameEntry254_eq : frameEntry optimized254 = (254, frame254) := by
  unfold frameEntry
  rw [frame254_eq]
  rfl
theorem slimEntry254_eq : slimEntry optimized254 = (254, 3, slim254) := by
  unfold slimEntry
  rw [slim254_eq]
  rfl
#print axioms frame254_eq
#print axioms slim254_eq
end InitECandidate.Proofs.StackAnalysis
