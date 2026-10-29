import InitECandidate.Proofs.StackAnalysis.Data309
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
def frame309 : Nat := 3
def slim309 : WordLangProgHOL (BitVec 64) :=
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 309, snd := 2 } } } })
    (Option.some 305) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 309, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 308) List.nil Option.none)
theorem frame309_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized309.2.1 optimized309.2.2 = frame309 := by cbv
theorem slim309_eq : WordDepth.Executable.slim optimized309.2.2 = slim309 := by cbv
theorem frameEntry309_eq : frameEntry optimized309 = (309, frame309) := by
  unfold frameEntry
  rw [frame309_eq]
  rfl
theorem slimEntry309_eq : slimEntry optimized309 = (309, 4, slim309) := by
  unfold slimEntry
  rw [slim309_eq]
  rfl
#print axioms frame309_eq
#print axioms slim309_eq
end InitECandidate.Proofs.StackAnalysis
