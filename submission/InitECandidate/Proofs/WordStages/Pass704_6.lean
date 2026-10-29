import InitECandidate.Proofs.WordStages.Pass704_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass704_6 : WordLangProgHOL (BitVec 64) := pass704_5
theorem pass704_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass704_5 = pass704_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass704_6]
#print axioms pass704_6_eq
end InitECandidate.Proofs.WordStages
