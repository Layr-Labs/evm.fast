import InitECandidate.Proofs.StackAnalysis.Data496
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
def frame496 : Nat := 2
def slim496 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 496, snd := 2 } } } })
  (Option.some 494) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 496, snd := 3 } } })
theorem frame496_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized496.2.1 optimized496.2.2 = frame496 := by cbv
theorem slim496_eq : WordDepth.Executable.slim optimized496.2.2 = slim496 := by cbv
theorem frameEntry496_eq : frameEntry optimized496 = (496, frame496) := by
  unfold frameEntry
  rw [frame496_eq]
  rfl
theorem slimEntry496_eq : slimEntry optimized496 = (496, 3, slim496) := by
  unfold slimEntry
  rw [slim496_eq]
  rfl
#print axioms frame496_eq
#print axioms slim496_eq
end InitECandidate.Proofs.StackAnalysis
