import InitECandidate.Proofs.StackAnalysis.Data95
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
def frame95 : Nat := 2
def slim95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 (List.cons 4 List.nil),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 95, snd := 2 } } } })
  (Option.some 94) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 95, snd := 3 } } })
theorem frame95_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized95.2.1 optimized95.2.2 = frame95 := by cbv
theorem slim95_eq : WordDepth.Executable.slim optimized95.2.2 = slim95 := by cbv
theorem frameEntry95_eq : frameEntry optimized95 = (95, frame95) := by
  unfold frameEntry
  rw [frame95_eq]
  rfl
theorem slimEntry95_eq : slimEntry optimized95 = (95, 3, slim95) := by
  unfold slimEntry
  rw [slim95_eq]
  rfl
#print axioms frame95_eq
#print axioms slim95_eq
end InitECandidate.Proofs.StackAnalysis
