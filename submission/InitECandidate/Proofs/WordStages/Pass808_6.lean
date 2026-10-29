import InitECandidate.Proofs.WordStages.Pass808_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass808_6 : WordLangProgHOL (BitVec 64) := pass808_5
theorem pass808_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass808_5 = pass808_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass808_6]
#print axioms pass808_6_eq
end InitECandidate.Proofs.WordStages
