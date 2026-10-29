import InitECandidate.Proofs.WordStages.Pass653_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass653_6 : WordLangProgHOL (BitVec 64) := pass653_5
theorem pass653_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass653_5 = pass653_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass653_6]
#print axioms pass653_6_eq
end InitECandidate.Proofs.WordStages
