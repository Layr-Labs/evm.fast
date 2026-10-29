import InitECandidate.Proofs.WordStages.Optimize454
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source470
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody470_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody470_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody470_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody470_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody470_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody470_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 8 64#64))

def optimizedBody470_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 2), (10, 10)]

def optimizedBody470_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody470_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody470_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody470_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody470_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody470_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody470_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody470_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_12 optimizedBody470_13

def optimizedBody470_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_11 optimizedBody470_14

def optimizedBody470_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_10 optimizedBody470_15

def optimizedBody470_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_9 optimizedBody470_16

def optimizedBody470_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_8 optimizedBody470_17

def optimizedBody470_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_7 optimizedBody470_18

def optimizedBody470_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody470_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 6) optimizedBody470_19 optimizedBody470_20

def optimizedBody470_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4)]

def optimizedBody470_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody470_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody470_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody470_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody470_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody470_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody470_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody470_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody470_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 6)]

def optimizedBody470_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody470_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody470_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody470_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody470_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody470_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody470_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_9 optimizedBody470_37

def optimizedBody470_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_36 optimizedBody470_38

def optimizedBody470_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_35 optimizedBody470_39

def optimizedBody470_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_34 optimizedBody470_40

def optimizedBody470_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_33 optimizedBody470_41

def optimizedBody470_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_32 optimizedBody470_42

def optimizedBody470_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_31 optimizedBody470_43

def optimizedBody470_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_30 optimizedBody470_44

def optimizedBody470_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_29 optimizedBody470_45

def optimizedBody470_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_28 optimizedBody470_46

def optimizedBody470_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_27 optimizedBody470_47

def optimizedBody470_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_26 optimizedBody470_48

def optimizedBody470_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_25 optimizedBody470_49

def optimizedBody470_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_24 optimizedBody470_50

def optimizedBody470_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_23 optimizedBody470_51

def optimizedBody470_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_22 optimizedBody470_52

def optimizedBody470_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_7 optimizedBody470_53

def optimizedBody470_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_7 optimizedBody470_54

def optimizedBody470_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_21 optimizedBody470_55

def optimizedBody470_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_6 optimizedBody470_56

def optimizedBody470_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_5 optimizedBody470_57

def optimizedBody470_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_4 optimizedBody470_58

def optimizedBody470_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_3 optimizedBody470_59

def optimizedBody470_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_2 optimizedBody470_60

def optimizedBody470_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_1 optimizedBody470_61

def optimizedBody470_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody470_0 optimizedBody470_62

def oracle470 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            2 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 5 Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)) 3
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1))))))
      Flapjack.Spt.ln))
def optimized470 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(470, 2, optimizedBody470_63)
theorem optimize470_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source470, oracle470) = optimized470 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize470_eq
end InitECandidate.Proofs.WordStages
