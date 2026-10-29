import InitECandidate.Proofs.StackAnalysis.Data139
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
def frame139 : Nat := 2
def slim139 : WordLangProgHOL (BitVec 64) :=
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
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 139, snd := 2 } } } })
  (Option.some 138) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 139, snd := 3 } } })
theorem frame139_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized139.2.1 optimized139.2.2 = frame139 := by cbv
theorem slim139_eq : WordDepth.Executable.slim optimized139.2.2 = slim139 := by cbv
theorem frameEntry139_eq : frameEntry optimized139 = (139, frame139) := by
  unfold frameEntry
  rw [frame139_eq]
  rfl
theorem slimEntry139_eq : slimEntry optimized139 = (139, 5, slim139) := by
  unfold slimEntry
  rw [slim139_eq]
  rfl
#print axioms frame139_eq
#print axioms slim139_eq
end InitECandidate.Proofs.StackAnalysis
