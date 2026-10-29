import InitECandidate.Proofs.StackAnalysis.Data872
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
def frame872 : Nat := 2
def slim872 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 872, snd := 2 } } } })
  (Option.some 871) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 872, snd := 3 } } })
theorem frame872_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized872.2.1 optimized872.2.2 = frame872 := by cbv
theorem slim872_eq : WordDepth.Executable.slim optimized872.2.2 = slim872 := by cbv
theorem frameEntry872_eq : frameEntry optimized872 = (872, frame872) := by
  unfold frameEntry
  rw [frame872_eq]
  rfl
theorem slimEntry872_eq : slimEntry optimized872 = (872, 2, slim872) := by
  unfold slimEntry
  rw [slim872_eq]
  rfl
#print axioms frame872_eq
#print axioms slim872_eq
end InitECandidate.Proofs.StackAnalysis
