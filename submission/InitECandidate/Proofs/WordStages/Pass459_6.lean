import InitECandidate.Proofs.WordStages.Pass459_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass459_6 : WordLangProgHOL (BitVec 64) := pass459_5
theorem pass459_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass459_5 = pass459_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass459_6]
#print axioms pass459_6_eq
end InitECandidate.Proofs.WordStages
