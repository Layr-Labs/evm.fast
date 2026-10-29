import InitECandidate.Proofs.WordStages.Pass710_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass710_6 : WordLangProgHOL (BitVec 64) := pass710_5
theorem pass710_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass710_5 = pass710_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass710_6]
#print axioms pass710_6_eq
end InitECandidate.Proofs.WordStages
