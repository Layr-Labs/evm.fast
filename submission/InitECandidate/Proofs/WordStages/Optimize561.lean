import InitECandidate.Proofs.WordStages.Optimize545
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source561
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody561_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody561_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody561_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody561_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody561_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody561_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody561_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody561_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 88#64))

def optimizedBody561_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 96#64))

def optimizedBody561_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody561_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody561_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody561_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody561_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody561_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_12 optimizedBody561_13

def optimizedBody561_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody561_11, 561, 2)) (some 560) ([2, 4, 6]) (some (2, optimizedBody561_14, 561, 3))

def optimizedBody561_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody561_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody561_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody561_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_6 optimizedBody561_18

def optimizedBody561_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_17 optimizedBody561_19

def optimizedBody561_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_16 optimizedBody561_20

def optimizedBody561_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_15 optimizedBody561_21

def optimizedBody561_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_10 optimizedBody561_22

def optimizedBody561_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_9 optimizedBody561_23

def optimizedBody561_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_8 optimizedBody561_24

def optimizedBody561_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_6 optimizedBody561_25

def optimizedBody561_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_7 optimizedBody561_26

def optimizedBody561_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_6 optimizedBody561_27

def optimizedBody561_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_5 optimizedBody561_28

def optimizedBody561_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_4 optimizedBody561_29

def optimizedBody561_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_3 optimizedBody561_30

def optimizedBody561_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_2 optimizedBody561_31

def optimizedBody561_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_1 optimizedBody561_32

def optimizedBody561_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody561_0 optimizedBody561_33

def oracle561 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
          (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
def optimized561 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(561, 1, optimizedBody561_34)
theorem optimize561_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source561, oracle561) = optimized561 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize561_eq
end InitECandidate.Proofs.WordStages
