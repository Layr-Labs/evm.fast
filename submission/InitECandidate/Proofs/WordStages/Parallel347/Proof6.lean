import InitECandidate.Proofs.WordStages.Parallel347.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel347
theorem pass347_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass347_5 = pass347_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass347_6]
#print axioms pass347_6_eq
end InitECandidate.Proofs.WordStages.Parallel347
