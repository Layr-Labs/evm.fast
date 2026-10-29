import InitECandidate.Proofs.WordStages.Pass184_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass184_6 : WordLangProgHOL (BitVec 64) := pass184_5
theorem pass184_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass184_5 = pass184_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass184_6]
#print axioms pass184_6_eq
end InitECandidate.Proofs.WordStages
