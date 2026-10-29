import InitECandidate.Proofs.StackAnalysis.Data679
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
def frame679 : Nat := 3
def slim679 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 679, snd := 2 } } } })
  (Option.some 78) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 679, snd := 3 } } })
theorem frame679_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized679.2.1 optimized679.2.2 = frame679 := by cbv
theorem slim679_eq : WordDepth.Executable.slim optimized679.2.2 = slim679 := by cbv
theorem frameEntry679_eq : frameEntry optimized679 = (679, frame679) := by
  unfold frameEntry
  rw [frame679_eq]
  rfl
theorem slimEntry679_eq : slimEntry optimized679 = (679, 3, slim679) := by
  unfold slimEntry
  rw [slim679_eq]
  rfl
#print axioms frame679_eq
#print axioms slim679_eq
end InitECandidate.Proofs.StackAnalysis
