import InitECandidate.Proofs.StackAnalysis.Data130
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
def frame130 : Nat := 2
def slim130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    {
      fst :=
        List.cons 2
          (List.cons 4
            (List.cons 6 (List.cons 8 (List.cons 10 (List.cons 12 (List.cons 14 (List.cons 16 List.nil))))))),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 130, snd := 2 } } } })
  (Option.some 129) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 130, snd := 3 } } })
theorem frame130_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized130.2.1 optimized130.2.2 = frame130 := by cbv
theorem slim130_eq : WordDepth.Executable.slim optimized130.2.2 = slim130 := by cbv
theorem frameEntry130_eq : frameEntry optimized130 = (130, frame130) := by
  unfold frameEntry
  rw [frame130_eq]
  rfl
theorem slimEntry130_eq : slimEntry optimized130 = (130, 9, slim130) := by
  unfold slimEntry
  rw [slim130_eq]
  rfl
#print axioms frame130_eq
#print axioms slim130_eq
end InitECandidate.Proofs.StackAnalysis
