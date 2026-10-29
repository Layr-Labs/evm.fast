import InitECandidate.Proofs.StackAnalysis.Data346
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
def frame346 : Nat := 2
def slim346 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 346, snd := 2 } } } })
  (Option.some 345) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 346, snd := 3 } } })
theorem frame346_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized346.2.1 optimized346.2.2 = frame346 := by cbv
theorem slim346_eq : WordDepth.Executable.slim optimized346.2.2 = slim346 := by cbv
theorem frameEntry346_eq : frameEntry optimized346 = (346, frame346) := by
  unfold frameEntry
  rw [frame346_eq]
  rfl
theorem slimEntry346_eq : slimEntry optimized346 = (346, 3, slim346) := by
  unfold slimEntry
  rw [slim346_eq]
  rfl
#print axioms frame346_eq
#print axioms slim346_eq
end InitECandidate.Proofs.StackAnalysis
