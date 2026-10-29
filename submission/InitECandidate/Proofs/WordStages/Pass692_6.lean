import InitECandidate.Proofs.WordStages.Pass692_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass692_6 : WordLangProgHOL (BitVec 64) := pass692_5
theorem pass692_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass692_5 = pass692_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass692_6]
#print axioms pass692_6_eq
end InitECandidate.Proofs.WordStages
