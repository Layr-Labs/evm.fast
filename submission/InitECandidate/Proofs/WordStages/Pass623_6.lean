import InitECandidate.Proofs.WordStages.Pass623_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass623_6 : WordLangProgHOL (BitVec 64) := pass623_5
theorem pass623_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass623_5 = pass623_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass623_6]
#print axioms pass623_6_eq
end InitECandidate.Proofs.WordStages
