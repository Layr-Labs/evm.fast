import InitECandidate.Proofs.StackAnalysis.Data327
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
def frame327 : Nat := 3
def slim327 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 327, snd := 2 } } } })
  (Option.some 286) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 327, snd := 3 } } })
theorem frame327_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized327.2.1 optimized327.2.2 = frame327 := by cbv
theorem slim327_eq : WordDepth.Executable.slim optimized327.2.2 = slim327 := by cbv
theorem frameEntry327_eq : frameEntry optimized327 = (327, frame327) := by
  unfold frameEntry
  rw [frame327_eq]
  rfl
theorem slimEntry327_eq : slimEntry optimized327 = (327, 2, slim327) := by
  unfold slimEntry
  rw [slim327_eq]
  rfl
#print axioms frame327_eq
#print axioms slim327_eq
end InitECandidate.Proofs.StackAnalysis
