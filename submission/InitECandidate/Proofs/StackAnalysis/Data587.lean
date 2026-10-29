import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody587_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0)]

def optimizedBody587_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (46, 46)]

def optimizedBody587_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46)]

def optimizedBody587_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody587_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_2 optimizedBody587_3

def optimizedBody587_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody587_1, 587, 2)) (some 475) ([]) (some (2, optimizedBody587_4, 587, 3))

def optimizedBody587_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody587_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 8), (48, 4), (50, 0), (52, 6)]

def optimizedBody587_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (14, 6), (12, 4), (16, 8), (46, 46), (8, 44), (4, 48), (0, 50), (6, 52)]

def optimizedBody587_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (8, 44), (4, 48), (0, 50), (6, 52)]

def optimizedBody587_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_9 optimizedBody587_3

def optimizedBody587_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody587_8, 587, 4)) (some 475) ([]) (some (2, optimizedBody587_10, 587, 5))

def optimizedBody587_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (46, 46), (48, 10), (50, 8), (52, 14),
    (54, 4), (56, 12), (58, 0), (60, 6), (62, 16)]

def optimizedBody587_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody587_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody587_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_14 optimizedBody587_3

def optimizedBody587_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody587_13, 587, 6)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody587_15, 587, 7))

def optimizedBody587_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (44, 4), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody587_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (0, 44), (44, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody587_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (0, 44), (44, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody587_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_19 optimizedBody587_3

def optimizedBody587_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody587_18, 587, 8)) (some 470) ([2]) (some (2, optimizedBody587_20, 587, 9))

def optimizedBody587_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody587_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (44, 48), (6, 50), (48, 52), (4, 54), (50, 56), (52, 58), (8, 60)]

def optimizedBody587_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (0, 44), (44, 48), (6, 50), (48, 52), (4, 54), (50, 56), (52, 58), (8, 60)]

def optimizedBody587_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_24 optimizedBody587_3

def optimizedBody587_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody587_23, 587, 10)) (some 482) ([2]) (some (2, optimizedBody587_25, 587, 11))

def optimizedBody587_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (46, 46), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody587_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (46, 46), (8, 44), (4, 48), (0, 50), (6, 52)]

def optimizedBody587_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody587_28, 587, 12)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody587_10, 587, 13))

def optimizedBody587_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (46, 46), (44, 10)]

def optimizedBody587_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody587_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody587_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_32 optimizedBody587_3

def optimizedBody587_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody587_31, 587, 14)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody587_33, 587, 15))

def optimizedBody587_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody587_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody587_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody587_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody587_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody587_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (2, 2), (4, 4)]

def optimizedBody587_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody587_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody587_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody587_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody587_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody587_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody587_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody587_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody587_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody587_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody587_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody587_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody587_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody587_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_45 optimizedBody587_3

def optimizedBody587_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_53 optimizedBody587_54

def optimizedBody587_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_52 optimizedBody587_55

def optimizedBody587_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_51 optimizedBody587_56

def optimizedBody587_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_50 optimizedBody587_57

def optimizedBody587_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_49 optimizedBody587_58

def optimizedBody587_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_48 optimizedBody587_59

def optimizedBody587_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_47 optimizedBody587_60

def optimizedBody587_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_46 optimizedBody587_61

def optimizedBody587_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_45 optimizedBody587_62

def optimizedBody587_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_44 optimizedBody587_63

def optimizedBody587_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_43 optimizedBody587_64

def optimizedBody587_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_42 optimizedBody587_65

def optimizedBody587_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_41 optimizedBody587_66

def optimizedBody587_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_40 optimizedBody587_67

def optimizedBody587_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_39 optimizedBody587_68

def optimizedBody587_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_38 optimizedBody587_69

def optimizedBody587_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_37 optimizedBody587_70

def optimizedBody587_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_36 optimizedBody587_71

def optimizedBody587_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_35 optimizedBody587_72

def optimizedBody587_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_6 optimizedBody587_73

def optimizedBody587_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_34 optimizedBody587_74

def optimizedBody587_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_30 optimizedBody587_75

def optimizedBody587_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_6 optimizedBody587_76

def optimizedBody587_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_29 optimizedBody587_77

def optimizedBody587_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_27 optimizedBody587_78

def optimizedBody587_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_6 optimizedBody587_79

def optimizedBody587_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_26 optimizedBody587_80

def optimizedBody587_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_22 optimizedBody587_81

def optimizedBody587_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_6 optimizedBody587_82

def optimizedBody587_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_21 optimizedBody587_83

def optimizedBody587_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_17 optimizedBody587_84

def optimizedBody587_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_6 optimizedBody587_85

def optimizedBody587_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_16 optimizedBody587_86

def optimizedBody587_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_12 optimizedBody587_87

def optimizedBody587_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_6 optimizedBody587_88

def optimizedBody587_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_11 optimizedBody587_89

def optimizedBody587_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_7 optimizedBody587_90

def optimizedBody587_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_6 optimizedBody587_91

def optimizedBody587_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_5 optimizedBody587_92

def optimizedBody587_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody587_0 optimizedBody587_93

def optimized587 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(587, 1, optimizedBody587_94)
end InitECandidate.Proofs.StackAnalysis
