import InitECandidate.Proofs.WordStages.Pass645_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass645_6 : WordLangProgHOL (BitVec 64) := pass645_5
theorem pass645_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass645_5 = pass645_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass645_6]
#print axioms pass645_6_eq
end InitECandidate.Proofs.WordStages
