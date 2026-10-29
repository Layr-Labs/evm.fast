import InitECandidate.Proofs.StackAnalysis.Data780
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
def frame780 : Nat := 2
def slim780 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 780, snd := 2 } } } })
  (Option.some 77) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 780, snd := 3 } } })
theorem frame780_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized780.2.1 optimized780.2.2 = frame780 := by cbv
theorem slim780_eq : WordDepth.Executable.slim optimized780.2.2 = slim780 := by cbv
theorem frameEntry780_eq : frameEntry optimized780 = (780, frame780) := by
  unfold frameEntry
  rw [frame780_eq]
  rfl
theorem slimEntry780_eq : slimEntry optimized780 = (780, 3, slim780) := by
  unfold slimEntry
  rw [slim780_eq]
  rfl
#print axioms frame780_eq
#print axioms slim780_eq
end InitECandidate.Proofs.StackAnalysis
