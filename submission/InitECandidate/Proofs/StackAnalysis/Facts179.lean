import InitECandidate.Proofs.StackAnalysis.Data179
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
def frame179 : Nat := 3
def slim179 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 179, snd := 2 } } } })
  (Option.some 175) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 179, snd := 3 } } })
theorem frame179_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized179.2.1 optimized179.2.2 = frame179 := by cbv
theorem slim179_eq : WordDepth.Executable.slim optimized179.2.2 = slim179 := by cbv
theorem frameEntry179_eq : frameEntry optimized179 = (179, frame179) := by
  unfold frameEntry
  rw [frame179_eq]
  rfl
theorem slimEntry179_eq : slimEntry optimized179 = (179, 3, slim179) := by
  unfold slimEntry
  rw [slim179_eq]
  rfl
#print axioms frame179_eq
#print axioms slim179_eq
end InitECandidate.Proofs.StackAnalysis
