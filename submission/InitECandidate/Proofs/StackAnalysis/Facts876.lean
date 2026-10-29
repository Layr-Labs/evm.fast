import InitECandidate.Proofs.StackAnalysis.Data876
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
def frame876 : Nat := 2
def slim876 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 876, snd := 2 } } } })
  (Option.some 875) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 876, snd := 3 } } })
theorem frame876_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized876.2.1 optimized876.2.2 = frame876 := by cbv
theorem slim876_eq : WordDepth.Executable.slim optimized876.2.2 = slim876 := by cbv
theorem frameEntry876_eq : frameEntry optimized876 = (876, frame876) := by
  unfold frameEntry
  rw [frame876_eq]
  rfl
theorem slimEntry876_eq : slimEntry optimized876 = (876, 2, slim876) := by
  unfold slimEntry
  rw [slim876_eq]
  rfl
#print axioms frame876_eq
#print axioms slim876_eq
end InitECandidate.Proofs.StackAnalysis
