import InitECandidate.Proofs.WordStages.Parallel231.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel231
theorem pass231_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass231_5 = pass231_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass231_6]
#print axioms pass231_6_eq
end InitECandidate.Proofs.WordStages.Parallel231
