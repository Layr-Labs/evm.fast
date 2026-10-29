import InitECandidate.Proofs.WordStages.Pass591_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass591_6 : WordLangProgHOL (BitVec 64) := pass591_5
theorem pass591_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass591_5 = pass591_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass591_6]
#print axioms pass591_6_eq
end InitECandidate.Proofs.WordStages
