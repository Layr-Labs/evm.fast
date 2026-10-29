import InitECandidate.Proofs.WordStages.Optimize743
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source759
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody759_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 4)]

def optimizedBody759_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 758) ([0, 2, 4, 6]) (none)

def optimizedBody759_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody759_0 optimizedBody759_1

def oracle759 : Option (Spt Nat) :=
some (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0 Flapjack.Spt.ln)
def optimized759 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(759, 3, optimizedBody759_2)
theorem optimize759_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source759, oracle759) = optimized759 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize759_eq
end InitECandidate.Proofs.WordStages
