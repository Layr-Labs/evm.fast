import InitECandidate.Proofs.StackAnalysis.Data644
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
def frame644 : Nat := 6
def slim644 : WordLangProgHOL (BitVec 64) :=
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 644, snd := 2 } } } })
    (Option.some 106) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 644, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 117) List.nil Option.none)
theorem frame644_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized644.2.1 optimized644.2.2 = frame644 := by cbv
theorem slim644_eq : WordDepth.Executable.slim optimized644.2.2 = slim644 := by cbv
theorem frameEntry644_eq : frameEntry optimized644 = (644, frame644) := by
  unfold frameEntry
  rw [frame644_eq]
  rfl
theorem slimEntry644_eq : slimEntry optimized644 = (644, 5, slim644) := by
  unfold slimEntry
  rw [slim644_eq]
  rfl
#print axioms frame644_eq
#print axioms slim644_eq
end InitECandidate.Proofs.StackAnalysis
