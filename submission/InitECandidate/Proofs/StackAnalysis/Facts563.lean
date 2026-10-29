import InitECandidate.Proofs.StackAnalysis.Data563
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
def frame563 : Nat := 2
def slim563 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 563, snd := 2 } } } })
  (Option.some 560) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 563, snd := 3 } } })
theorem frame563_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized563.2.1 optimized563.2.2 = frame563 := by cbv
theorem slim563_eq : WordDepth.Executable.slim optimized563.2.2 = slim563 := by cbv
theorem frameEntry563_eq : frameEntry optimized563 = (563, frame563) := by
  unfold frameEntry
  rw [frame563_eq]
  rfl
theorem slimEntry563_eq : slimEntry optimized563 = (563, 1, slim563) := by
  unfold slimEntry
  rw [slim563_eq]
  rfl
#print axioms frame563_eq
#print axioms slim563_eq
end InitECandidate.Proofs.StackAnalysis
