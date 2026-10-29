import InitECandidate.Proofs.StackAnalysis.Data294
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
def frame294 : Nat := 2
def slim294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 (List.cons 4 List.nil),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 294, snd := 2 } } } })
  (Option.some 186) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 294, snd := 3 } } })
theorem frame294_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized294.2.1 optimized294.2.2 = frame294 := by cbv
theorem slim294_eq : WordDepth.Executable.slim optimized294.2.2 = slim294 := by cbv
theorem frameEntry294_eq : frameEntry optimized294 = (294, frame294) := by
  unfold frameEntry
  rw [frame294_eq]
  rfl
theorem slimEntry294_eq : slimEntry optimized294 = (294, 3, slim294) := by
  unfold slimEntry
  rw [slim294_eq]
  rfl
#print axioms frame294_eq
#print axioms slim294_eq
end InitECandidate.Proofs.StackAnalysis
