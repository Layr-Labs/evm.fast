import InitECandidate.Proofs.StackAnalysis.Data280
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
def frame280 : Nat := 2
def slim280 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 280, snd := 2 } } } })
  (Option.some 279) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 280, snd := 3 } } })
theorem frame280_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized280.2.1 optimized280.2.2 = frame280 := by cbv
theorem slim280_eq : WordDepth.Executable.slim optimized280.2.2 = slim280 := by cbv
theorem frameEntry280_eq : frameEntry optimized280 = (280, frame280) := by
  unfold frameEntry
  rw [frame280_eq]
  rfl
theorem slimEntry280_eq : slimEntry optimized280 = (280, 2, slim280) := by
  unfold slimEntry
  rw [slim280_eq]
  rfl
#print axioms frame280_eq
#print axioms slim280_eq
end InitECandidate.Proofs.StackAnalysis
