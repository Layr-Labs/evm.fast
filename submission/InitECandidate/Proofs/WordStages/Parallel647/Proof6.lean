import InitECandidate.Proofs.WordStages.Parallel647.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel647
theorem pass647_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass647_5 = pass647_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass647_6]
#print axioms pass647_6_eq
end InitECandidate.Proofs.WordStages.Parallel647
