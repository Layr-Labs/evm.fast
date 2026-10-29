import InitECandidate.Proofs.WordStages.Pass154_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass154_6 : WordLangProgHOL (BitVec 64) := pass154_5
theorem pass154_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass154_5 = pass154_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass154_6]
#print axioms pass154_6_eq
end InitECandidate.Proofs.WordStages
