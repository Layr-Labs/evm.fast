import InitECandidate.Proofs.WordStages.Optimize459
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source475
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody475_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody475_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody475_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody475_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody475_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody475_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody475_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody475_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody475_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody475_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody475_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody475_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody475_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody475_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody475_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody475_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_13 optimizedBody475_14

def optimizedBody475_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_12 optimizedBody475_15

def optimizedBody475_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_11 optimizedBody475_16

def optimizedBody475_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_10 optimizedBody475_17

def optimizedBody475_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_9 optimizedBody475_18

def optimizedBody475_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_8 optimizedBody475_19

def optimizedBody475_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody475_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody475_20 optimizedBody475_21

def optimizedBody475_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody475_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (2, 2)]

def optimizedBody475_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody475_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody475_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody475_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody475_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody475_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody475_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody475_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody475_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody475_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody475_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody475_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody475_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody475_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody475_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody475_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody475_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody475_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_40 optimizedBody475_41

def optimizedBody475_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_39 optimizedBody475_42

def optimizedBody475_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_37 optimizedBody475_43

def optimizedBody475_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_38 optimizedBody475_44

def optimizedBody475_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_37 optimizedBody475_45

def optimizedBody475_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_36 optimizedBody475_46

def optimizedBody475_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_35 optimizedBody475_47

def optimizedBody475_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_34 optimizedBody475_48

def optimizedBody475_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_33 optimizedBody475_49

def optimizedBody475_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_32 optimizedBody475_50

def optimizedBody475_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_31 optimizedBody475_51

def optimizedBody475_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_30 optimizedBody475_52

def optimizedBody475_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_29 optimizedBody475_53

def optimizedBody475_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_28 optimizedBody475_54

def optimizedBody475_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_10 optimizedBody475_55

def optimizedBody475_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_27 optimizedBody475_56

def optimizedBody475_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_26 optimizedBody475_57

def optimizedBody475_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_25 optimizedBody475_58

def optimizedBody475_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_24 optimizedBody475_59

def optimizedBody475_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_23 optimizedBody475_60

def optimizedBody475_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_6 optimizedBody475_61

def optimizedBody475_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_8 optimizedBody475_62

def optimizedBody475_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_8 optimizedBody475_63

def optimizedBody475_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_22 optimizedBody475_64

def optimizedBody475_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_7 optimizedBody475_65

def optimizedBody475_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_6 optimizedBody475_66

def optimizedBody475_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_5 optimizedBody475_67

def optimizedBody475_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_4 optimizedBody475_68

def optimizedBody475_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_3 optimizedBody475_69

def optimizedBody475_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_2 optimizedBody475_70

def optimizedBody475_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_1 optimizedBody475_71

def optimizedBody475_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody475_0 optimizedBody475_72

def oracle475 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
            2
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 3))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            1
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
      Flapjack.Spt.ln))
def optimized475 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(475, 1, optimizedBody475_73)
theorem optimize475_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source475, oracle475) = optimized475 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize475_eq
end InitECandidate.Proofs.WordStages
