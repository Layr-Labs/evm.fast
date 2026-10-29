import InitECandidate.Proofs.StackAnalysis.Data419
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
def frame419 : Nat := 2
def slim419 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 419, snd := 2 } } } })
  (Option.some 388) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 419, snd := 3 } } })
theorem frame419_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized419.2.1 optimized419.2.2 = frame419 := by cbv
theorem slim419_eq : WordDepth.Executable.slim optimized419.2.2 = slim419 := by cbv
theorem frameEntry419_eq : frameEntry optimized419 = (419, frame419) := by
  unfold frameEntry
  rw [frame419_eq]
  rfl
theorem slimEntry419_eq : slimEntry optimized419 = (419, 3, slim419) := by
  unfold slimEntry
  rw [slim419_eq]
  rfl
#print axioms frame419_eq
#print axioms slim419_eq
end InitECandidate.Proofs.StackAnalysis
