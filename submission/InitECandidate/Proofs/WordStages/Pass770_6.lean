import InitECandidate.Proofs.WordStages.Pass770_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass770_6 : WordLangProgHOL (BitVec 64) := pass770_5
theorem pass770_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass770_5 = pass770_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass770_6]
#print axioms pass770_6_eq
end InitECandidate.Proofs.WordStages
