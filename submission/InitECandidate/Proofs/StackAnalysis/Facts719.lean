import InitECandidate.Proofs.StackAnalysis.Data719
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
def frame719 : Nat := 2
def slim719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.call Option.none (Option.some 718) List.nil Option.none)
  (Flapjack.WordLangProgHOL.call
    (Option.some
      {
        fst :=
          List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 (List.cons 10 (List.cons 12 (List.cons 14 List.nil)))))),
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 719, snd := 2 } } } })
    (Option.some 708) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 719, snd := 3 } } }))
theorem frame719_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized719.2.1 optimized719.2.2 = frame719 := by cbv
theorem slim719_eq : WordDepth.Executable.slim optimized719.2.2 = slim719 := by cbv
theorem frameEntry719_eq : frameEntry optimized719 = (719, frame719) := by
  unfold frameEntry
  rw [frame719_eq]
  rfl
theorem slimEntry719_eq : slimEntry optimized719 = (719, 7, slim719) := by
  unfold slimEntry
  rw [slim719_eq]
  rfl
#print axioms frame719_eq
#print axioms slim719_eq
end InitECandidate.Proofs.StackAnalysis
