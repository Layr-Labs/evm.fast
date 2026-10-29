import InitECandidate.Proofs.WordStages.Pass650_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass650_6 : WordLangProgHOL (BitVec 64) := pass650_5
theorem pass650_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass650_5 = pass650_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass650_6]
#print axioms pass650_6_eq
end InitECandidate.Proofs.WordStages
