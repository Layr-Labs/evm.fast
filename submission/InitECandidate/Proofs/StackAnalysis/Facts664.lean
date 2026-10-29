import InitECandidate.Proofs.StackAnalysis.Data664
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
def frame664 : Nat := 2
def slim664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 664, snd := 2 } } } })
    (Option.some 210) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 664, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 661) List.nil Option.none)
theorem frame664_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized664.2.1 optimized664.2.2 = frame664 := by cbv
theorem slim664_eq : WordDepth.Executable.slim optimized664.2.2 = slim664 := by cbv
theorem frameEntry664_eq : frameEntry optimized664 = (664, frame664) := by
  unfold frameEntry
  rw [frame664_eq]
  rfl
theorem slimEntry664_eq : slimEntry optimized664 = (664, 5, slim664) := by
  unfold slimEntry
  rw [slim664_eq]
  rfl
#print axioms frame664_eq
#print axioms slim664_eq
end InitECandidate.Proofs.StackAnalysis
