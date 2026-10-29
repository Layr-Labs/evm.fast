import InitECandidate.Proofs.WordStages.Pass798_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass798_6 : WordLangProgHOL (BitVec 64) := pass798_5
theorem pass798_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass798_5 = pass798_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass798_6]
#print axioms pass798_6_eq
end InitECandidate.Proofs.WordStages
