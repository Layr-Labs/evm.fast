import InitECandidate.Proofs.WordStages.Pass276_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass276_6 : WordLangProgHOL (BitVec 64) := pass276_5
theorem pass276_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass276_5 = pass276_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass276_6]
#print axioms pass276_6_eq
end InitECandidate.Proofs.WordStages
