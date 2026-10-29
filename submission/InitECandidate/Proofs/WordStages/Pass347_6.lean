import InitECandidate.Proofs.WordStages.Pass347_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass347_6 : WordLangProgHOL (BitVec 64) := pass347_5
theorem pass347_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass347_5 = pass347_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass347_6]
#print axioms pass347_6_eq
end InitECandidate.Proofs.WordStages
