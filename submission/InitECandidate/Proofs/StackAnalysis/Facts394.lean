import InitECandidate.Proofs.StackAnalysis.Data394
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
def frame394 : Nat := 2
def slim394 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 394, snd := 2 } } } })
  (Option.some 393) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 394, snd := 3 } } })
theorem frame394_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized394.2.1 optimized394.2.2 = frame394 := by cbv
theorem slim394_eq : WordDepth.Executable.slim optimized394.2.2 = slim394 := by cbv
theorem frameEntry394_eq : frameEntry optimized394 = (394, frame394) := by
  unfold frameEntry
  rw [frame394_eq]
  rfl
theorem slimEntry394_eq : slimEntry optimized394 = (394, 1, slim394) := by
  unfold slimEntry
  rw [slim394_eq]
  rfl
#print axioms frame394_eq
#print axioms slim394_eq
end InitECandidate.Proofs.StackAnalysis
