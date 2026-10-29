import InitECandidate.Proofs.WordStages.Pass714_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass714_6 : WordLangProgHOL (BitVec 64) := pass714_5
theorem pass714_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass714_5 = pass714_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass714_6]
#print axioms pass714_6_eq
end InitECandidate.Proofs.WordStages
