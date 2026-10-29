import InitECandidate.Proofs.WordStages.Parallel874.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel874
theorem pass874_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass874_5 = pass874_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass874_6]
#print axioms pass874_6_eq
end InitECandidate.Proofs.WordStages.Parallel874
