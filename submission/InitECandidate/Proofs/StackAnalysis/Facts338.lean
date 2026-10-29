import InitECandidate.Proofs.StackAnalysis.Data338
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
def frame338 : Nat := 2
def slim338 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 338, snd := 2 } } } })
  (Option.some 161) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 338, snd := 3 } } })
theorem frame338_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized338.2.1 optimized338.2.2 = frame338 := by cbv
theorem slim338_eq : WordDepth.Executable.slim optimized338.2.2 = slim338 := by cbv
theorem frameEntry338_eq : frameEntry optimized338 = (338, frame338) := by
  unfold frameEntry
  rw [frame338_eq]
  rfl
theorem slimEntry338_eq : slimEntry optimized338 = (338, 3, slim338) := by
  unfold slimEntry
  rw [slim338_eq]
  rfl
#print axioms frame338_eq
#print axioms slim338_eq
end InitECandidate.Proofs.StackAnalysis
