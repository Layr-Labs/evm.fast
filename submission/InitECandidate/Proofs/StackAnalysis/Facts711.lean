import InitECandidate.Proofs.StackAnalysis.Data711
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
def frame711 : Nat := 2
def slim711 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 711, snd := 2 } } } })
    (Option.some 709) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 711, snd := 3 } } }))
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 711, snd := 4 } } } })
    (Option.some 708) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 711, snd := 5 } } }))
theorem frame711_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized711.2.1 optimized711.2.2 = frame711 := by cbv
theorem slim711_eq : WordDepth.Executable.slim optimized711.2.2 = slim711 := by cbv
theorem frameEntry711_eq : frameEntry optimized711 = (711, frame711) := by
  unfold frameEntry
  rw [frame711_eq]
  rfl
theorem slimEntry711_eq : slimEntry optimized711 = (711, 13, slim711) := by
  unfold slimEntry
  rw [slim711_eq]
  rfl
#print axioms frame711_eq
#print axioms slim711_eq
end InitECandidate.Proofs.StackAnalysis
