import InitECandidate.Proofs.WordStages.Parallel651.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel651
theorem pass651_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass651_5 = pass651_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass651_6]
#print axioms pass651_6_eq
end InitECandidate.Proofs.WordStages.Parallel651
