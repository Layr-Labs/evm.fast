import InitECandidate.Proofs.WordStages.Parallel597.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel597
theorem pass597_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass597_5 = pass597_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass597_6]
#print axioms pass597_6_eq
end InitECandidate.Proofs.WordStages.Parallel597
