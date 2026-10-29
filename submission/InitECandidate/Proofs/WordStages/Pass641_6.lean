import InitECandidate.Proofs.WordStages.Pass641_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass641_6 : WordLangProgHOL (BitVec 64) := pass641_5
theorem pass641_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass641_5 = pass641_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass641_6]
#print axioms pass641_6_eq
end InitECandidate.Proofs.WordStages
