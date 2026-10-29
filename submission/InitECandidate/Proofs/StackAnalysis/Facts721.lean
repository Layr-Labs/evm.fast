import InitECandidate.Proofs.StackAnalysis.Data721
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
def frame721 : Nat := 2
def slim721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 (List.cons 10 (List.cons 12 List.nil))))),
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 721, snd := 2 } } } })
    (Option.some 720) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 721, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 714) List.nil Option.none)
theorem frame721_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized721.2.1 optimized721.2.2 = frame721 := by cbv
theorem slim721_eq : WordDepth.Executable.slim optimized721.2.2 = slim721 := by cbv
theorem frameEntry721_eq : frameEntry optimized721 = (721, frame721) := by
  unfold frameEntry
  rw [frame721_eq]
  rfl
theorem slimEntry721_eq : slimEntry optimized721 = (721, 7, slim721) := by
  unfold slimEntry
  rw [slim721_eq]
  rfl
#print axioms frame721_eq
#print axioms slim721_eq
end InitECandidate.Proofs.StackAnalysis
