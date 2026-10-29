import InitECandidate.Proofs.StackAnalysis.Data467
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
def frame467 : Nat := 2
def slim467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 467, snd := 2 } } } })
  (Option.some 146) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 467, snd := 3 } } })
theorem frame467_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized467.2.1 optimized467.2.2 = frame467 := by cbv
theorem slim467_eq : WordDepth.Executable.slim optimized467.2.2 = slim467 := by cbv
theorem frameEntry467_eq : frameEntry optimized467 = (467, frame467) := by
  unfold frameEntry
  rw [frame467_eq]
  rfl
theorem slimEntry467_eq : slimEntry optimized467 = (467, 2, slim467) := by
  unfold slimEntry
  rw [slim467_eq]
  rfl
#print axioms frame467_eq
#print axioms slim467_eq
end InitECandidate.Proofs.StackAnalysis
