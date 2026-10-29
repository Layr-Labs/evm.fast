import InitECandidate.Proofs.StackAnalysis.Data211
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
def frame211 : Nat := 2
def slim211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 211, snd := 2 } } } })
  (Option.some 115) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 211, snd := 3 } } })
theorem frame211_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized211.2.1 optimized211.2.2 = frame211 := by cbv
theorem slim211_eq : WordDepth.Executable.slim optimized211.2.2 = slim211 := by cbv
theorem frameEntry211_eq : frameEntry optimized211 = (211, frame211) := by
  unfold frameEntry
  rw [frame211_eq]
  rfl
theorem slimEntry211_eq : slimEntry optimized211 = (211, 9, slim211) := by
  unfold slimEntry
  rw [slim211_eq]
  rfl
#print axioms frame211_eq
#print axioms slim211_eq
end InitECandidate.Proofs.StackAnalysis
