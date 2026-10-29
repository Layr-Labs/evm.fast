import InitECandidate.Proofs.StackAnalysis.Data873
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
def frame873 : Nat := 2
def slim873 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 873, snd := 2 } } } })
  (Option.some 872) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 873, snd := 3 } } })
theorem frame873_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized873.2.1 optimized873.2.2 = frame873 := by cbv
theorem slim873_eq : WordDepth.Executable.slim optimized873.2.2 = slim873 := by cbv
theorem frameEntry873_eq : frameEntry optimized873 = (873, frame873) := by
  unfold frameEntry
  rw [frame873_eq]
  rfl
theorem slimEntry873_eq : slimEntry optimized873 = (873, 2, slim873) := by
  unfold slimEntry
  rw [slim873_eq]
  rfl
#print axioms frame873_eq
#print axioms slim873_eq
end InitECandidate.Proofs.StackAnalysis
