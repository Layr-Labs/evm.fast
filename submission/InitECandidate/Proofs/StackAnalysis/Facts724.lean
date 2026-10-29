import InitECandidate.Proofs.StackAnalysis.Data724
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
def frame724 : Nat := 2
def slim724 : WordLangProgHOL (BitVec 64) :=
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 724, snd := 2 } } } })
    (Option.some 717) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 724, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 724, snd := 4 } } } })
    (Option.some 707) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 724, snd := 5 } } }))
theorem frame724_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized724.2.1 optimized724.2.2 = frame724 := by cbv
theorem slim724_eq : WordDepth.Executable.slim optimized724.2.2 = slim724 := by cbv
theorem frameEntry724_eq : frameEntry optimized724 = (724, frame724) := by
  unfold frameEntry
  rw [frame724_eq]
  rfl
theorem slimEntry724_eq : slimEntry optimized724 = (724, 7, slim724) := by
  unfold slimEntry
  rw [slim724_eq]
  rfl
#print axioms frame724_eq
#print axioms slim724_eq
end InitECandidate.Proofs.StackAnalysis
