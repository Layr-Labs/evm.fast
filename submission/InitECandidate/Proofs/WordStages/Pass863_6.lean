import InitECandidate.Proofs.WordStages.Pass863_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass863_6 : WordLangProgHOL (BitVec 64) := pass863_5
theorem pass863_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass863_5 = pass863_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass863_6]
#print axioms pass863_6_eq
end InitECandidate.Proofs.WordStages
