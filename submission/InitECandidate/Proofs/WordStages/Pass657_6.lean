import InitECandidate.Proofs.WordStages.Pass657_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass657_6 : WordLangProgHOL (BitVec 64) := pass657_5
theorem pass657_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass657_5 = pass657_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass657_6]
#print axioms pass657_6_eq
end InitECandidate.Proofs.WordStages
