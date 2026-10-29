import InitECandidate.Proofs.WordStages.Parallel782.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel782
theorem pass782_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass782_5 = pass782_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass782_6]
#print axioms pass782_6_eq
end InitECandidate.Proofs.WordStages.Parallel782
