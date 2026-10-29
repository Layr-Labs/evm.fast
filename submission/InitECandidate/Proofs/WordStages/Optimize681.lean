import InitECandidate.Proofs.WordStages.Optimize665
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source681
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody681_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4)]

def optimizedBody681_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody681_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody681_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody681_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody681_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody681_6 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 676) ([0, 2, 4]) (none)

def optimizedBody681_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_5 optimizedBody681_6

def optimizedBody681_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_4 optimizedBody681_7

def optimizedBody681_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_3 optimizedBody681_8

def optimizedBody681_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_9

def optimizedBody681_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_1 optimizedBody681_10

def optimizedBody681_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_0 optimizedBody681_11

def oracle681 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
          (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
      Flapjack.Spt.ln))
def optimized681 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(681, 3, optimizedBody681_12)
theorem optimize681_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source681, oracle681) = optimized681 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize681_eq
end InitECandidate.Proofs.WordStages
