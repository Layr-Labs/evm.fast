import InitECandidate.Proofs.WordStages.Pass461_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass461_6 : WordLangProgHOL (BitVec 64) := pass461_5
theorem pass461_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass461_5 = pass461_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass461_6]
#print axioms pass461_6_eq
end InitECandidate.Proofs.WordStages
