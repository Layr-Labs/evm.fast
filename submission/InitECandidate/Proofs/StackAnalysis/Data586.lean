import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody586_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody586_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (0, 2), (6, 6), (44, 44)]

def optimizedBody586_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody586_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody586_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_2 optimizedBody586_3

def optimizedBody586_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_1, 586, 2)) (some 475) ([]) (some (2, optimizedBody586_4, 586, 3))

def optimizedBody586_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody586_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 8), (48, 4), (50, 0), (52, 6)]

def optimizedBody586_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (14, 6), (12, 4), (16, 8), (44, 44), (8, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody586_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody586_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_9 optimizedBody586_3

def optimizedBody586_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_8, 586, 4)) (some 475) ([]) (some (2, optimizedBody586_10, 586, 5))

def optimizedBody586_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (48, 10), (50, 8), (52, 14),
    (54, 4), (56, 12), (58, 0), (60, 6), (62, 16)]

def optimizedBody586_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (0, 2), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody586_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody586_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_14 optimizedBody586_3

def optimizedBody586_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_13, 586, 6)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody586_15, 586, 7))

def optimizedBody586_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 4), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody586_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody586_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54), (54, 56), (56, 58), (58, 60), (60, 62)]

def optimizedBody586_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_19 optimizedBody586_3

def optimizedBody586_21 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody586_18, 586, 8)) (some 470) ([2]) (some (2, optimizedBody586_20, 586, 9))

def optimizedBody586_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody586_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (6, 50), (48, 52), (4, 54), (50, 56), (52, 58), (8, 60)]

def optimizedBody586_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (46, 48), (6, 50), (48, 52), (4, 54), (50, 56), (52, 58), (8, 60)]

def optimizedBody586_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_24 optimizedBody586_3

def optimizedBody586_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody586_23, 586, 10)) (some 482) ([2]) (some (2, optimizedBody586_25, 586, 11))

def optimizedBody586_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody586_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody586_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_28, 586, 12)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody586_10, 586, 13))

def optimizedBody586_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 10)]

def optimizedBody586_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (4, 46)]

def optimizedBody586_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (4, 46)]

def optimizedBody586_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_32 optimizedBody586_3

def optimizedBody586_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody586_31, 586, 14)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody586_33, 586, 15))

def optimizedBody586_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody586_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody586_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody586_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody586_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody586_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (8, 8)]

def optimizedBody586_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody586_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody586_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody586_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody586_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody586_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody586_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody586_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody586_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody586_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody586_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody586_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody586_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody586_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody586_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody586_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_54 optimizedBody586_55

def optimizedBody586_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_51 optimizedBody586_56

def optimizedBody586_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_53 optimizedBody586_57

def optimizedBody586_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_52 optimizedBody586_58

def optimizedBody586_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_51 optimizedBody586_59

def optimizedBody586_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_50 optimizedBody586_60

def optimizedBody586_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_49 optimizedBody586_61

def optimizedBody586_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_45 optimizedBody586_62

def optimizedBody586_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_48 optimizedBody586_63

def optimizedBody586_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_47 optimizedBody586_64

def optimizedBody586_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_46 optimizedBody586_65

def optimizedBody586_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_38 optimizedBody586_66

def optimizedBody586_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_45 optimizedBody586_67

def optimizedBody586_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_44 optimizedBody586_68

def optimizedBody586_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_43 optimizedBody586_69

def optimizedBody586_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_42 optimizedBody586_70

def optimizedBody586_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_41 optimizedBody586_71

def optimizedBody586_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_40 optimizedBody586_72

def optimizedBody586_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_39 optimizedBody586_73

def optimizedBody586_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_38 optimizedBody586_74

def optimizedBody586_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_37 optimizedBody586_75

def optimizedBody586_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_36 optimizedBody586_76

def optimizedBody586_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_35 optimizedBody586_77

def optimizedBody586_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_78

def optimizedBody586_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_34 optimizedBody586_79

def optimizedBody586_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_30 optimizedBody586_80

def optimizedBody586_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_81

def optimizedBody586_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_29 optimizedBody586_82

def optimizedBody586_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_27 optimizedBody586_83

def optimizedBody586_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_84

def optimizedBody586_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_26 optimizedBody586_85

def optimizedBody586_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_22 optimizedBody586_86

def optimizedBody586_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_87

def optimizedBody586_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_21 optimizedBody586_88

def optimizedBody586_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_17 optimizedBody586_89

def optimizedBody586_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_90

def optimizedBody586_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_16 optimizedBody586_91

def optimizedBody586_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_12 optimizedBody586_92

def optimizedBody586_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_93

def optimizedBody586_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_11 optimizedBody586_94

def optimizedBody586_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_7 optimizedBody586_95

def optimizedBody586_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_6 optimizedBody586_96

def optimizedBody586_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_5 optimizedBody586_97

def optimizedBody586_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody586_0 optimizedBody586_98

def optimized586 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(586, 1, optimizedBody586_99)
end InitECandidate.Proofs.StackAnalysis
