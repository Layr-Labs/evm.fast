import InitECandidate.Proofs.StackAnalysis.Data340
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
def frame340 : Nat := 2
def slim340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 340, snd := 2 } } } })
  (Option.some 161) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 340, snd := 3 } } })
theorem frame340_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized340.2.1 optimized340.2.2 = frame340 := by cbv
theorem slim340_eq : WordDepth.Executable.slim optimized340.2.2 = slim340 := by cbv
theorem frameEntry340_eq : frameEntry optimized340 = (340, frame340) := by
  unfold frameEntry
  rw [frame340_eq]
  rfl
theorem slimEntry340_eq : slimEntry optimized340 = (340, 3, slim340) := by
  unfold slimEntry
  rw [slim340_eq]
  rfl
#print axioms frame340_eq
#print axioms slim340_eq
end InitECandidate.Proofs.StackAnalysis
