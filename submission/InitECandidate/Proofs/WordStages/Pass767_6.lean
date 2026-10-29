import InitECandidate.Proofs.WordStages.Pass767_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass767_6 : WordLangProgHOL (BitVec 64) := pass767_5
theorem pass767_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass767_5 = pass767_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass767_6]
#print axioms pass767_6_eq
end InitECandidate.Proofs.WordStages
