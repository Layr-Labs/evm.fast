import InitECandidate.Proofs.WordStages.Optimize803
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source819
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody819_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody819_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def optimizedBody819_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def optimizedBody819_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody819_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 519#64)

def optimizedBody819_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody819_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody819_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_5 optimizedBody819_6

def optimizedBody819_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_4 optimizedBody819_7

def optimizedBody819_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_3 optimizedBody819_8

def optimizedBody819_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody819_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody819_9 optimizedBody819_10

def optimizedBody819_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody819_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody819_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody819_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody819_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody819_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody819_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551216#64))

def optimizedBody819_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody819_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody819_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_20 optimizedBody819_7

def optimizedBody819_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_19 optimizedBody819_21

def optimizedBody819_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_18 optimizedBody819_22

def optimizedBody819_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_17 optimizedBody819_23

def optimizedBody819_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_16 optimizedBody819_24

def optimizedBody819_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_15 optimizedBody819_25

def optimizedBody819_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_14 optimizedBody819_26

def optimizedBody819_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_13 optimizedBody819_27

def optimizedBody819_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_12 optimizedBody819_28

def optimizedBody819_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_3 optimizedBody819_29

def optimizedBody819_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_3 optimizedBody819_30

def optimizedBody819_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_11 optimizedBody819_31

def optimizedBody819_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_2 optimizedBody819_32

def optimizedBody819_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_1 optimizedBody819_33

def optimizedBody819_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody819_0 optimizedBody819_34

def oracle819 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def optimized819 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(819, 2, optimizedBody819_35)
theorem optimize819_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source819, oracle819) = optimized819 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize819_eq
end InitECandidate.Proofs.WordStages
