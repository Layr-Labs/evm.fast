import InitECandidate.Proofs.WordStages.Pass240_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass240_6 : WordLangProgHOL (BitVec 64) := pass240_5
theorem pass240_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass240_5 = pass240_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass240_6]
#print axioms pass240_6_eq
end InitECandidate.Proofs.WordStages
