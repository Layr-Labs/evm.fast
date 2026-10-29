import InitECandidate.Proofs.WordStages.Parallel240.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel240
theorem pass240_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass240_5 = pass240_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass240_6]
#print axioms pass240_6_eq
end InitECandidate.Proofs.WordStages.Parallel240
