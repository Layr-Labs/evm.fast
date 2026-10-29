import InitECandidate.Proofs.WordStages.Parallel121.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel121
theorem pass121_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass121_5 = pass121_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass121_6]
#print axioms pass121_6_eq
end InitECandidate.Proofs.WordStages.Parallel121
