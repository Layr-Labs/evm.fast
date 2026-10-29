import InitECandidate.Proofs.StackAnalysis.Data755
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
def frame755 : Nat := 2
def slim755 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 755, snd := 2 } } } })
  (Option.some 77) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 755, snd := 3 } } })
theorem frame755_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized755.2.1 optimized755.2.2 = frame755 := by cbv
theorem slim755_eq : WordDepth.Executable.slim optimized755.2.2 = slim755 := by cbv
theorem frameEntry755_eq : frameEntry optimized755 = (755, frame755) := by
  unfold frameEntry
  rw [frame755_eq]
  rfl
theorem slimEntry755_eq : slimEntry optimized755 = (755, 3, slim755) := by
  unfold slimEntry
  rw [slim755_eq]
  rfl
#print axioms frame755_eq
#print axioms slim755_eq
end InitECandidate.Proofs.StackAnalysis
