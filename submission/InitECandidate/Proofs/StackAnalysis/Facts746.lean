import InitECandidate.Proofs.StackAnalysis.Data746
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
def frame746 : Nat := 2
def slim746 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 746, snd := 2 } } } })
  (Option.some 77) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 746, snd := 3 } } })
theorem frame746_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized746.2.1 optimized746.2.2 = frame746 := by cbv
theorem slim746_eq : WordDepth.Executable.slim optimized746.2.2 = slim746 := by cbv
theorem frameEntry746_eq : frameEntry optimized746 = (746, frame746) := by
  unfold frameEntry
  rw [frame746_eq]
  rfl
theorem slimEntry746_eq : slimEntry optimized746 = (746, 3, slim746) := by
  unfold slimEntry
  rw [slim746_eq]
  rfl
#print axioms frame746_eq
#print axioms slim746_eq
end InitECandidate.Proofs.StackAnalysis
