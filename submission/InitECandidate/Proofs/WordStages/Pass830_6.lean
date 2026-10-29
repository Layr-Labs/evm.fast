import InitECandidate.Proofs.WordStages.Pass830_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass830_6 : WordLangProgHOL (BitVec 64) := pass830_5
theorem pass830_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass830_5 = pass830_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass830_6]
#print axioms pass830_6_eq
end InitECandidate.Proofs.WordStages
