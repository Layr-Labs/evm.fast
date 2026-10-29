import InitECandidate.Proofs.WordStages.Pass700_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass700_6 : WordLangProgHOL (BitVec 64) := pass700_5
theorem pass700_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass700_5 = pass700_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass700_6]
#print axioms pass700_6_eq
end InitECandidate.Proofs.WordStages
