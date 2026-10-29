import InitECandidate.Proofs.StackAnalysis.Data723
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
def frame723 : Nat := 2
def slim723 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 (List.cons 10 (List.cons 12 List.nil))))),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 723, snd := 2 } } } })
  (Option.some 717) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 723, snd := 3 } } })
theorem frame723_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized723.2.1 optimized723.2.2 = frame723 := by cbv
theorem slim723_eq : WordDepth.Executable.slim optimized723.2.2 = slim723 := by cbv
theorem frameEntry723_eq : frameEntry optimized723 = (723, frame723) := by
  unfold frameEntry
  rw [frame723_eq]
  rfl
theorem slimEntry723_eq : slimEntry optimized723 = (723, 7, slim723) := by
  unfold slimEntry
  rw [slim723_eq]
  rfl
#print axioms frame723_eq
#print axioms slim723_eq
end InitECandidate.Proofs.StackAnalysis
