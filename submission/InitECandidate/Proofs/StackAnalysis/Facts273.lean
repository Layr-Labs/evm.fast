import InitECandidate.Proofs.StackAnalysis.Data273
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
def frame273 : Nat := 2
def slim273 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 273, snd := 2 } } } })
  (Option.some 161) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 273, snd := 3 } } })
theorem frame273_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized273.2.1 optimized273.2.2 = frame273 := by cbv
theorem slim273_eq : WordDepth.Executable.slim optimized273.2.2 = slim273 := by cbv
theorem frameEntry273_eq : frameEntry optimized273 = (273, frame273) := by
  unfold frameEntry
  rw [frame273_eq]
  rfl
theorem slimEntry273_eq : slimEntry optimized273 = (273, 3, slim273) := by
  unfold slimEntry
  rw [slim273_eq]
  rfl
#print axioms frame273_eq
#print axioms slim273_eq
end InitECandidate.Proofs.StackAnalysis
