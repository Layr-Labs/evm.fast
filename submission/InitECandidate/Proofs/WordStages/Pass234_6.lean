import InitECandidate.Proofs.WordStages.Pass234_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass234_6 : WordLangProgHOL (BitVec 64) := pass234_5
theorem pass234_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass234_5 = pass234_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass234_6]
#print axioms pass234_6_eq
end InitECandidate.Proofs.WordStages
