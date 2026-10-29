import InitECandidate.Proofs.StackAnalysis.Data145
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
def frame145 : Nat := 3
def slim145 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 145, snd := 2 } } } })
  (Option.some 103) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 145, snd := 3 } } })
theorem frame145_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized145.2.1 optimized145.2.2 = frame145 := by cbv
theorem slim145_eq : WordDepth.Executable.slim optimized145.2.2 = slim145 := by cbv
theorem frameEntry145_eq : frameEntry optimized145 = (145, frame145) := by
  unfold frameEntry
  rw [frame145_eq]
  rfl
theorem slimEntry145_eq : slimEntry optimized145 = (145, 6, slim145) := by
  unfold slimEntry
  rw [slim145_eq]
  rfl
#print axioms frame145_eq
#print axioms slim145_eq
end InitECandidate.Proofs.StackAnalysis
