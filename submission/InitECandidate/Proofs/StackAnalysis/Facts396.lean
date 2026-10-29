import InitECandidate.Proofs.StackAnalysis.Data396
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
def frame396 : Nat := 2
def slim396 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 396, snd := 2 } } } })
  (Option.some 192) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 396, snd := 3 } } })
theorem frame396_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized396.2.1 optimized396.2.2 = frame396 := by cbv
theorem slim396_eq : WordDepth.Executable.slim optimized396.2.2 = slim396 := by cbv
theorem frameEntry396_eq : frameEntry optimized396 = (396, frame396) := by
  unfold frameEntry
  rw [frame396_eq]
  rfl
theorem slimEntry396_eq : slimEntry optimized396 = (396, 2, slim396) := by
  unfold slimEntry
  rw [slim396_eq]
  rfl
#print axioms frame396_eq
#print axioms slim396_eq
end InitECandidate.Proofs.StackAnalysis
