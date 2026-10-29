import InitECandidate.Proofs.StackAnalysis.Data600
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
def frame600 : Nat := 2
def slim600 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 600, snd := 2 } } } })
  (Option.some 391) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 600, snd := 3 } } })
theorem frame600_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized600.2.1 optimized600.2.2 = frame600 := by cbv
theorem slim600_eq : WordDepth.Executable.slim optimized600.2.2 = slim600 := by cbv
theorem frameEntry600_eq : frameEntry optimized600 = (600, frame600) := by
  unfold frameEntry
  rw [frame600_eq]
  rfl
theorem slimEntry600_eq : slimEntry optimized600 = (600, 1, slim600) := by
  unfold slimEntry
  rw [slim600_eq]
  rfl
#print axioms frame600_eq
#print axioms slim600_eq
end InitECandidate.Proofs.StackAnalysis
