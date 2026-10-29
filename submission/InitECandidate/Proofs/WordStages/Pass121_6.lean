import InitECandidate.Proofs.WordStages.Pass121_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass121_6 : WordLangProgHOL (BitVec 64) := pass121_5
theorem pass121_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass121_5 = pass121_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass121_6]
#print axioms pass121_6_eq
end InitECandidate.Proofs.WordStages
