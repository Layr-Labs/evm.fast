import InitECandidate.Proofs.StackAnalysis.Data877
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
def frame877 : Nat := 3
def slim877 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln,
              snd := Flapjack.Spt.ln },
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 877, snd := 2 } } } })
  (Option.some 876) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 877, snd := 3 } } })
theorem frame877_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized877.2.1 optimized877.2.2 = frame877 := by cbv
theorem slim877_eq : WordDepth.Executable.slim optimized877.2.2 = slim877 := by cbv
theorem frameEntry877_eq : frameEntry optimized877 = (877, frame877) := by
  unfold frameEntry
  rw [frame877_eq]
  rfl
theorem slimEntry877_eq : slimEntry optimized877 = (877, 2, slim877) := by
  unfold slimEntry
  rw [slim877_eq]
  rfl
#print axioms frame877_eq
#print axioms slim877_eq
end InitECandidate.Proofs.StackAnalysis
