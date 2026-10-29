import InitECandidate.Proofs.WordStages.Pass687_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass687_6 : WordLangProgHOL (BitVec 64) := pass687_5
theorem pass687_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass687_5 = pass687_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass687_6]
#print axioms pass687_6_eq
end InitECandidate.Proofs.WordStages
