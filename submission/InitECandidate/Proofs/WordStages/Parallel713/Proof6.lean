import InitECandidate.Proofs.WordStages.Parallel713.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel713
theorem pass713_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass713_5 = pass713_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass713_6]
#print axioms pass713_6_eq
end InitECandidate.Proofs.WordStages.Parallel713
