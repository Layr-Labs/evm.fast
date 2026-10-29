import InitECandidate.Proofs.StackAnalysis.Data369
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
def frame369 : Nat := 2
def slim369 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 369, snd := 2 } } } })
  (Option.some 158) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 369, snd := 3 } } })
theorem frame369_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized369.2.1 optimized369.2.2 = frame369 := by cbv
theorem slim369_eq : WordDepth.Executable.slim optimized369.2.2 = slim369 := by cbv
theorem frameEntry369_eq : frameEntry optimized369 = (369, frame369) := by
  unfold frameEntry
  rw [frame369_eq]
  rfl
theorem slimEntry369_eq : slimEntry optimized369 = (369, 3, slim369) := by
  unfold slimEntry
  rw [slim369_eq]
  rfl
#print axioms frame369_eq
#print axioms slim369_eq
end InitECandidate.Proofs.StackAnalysis
