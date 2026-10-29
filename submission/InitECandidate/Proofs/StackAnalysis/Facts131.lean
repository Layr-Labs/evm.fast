import InitECandidate.Proofs.StackAnalysis.Data131
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
def frame131 : Nat := 2
def slim131 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 131, snd := 2 } } } })
  (Option.some 129) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 131, snd := 3 } } })
theorem frame131_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized131.2.1 optimized131.2.2 = frame131 := by cbv
theorem slim131_eq : WordDepth.Executable.slim optimized131.2.2 = slim131 := by cbv
theorem frameEntry131_eq : frameEntry optimized131 = (131, frame131) := by
  unfold frameEntry
  rw [frame131_eq]
  rfl
theorem slimEntry131_eq : slimEntry optimized131 = (131, 9, slim131) := by
  unfold slimEntry
  rw [slim131_eq]
  rfl
#print axioms frame131_eq
#print axioms slim131_eq
end InitECandidate.Proofs.StackAnalysis
