import InitECandidate.Proofs.WordStages.Pass814_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass814_6 : WordLangProgHOL (BitVec 64) := pass814_5
theorem pass814_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass814_5 = pass814_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass814_6]
#print axioms pass814_6_eq
end InitECandidate.Proofs.WordStages
