import InitECandidate.Proofs.WordStages.Pass225_5
import InitECandidate.Proofs.CompilerComputation
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def pass225_6 : WordLangProgHOL (BitVec 64) := pass225_5
theorem pass225_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass225_5 = pass225_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass225_6]
#print axioms pass225_6_eq
end InitECandidate.Proofs.WordStages
