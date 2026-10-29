import InitECandidate.Proofs.StackAnalysis.Data341
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
def frame341 : Nat := 2
def slim341 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 341, snd := 2 } } } })
  (Option.some 161) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 341, snd := 3 } } })
theorem frame341_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized341.2.1 optimized341.2.2 = frame341 := by cbv
theorem slim341_eq : WordDepth.Executable.slim optimized341.2.2 = slim341 := by cbv
theorem frameEntry341_eq : frameEntry optimized341 = (341, frame341) := by
  unfold frameEntry
  rw [frame341_eq]
  rfl
theorem slimEntry341_eq : slimEntry optimized341 = (341, 3, slim341) := by
  unfold slimEntry
  rw [slim341_eq]
  rfl
#print axioms frame341_eq
#print axioms slim341_eq
end InitECandidate.Proofs.StackAnalysis
