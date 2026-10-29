import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody610_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody610_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody610_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody610_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody610_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_2 optimizedBody610_3

def optimizedBody610_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_1, 610, 2)) (some 609) ([2]) (some (2, optimizedBody610_4, 610, 3))

def optimizedBody610_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody610_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody610_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody610_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody610_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody610_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody610_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody610_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 192#64))

def optimizedBody610_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 2)]

def optimizedBody610_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 192#64))

def optimizedBody610_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody610_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody610_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody610_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody610_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody610_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody610_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 6)]

def optimizedBody610_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 192#64))

def optimizedBody610_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody610_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 8)]

def optimizedBody610_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_25

def optimizedBody610_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_19

def optimizedBody610_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody610_26 optimizedBody610_27

def optimizedBody610_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2)]

def optimizedBody610_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody610_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2), (4, 4)]

def optimizedBody610_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody610_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody610_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody610_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody610_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody610_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody610_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody610_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody610_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 192#64))

def optimizedBody610_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody610_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody610_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody610_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody610_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody610_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody610_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody610_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody610_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 10), (48, 4), (6, 6), (46, 0), (50, 2), (8, 8)]

def optimizedBody610_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody610_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody610_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody610_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody610_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody610_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody610_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody610_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody610_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody610_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 10), (48, 48), (50, 6), (52, 46), (54, 50), (56, 8)]

def optimizedBody610_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (14, 54), (8, 56)]

def optimizedBody610_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (0, 50), (12, 52), (14, 54), (8, 56)]

def optimizedBody610_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_61 optimizedBody610_3

def optimizedBody610_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_60, 610, 4)) (some 545) ([2, 4]) (some (2, optimizedBody610_62, 610, 5))

def optimizedBody610_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody610_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (10, 10), (48, 4), (6, 6), (46, 12), (50, 14), (8, 8)]

def optimizedBody610_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody610_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_65 optimizedBody610_66

def optimizedBody610_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_64 optimizedBody610_67

def optimizedBody610_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_12 optimizedBody610_68

def optimizedBody610_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_69

def optimizedBody610_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_63 optimizedBody610_70

def optimizedBody610_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_59 optimizedBody610_71

def optimizedBody610_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_58 optimizedBody610_72

def optimizedBody610_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_57 optimizedBody610_73

def optimizedBody610_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_56 optimizedBody610_74

def optimizedBody610_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_55 optimizedBody610_75

def optimizedBody610_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_54 optimizedBody610_76

def optimizedBody610_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_53 optimizedBody610_77

def optimizedBody610_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_52 optimizedBody610_78

def optimizedBody610_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_51 optimizedBody610_79

def optimizedBody610_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_50 optimizedBody610_80

def optimizedBody610_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_81

def optimizedBody610_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody610_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_83

def optimizedBody610_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.WordRegImm.reg 8) optimizedBody610_82 optimizedBody610_84

def optimizedBody610_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (10, 10), (48, 2), (6, 6), (46, 4), (50, 12), (8, 8)]

def optimizedBody610_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_86

def optimizedBody610_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_85 optimizedBody610_87

def optimizedBody610_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_17 optimizedBody610_88

def optimizedBody610_90 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody610_89 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody610_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 0

def optimizedBody610_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody610_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody610_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody610_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody610_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody610_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody610_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody610_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody610_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody610_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 136#64))

def optimizedBody610_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody610_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody610_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody610_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody610_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_105 optimizedBody610_3

def optimizedBody610_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody610_104, 610, 6)) (some 432) ([2, 4]) (some (2, optimizedBody610_106, 610, 7))

def optimizedBody610_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody610_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody610_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_45 optimizedBody610_109

def optimizedBody610_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_108 optimizedBody610_110

def optimizedBody610_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_111

def optimizedBody610_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_107 optimizedBody610_112

def optimizedBody610_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_103 optimizedBody610_113

def optimizedBody610_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_102 optimizedBody610_114

def optimizedBody610_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_12 optimizedBody610_115

def optimizedBody610_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_101 optimizedBody610_116

def optimizedBody610_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_38 optimizedBody610_117

def optimizedBody610_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_34 optimizedBody610_118

def optimizedBody610_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_100 optimizedBody610_119

def optimizedBody610_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_99 optimizedBody610_120

def optimizedBody610_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_98 optimizedBody610_121

def optimizedBody610_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_97 optimizedBody610_122

def optimizedBody610_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_96 optimizedBody610_123

def optimizedBody610_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_95 optimizedBody610_124

def optimizedBody610_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_94 optimizedBody610_125

def optimizedBody610_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_93 optimizedBody610_126

def optimizedBody610_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_92 optimizedBody610_127

def optimizedBody610_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_91 optimizedBody610_128

def optimizedBody610_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_51 optimizedBody610_129

def optimizedBody610_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_50 optimizedBody610_130

def optimizedBody610_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_131

def optimizedBody610_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_90 optimizedBody610_132

def optimizedBody610_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_49 optimizedBody610_133

def optimizedBody610_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_134

def optimizedBody610_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_48 optimizedBody610_135

def optimizedBody610_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_47 optimizedBody610_136

def optimizedBody610_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_45 optimizedBody610_137

def optimizedBody610_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_46 optimizedBody610_138

def optimizedBody610_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_45 optimizedBody610_139

def optimizedBody610_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_44 optimizedBody610_140

def optimizedBody610_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_12 optimizedBody610_141

def optimizedBody610_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_43 optimizedBody610_142

def optimizedBody610_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_42 optimizedBody610_143

def optimizedBody610_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_41 optimizedBody610_144

def optimizedBody610_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_24 optimizedBody610_145

def optimizedBody610_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_40 optimizedBody610_146

def optimizedBody610_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_34 optimizedBody610_147

def optimizedBody610_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_39 optimizedBody610_148

def optimizedBody610_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_38 optimizedBody610_149

def optimizedBody610_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_34 optimizedBody610_150

def optimizedBody610_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_18 optimizedBody610_151

def optimizedBody610_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_17 optimizedBody610_152

def optimizedBody610_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_37 optimizedBody610_153

def optimizedBody610_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_24 optimizedBody610_154

def optimizedBody610_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_36 optimizedBody610_155

def optimizedBody610_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_29 optimizedBody610_156

def optimizedBody610_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_35 optimizedBody610_157

def optimizedBody610_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_10 optimizedBody610_158

def optimizedBody610_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_34 optimizedBody610_159

def optimizedBody610_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_18 optimizedBody610_160

def optimizedBody610_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_17 optimizedBody610_161

def optimizedBody610_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_33 optimizedBody610_162

def optimizedBody610_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_32 optimizedBody610_163

def optimizedBody610_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_31 optimizedBody610_164

def optimizedBody610_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_30 optimizedBody610_165

def optimizedBody610_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_29 optimizedBody610_166

def optimizedBody610_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_167

def optimizedBody610_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_28 optimizedBody610_168

def optimizedBody610_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_24 optimizedBody610_169

def optimizedBody610_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_23 optimizedBody610_170

def optimizedBody610_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_22 optimizedBody610_171

def optimizedBody610_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_21 optimizedBody610_172

def optimizedBody610_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_20 optimizedBody610_173

def optimizedBody610_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_19 optimizedBody610_174

def optimizedBody610_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_18 optimizedBody610_175

def optimizedBody610_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_17 optimizedBody610_176

def optimizedBody610_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_16 optimizedBody610_177

def optimizedBody610_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_15 optimizedBody610_178

def optimizedBody610_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_14 optimizedBody610_179

def optimizedBody610_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_13 optimizedBody610_180

def optimizedBody610_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_12 optimizedBody610_181

def optimizedBody610_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_11 optimizedBody610_182

def optimizedBody610_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_10 optimizedBody610_183

def optimizedBody610_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_9 optimizedBody610_184

def optimizedBody610_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_8 optimizedBody610_185

def optimizedBody610_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_7 optimizedBody610_186

def optimizedBody610_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_6 optimizedBody610_187

def optimizedBody610_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_5 optimizedBody610_188

def optimizedBody610_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody610_0 optimizedBody610_189

def optimized610 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(610, 2, optimizedBody610_190)
end InitECandidate.Proofs.StackAnalysis
