import InitECandidate.Proofs.StackAnalysis.Data875
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
def frame875 : Nat := 2
def slim875 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 875, snd := 2 } } } })
  (Option.some 874) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 875, snd := 3 } } })
theorem frame875_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized875.2.1 optimized875.2.2 = frame875 := by cbv
theorem slim875_eq : WordDepth.Executable.slim optimized875.2.2 = slim875 := by cbv
theorem frameEntry875_eq : frameEntry optimized875 = (875, frame875) := by
  unfold frameEntry
  rw [frame875_eq]
  rfl
theorem slimEntry875_eq : slimEntry optimized875 = (875, 2, slim875) := by
  unfold slimEntry
  rw [slim875_eq]
  rfl
#print axioms frame875_eq
#print axioms slim875_eq
end InitECandidate.Proofs.StackAnalysis
