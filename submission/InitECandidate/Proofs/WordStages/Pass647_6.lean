import InitECandidate.Proofs.WordStages.Pass647_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass647_6 : WordLangProgHOL (BitVec 64) := pass647_5
theorem pass647_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass647_5 = pass647_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass647_6]
#print axioms pass647_6_eq
end InitECandidate.Proofs.WordStages
