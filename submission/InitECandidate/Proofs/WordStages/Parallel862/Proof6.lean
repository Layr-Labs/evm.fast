import InitECandidate.Proofs.WordStages.Parallel862.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel862
theorem pass862_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass862_5 = pass862_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass862_6]
#print axioms pass862_6_eq
end InitECandidate.Proofs.WordStages.Parallel862
