import InitECandidate.Proofs.StackAnalysis.Data589
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
def frame589 : Nat := 3
def slim589 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 589, snd := 2 } } } })
  (Option.some 468) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 589, snd := 3 } } })
theorem frame589_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized589.2.1 optimized589.2.2 = frame589 := by cbv
theorem slim589_eq : WordDepth.Executable.slim optimized589.2.2 = slim589 := by cbv
theorem frameEntry589_eq : frameEntry optimized589 = (589, frame589) := by
  unfold frameEntry
  rw [frame589_eq]
  rfl
theorem slimEntry589_eq : slimEntry optimized589 = (589, 3, slim589) := by
  unfold slimEntry
  rw [slim589_eq]
  rfl
#print axioms frame589_eq
#print axioms slim589_eq
end InitECandidate.Proofs.StackAnalysis
