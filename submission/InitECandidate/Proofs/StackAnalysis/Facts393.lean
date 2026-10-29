import InitECandidate.Proofs.StackAnalysis.Data393
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
def frame393 : Nat := 8
def slim393 : WordLangProgHOL (BitVec 64) :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln,
              snd := Flapjack.Spt.ln },
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 393, snd := 2 } } } })
  (Option.some 68) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 393, snd := 3 } } })
theorem frame393_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized393.2.1 optimized393.2.2 = frame393 := by cbv
theorem slim393_eq : WordDepth.Executable.slim optimized393.2.2 = slim393 := by cbv
theorem frameEntry393_eq : frameEntry optimized393 = (393, frame393) := by
  unfold frameEntry
  rw [frame393_eq]
  rfl
theorem slimEntry393_eq : slimEntry optimized393 = (393, 7, slim393) := by
  unfold slimEntry
  rw [slim393_eq]
  rfl
#print axioms frame393_eq
#print axioms slim393_eq
end InitECandidate.Proofs.StackAnalysis
