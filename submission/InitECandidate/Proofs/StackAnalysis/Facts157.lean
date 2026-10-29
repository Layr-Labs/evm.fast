import InitECandidate.Proofs.StackAnalysis.Data157
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
def frame157 : Nat := 2
def slim157 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 157, snd := 2 } } } })
  (Option.some 156) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 157, snd := 3 } } })
theorem frame157_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized157.2.1 optimized157.2.2 = frame157 := by cbv
theorem slim157_eq : WordDepth.Executable.slim optimized157.2.2 = slim157 := by cbv
theorem frameEntry157_eq : frameEntry optimized157 = (157, frame157) := by
  unfold frameEntry
  rw [frame157_eq]
  rfl
theorem slimEntry157_eq : slimEntry optimized157 = (157, 3, slim157) := by
  unfold slimEntry
  rw [slim157_eq]
  rfl
#print axioms frame157_eq
#print axioms slim157_eq
end InitECandidate.Proofs.StackAnalysis
