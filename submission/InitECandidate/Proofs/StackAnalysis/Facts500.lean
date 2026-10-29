import InitECandidate.Proofs.StackAnalysis.Data500
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
def frame500 : Nat := 10
def slim500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
        snd :=
          {
            fst :=
              {
                fst :=
                  Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 2 } } } })
    (Option.some 475) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.seq
    (Flapjack.WordLangProgHOL.call
      (Option.some
        { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
          snd :=
            {
              fst :=
                {
                  fst :=
                    Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)))
                      Flapjack.Spt.ln,
                  snd := Flapjack.Spt.ln },
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 4 } } } })
      (Option.some 475) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 5 } } }))
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
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 6 } } } })
        (Option.some 470) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 7 } } }))
      (Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.call
          (Option.some
            { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
              snd :=
                {
                  fst :=
                    {
                      fst :=
                        Flapjack.Spt.bn
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln))
                          Flapjack.Spt.ln,
                      snd := Flapjack.Spt.ln },
                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 8 } } } })
          (Option.some 130) List.nil
          (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 9 } } }))
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 10 } } } })
            (Option.some 476) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 11 } } }))
          (Flapjack.WordLangProgHOL.call
            (Option.some
              { fst := List.cons 2 List.nil,
                snd :=
                  {
                    fst :=
                      {
                        fst :=
                          Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                  Flapjack.Spt.ln)
                                Flapjack.Spt.ln))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 12 } } } })
            (Option.some 490) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 500, snd := 13 } } }))))))
theorem frame500_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized500.2.1 optimized500.2.2 = frame500 := by cbv
theorem slim500_eq : WordDepth.Executable.slim optimized500.2.2 = slim500 := by cbv
theorem frameEntry500_eq : frameEntry optimized500 = (500, frame500) := by
  unfold frameEntry
  rw [frame500_eq]
  rfl
theorem slimEntry500_eq : slimEntry optimized500 = (500, 1, slim500) := by
  unfold slimEntry
  rw [slim500_eq]
  rfl
#print axioms frame500_eq
#print axioms slim500_eq
end InitECandidate.Proofs.StackAnalysis
