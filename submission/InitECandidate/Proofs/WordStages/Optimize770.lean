import InitECandidate.Proofs.WordStages.Pass770_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle770 : Option (Spt Nat) := proposed770
def optimized770 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (770, 3, pass770_10)

theorem optimize770_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source770, oracle770) = optimized770 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source770.1 = 770 := by rfl
  have argc_eq : source770.2.1 = 3 := by rfl
  have oracle_eq : oracle770 = proposed770 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass770_0_eq, pass770_1_eq, pass770_2_eq, pass770_3_eq, pass770_4_eq, pass770_5_eq, pass770_6_eq, pass770_7_eq, pass770_8_eq, pass770_9_eq, pass770_10_eq]
  rfl
#print axioms optimize770_eq
end InitECandidate.Proofs.WordStages
