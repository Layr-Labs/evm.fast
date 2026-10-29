import InitECandidate.Proofs.WordStages.Pass642_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass642_6 : WordLangProgHOL (BitVec 64) := pass642_5
theorem pass642_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass642_5 = pass642_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass642_6]
#print axioms pass642_6_eq
end InitECandidate.Proofs.WordStages
