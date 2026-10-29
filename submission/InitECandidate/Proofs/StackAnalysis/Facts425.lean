import InitECandidate.Proofs.StackAnalysis.Data425
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
def frame425 : Nat := 2
def slim425 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 425, snd := 2 } } } })
  (Option.some 192) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 425, snd := 3 } } })
theorem frame425_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized425.2.1 optimized425.2.2 = frame425 := by cbv
theorem slim425_eq : WordDepth.Executable.slim optimized425.2.2 = slim425 := by cbv
theorem frameEntry425_eq : frameEntry optimized425 = (425, frame425) := by
  unfold frameEntry
  rw [frame425_eq]
  rfl
theorem slimEntry425_eq : slimEntry optimized425 = (425, 2, slim425) := by
  unfold slimEntry
  rw [slim425_eq]
  rfl
#print axioms frame425_eq
#print axioms slim425_eq
end InitECandidate.Proofs.StackAnalysis
