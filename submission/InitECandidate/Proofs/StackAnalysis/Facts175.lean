import InitECandidate.Proofs.StackAnalysis.Data175
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
def frame175 : Nat := 2
def slim175 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 175, snd := 2 } } } })
  (Option.some 172) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 175, snd := 3 } } })
theorem frame175_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized175.2.1 optimized175.2.2 = frame175 := by cbv
theorem slim175_eq : WordDepth.Executable.slim optimized175.2.2 = slim175 := by cbv
theorem frameEntry175_eq : frameEntry optimized175 = (175, frame175) := by
  unfold frameEntry
  rw [frame175_eq]
  rfl
theorem slimEntry175_eq : slimEntry optimized175 = (175, 2, slim175) := by
  unfold slimEntry
  rw [slim175_eq]
  rfl
#print axioms frame175_eq
#print axioms slim175_eq
end InitECandidate.Proofs.StackAnalysis
