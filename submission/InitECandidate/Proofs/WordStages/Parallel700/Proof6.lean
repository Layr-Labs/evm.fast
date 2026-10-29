import InitECandidate.Proofs.WordStages.Parallel700.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel700
theorem pass700_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass700_5 = pass700_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass700_6]
#print axioms pass700_6_eq
end InitECandidate.Proofs.WordStages.Parallel700
