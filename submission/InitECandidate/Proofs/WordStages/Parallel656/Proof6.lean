import InitECandidate.Proofs.WordStages.Parallel656.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel656
theorem pass656_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass656_5 = pass656_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass656_6]
#print axioms pass656_6_eq
end InitECandidate.Proofs.WordStages.Parallel656
