import InitECandidate.Proofs.WordStages.Pass783_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass783_6 : WordLangProgHOL (BitVec 64) := pass783_5
theorem pass783_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass783_5 = pass783_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass783_6]
#print axioms pass783_6_eq
end InitECandidate.Proofs.WordStages
