import InitECandidate.Proofs.StackAnalysis.Data104
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
def frame104 : Nat := 3
def slim104 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 104, snd := 2 } } } })
  (Option.some 103) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 104, snd := 3 } } })
theorem frame104_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized104.2.1 optimized104.2.2 = frame104 := by cbv
theorem slim104_eq : WordDepth.Executable.slim optimized104.2.2 = slim104 := by cbv
theorem frameEntry104_eq : frameEntry optimized104 = (104, frame104) := by
  unfold frameEntry
  rw [frame104_eq]
  rfl
theorem slimEntry104_eq : slimEntry optimized104 = (104, 6, slim104) := by
  unfold slimEntry
  rw [slim104_eq]
  rfl
#print axioms frame104_eq
#print axioms slim104_eq
end InitECandidate.Proofs.StackAnalysis
