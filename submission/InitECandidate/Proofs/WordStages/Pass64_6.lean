import InitECandidate.Proofs.WordStages.Pass64_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass64_6 : WordLangProgHOL (BitVec 64) := pass64_5
theorem pass64_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass64_5 = pass64_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass64_6]
#print axioms pass64_6_eq
end InitECandidate.Proofs.WordStages
