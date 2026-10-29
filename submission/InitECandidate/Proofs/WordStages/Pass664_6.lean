import InitECandidate.Proofs.WordStages.Pass664_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass664_6 : WordLangProgHOL (BitVec 64) := pass664_5
theorem pass664_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass664_5 = pass664_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass664_6]
#print axioms pass664_6_eq
end InitECandidate.Proofs.WordStages
