import InitECandidate.Proofs.StackAnalysis.Data857
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
def frame857 : Nat := 2
def slim857 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    {
      fst :=
        List.cons 2
          (List.cons 4
            (List.cons 6 (List.cons 8 (List.cons 10 (List.cons 12 (List.cons 14 (List.cons 16 List.nil))))))),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 857, snd := 2 } } } })
  (Option.some 121) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 857, snd := 3 } } })
theorem frame857_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized857.2.1 optimized857.2.2 = frame857 := by cbv
theorem slim857_eq : WordDepth.Executable.slim optimized857.2.2 = slim857 := by cbv
theorem frameEntry857_eq : frameEntry optimized857 = (857, frame857) := by
  unfold frameEntry
  rw [frame857_eq]
  rfl
theorem slimEntry857_eq : slimEntry optimized857 = (857, 6, slim857) := by
  unfold slimEntry
  rw [slim857_eq]
  rfl
#print axioms frame857_eq
#print axioms slim857_eq
end InitECandidate.Proofs.StackAnalysis
