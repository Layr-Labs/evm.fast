import InitECandidate.Proofs.StackAnalysis.Data733
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
def frame733 : Nat := 4
def slim733 : WordLangProgHOL (BitVec 64) :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 733, snd := 2 } } } })
    (Option.some 706) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 733, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 706) List.nil Option.none)
theorem frame733_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized733.2.1 optimized733.2.2 = frame733 := by cbv
theorem slim733_eq : WordDepth.Executable.slim optimized733.2.2 = slim733 := by cbv
theorem frameEntry733_eq : frameEntry optimized733 = (733, frame733) := by
  unfold frameEntry
  rw [frame733_eq]
  rfl
theorem slimEntry733_eq : slimEntry optimized733 = (733, 3, slim733) := by
  unfold slimEntry
  rw [slim733_eq]
  rfl
#print axioms frame733_eq
#print axioms slim733_eq
end InitECandidate.Proofs.StackAnalysis
