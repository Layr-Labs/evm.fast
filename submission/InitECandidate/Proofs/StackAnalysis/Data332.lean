import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody332_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0), (44, 4), (52, 2), (46, 6)]

def optimizedBody332_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (48, 48), (44, 44), (52, 52), (46, 46)]

def optimizedBody332_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (44, 44), (52, 52), (46, 46)]

def optimizedBody332_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody332_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_2 optimizedBody332_3

def optimizedBody332_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody332_1, 332, 2)) (some 69) ([]) (some (2, optimizedBody332_4, 332, 3))

def optimizedBody332_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody332_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody332_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody332_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 48), (44, 44), (52, 52), (50, 0), (46, 46)]

def optimizedBody332_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (48, 48), (0, 44), (52, 52), (50, 50), (46, 46)]

def optimizedBody332_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (0, 44), (52, 52), (50, 50), (46, 46)]

def optimizedBody332_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_11 optimizedBody332_3

def optimizedBody332_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody332_10, 332, 4)) (some 308) ([2, 4]) (some (2, optimizedBody332_12, 332, 5))

def optimizedBody332_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (4, 4), (0, 0), (44, 6), (52, 52), (50, 50), (46, 46)]

def optimizedBody332_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody332_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody332_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody332_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody332_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551456#64))

def optimizedBody332_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (48, 48), (44, 4), (46, 0), (50, 44), (52, 52), (54, 50), (56, 46)]

def optimizedBody332_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (48, 48), (12, 44), (46, 46), (0, 50), (10, 52), (54, 54), (56, 56)]

def optimizedBody332_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (12, 44), (46, 46), (0, 50), (10, 52), (54, 54), (56, 56)]

def optimizedBody332_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_22 optimizedBody332_3

def optimizedBody332_24 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody332_21, 332, 6)) (some 177) ([2, 4]) (some (2, optimizedBody332_23, 332, 7))

def optimizedBody332_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody332_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody332_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody332_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody332_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551456#64))

def optimizedBody332_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (6, 6)]

def optimizedBody332_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 12 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody332_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody332_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody332_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody332_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 10), (44, 12)]

def optimizedBody332_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody332_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (48, 48), (44, 44), (46, 46), (50, 2), (52, 52), (54, 54), (56, 56)]

def optimizedBody332_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48), (4, 44), (0, 46), (6, 50), (8, 52), (50, 54), (10, 56)]

def optimizedBody332_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48), (4, 44), (0, 46), (6, 50), (8, 52), (50, 54), (10, 56)]

def optimizedBody332_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_39 optimizedBody332_3

def optimizedBody332_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody332_38, 332, 8)) (some 320) ([2, 4, 6, 8, 10]) (some (2, optimizedBody332_40, 332, 9))

def optimizedBody332_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody332_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody332_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 48), (4, 4), (0, 0), (44, 6), (52, 8), (50, 50), (46, 10)]

def optimizedBody332_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody332_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_44 optimizedBody332_45

def optimizedBody332_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_43 optimizedBody332_46

def optimizedBody332_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_42 optimizedBody332_47

def optimizedBody332_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_48

def optimizedBody332_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_41 optimizedBody332_49

def optimizedBody332_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_37 optimizedBody332_50

def optimizedBody332_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_36 optimizedBody332_51

def optimizedBody332_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_35 optimizedBody332_52

def optimizedBody332_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_34 optimizedBody332_53

def optimizedBody332_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_33 optimizedBody332_54

def optimizedBody332_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_32 optimizedBody332_55

def optimizedBody332_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_31 optimizedBody332_56

def optimizedBody332_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_30 optimizedBody332_57

def optimizedBody332_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_29 optimizedBody332_58

def optimizedBody332_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_28 optimizedBody332_59

def optimizedBody332_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_27 optimizedBody332_60

def optimizedBody332_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_26 optimizedBody332_61

def optimizedBody332_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_25 optimizedBody332_62

def optimizedBody332_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_63

def optimizedBody332_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_24 optimizedBody332_64

def optimizedBody332_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_20 optimizedBody332_65

def optimizedBody332_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_19 optimizedBody332_66

def optimizedBody332_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_18 optimizedBody332_67

def optimizedBody332_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_17 optimizedBody332_68

def optimizedBody332_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_16 optimizedBody332_69

def optimizedBody332_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_70

def optimizedBody332_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody332_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_72

def optimizedBody332_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody332_71 optimizedBody332_73

def optimizedBody332_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 2), (4, 4), (0, 0), (44, 6), (52, 8), (50, 10), (46, 12)]

def optimizedBody332_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_75

def optimizedBody332_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_74 optimizedBody332_76

def optimizedBody332_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_15 optimizedBody332_77

def optimizedBody332_79 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody332_78 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody332_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 46), (44, 48), (46, 50)]

def optimizedBody332_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody332_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody332_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_82 optimizedBody332_3

def optimizedBody332_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody332_81, 332, 10)) (some 331) ([2, 4]) (some (2, optimizedBody332_83, 332, 11))

def optimizedBody332_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody332_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody332_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody332_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_87 optimizedBody332_3

def optimizedBody332_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody332_86, 332, 12)) (some 70) ([2]) (some (2, optimizedBody332_88, 332, 13))

def optimizedBody332_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody332_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody332_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_90 optimizedBody332_91

def optimizedBody332_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_8 optimizedBody332_92

def optimizedBody332_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_93

def optimizedBody332_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_89 optimizedBody332_94

def optimizedBody332_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_85 optimizedBody332_95

def optimizedBody332_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_96

def optimizedBody332_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_84 optimizedBody332_97

def optimizedBody332_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_80 optimizedBody332_98

def optimizedBody332_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_99

def optimizedBody332_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_79 optimizedBody332_100

def optimizedBody332_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_14 optimizedBody332_101

def optimizedBody332_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_102

def optimizedBody332_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_7 optimizedBody332_103

def optimizedBody332_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_104

def optimizedBody332_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_13 optimizedBody332_105

def optimizedBody332_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_9 optimizedBody332_106

def optimizedBody332_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_8 optimizedBody332_107

def optimizedBody332_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_7 optimizedBody332_108

def optimizedBody332_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_6 optimizedBody332_109

def optimizedBody332_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_5 optimizedBody332_110

def optimizedBody332_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody332_0 optimizedBody332_111

def optimized332 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(332, 4, optimizedBody332_112)
end InitECandidate.Proofs.StackAnalysis
