import InitECandidate.Proofs.StackAnalysis.Data495
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
def frame495 : Nat := 2
def slim495 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 495, snd := 2 } } } })
  (Option.some 493) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 495, snd := 3 } } })
theorem frame495_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized495.2.1 optimized495.2.2 = frame495 := by cbv
theorem slim495_eq : WordDepth.Executable.slim optimized495.2.2 = slim495 := by cbv
theorem frameEntry495_eq : frameEntry optimized495 = (495, frame495) := by
  unfold frameEntry
  rw [frame495_eq]
  rfl
theorem slimEntry495_eq : slimEntry optimized495 = (495, 2, slim495) := by
  unfold slimEntry
  rw [slim495_eq]
  rfl
#print axioms frame495_eq
#print axioms slim495_eq
end InitECandidate.Proofs.StackAnalysis
