import InitECandidate.Proofs.WordStages.Pass854_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass854_6 : WordLangProgHOL (BitVec 64) := pass854_5
theorem pass854_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass854_5 = pass854_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass854_6]
#print axioms pass854_6_eq
end InitECandidate.Proofs.WordStages
