import InitECandidate.Proofs.StackAnalysis.Data440
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
def frame440 : Nat := 3
def slim440 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 440, snd := 2 } } } })
  (Option.some 437) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 440, snd := 3 } } })
theorem frame440_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized440.2.1 optimized440.2.2 = frame440 := by cbv
theorem slim440_eq : WordDepth.Executable.slim optimized440.2.2 = slim440 := by cbv
theorem frameEntry440_eq : frameEntry optimized440 = (440, frame440) := by
  unfold frameEntry
  rw [frame440_eq]
  rfl
theorem slimEntry440_eq : slimEntry optimized440 = (440, 4, slim440) := by
  unfold slimEntry
  rw [slim440_eq]
  rfl
#print axioms frame440_eq
#print axioms slim440_eq
end InitECandidate.Proofs.StackAnalysis
