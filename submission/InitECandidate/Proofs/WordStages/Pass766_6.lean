import InitECandidate.Proofs.WordStages.Pass766_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass766_6 : WordLangProgHOL (BitVec 64) := pass766_5
theorem pass766_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass766_5 = pass766_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass766_6]
#print axioms pass766_6_eq
end InitECandidate.Proofs.WordStages
