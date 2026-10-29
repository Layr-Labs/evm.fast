import InitECandidate.Proofs.StackAnalysis.Data571
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
def frame571 : Nat := 2
def slim571 : WordLangProgHOL (BitVec 64) :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 2 } } } })
    (Option.some 470) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 3 } } }))
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
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 4 } } } })
      (Option.some 407) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 5 } } }))
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
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 6 } } } })
        (Option.some 476) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 7 } } }))
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
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 8 } } } })
        (Option.some 490) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 571, snd := 9 } } }))))
theorem frame571_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized571.2.1 optimized571.2.2 = frame571 := by cbv
theorem slim571_eq : WordDepth.Executable.slim optimized571.2.2 = slim571 := by cbv
theorem frameEntry571_eq : frameEntry optimized571 = (571, frame571) := by
  unfold frameEntry
  rw [frame571_eq]
  rfl
theorem slimEntry571_eq : slimEntry optimized571 = (571, 1, slim571) := by
  unfold slimEntry
  rw [slim571_eq]
  rfl
#print axioms frame571_eq
#print axioms slim571_eq
end InitECandidate.Proofs.StackAnalysis
