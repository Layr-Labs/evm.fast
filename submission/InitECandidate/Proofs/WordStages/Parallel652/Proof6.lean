import InitECandidate.Proofs.WordStages.Parallel652.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel652
theorem pass652_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass652_5 = pass652_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass652_6]
#print axioms pass652_6_eq
end InitECandidate.Proofs.WordStages.Parallel652
