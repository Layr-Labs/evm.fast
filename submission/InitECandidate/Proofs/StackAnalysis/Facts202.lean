import InitECandidate.Proofs.StackAnalysis.Data202
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
def frame202 : Nat := 6
def slim202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 (List.cons 10 List.nil)))),
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 202, snd := 2 } } } })
    (Option.some 115) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 202, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.call Option.none (Option.some 117) List.nil Option.none)
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
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 202, snd := 4 } } } })
        (Option.some 106) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 202, snd := 5 } } }))
      (Flapjack.WordLangProgHOL.call Option.none (Option.some 117) List.nil Option.none)))
theorem frame202_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized202.2.1 optimized202.2.2 = frame202 := by cbv
theorem slim202_eq : WordDepth.Executable.slim optimized202.2.2 = slim202 := by cbv
theorem frameEntry202_eq : frameEntry optimized202 = (202, frame202) := by
  unfold frameEntry
  rw [frame202_eq]
  rfl
theorem slimEntry202_eq : slimEntry optimized202 = (202, 9, slim202) := by
  unfold slimEntry
  rw [slim202_eq]
  rfl
#print axioms frame202_eq
#print axioms slim202_eq
end InitECandidate.Proofs.StackAnalysis
