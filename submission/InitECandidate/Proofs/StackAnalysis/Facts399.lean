import InitECandidate.Proofs.StackAnalysis.Data399
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
def frame399 : Nat := 2
def slim399 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 399, snd := 2 } } } })
  (Option.some 398) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 399, snd := 3 } } })
theorem frame399_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized399.2.1 optimized399.2.2 = frame399 := by cbv
theorem slim399_eq : WordDepth.Executable.slim optimized399.2.2 = slim399 := by cbv
theorem frameEntry399_eq : frameEntry optimized399 = (399, frame399) := by
  unfold frameEntry
  rw [frame399_eq]
  rfl
theorem slimEntry399_eq : slimEntry optimized399 = (399, 2, slim399) := by
  unfold slimEntry
  rw [slim399_eq]
  rfl
#print axioms frame399_eq
#print axioms slim399_eq
end InitECandidate.Proofs.StackAnalysis
