import InitECandidate.Proofs.WordStages.Pass345_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass345_6 : WordLangProgHOL (BitVec 64) := pass345_5
theorem pass345_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass345_5 = pass345_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass345_6]
#print axioms pass345_6_eq
end InitECandidate.Proofs.WordStages
