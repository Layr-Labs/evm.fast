import InitECandidate.Proofs.WordStages.Optimize850
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source866
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody866_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (8, 2), (4, 4)]

def optimizedBody866_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody866_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 8), (50, 6)]

def optimizedBody866_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (8, 48), (6, 50)]

def optimizedBody866_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (6, 50)]

def optimizedBody866_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody866_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_4 optimizedBody866_5

def optimizedBody866_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody866_3, 866, 2)) (some 68) ([2]) (some (2, optimizedBody866_6, 866, 3))

def optimizedBody866_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody866_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody866_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody866_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody866_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody866_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 6)]

def optimizedBody866_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 44), (4, 46), (10, 48)]

def optimizedBody866_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (4, 46), (10, 48)]

def optimizedBody866_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_15 optimizedBody866_5

def optimizedBody866_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody866_14, 866, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody866_16, 866, 5))

def optimizedBody866_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody866_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody866_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody866_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551200#64))

def optimizedBody866_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody866_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody866_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody866_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0)]

def optimizedBody866_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 56#64))

def optimizedBody866_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody866_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody866_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody866_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (8, 8)]

def optimizedBody866_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551200#64))

def optimizedBody866_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 56#64))

def optimizedBody866_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody866_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody866_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody866_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody866_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody866_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody866_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody866_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551200#64))

def optimizedBody866_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody866_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody866_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody866_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody866_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody866_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody866_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody866_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_46 optimizedBody866_47

def optimizedBody866_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_45 optimizedBody866_48

def optimizedBody866_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_44 optimizedBody866_49

def optimizedBody866_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_43 optimizedBody866_50

def optimizedBody866_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_42 optimizedBody866_51

def optimizedBody866_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_23 optimizedBody866_52

def optimizedBody866_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_41 optimizedBody866_53

def optimizedBody866_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_40 optimizedBody866_54

def optimizedBody866_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_39 optimizedBody866_55

def optimizedBody866_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_38 optimizedBody866_56

def optimizedBody866_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_37 optimizedBody866_57

def optimizedBody866_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_36 optimizedBody866_58

def optimizedBody866_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_35 optimizedBody866_59

def optimizedBody866_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_34 optimizedBody866_60

def optimizedBody866_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_33 optimizedBody866_61

def optimizedBody866_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_32 optimizedBody866_62

def optimizedBody866_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_31 optimizedBody866_63

def optimizedBody866_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_30 optimizedBody866_64

def optimizedBody866_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_29 optimizedBody866_65

def optimizedBody866_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_28 optimizedBody866_66

def optimizedBody866_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_27 optimizedBody866_67

def optimizedBody866_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_26 optimizedBody866_68

def optimizedBody866_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_25 optimizedBody866_69

def optimizedBody866_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_24 optimizedBody866_70

def optimizedBody866_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_23 optimizedBody866_71

def optimizedBody866_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_22 optimizedBody866_72

def optimizedBody866_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_21 optimizedBody866_73

def optimizedBody866_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_20 optimizedBody866_74

def optimizedBody866_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_19 optimizedBody866_75

def optimizedBody866_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_18 optimizedBody866_76

def optimizedBody866_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_8 optimizedBody866_77

def optimizedBody866_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_17 optimizedBody866_78

def optimizedBody866_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_13 optimizedBody866_79

def optimizedBody866_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_12 optimizedBody866_80

def optimizedBody866_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_11 optimizedBody866_81

def optimizedBody866_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_10 optimizedBody866_82

def optimizedBody866_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_9 optimizedBody866_83

def optimizedBody866_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_8 optimizedBody866_84

def optimizedBody866_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_7 optimizedBody866_85

def optimizedBody866_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_2 optimizedBody866_86

def optimizedBody866_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_1 optimizedBody866_87

def optimizedBody866_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody866_0 optimizedBody866_88

def oracle866 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
            2
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
              Flapjack.Spt.ln)
            4
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))))
def optimized866 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(866, 4, optimizedBody866_89)
theorem optimize866_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source866, oracle866) = optimized866 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize866_eq
end InitECandidate.Proofs.WordStages
