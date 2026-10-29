import InitECandidate.Proofs.WordStages.Pass657_10
import InitECandidate.Proofs.CompilerStages
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

def oracle657 : Option (Spt Nat) := proposed657
def optimized657 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (657, 1, pass657_10)

theorem optimize657_eq : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source657, oracle657) = optimized657 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  have name_eq : source657.1 = 657 := by rfl
  have argc_eq : source657.2.1 = 1 := by rfl
  have oracle_eq : oracle657 = proposed657 := by rfl
  rw [name_eq, argc_eq, oracle_eq, pass657_0_eq, pass657_1_eq, pass657_2_eq, pass657_3_eq, pass657_4_eq, pass657_5_eq, pass657_6_eq, pass657_7_eq, pass657_8_eq, pass657_9_eq, pass657_10_eq]
  rfl
#print axioms optimize657_eq
end InitECandidate.Proofs.WordStages
