import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody454_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody454_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody454_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody454_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody454_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 18446744073709551392#64))

def optimizedBody454_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody454_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody454_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody454_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody454_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody454_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody454_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody454_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (48, 2), (4, 4), (46, 8), (6, 6)]

def optimizedBody454_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody454_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (4, 4), (44, 44), (48, 48), (46, 4), (62, 46), (66, 6)]

def optimizedBody454_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (44, 44), (48, 48), (46, 46), (62, 62), (66, 66)]

def optimizedBody454_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (62, 62), (66, 66)]

def optimizedBody454_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody454_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_16 optimizedBody454_17

def optimizedBody454_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_15, 454, 2)) (some 197) ([2, 4]) (some (2, optimizedBody454_18, 454, 3))

def optimizedBody454_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody454_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody454_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (48, 48), (46, 46), (52, 4), (62, 62), (66, 66), (50, 6)]

def optimizedBody454_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (48, 48), (46, 46), (52, 52), (62, 62), (66, 66), (0, 50)]

def optimizedBody454_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (52, 52), (62, 62), (66, 66), (0, 50)]

def optimizedBody454_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_24 optimizedBody454_17

def optimizedBody454_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_23, 454, 4)) (some 449) ([2]) (some (2, optimizedBody454_25, 454, 5))

def optimizedBody454_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody454_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 16#64))

def optimizedBody454_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody454_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody454_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody454_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 10 8#64))

def optimizedBody454_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 10 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody454_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody454_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody454_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody454_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody454_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody454_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 24 Flapjack.WordStore.heapLength

def optimizedBody454_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 24 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody454_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24 24

def optimizedBody454_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 24 18446744073709551480#64))

def optimizedBody454_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 1#64)

def optimizedBody454_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody454_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody454_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody454_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody454_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody454_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody454_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (14, 14), (58, 22), (12, 12), (16, 16), (70, 0)]

def optimizedBody454_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_49 optimizedBody454_50

def optimizedBody454_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_51

def optimizedBody454_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_48 optimizedBody454_52

def optimizedBody454_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_53

def optimizedBody454_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_47 optimizedBody454_54

def optimizedBody454_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_55

def optimizedBody454_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_46 optimizedBody454_56

def optimizedBody454_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_57

def optimizedBody454_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_45 optimizedBody454_58

def optimizedBody454_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_59

def optimizedBody454_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_44 optimizedBody454_60

def optimizedBody454_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_61

def optimizedBody454_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_62

def optimizedBody454_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (14, 14), (58, 22), (12, 12), (16, 16), (70, 24)]

def optimizedBody454_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_64

def optimizedBody454_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 26) optimizedBody454_63 optimizedBody454_65

def optimizedBody454_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (48, 48), (46, 46), (50, 18),
    (52, 52), (54, 10), (56, 14), (58, 58), (60, 20), (62, 62), (64, 12), (66, 66), (68, 16), (70, 70)]

def optimizedBody454_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (6, 54), (10, 56), (54, 58), (56, 60), (4, 62), (8, 64),
    (60, 66), (12, 68), (62, 70)]

def optimizedBody454_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (6, 54), (10, 56), (54, 58), (56, 60), (4, 62), (8, 64),
    (60, 66), (12, 68), (62, 70)]

def optimizedBody454_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_69 optimizedBody454_17

def optimizedBody454_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_68, 454, 6)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody454_70, 454, 7))

def optimizedBody454_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody454_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (48, 48), (46, 46), (50, 50), (52, 0), (54, 54),
    (56, 56), (58, 4), (60, 60), (62, 62)]

def optimizedBody454_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (48, 48), (46, 46), (8, 50), (0, 52), (6, 54), (52, 56), (4, 58), (56, 60), (58, 62)]

def optimizedBody454_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (46, 46), (8, 50), (0, 52), (6, 54), (52, 56), (4, 58), (56, 60), (58, 62)]

def optimizedBody454_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_75 optimizedBody454_17

def optimizedBody454_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody454_74, 454, 8)) (some 443) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody454_76, 454, 9))

def optimizedBody454_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (48, 48), (46, 46), (8, 8), (0, 0), (6, 6), (52, 52), (4, 4), (56, 56), (58, 58)]

def optimizedBody454_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_78

def optimizedBody454_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_77 optimizedBody454_79

def optimizedBody454_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_73 optimizedBody454_80

def optimizedBody454_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_81

def optimizedBody454_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 4), (2, 0)]

def optimizedBody454_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 40#64)

def optimizedBody454_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody454_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 50), (52, 2), (54, 54), (56, 56), (58, 8),
    (60, 60), (62, 62)]

def optimizedBody454_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody454_74, 454, 10)) (some 452) ([2, 4, 6, 8]) (some (2, optimizedBody454_76, 454, 11))

def optimizedBody454_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_87 optimizedBody454_79

def optimizedBody454_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_86 optimizedBody454_88

def optimizedBody454_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_85 optimizedBody454_89

def optimizedBody454_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_84 optimizedBody454_90

def optimizedBody454_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_83 optimizedBody454_91

def optimizedBody454_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_92

def optimizedBody454_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 2) optimizedBody454_82 optimizedBody454_93

def optimizedBody454_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody454_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (48, 48), (46, 46), (50, 0), (52, 52), (54, 4), (56, 56), (58, 58)]

def optimizedBody454_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (52, 54), (54, 56), (4, 58)]

def optimizedBody454_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (50, 50), (0, 52), (52, 54), (54, 56), (4, 58)]

def optimizedBody454_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_98 optimizedBody454_17

def optimizedBody454_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_97, 454, 12)) (some 444) ([2, 4, 6]) (some (2, optimizedBody454_99, 454, 13))

def optimizedBody454_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (46, 46), (50, 50), (0, 0), (52, 52), (54, 54), (4, 4)]

def optimizedBody454_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_101

def optimizedBody454_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_100 optimizedBody454_102

def optimizedBody454_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_96 optimizedBody454_103

def optimizedBody454_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_104

def optimizedBody454_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16#64)

def optimizedBody454_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody454_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 2), (52, 52), (54, 8), (56, 56), (58, 58)]

def optimizedBody454_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_97, 454, 14)) (some 452) ([2, 4, 6, 8]) (some (2, optimizedBody454_99, 454, 15))

def optimizedBody454_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_109 optimizedBody454_102

def optimizedBody454_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_108 optimizedBody454_110

def optimizedBody454_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_107 optimizedBody454_111

def optimizedBody454_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_106 optimizedBody454_112

def optimizedBody454_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_83 optimizedBody454_113

def optimizedBody454_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_114

def optimizedBody454_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 6) optimizedBody454_105 optimizedBody454_115

def optimizedBody454_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody454_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody454_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (48, 48), (46, 46), (50, 50), (52, 52), (54, 54), (56, 4)]

def optimizedBody454_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (46, 46), (4, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody454_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (4, 50), (52, 52), (54, 54), (6, 56)]

def optimizedBody454_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_121 optimizedBody454_17

def optimizedBody454_123 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody454_120, 454, 16)) (some 79) ([2, 4, 6]) (some (2, optimizedBody454_122, 454, 17))

def optimizedBody454_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (48, 48), (46, 46), (50, 4), (52, 52), (54, 54)]

def optimizedBody454_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 4), (6, 2), (44, 44), (48, 48), (46, 46), (0, 50), (4, 52), (52, 54)]

def optimizedBody454_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (0, 50), (4, 52), (52, 54)]

def optimizedBody454_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_126 optimizedBody454_17

def optimizedBody454_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_125, 454, 18)) (some 408) ([2, 4]) (some (2, optimizedBody454_127, 454, 19))

def optimizedBody454_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 4), (52, 52)]

def optimizedBody454_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46), (46, 50), (6, 52)]

def optimizedBody454_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (46, 50), (6, 52)]

def optimizedBody454_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_131 optimizedBody454_17

def optimizedBody454_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_130, 454, 20)) (some 445) ([2, 4, 6, 8]) (some (2, optimizedBody454_132, 454, 21))

def optimizedBody454_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 0), (46, 46), (6, 6)]

def optimizedBody454_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_134

def optimizedBody454_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_133 optimizedBody454_135

def optimizedBody454_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_129 optimizedBody454_136

def optimizedBody454_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_137

def optimizedBody454_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_128 optimizedBody454_138

def optimizedBody454_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_124 optimizedBody454_139

def optimizedBody454_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_140

def optimizedBody454_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 52), (2, 4)]

def optimizedBody454_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 24#64)

def optimizedBody454_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody454_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 8), (54, 54)]

def optimizedBody454_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46), (46, 50), (6, 54)]

def optimizedBody454_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (46, 50), (6, 54)]

def optimizedBody454_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_147 optimizedBody454_17

def optimizedBody454_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_146, 454, 22)) (some 452) ([2, 4, 6, 8]) (some (2, optimizedBody454_148, 454, 23))

def optimizedBody454_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_149 optimizedBody454_135

def optimizedBody454_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_145 optimizedBody454_150

def optimizedBody454_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_144 optimizedBody454_151

def optimizedBody454_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_143 optimizedBody454_152

def optimizedBody454_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_142 optimizedBody454_153

def optimizedBody454_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_154

def optimizedBody454_156 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody454_141 optimizedBody454_155

def optimizedBody454_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_156 optimizedBody454_135

def optimizedBody454_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_157

def optimizedBody454_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_158

def optimizedBody454_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_159

def optimizedBody454_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_123 optimizedBody454_160

def optimizedBody454_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_119 optimizedBody454_161

def optimizedBody454_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_118 optimizedBody454_162

def optimizedBody454_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_117 optimizedBody454_163

def optimizedBody454_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_164

def optimizedBody454_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_116 optimizedBody454_165

def optimizedBody454_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_95 optimizedBody454_166

def optimizedBody454_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_167

def optimizedBody454_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_94 optimizedBody454_168

def optimizedBody454_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_169

def optimizedBody454_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_72 optimizedBody454_170

def optimizedBody454_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_171

def optimizedBody454_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_71 optimizedBody454_172

def optimizedBody454_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_67 optimizedBody454_173

def optimizedBody454_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_174

def optimizedBody454_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_66 optimizedBody454_175

def optimizedBody454_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_43 optimizedBody454_176

def optimizedBody454_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_177

def optimizedBody454_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_42 optimizedBody454_178

def optimizedBody454_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_41 optimizedBody454_179

def optimizedBody454_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_40 optimizedBody454_180

def optimizedBody454_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_39 optimizedBody454_181

def optimizedBody454_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_38 optimizedBody454_182

def optimizedBody454_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_37 optimizedBody454_183

def optimizedBody454_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_36 optimizedBody454_184

def optimizedBody454_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_35 optimizedBody454_185

def optimizedBody454_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_34 optimizedBody454_186

def optimizedBody454_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_33 optimizedBody454_187

def optimizedBody454_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_27 optimizedBody454_188

def optimizedBody454_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_32 optimizedBody454_189

def optimizedBody454_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_27 optimizedBody454_190

def optimizedBody454_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_31 optimizedBody454_191

def optimizedBody454_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_27 optimizedBody454_192

def optimizedBody454_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_30 optimizedBody454_193

def optimizedBody454_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_27 optimizedBody454_194

def optimizedBody454_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_29 optimizedBody454_195

def optimizedBody454_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_27 optimizedBody454_196

def optimizedBody454_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_28 optimizedBody454_197

def optimizedBody454_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_27 optimizedBody454_198

def optimizedBody454_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_199

def optimizedBody454_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_26 optimizedBody454_200

def optimizedBody454_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_22 optimizedBody454_201

def optimizedBody454_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_202

def optimizedBody454_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 46), (46, 62), (6, 66)]

def optimizedBody454_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_204

def optimizedBody454_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody454_203 optimizedBody454_205

def optimizedBody454_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody454_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (4, 4), (46, 46), (6, 6)]

def optimizedBody454_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody454_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_208 optimizedBody454_209

def optimizedBody454_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_207 optimizedBody454_210

def optimizedBody454_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_211

def optimizedBody454_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_212

def optimizedBody454_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_206 optimizedBody454_213

def optimizedBody454_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_214

def optimizedBody454_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_215

def optimizedBody454_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_216

def optimizedBody454_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_19 optimizedBody454_217

def optimizedBody454_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_14 optimizedBody454_218

def optimizedBody454_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_219

def optimizedBody454_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody454_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_221

def optimizedBody454_223 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody454_220 optimizedBody454_222

def optimizedBody454_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2), (4, 4), (46, 8), (6, 6)]

def optimizedBody454_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_224

def optimizedBody454_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_223 optimizedBody454_225

def optimizedBody454_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_13 optimizedBody454_226

def optimizedBody454_228 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody454_227 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody454_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody454_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody454_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody454_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody454_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody454_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody454_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (4, 4), (46, 46), (0, 0), (2, 2)]

def optimizedBody454_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody454_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 48), (48, 4), (50, 46), (52, 0), (54, 2)]

def optimizedBody454_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody454_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody454_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_239 optimizedBody454_17

def optimizedBody454_241 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_238, 454, 24)) (some 197) ([2, 4]) (some (2, optimizedBody454_240, 454, 25))

def optimizedBody454_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody454_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody454_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (58, 0), (56, 6), (24, 24), (50, 50), (52, 52), (54, 54), (60, 4), (6, 6), (4, 2)]

def optimizedBody454_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (4, 4)]

def optimizedBody454_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 58), (52, 56), (54, 24), (60, 50), (62, 52), (66, 54), (56, 60),
    (72, 6), (74, 4)]

def optimizedBody454_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (66, 66),
    (10, 56), (72, 72), (74, 74)]

def optimizedBody454_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (60, 60), (62, 62), (66, 66), (10, 56), (72, 72),
    (74, 74)]

def optimizedBody454_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_248 optimizedBody454_17

def optimizedBody454_250 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_247, 454, 26)) (some 197) ([2, 4]) (some (2, optimizedBody454_249, 454, 27))

def optimizedBody454_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 6), (60, 60), (62, 62), (66, 66),
    (70, 10), (72, 72), (74, 74), (76, 4)]

def optimizedBody454_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (6, 6), (4, 4), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (60, 60),
    (62, 62), (66, 66), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody454_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (60, 60), (62, 62), (66, 66), (70, 70),
    (72, 72), (74, 74), (76, 76)]

def optimizedBody454_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_253 optimizedBody454_17

def optimizedBody454_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_252, 454, 28)) (some 450) ([2, 4]) (some (2, optimizedBody454_254, 454, 29))

def optimizedBody454_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody454_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody454_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody454_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody454_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 18), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 10), (58, 14), (60, 60), (62, 62), (64, 12), (66, 66), (68, 16), (70, 70), (72, 72),
    (74, 74), (76, 76)]

def optimizedBody454_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (8, 56), (12, 58), (6, 60), (58, 62), (10, 64),
    (60, 66), (14, 68), (16, 70), (64, 72), (66, 74), (4, 76)]

def optimizedBody454_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (8, 56), (12, 58), (6, 60), (58, 62), (10, 64),
    (60, 66), (14, 68), (16, 70), (64, 72), (66, 74), (4, 76)]

def optimizedBody454_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_262 optimizedBody454_17

def optimizedBody454_264 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_261, 454, 30)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody454_263, 454, 31))

def optimizedBody454_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52),
    (54, 54), (56, 6), (58, 58), (60, 60), (62, 16), (64, 64), (66, 66)]

def optimizedBody454_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(22, 44), (20, 46), (18, 48), (16, 50), (0, 52), (24, 54), (8, 56), (12, 58), (14, 60), (10, 62), (6, 64), (4, 66)]

def optimizedBody454_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (22, 44), (20, 46), (18, 48), (16, 50), (0, 52), (24, 54), (8, 56), (12, 58), (14, 60), (10, 62), (6, 64),
    (4, 66)]

def optimizedBody454_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_267 optimizedBody454_17

def optimizedBody454_269 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_266, 454, 32)) (some 441) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody454_268, 454, 33))

def optimizedBody454_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 22), (20, 20), (18, 18), (16, 16), (0, 0), (24, 24), (8, 8), (12, 12), (14, 14), (10, 10), (6, 6), (4, 4)]

def optimizedBody454_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_270

def optimizedBody454_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_269 optimizedBody454_271

def optimizedBody454_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_265 optimizedBody454_272

def optimizedBody454_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_273

def optimizedBody454_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 6), (58, 58), (60, 60),
    (62, 16), (64, 64), (66, 66)]

def optimizedBody454_276 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody454_266, 454, 34)) (some 453) ([2, 4, 6]) (some (2, optimizedBody454_268, 454, 35))

def optimizedBody454_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_276 optimizedBody454_271

def optimizedBody454_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_275 optimizedBody454_277

def optimizedBody454_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_278

def optimizedBody454_280 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody454_274 optimizedBody454_279

def optimizedBody454_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_280 optimizedBody454_271

def optimizedBody454_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_281

def optimizedBody454_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_282

def optimizedBody454_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_283

def optimizedBody454_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_264 optimizedBody454_284

def optimizedBody454_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_260 optimizedBody454_285

def optimizedBody454_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_259 optimizedBody454_286

def optimizedBody454_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_287

def optimizedBody454_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_258 optimizedBody454_288

def optimizedBody454_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_289

def optimizedBody454_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_257 optimizedBody454_290

def optimizedBody454_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_291

def optimizedBody454_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_256 optimizedBody454_292

def optimizedBody454_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_293

def optimizedBody454_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_294

def optimizedBody454_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_255 optimizedBody454_295

def optimizedBody454_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_251 optimizedBody454_296

def optimizedBody454_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_297

def optimizedBody454_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(22, 44), (20, 46), (18, 48), (16, 50), (0, 52), (24, 54), (8, 60), (12, 62), (14, 66), (10, 10), (6, 72), (4, 74)]

def optimizedBody454_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_299

def optimizedBody454_301 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody454_298 optimizedBody454_300

def optimizedBody454_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody454_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody454_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 22), (46, 20), (48, 18), (58, 16), (56, 0), (24, 24), (50, 8), (52, 12), (54, 14), (60, 10), (6, 6), (4, 4)]

def optimizedBody454_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_304 optimizedBody454_209

def optimizedBody454_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_303 optimizedBody454_305

def optimizedBody454_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_302 optimizedBody454_306

def optimizedBody454_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_307

def optimizedBody454_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_301 optimizedBody454_308

def optimizedBody454_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_309

def optimizedBody454_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_310

def optimizedBody454_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_311

def optimizedBody454_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_250 optimizedBody454_312

def optimizedBody454_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_246 optimizedBody454_313

def optimizedBody454_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_314

def optimizedBody454_316 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 24) optimizedBody454_315 optimizedBody454_222

def optimizedBody454_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (48, 8), (58, 10), (56, 12), (24, 24), (50, 14), (52, 16), (54, 18), (60, 20), (6, 6), (4, 4)]

def optimizedBody454_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_317

def optimizedBody454_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_316 optimizedBody454_318

def optimizedBody454_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_245 optimizedBody454_319

def optimizedBody454_321 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody454_320 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody454_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 44), (8, 46), (4, 48), (10, 50), (0, 52), (2, 54)]

def optimizedBody454_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_322

def optimizedBody454_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_321 optimizedBody454_323

def optimizedBody454_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_244 optimizedBody454_324

def optimizedBody454_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_325

def optimizedBody454_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_326

def optimizedBody454_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_243 optimizedBody454_327

def optimizedBody454_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_242 optimizedBody454_328

def optimizedBody454_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_329

def optimizedBody454_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody454_330 optimizedBody454_323

def optimizedBody454_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 6), (48, 8), (4, 4), (46, 10), (0, 0), (2, 2)]

def optimizedBody454_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_332 optimizedBody454_209

def optimizedBody454_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_303 optimizedBody454_333

def optimizedBody454_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_302 optimizedBody454_334

def optimizedBody454_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_335

def optimizedBody454_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_331 optimizedBody454_336

def optimizedBody454_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_337

def optimizedBody454_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_20 optimizedBody454_338

def optimizedBody454_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_339

def optimizedBody454_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_241 optimizedBody454_340

def optimizedBody454_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_237 optimizedBody454_341

def optimizedBody454_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_342

def optimizedBody454_344 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 0) optimizedBody454_343 optimizedBody454_222

def optimizedBody454_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_332

def optimizedBody454_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_344 optimizedBody454_345

def optimizedBody454_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_236 optimizedBody454_346

def optimizedBody454_348 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody454_347 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody454_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody454_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_8 optimizedBody454_349

def optimizedBody454_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_21 optimizedBody454_350

def optimizedBody454_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_351

def optimizedBody454_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_348 optimizedBody454_352

def optimizedBody454_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_235 optimizedBody454_353

def optimizedBody454_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_354

def optimizedBody454_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_10 optimizedBody454_355

def optimizedBody454_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_234 optimizedBody454_356

def optimizedBody454_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_8 optimizedBody454_357

def optimizedBody454_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_233 optimizedBody454_358

def optimizedBody454_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_232 optimizedBody454_359

def optimizedBody454_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_231 optimizedBody454_360

def optimizedBody454_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_230 optimizedBody454_361

def optimizedBody454_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_229 optimizedBody454_362

def optimizedBody454_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_363

def optimizedBody454_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_228 optimizedBody454_364

def optimizedBody454_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_12 optimizedBody454_365

def optimizedBody454_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_11 optimizedBody454_366

def optimizedBody454_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_10 optimizedBody454_367

def optimizedBody454_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_9 optimizedBody454_368

def optimizedBody454_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_8 optimizedBody454_369

def optimizedBody454_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_7 optimizedBody454_370

def optimizedBody454_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_6 optimizedBody454_371

def optimizedBody454_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_5 optimizedBody454_372

def optimizedBody454_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_4 optimizedBody454_373

def optimizedBody454_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_3 optimizedBody454_374

def optimizedBody454_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_2 optimizedBody454_375

def optimizedBody454_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_1 optimizedBody454_376

def optimizedBody454_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody454_0 optimizedBody454_377

def optimized454 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(454, 1, optimizedBody454_378)
end InitECandidate.Proofs.StackAnalysis
