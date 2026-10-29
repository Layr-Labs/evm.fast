import InitECandidate.Proofs.WordStages.Pass621_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass621_6 : WordLangProgHOL (BitVec 64) := pass621_5
theorem pass621_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass621_5 = pass621_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass621_6]
#print axioms pass621_6_eq
end InitECandidate.Proofs.WordStages
