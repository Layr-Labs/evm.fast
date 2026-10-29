import InitECandidate.Proofs.StackAnalysis.Data413
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
def frame413 : Nat := 2
def slim413 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 413, snd := 2 } } } })
  (Option.some 406) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 413, snd := 3 } } })
theorem frame413_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized413.2.1 optimized413.2.2 = frame413 := by cbv
theorem slim413_eq : WordDepth.Executable.slim optimized413.2.2 = slim413 := by cbv
theorem frameEntry413_eq : frameEntry optimized413 = (413, frame413) := by
  unfold frameEntry
  rw [frame413_eq]
  rfl
theorem slimEntry413_eq : slimEntry optimized413 = (413, 2, slim413) := by
  unfold slimEntry
  rw [slim413_eq]
  rfl
#print axioms frame413_eq
#print axioms slim413_eq
end InitECandidate.Proofs.StackAnalysis
