import InitECandidate.Proofs.WordStages.Pass691_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass691_6 : WordLangProgHOL (BitVec 64) := pass691_5
theorem pass691_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass691_5 = pass691_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass691_6]
#print axioms pass691_6_eq
end InitECandidate.Proofs.WordStages
