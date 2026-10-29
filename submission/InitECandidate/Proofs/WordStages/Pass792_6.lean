import InitECandidate.Proofs.WordStages.Pass792_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass792_6 : WordLangProgHOL (BitVec 64) := pass792_5
theorem pass792_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass792_5 = pass792_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass792_6]
#print axioms pass792_6_eq
end InitECandidate.Proofs.WordStages
