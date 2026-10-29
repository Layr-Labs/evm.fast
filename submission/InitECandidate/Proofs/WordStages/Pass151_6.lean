import InitECandidate.Proofs.WordStages.Pass151_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass151_6 : WordLangProgHOL (BitVec 64) := pass151_5
theorem pass151_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass151_5 = pass151_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass151_6]
#print axioms pass151_6_eq
end InitECandidate.Proofs.WordStages
