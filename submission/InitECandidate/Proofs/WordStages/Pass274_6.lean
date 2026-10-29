import InitECandidate.Proofs.WordStages.Pass274_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass274_6 : WordLangProgHOL (BitVec 64) := pass274_5
theorem pass274_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass274_5 = pass274_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass274_6]
#print axioms pass274_6_eq
end InitECandidate.Proofs.WordStages
