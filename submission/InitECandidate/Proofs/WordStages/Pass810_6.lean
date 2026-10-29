import InitECandidate.Proofs.WordStages.Pass810_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass810_6 : WordLangProgHOL (BitVec 64) := pass810_5
theorem pass810_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass810_5 = pass810_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass810_6]
#print axioms pass810_6_eq
end InitECandidate.Proofs.WordStages
