import InitECandidate.Proofs.WordStages.Optimize206
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source222
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody222_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 0)]

def optimizedBody222_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 64#64))

def optimizedBody222_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody222_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 72#64))

def optimizedBody222_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 80#64))

def optimizedBody222_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 88#64))

def optimizedBody222_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody222_7 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 102) ([0, 2, 4, 6, 8]) (none)

def optimizedBody222_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_6 optimizedBody222_7

def optimizedBody222_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_5 optimizedBody222_8

def optimizedBody222_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_2 optimizedBody222_9

def optimizedBody222_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_4 optimizedBody222_10

def optimizedBody222_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_2 optimizedBody222_11

def optimizedBody222_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_3 optimizedBody222_12

def optimizedBody222_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_2 optimizedBody222_13

def optimizedBody222_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_1 optimizedBody222_14

def optimizedBody222_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_0 optimizedBody222_15

def oracle222 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 4)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1))))
      Flapjack.Spt.ln))
def optimized222 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(222, 2, optimizedBody222_16)
theorem optimize222_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source222, oracle222) = optimized222 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize222_eq
end InitECandidate.Proofs.WordStages
