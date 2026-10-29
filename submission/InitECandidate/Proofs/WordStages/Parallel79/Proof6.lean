import InitECandidate.Proofs.WordStages.Parallel79.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel79
theorem pass79_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass79_5 = pass79_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass79_6]
#print axioms pass79_6_eq
end InitECandidate.Proofs.WordStages.Parallel79
