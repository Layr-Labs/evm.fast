import InitECandidate.Proofs.WordStages.Pass782_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass782_6 : WordLangProgHOL (BitVec 64) := pass782_5
theorem pass782_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass782_5 = pass782_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass782_6]
#print axioms pass782_6_eq
end InitECandidate.Proofs.WordStages
