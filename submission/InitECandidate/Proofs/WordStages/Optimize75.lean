import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source75
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody75_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody75_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody75_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody75_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody75_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551592#64))

def optimizedBody75_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody75_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody75_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_5 optimizedBody75_6

def optimizedBody75_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_4 optimizedBody75_7

def optimizedBody75_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_3 optimizedBody75_8

def optimizedBody75_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_2 optimizedBody75_9

def optimizedBody75_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_1 optimizedBody75_10

def optimizedBody75_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_0 optimizedBody75_11

def oracle75 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 0
        (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
      Flapjack.Spt.ln))
def optimized75 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(75, 1, optimizedBody75_12)
theorem optimize75_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source75, oracle75) = optimized75 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize75_eq
end InitECandidate.Proofs.WordStages
