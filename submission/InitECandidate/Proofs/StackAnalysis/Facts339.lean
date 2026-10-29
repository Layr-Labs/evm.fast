import InitECandidate.Proofs.StackAnalysis.Data339
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
def frame339 : Nat := 3
def slim339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 339, snd := 2 } } } })
  (Option.some 161) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 339, snd := 3 } } })
theorem frame339_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized339.2.1 optimized339.2.2 = frame339 := by cbv
theorem slim339_eq : WordDepth.Executable.slim optimized339.2.2 = slim339 := by cbv
theorem frameEntry339_eq : frameEntry optimized339 = (339, frame339) := by
  unfold frameEntry
  rw [frame339_eq]
  rfl
theorem slimEntry339_eq : slimEntry optimized339 = (339, 4, slim339) := by
  unfold slimEntry
  rw [slim339_eq]
  rfl
#print axioms frame339_eq
#print axioms slim339_eq
end InitECandidate.Proofs.StackAnalysis
