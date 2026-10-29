import InitECandidate.Proofs.WordStages.Optimize229
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source245
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody245_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody245_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody245_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody245_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody245_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_0 optimizedBody245_3

def optimizedBody245_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_2 optimizedBody245_4

def optimizedBody245_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_1 optimizedBody245_5

def optimizedBody245_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody245_0 optimizedBody245_6

def oracle245 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
def optimized245 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(245, 2, optimizedBody245_7)
theorem optimize245_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source245, oracle245) = optimized245 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize245_eq
end InitECandidate.Proofs.WordStages
