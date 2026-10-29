import InitECandidate.Proofs.WordStages.Optimize524
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source540
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody540_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody540_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody540_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody540_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody540_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody540_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody540_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody540_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody540_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody540_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody540_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody540_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody540_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody540_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody540_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody540_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody540_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody540_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_6 optimizedBody540_16

def optimizedBody540_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_15 optimizedBody540_17

def optimizedBody540_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_14 optimizedBody540_18

def optimizedBody540_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_13 optimizedBody540_19

def optimizedBody540_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_12 optimizedBody540_20

def optimizedBody540_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_11 optimizedBody540_21

def optimizedBody540_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_10 optimizedBody540_22

def optimizedBody540_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody540_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 8) optimizedBody540_23 optimizedBody540_24

def optimizedBody540_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody540_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_26 optimizedBody540_17

def optimizedBody540_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_10 optimizedBody540_27

def optimizedBody540_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_10 optimizedBody540_28

def optimizedBody540_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_25 optimizedBody540_29

def optimizedBody540_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_9 optimizedBody540_30

def optimizedBody540_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_8 optimizedBody540_31

def optimizedBody540_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_7 optimizedBody540_32

def optimizedBody540_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_6 optimizedBody540_33

def optimizedBody540_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_5 optimizedBody540_34

def optimizedBody540_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_4 optimizedBody540_35

def optimizedBody540_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_3 optimizedBody540_36

def optimizedBody540_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_2 optimizedBody540_37

def optimizedBody540_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_1 optimizedBody540_38

def optimizedBody540_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody540_0 optimizedBody540_39

def oracle540 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 4)))))
      Flapjack.Spt.ln))
def optimized540 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(540, 1, optimizedBody540_40)
theorem optimize540_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source540, oracle540) = optimized540 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize540_eq
end InitECandidate.Proofs.WordStages
