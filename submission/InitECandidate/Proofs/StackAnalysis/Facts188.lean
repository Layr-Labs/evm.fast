import InitECandidate.Proofs.StackAnalysis.Data188
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
def frame188 : Nat := 3
def slim188 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 188, snd := 2 } } } })
  (Option.some 191) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 188, snd := 3 } } })
theorem frame188_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized188.2.1 optimized188.2.2 = frame188 := by cbv
theorem slim188_eq : WordDepth.Executable.slim optimized188.2.2 = slim188 := by cbv
theorem frameEntry188_eq : frameEntry optimized188 = (188, frame188) := by
  unfold frameEntry
  rw [frame188_eq]
  rfl
theorem slimEntry188_eq : slimEntry optimized188 = (188, 2, slim188) := by
  unfold slimEntry
  rw [slim188_eq]
  rfl
#print axioms frame188_eq
#print axioms slim188_eq
end InitECandidate.Proofs.StackAnalysis
