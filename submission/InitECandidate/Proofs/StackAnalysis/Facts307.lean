import InitECandidate.Proofs.StackAnalysis.Data307
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
def frame307 : Nat := 3
def slim307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 307, snd := 2 } } } })
    (Option.some 288) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 307, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 306) List.nil Option.none)
theorem frame307_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized307.2.1 optimized307.2.2 = frame307 := by cbv
theorem slim307_eq : WordDepth.Executable.slim optimized307.2.2 = slim307 := by cbv
theorem frameEntry307_eq : frameEntry optimized307 = (307, frame307) := by
  unfold frameEntry
  rw [frame307_eq]
  rfl
theorem slimEntry307_eq : slimEntry optimized307 = (307, 3, slim307) := by
  unfold slimEntry
  rw [slim307_eq]
  rfl
#print axioms frame307_eq
#print axioms slim307_eq
end InitECandidate.Proofs.StackAnalysis
