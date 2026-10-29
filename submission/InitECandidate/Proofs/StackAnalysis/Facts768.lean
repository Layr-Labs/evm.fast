import InitECandidate.Proofs.StackAnalysis.Data768
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
def frame768 : Nat := 2
def slim768 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 768, snd := 2 } } } })
  (Option.some 77) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 768, snd := 3 } } })
theorem frame768_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized768.2.1 optimized768.2.2 = frame768 := by cbv
theorem slim768_eq : WordDepth.Executable.slim optimized768.2.2 = slim768 := by cbv
theorem frameEntry768_eq : frameEntry optimized768 = (768, frame768) := by
  unfold frameEntry
  rw [frame768_eq]
  rfl
theorem slimEntry768_eq : slimEntry optimized768 = (768, 3, slim768) := by
  unfold slimEntry
  rw [slim768_eq]
  rfl
#print axioms frame768_eq
#print axioms slim768_eq
end InitECandidate.Proofs.StackAnalysis
