import InitECandidate.Proofs.StackAnalysis.Data493
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
def frame493 : Nat := 2
def slim493 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 493, snd := 2 } } } })
  (Option.some 187) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 493, snd := 3 } } })
theorem frame493_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized493.2.1 optimized493.2.2 = frame493 := by cbv
theorem slim493_eq : WordDepth.Executable.slim optimized493.2.2 = slim493 := by cbv
theorem frameEntry493_eq : frameEntry optimized493 = (493, frame493) := by
  unfold frameEntry
  rw [frame493_eq]
  rfl
theorem slimEntry493_eq : slimEntry optimized493 = (493, 2, slim493) := by
  unfold slimEntry
  rw [slim493_eq]
  rfl
#print axioms frame493_eq
#print axioms slim493_eq
end InitECandidate.Proofs.StackAnalysis
