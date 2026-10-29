import InitECandidate.Proofs.StackAnalysis.Data870
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
def frame870 : Nat := 2
def slim870 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 870, snd := 2 } } } })
  (Option.some 869) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 870, snd := 3 } } })
theorem frame870_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized870.2.1 optimized870.2.2 = frame870 := by cbv
theorem slim870_eq : WordDepth.Executable.slim optimized870.2.2 = slim870 := by cbv
theorem frameEntry870_eq : frameEntry optimized870 = (870, frame870) := by
  unfold frameEntry
  rw [frame870_eq]
  rfl
theorem slimEntry870_eq : slimEntry optimized870 = (870, 2, slim870) := by
  unfold slimEntry
  rw [slim870_eq]
  rfl
#print axioms frame870_eq
#print axioms slim870_eq
end InitECandidate.Proofs.StackAnalysis
