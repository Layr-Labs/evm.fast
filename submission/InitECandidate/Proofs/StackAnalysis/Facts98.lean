import InitECandidate.Proofs.StackAnalysis.Data98
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
def frame98 : Nat := 2
def slim98 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 98, snd := 2 } } } })
  (Option.some 68) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 98, snd := 3 } } })
theorem frame98_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized98.2.1 optimized98.2.2 = frame98 := by cbv
theorem slim98_eq : WordDepth.Executable.slim optimized98.2.2 = slim98 := by cbv
theorem frameEntry98_eq : frameEntry optimized98 = (98, frame98) := by
  unfold frameEntry
  rw [frame98_eq]
  rfl
theorem slimEntry98_eq : slimEntry optimized98 = (98, 1, slim98) := by
  unfold slimEntry
  rw [slim98_eq]
  rfl
#print axioms frame98_eq
#print axioms slim98_eq
end InitECandidate.Proofs.StackAnalysis
