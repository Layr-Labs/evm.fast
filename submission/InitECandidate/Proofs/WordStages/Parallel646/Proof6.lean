import InitECandidate.Proofs.WordStages.Parallel646.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel646
theorem pass646_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass646_5 = pass646_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass646_6]
#print axioms pass646_6_eq
end InitECandidate.Proofs.WordStages.Parallel646
