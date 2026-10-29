import InitECandidate.Proofs.StackAnalysis.Data561
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
def frame561 : Nat := 2
def slim561 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 561, snd := 2 } } } })
  (Option.some 560) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 561, snd := 3 } } })
theorem frame561_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized561.2.1 optimized561.2.2 = frame561 := by cbv
theorem slim561_eq : WordDepth.Executable.slim optimized561.2.2 = slim561 := by cbv
theorem frameEntry561_eq : frameEntry optimized561 = (561, frame561) := by
  unfold frameEntry
  rw [frame561_eq]
  rfl
theorem slimEntry561_eq : slimEntry optimized561 = (561, 1, slim561) := by
  unfold slimEntry
  rw [slim561_eq]
  rfl
#print axioms frame561_eq
#print axioms slim561_eq
end InitECandidate.Proofs.StackAnalysis
