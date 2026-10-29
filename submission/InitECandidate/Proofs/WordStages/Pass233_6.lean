import InitECandidate.Proofs.WordStages.Pass233_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass233_6 : WordLangProgHOL (BitVec 64) := pass233_5
theorem pass233_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass233_5 = pass233_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass233_6]
#print axioms pass233_6_eq
end InitECandidate.Proofs.WordStages
