import InitECandidate.Proofs.WordStages.Parallel276.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel276
theorem pass276_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass276_5 = pass276_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass276_6]
#print axioms pass276_6_eq
end InitECandidate.Proofs.WordStages.Parallel276
