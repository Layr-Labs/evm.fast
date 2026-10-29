import InitECandidate.Proofs.WordStages.Pass796_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass796_6 : WordLangProgHOL (BitVec 64) := pass796_5
theorem pass796_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass796_5 = pass796_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass796_6]
#print axioms pass796_6_eq
end InitECandidate.Proofs.WordStages
