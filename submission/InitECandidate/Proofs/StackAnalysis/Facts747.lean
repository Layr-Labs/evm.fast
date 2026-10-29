import InitECandidate.Proofs.StackAnalysis.Data747
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
def frame747 : Nat := 2
def slim747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 747, snd := 2 } } } })
  (Option.some 78) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 747, snd := 3 } } })
theorem frame747_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized747.2.1 optimized747.2.2 = frame747 := by cbv
theorem slim747_eq : WordDepth.Executable.slim optimized747.2.2 = slim747 := by cbv
theorem frameEntry747_eq : frameEntry optimized747 = (747, frame747) := by
  unfold frameEntry
  rw [frame747_eq]
  rfl
theorem slimEntry747_eq : slimEntry optimized747 = (747, 2, slim747) := by
  unfold slimEntry
  rw [slim747_eq]
  rfl
#print axioms frame747_eq
#print axioms slim747_eq
end InitECandidate.Proofs.StackAnalysis
