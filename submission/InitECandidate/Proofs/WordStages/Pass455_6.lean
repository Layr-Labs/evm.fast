import InitECandidate.Proofs.WordStages.Pass455_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass455_6 : WordLangProgHOL (BitVec 64) := pass455_5
theorem pass455_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass455_5 = pass455_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass455_6]
#print axioms pass455_6_eq
end InitECandidate.Proofs.WordStages
