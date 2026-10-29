import InitECandidate.Proofs.WordStages.Pass846_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass846_6 : WordLangProgHOL (BitVec 64) := pass846_5
theorem pass846_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass846_5 = pass846_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass846_6]
#print axioms pass846_6_eq
end InitECandidate.Proofs.WordStages
