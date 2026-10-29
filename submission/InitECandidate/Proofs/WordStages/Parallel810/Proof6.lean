import InitECandidate.Proofs.WordStages.Parallel810.Data6
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel810
theorem pass810_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass810_5 = pass810_6 := by
  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass810_6]
#print axioms pass810_6_eq
end InitECandidate.Proofs.WordStages.Parallel810
