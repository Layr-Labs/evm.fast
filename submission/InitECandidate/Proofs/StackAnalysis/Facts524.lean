import InitECandidate.Proofs.StackAnalysis.Data524
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
def frame524 : Nat := 2
def slim524 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 524, snd := 2 } } } })
  (Option.some 490) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 524, snd := 3 } } })
theorem frame524_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized524.2.1 optimized524.2.2 = frame524 := by cbv
theorem slim524_eq : WordDepth.Executable.slim optimized524.2.2 = slim524 := by cbv
theorem frameEntry524_eq : frameEntry optimized524 = (524, frame524) := by
  unfold frameEntry
  rw [frame524_eq]
  rfl
theorem slimEntry524_eq : slimEntry optimized524 = (524, 1, slim524) := by
  unfold slimEntry
  rw [slim524_eq]
  rfl
#print axioms frame524_eq
#print axioms slim524_eq
end InitECandidate.Proofs.StackAnalysis
