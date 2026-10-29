import InitECandidate.Proofs.WordStages.Pass771_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass771_6 : WordLangProgHOL (BitVec 64) := pass771_5
theorem pass771_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass771_5 = pass771_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass771_6]
#print axioms pass771_6_eq
end InitECandidate.Proofs.WordStages
