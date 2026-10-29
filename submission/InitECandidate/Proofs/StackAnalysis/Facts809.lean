import InitECandidate.Proofs.StackAnalysis.Data809
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
def frame809 : Nat := 2
def slim809 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 809, snd := 2 } } } })
  (Option.some 704) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 809, snd := 3 } } })
theorem frame809_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized809.2.1 optimized809.2.2 = frame809 := by cbv
theorem slim809_eq : WordDepth.Executable.slim optimized809.2.2 = slim809 := by cbv
theorem frameEntry809_eq : frameEntry optimized809 = (809, frame809) := by
  unfold frameEntry
  rw [frame809_eq]
  rfl
theorem slimEntry809_eq : slimEntry optimized809 = (809, 1, slim809) := by
  unfold slimEntry
  rw [slim809_eq]
  rfl
#print axioms frame809_eq
#print axioms slim809_eq
end InitECandidate.Proofs.StackAnalysis
