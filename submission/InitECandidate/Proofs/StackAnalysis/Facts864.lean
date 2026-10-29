import InitECandidate.Proofs.StackAnalysis.Data864
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
def frame864 : Nat := 2
def slim864 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 864, snd := 2 } } } })
  (Option.some 95) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 864, snd := 3 } } })
theorem frame864_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized864.2.1 optimized864.2.2 = frame864 := by cbv
theorem slim864_eq : WordDepth.Executable.slim optimized864.2.2 = slim864 := by cbv
theorem frameEntry864_eq : frameEntry optimized864 = (864, frame864) := by
  unfold frameEntry
  rw [frame864_eq]
  rfl
theorem slimEntry864_eq : slimEntry optimized864 = (864, 2, slim864) := by
  unfold slimEntry
  rw [slim864_eq]
  rfl
#print axioms frame864_eq
#print axioms slim864_eq
end InitECandidate.Proofs.StackAnalysis
