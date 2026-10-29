import InitECandidate.Proofs.WordStages.Pass866_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass866_6 : WordLangProgHOL (BitVec 64) := pass866_5
theorem pass866_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass866_5 = pass866_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass866_6]
#print axioms pass866_6_eq
end InitECandidate.Proofs.WordStages
