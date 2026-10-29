import InitECandidate.Proofs.StackAnalysis.Data829
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
def frame829 : Nat := 3
def slim829 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 List.nil,
      snd :=
        {
          fst :=
            {
              fst :=
                Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln,
              snd := Flapjack.Spt.ln },
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 829, snd := 2 } } } })
  (Option.some 80) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 829, snd := 3 } } })
theorem frame829_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized829.2.1 optimized829.2.2 = frame829 := by cbv
theorem slim829_eq : WordDepth.Executable.slim optimized829.2.2 = slim829 := by cbv
theorem frameEntry829_eq : frameEntry optimized829 = (829, frame829) := by
  unfold frameEntry
  rw [frame829_eq]
  rfl
theorem slimEntry829_eq : slimEntry optimized829 = (829, 2, slim829) := by
  unfold slimEntry
  rw [slim829_eq]
  rfl
#print axioms frame829_eq
#print axioms slim829_eq
end InitECandidate.Proofs.StackAnalysis
