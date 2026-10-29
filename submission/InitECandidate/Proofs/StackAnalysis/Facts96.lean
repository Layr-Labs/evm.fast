import InitECandidate.Proofs.StackAnalysis.Data96
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
def frame96 : Nat := 2
def slim96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 (List.cons 4 List.nil),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 96, snd := 2 } } } })
  (Option.some 94) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 96, snd := 3 } } })
theorem frame96_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized96.2.1 optimized96.2.2 = frame96 := by cbv
theorem slim96_eq : WordDepth.Executable.slim optimized96.2.2 = slim96 := by cbv
theorem frameEntry96_eq : frameEntry optimized96 = (96, frame96) := by
  unfold frameEntry
  rw [frame96_eq]
  rfl
theorem slimEntry96_eq : slimEntry optimized96 = (96, 3, slim96) := by
  unfold slimEntry
  rw [slim96_eq]
  rfl
#print axioms frame96_eq
#print axioms slim96_eq
end InitECandidate.Proofs.StackAnalysis
