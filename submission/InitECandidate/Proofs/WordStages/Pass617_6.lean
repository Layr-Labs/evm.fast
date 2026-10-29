import InitECandidate.Proofs.WordStages.Pass617_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass617_6 : WordLangProgHOL (BitVec 64) := pass617_5
theorem pass617_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass617_5 = pass617_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass617_6]
#print axioms pass617_6_eq
end InitECandidate.Proofs.WordStages
