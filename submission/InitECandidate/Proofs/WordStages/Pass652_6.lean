import InitECandidate.Proofs.WordStages.Pass652_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass652_6 : WordLangProgHOL (BitVec 64) := pass652_5
theorem pass652_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass652_5 = pass652_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass652_6]
#print axioms pass652_6_eq
end InitECandidate.Proofs.WordStages
