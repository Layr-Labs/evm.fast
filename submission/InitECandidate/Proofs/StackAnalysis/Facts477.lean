import InitECandidate.Proofs.StackAnalysis.Data477
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
def frame477 : Nat := 2
def slim477 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 477, snd := 2 } } } })
  (Option.some 476) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 477, snd := 3 } } })
theorem frame477_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized477.2.1 optimized477.2.2 = frame477 := by cbv
theorem slim477_eq : WordDepth.Executable.slim optimized477.2.2 = slim477 := by cbv
theorem frameEntry477_eq : frameEntry optimized477 = (477, frame477) := by
  unfold frameEntry
  rw [frame477_eq]
  rfl
theorem slimEntry477_eq : slimEntry optimized477 = (477, 2, slim477) := by
  unfold slimEntry
  rw [slim477_eq]
  rfl
#print axioms frame477_eq
#print axioms slim477_eq
end InitECandidate.Proofs.StackAnalysis
