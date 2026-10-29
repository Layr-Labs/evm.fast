import InitECandidate.Proofs.StackAnalysis.Data181
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
def frame181 : Nat := 2
def slim181 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 181, snd := 2 } } } })
  (Option.some 172) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 181, snd := 3 } } })
theorem frame181_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized181.2.1 optimized181.2.2 = frame181 := by cbv
theorem slim181_eq : WordDepth.Executable.slim optimized181.2.2 = slim181 := by cbv
theorem frameEntry181_eq : frameEntry optimized181 = (181, frame181) := by
  unfold frameEntry
  rw [frame181_eq]
  rfl
theorem slimEntry181_eq : slimEntry optimized181 = (181, 2, slim181) := by
  unfold slimEntry
  rw [slim181_eq]
  rfl
#print axioms frame181_eq
#print axioms slim181_eq
end InitECandidate.Proofs.StackAnalysis
