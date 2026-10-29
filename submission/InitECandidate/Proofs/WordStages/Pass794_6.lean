import InitECandidate.Proofs.WordStages.Pass794_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass794_6 : WordLangProgHOL (BitVec 64) := pass794_5
theorem pass794_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass794_5 = pass794_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass794_6]
#print axioms pass794_6_eq
end InitECandidate.Proofs.WordStages
