import InitECandidate.Proofs.WordStages.Pass207_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass207_6 : WordLangProgHOL (BitVec 64) := pass207_5
theorem pass207_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass207_5 = pass207_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass207_6]
#print axioms pass207_6_eq
end InitECandidate.Proofs.WordStages
