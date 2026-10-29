import InitECandidate.Proofs.StackAnalysis.Data545
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
def frame545 : Nat := 3
def slim545 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 545, snd := 2 } } } })
  (Option.some 437) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 545, snd := 3 } } })
theorem frame545_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized545.2.1 optimized545.2.2 = frame545 := by cbv
theorem slim545_eq : WordDepth.Executable.slim optimized545.2.2 = slim545 := by cbv
theorem frameEntry545_eq : frameEntry optimized545 = (545, frame545) := by
  unfold frameEntry
  rw [frame545_eq]
  rfl
theorem slimEntry545_eq : slimEntry optimized545 = (545, 3, slim545) := by
  unfold slimEntry
  rw [slim545_eq]
  rfl
#print axioms frame545_eq
#print axioms slim545_eq
end InitECandidate.Proofs.StackAnalysis
