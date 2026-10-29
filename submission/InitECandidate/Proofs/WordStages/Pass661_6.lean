import InitECandidate.Proofs.WordStages.Pass661_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass661_6 : WordLangProgHOL (BitVec 64) := pass661_5
theorem pass661_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass661_5 = pass661_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass661_6]
#print axioms pass661_6_eq
end InitECandidate.Proofs.WordStages
