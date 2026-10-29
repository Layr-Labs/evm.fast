import InitECandidate.Proofs.StackAnalysis.Data336
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
def frame336 : Nat := 2
def slim336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 (List.cons 4 List.nil),
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
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 336, snd := 2 } } } })
    (Option.some 335) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 336, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 146) List.nil Option.none)
theorem frame336_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized336.2.1 optimized336.2.2 = frame336 := by cbv
theorem slim336_eq : WordDepth.Executable.slim optimized336.2.2 = slim336 := by cbv
theorem frameEntry336_eq : frameEntry optimized336 = (336, frame336) := by
  unfold frameEntry
  rw [frame336_eq]
  rfl
theorem slimEntry336_eq : slimEntry optimized336 = (336, 4, slim336) := by
  unfold slimEntry
  rw [slim336_eq]
  rfl
#print axioms frame336_eq
#print axioms slim336_eq
end InitECandidate.Proofs.StackAnalysis
