import InitECandidate.Proofs.WordStages.Pass341_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass341_6 : WordLangProgHOL (BitVec 64) := pass341_5
theorem pass341_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass341_5 = pass341_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass341_6]
#print axioms pass341_6_eq
end InitECandidate.Proofs.WordStages
