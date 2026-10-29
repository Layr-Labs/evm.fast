import InitECandidate.Proofs.WordStages.Optimize804
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source820
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody820_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody820_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def optimizedBody820_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def optimizedBody820_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody820_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 524#64)

def optimizedBody820_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody820_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody820_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_5 optimizedBody820_6

def optimizedBody820_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_4 optimizedBody820_7

def optimizedBody820_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_3 optimizedBody820_8

def optimizedBody820_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody820_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody820_9 optimizedBody820_10

def optimizedBody820_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody820_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody820_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody820_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody820_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody820_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody820_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody820_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551216#64))

def optimizedBody820_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody820_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody820_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_21 optimizedBody820_7

def optimizedBody820_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_20 optimizedBody820_22

def optimizedBody820_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_19 optimizedBody820_23

def optimizedBody820_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_18 optimizedBody820_24

def optimizedBody820_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_17 optimizedBody820_25

def optimizedBody820_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_16 optimizedBody820_26

def optimizedBody820_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_15 optimizedBody820_27

def optimizedBody820_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_14 optimizedBody820_28

def optimizedBody820_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_13 optimizedBody820_29

def optimizedBody820_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_12 optimizedBody820_30

def optimizedBody820_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_3 optimizedBody820_31

def optimizedBody820_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_3 optimizedBody820_32

def optimizedBody820_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_11 optimizedBody820_33

def optimizedBody820_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_2 optimizedBody820_34

def optimizedBody820_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_1 optimizedBody820_35

def optimizedBody820_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody820_0 optimizedBody820_36

def oracle820 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def optimized820 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(820, 2, optimizedBody820_37)
theorem optimize820_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source820, oracle820) = optimized820 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize820_eq
end InitECandidate.Proofs.WordStages
