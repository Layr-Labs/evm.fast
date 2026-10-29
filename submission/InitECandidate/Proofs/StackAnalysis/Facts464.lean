import InitECandidate.Proofs.StackAnalysis.Data464
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
def frame464 : Nat := 2
def slim464 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 464, snd := 2 } } } })
  (Option.some 463) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 464, snd := 3 } } })
theorem frame464_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized464.2.1 optimized464.2.2 = frame464 := by cbv
theorem slim464_eq : WordDepth.Executable.slim optimized464.2.2 = slim464 := by cbv
theorem frameEntry464_eq : frameEntry optimized464 = (464, frame464) := by
  unfold frameEntry
  rw [frame464_eq]
  rfl
theorem slimEntry464_eq : slimEntry optimized464 = (464, 2, slim464) := by
  unfold slimEntry
  rw [slim464_eq]
  rfl
#print axioms frame464_eq
#print axioms slim464_eq
end InitECandidate.Proofs.StackAnalysis
