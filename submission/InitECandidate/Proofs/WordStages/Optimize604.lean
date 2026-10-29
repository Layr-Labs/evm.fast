import InitECandidate.Proofs.WordStages.Optimize588
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source604
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody604_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody604_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody604_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody604_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody604_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody604_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody604_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody604_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody604_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 184#64))

def optimizedBody604_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody604_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody604_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody604_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody604_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody604_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody604_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody604_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody604_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody604_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody604_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody604_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody604_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody604_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody604_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody604_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_22 optimizedBody604_23

def optimizedBody604_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_21 optimizedBody604_24

def optimizedBody604_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_20 optimizedBody604_25

def optimizedBody604_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_19 optimizedBody604_26

def optimizedBody604_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_18 optimizedBody604_27

def optimizedBody604_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_17 optimizedBody604_28

def optimizedBody604_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_12 optimizedBody604_29

def optimizedBody604_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_16 optimizedBody604_30

def optimizedBody604_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_15 optimizedBody604_31

def optimizedBody604_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_14 optimizedBody604_32

def optimizedBody604_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_13 optimizedBody604_33

def optimizedBody604_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_4 optimizedBody604_34

def optimizedBody604_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_12 optimizedBody604_35

def optimizedBody604_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_11 optimizedBody604_36

def optimizedBody604_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_10 optimizedBody604_37

def optimizedBody604_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_9 optimizedBody604_38

def optimizedBody604_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_8 optimizedBody604_39

def optimizedBody604_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_6 optimizedBody604_40

def optimizedBody604_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_7 optimizedBody604_41

def optimizedBody604_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_6 optimizedBody604_42

def optimizedBody604_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_5 optimizedBody604_43

def optimizedBody604_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_4 optimizedBody604_44

def optimizedBody604_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_3 optimizedBody604_45

def optimizedBody604_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_2 optimizedBody604_46

def optimizedBody604_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_1 optimizedBody604_47

def optimizedBody604_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody604_0 optimizedBody604_48

def oracle604 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))) 2
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))) 2
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 1 (Flapjack.Spt.ls 3))))
      Flapjack.Spt.ln))
def optimized604 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(604, 2, optimizedBody604_49)
theorem optimize604_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source604, oracle604) = optimized604 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize604_eq
end InitECandidate.Proofs.WordStages
