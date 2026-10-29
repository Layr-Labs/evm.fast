import InitECandidate.Proofs.StackAnalysis.Data446
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
def frame446 : Nat := 2
def slim446 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 446, snd := 2 } } } })
  (Option.some 439) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 446, snd := 3 } } })
theorem frame446_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized446.2.1 optimized446.2.2 = frame446 := by cbv
theorem slim446_eq : WordDepth.Executable.slim optimized446.2.2 = slim446 := by cbv
theorem frameEntry446_eq : frameEntry optimized446 = (446, frame446) := by
  unfold frameEntry
  rw [frame446_eq]
  rfl
theorem slimEntry446_eq : slimEntry optimized446 = (446, 2, slim446) := by
  unfold slimEntry
  rw [slim446_eq]
  rfl
#print axioms frame446_eq
#print axioms slim446_eq
end InitECandidate.Proofs.StackAnalysis
