import InitECandidate.Proofs.WordStages.Pass79_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass79_6 : WordLangProgHOL (BitVec 64) := pass79_5
theorem pass79_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass79_5 = pass79_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass79_6]
#print axioms pass79_6_eq
end InitECandidate.Proofs.WordStages
