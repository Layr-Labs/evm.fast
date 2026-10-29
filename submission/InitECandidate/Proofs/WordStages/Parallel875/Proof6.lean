import InitECandidate.Proofs.WordStages.Parallel875.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel875
theorem pass875_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass875_5 = pass875_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass875_6]
#print axioms pass875_6_eq
end InitECandidate.Proofs.WordStages.Parallel875
