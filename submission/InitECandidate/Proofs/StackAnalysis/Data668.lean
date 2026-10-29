import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody668_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (50, 2), (52, 6)]

def optimizedBody668_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody668_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody668_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody668_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_2 optimizedBody668_3

def optimizedBody668_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody668_1, 668, 2)) (some 69) ([]) (some (2, optimizedBody668_4, 668, 3))

def optimizedBody668_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody668_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 736#64)

def optimizedBody668_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody668_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (14, 52)]

def optimizedBody668_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (14, 52)]

def optimizedBody668_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_10 optimizedBody668_3

def optimizedBody668_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody668_9, 668, 4)) (some 68) ([2]) (some (2, optimizedBody668_11, 668, 5))

def optimizedBody668_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody668_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 0), (48, 4), (50, 50), (14, 14), (12, 12)]

def optimizedBody668_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody668_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody668_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody668_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody668_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody668_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody668_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody668_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 11#64)

def optimizedBody668_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 12 (Flapjack.WordRegImm.imm 18446744073709551605#64)))

def optimizedBody668_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (12, 12)]

def optimizedBody668_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_23 optimizedBody668_24

def optimizedBody668_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_15 optimizedBody668_25

def optimizedBody668_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_26

def optimizedBody668_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_24

def optimizedBody668_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 12) optimizedBody668_27 optimizedBody668_28

def optimizedBody668_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 12)]

def optimizedBody668_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 11#64)

def optimizedBody668_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18)]

def optimizedBody668_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_31 optimizedBody668_32

def optimizedBody668_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_33

def optimizedBody668_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_32

def optimizedBody668_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) optimizedBody668_34 optimizedBody668_35

def optimizedBody668_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (54, 2), (0, 0), (18, 18), (56, 4), (58, 48), (50, 50), (52, 6), (48, 8), (14, 14), (16, 16),
    (12, 12)]

def optimizedBody668_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody668_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody668_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody668_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody668_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody668_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody668_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16), (0, 0)]

def optimizedBody668_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody668_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody668_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16), (60, 0)]

def optimizedBody668_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody668_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16), (60, 60)]

def optimizedBody668_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody668_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (12, 12)]

def optimizedBody668_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 12 (Flapjack.WordRegImm.reg 16)))

def optimizedBody668_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody668_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody668_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody668_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody668_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 16), (68, 12), (14, 14)]

def optimizedBody668_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody668_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody668_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 66), (68, 68), (64, 14)]

def optimizedBody668_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody668_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 66), (68, 68), (64, 64)]

def optimizedBody668_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody668_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (54, 54), (48, 60),
    (50, 18), (56, 56), (52, 58), (58, 50), (60, 52), (62, 48), (64, 64), (66, 66), (68, 68)]

def optimizedBody668_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 4), (14, 6), (16, 8), (10, 2), (44, 44), (46, 46), (6, 54), (48, 48), (50, 50), (4, 56), (52, 52), (54, 58),
    (8, 60), (0, 62), (56, 64), (58, 66), (60, 68)]

def optimizedBody668_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 54), (48, 48), (50, 50), (4, 56), (52, 52), (54, 58), (8, 60), (0, 62), (56, 64),
    (58, 66), (60, 68)]

def optimizedBody668_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_66 optimizedBody668_3

def optimizedBody668_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody668_65, 668, 6)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody668_67, 668, 7))

def optimizedBody668_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody668_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (22, 2), (44, 44), (46, 46), (0, 48), (18, 50), (20, 52), (50, 54), (14, 56), (10, 58),
    (12, 60)]

def optimizedBody668_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (18, 50), (20, 52), (50, 54), (14, 56), (10, 58), (12, 60)]

def optimizedBody668_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_71 optimizedBody668_3

def optimizedBody668_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody668_70, 668, 8)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody668_72, 668, 9))

def optimizedBody668_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody668_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody668_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (54, 6), (0, 0), (18, 18), (56, 4), (58, 20), (50, 50), (52, 8), (48, 22), (14, 14), (16, 16),
    (12, 12)]

def optimizedBody668_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody668_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_76 optimizedBody668_77

def optimizedBody668_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_75 optimizedBody668_78

def optimizedBody668_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_74 optimizedBody668_79

def optimizedBody668_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_80

def optimizedBody668_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_73 optimizedBody668_81

def optimizedBody668_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_69 optimizedBody668_82

def optimizedBody668_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_83

def optimizedBody668_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_68 optimizedBody668_84

def optimizedBody668_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_64 optimizedBody668_85

def optimizedBody668_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_63 optimizedBody668_86

def optimizedBody668_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_62 optimizedBody668_87

def optimizedBody668_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_61 optimizedBody668_88

def optimizedBody668_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_60 optimizedBody668_89

def optimizedBody668_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_59 optimizedBody668_90

def optimizedBody668_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_58 optimizedBody668_91

def optimizedBody668_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_57 optimizedBody668_92

def optimizedBody668_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_56 optimizedBody668_93

def optimizedBody668_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_55 optimizedBody668_94

def optimizedBody668_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_54 optimizedBody668_95

def optimizedBody668_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_53 optimizedBody668_96

def optimizedBody668_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_52 optimizedBody668_97

def optimizedBody668_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_51 optimizedBody668_98

def optimizedBody668_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_50 optimizedBody668_99

def optimizedBody668_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_49 optimizedBody668_100

def optimizedBody668_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_48 optimizedBody668_101

def optimizedBody668_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_47 optimizedBody668_102

def optimizedBody668_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_46 optimizedBody668_103

def optimizedBody668_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_45 optimizedBody668_104

def optimizedBody668_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_44 optimizedBody668_105

def optimizedBody668_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_43 optimizedBody668_106

def optimizedBody668_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_42 optimizedBody668_107

def optimizedBody668_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_41 optimizedBody668_108

def optimizedBody668_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_40 optimizedBody668_109

def optimizedBody668_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_39 optimizedBody668_110

def optimizedBody668_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_111

def optimizedBody668_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody668_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_113

def optimizedBody668_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 16) optimizedBody668_112 optimizedBody668_114

def optimizedBody668_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (54, 6), (0, 0), (18, 18), (56, 8), (58, 10), (50, 20), (52, 22), (48, 24), (14, 14), (16, 16),
    (12, 12)]

def optimizedBody668_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_116

def optimizedBody668_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_115 optimizedBody668_117

def optimizedBody668_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_38 optimizedBody668_118

def optimizedBody668_120 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody668_119 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody668_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody668_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 58)]

def optimizedBody668_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody668_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 48), (2, 52), (6, 54), (8, 56)]

def optimizedBody668_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody668_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody668_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody668_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody668_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody668_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody668_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody668_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody668_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 10), (50, 50), (14, 14), (12, 12)]

def optimizedBody668_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_133 optimizedBody668_77

def optimizedBody668_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_132 optimizedBody668_134

def optimizedBody668_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_15 optimizedBody668_135

def optimizedBody668_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_131 optimizedBody668_136

def optimizedBody668_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_130 optimizedBody668_137

def optimizedBody668_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_129 optimizedBody668_138

def optimizedBody668_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_128 optimizedBody668_139

def optimizedBody668_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_127 optimizedBody668_140

def optimizedBody668_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_126 optimizedBody668_141

def optimizedBody668_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_125 optimizedBody668_142

def optimizedBody668_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_124 optimizedBody668_143

def optimizedBody668_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_123 optimizedBody668_144

def optimizedBody668_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_122 optimizedBody668_145

def optimizedBody668_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_121 optimizedBody668_146

def optimizedBody668_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_15 optimizedBody668_147

def optimizedBody668_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_148

def optimizedBody668_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_120 optimizedBody668_149

def optimizedBody668_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_37 optimizedBody668_150

def optimizedBody668_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_151

def optimizedBody668_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_152

def optimizedBody668_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_36 optimizedBody668_153

def optimizedBody668_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_30 optimizedBody668_154

def optimizedBody668_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_22 optimizedBody668_155

def optimizedBody668_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_15 optimizedBody668_156

def optimizedBody668_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_157

def optimizedBody668_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_29 optimizedBody668_158

def optimizedBody668_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_15 optimizedBody668_159

def optimizedBody668_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_22 optimizedBody668_160

def optimizedBody668_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_21 optimizedBody668_161

def optimizedBody668_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_20 optimizedBody668_162

def optimizedBody668_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_19 optimizedBody668_163

def optimizedBody668_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_18 optimizedBody668_164

def optimizedBody668_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_17 optimizedBody668_165

def optimizedBody668_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_166

def optimizedBody668_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody668_167 optimizedBody668_114

def optimizedBody668_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 4), (0, 0), (48, 6), (50, 8), (14, 14), (12, 12)]

def optimizedBody668_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_169

def optimizedBody668_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_168 optimizedBody668_170

def optimizedBody668_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_16 optimizedBody668_171

def optimizedBody668_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_15 optimizedBody668_172

def optimizedBody668_174 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody668_173 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody668_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody668_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody668_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody668_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_177 optimizedBody668_3

def optimizedBody668_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody668_176, 668, 10)) (some 667) ([2]) (some (2, optimizedBody668_178, 668, 11))

def optimizedBody668_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody668_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 384#64)

def optimizedBody668_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody668_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody668_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody668_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_184 optimizedBody668_3

def optimizedBody668_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody668_183, 668, 12)) (some 77) ([2, 4, 6]) (some (2, optimizedBody668_185, 668, 13))

def optimizedBody668_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody668_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody668_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody668_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_189 optimizedBody668_3

def optimizedBody668_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody668_188, 668, 14)) (some 70) ([2]) (some (2, optimizedBody668_190, 668, 15))

def optimizedBody668_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody668_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody668_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_192 optimizedBody668_193

def optimizedBody668_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_19 optimizedBody668_194

def optimizedBody668_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_195

def optimizedBody668_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_191 optimizedBody668_196

def optimizedBody668_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_187 optimizedBody668_197

def optimizedBody668_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_198

def optimizedBody668_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_186 optimizedBody668_199

def optimizedBody668_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_182 optimizedBody668_200

def optimizedBody668_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_181 optimizedBody668_201

def optimizedBody668_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_180 optimizedBody668_202

def optimizedBody668_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_203

def optimizedBody668_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_179 optimizedBody668_204

def optimizedBody668_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_175 optimizedBody668_205

def optimizedBody668_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_206

def optimizedBody668_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_174 optimizedBody668_207

def optimizedBody668_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_14 optimizedBody668_208

def optimizedBody668_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_209

def optimizedBody668_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_13 optimizedBody668_210

def optimizedBody668_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_211

def optimizedBody668_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_12 optimizedBody668_212

def optimizedBody668_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_8 optimizedBody668_213

def optimizedBody668_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_7 optimizedBody668_214

def optimizedBody668_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_6 optimizedBody668_215

def optimizedBody668_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_5 optimizedBody668_216

def optimizedBody668_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_0 optimizedBody668_217

def optimized668 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(668, 4, optimizedBody668_218)
end InitECandidate.Proofs.StackAnalysis
