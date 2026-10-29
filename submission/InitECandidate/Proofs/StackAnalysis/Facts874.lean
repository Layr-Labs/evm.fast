import InitECandidate.Proofs.StackAnalysis.Data874
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
def frame874 : Nat := 2
def slim874 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 874, snd := 2 } } } })
  (Option.some 873) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 874, snd := 3 } } })
theorem frame874_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized874.2.1 optimized874.2.2 = frame874 := by cbv
theorem slim874_eq : WordDepth.Executable.slim optimized874.2.2 = slim874 := by cbv
theorem frameEntry874_eq : frameEntry optimized874 = (874, frame874) := by
  unfold frameEntry
  rw [frame874_eq]
  rfl
theorem slimEntry874_eq : slimEntry optimized874 = (874, 2, slim874) := by
  unfold slimEntry
  rw [slim874_eq]
  rfl
#print axioms frame874_eq
#print axioms slim874_eq
end InitECandidate.Proofs.StackAnalysis
