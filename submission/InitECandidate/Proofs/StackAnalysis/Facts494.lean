import InitECandidate.Proofs.StackAnalysis.Data494
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
def frame494 : Nat := 2
def slim494 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 494, snd := 2 } } } })
  (Option.some 192) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 494, snd := 3 } } })
theorem frame494_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized494.2.1 optimized494.2.2 = frame494 := by cbv
theorem slim494_eq : WordDepth.Executable.slim optimized494.2.2 = slim494 := by cbv
theorem frameEntry494_eq : frameEntry optimized494 = (494, frame494) := by
  unfold frameEntry
  rw [frame494_eq]
  rfl
theorem slimEntry494_eq : slimEntry optimized494 = (494, 2, slim494) := by
  unfold slimEntry
  rw [slim494_eq]
  rfl
#print axioms frame494_eq
#print axioms slim494_eq
end InitECandidate.Proofs.StackAnalysis
