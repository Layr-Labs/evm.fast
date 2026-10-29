import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody344_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (48, 4), (50, 2)]

def optimizedBody344_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 4), (44, 44), (48, 48), (50, 50)]

def optimizedBody344_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody344_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody344_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_2 optimizedBody344_3

def optimizedBody344_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody344_1, 344, 2)) (some 169) ([2, 4]) (some (2, optimizedBody344_4, 344, 3))

def optimizedBody344_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody344_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody344_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 120#64)

def optimizedBody344_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4)]

def optimizedBody344_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody344_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 48), (50, 50), (52, 2)]

def optimizedBody344_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (50, 50), (16, 52)]

def optimizedBody344_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (16, 52)]

def optimizedBody344_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_13 optimizedBody344_3

def optimizedBody344_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody344_12, 344, 4)) (some 68) ([2]) (some (2, optimizedBody344_14, 344, 5))

def optimizedBody344_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody344_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 4), (46, 6), (0, 0), (48, 48), (50, 50), (16, 16)]

def optimizedBody344_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (4, 4)]

def optimizedBody344_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody344_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody344_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody344_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody344_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody344_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (54, 0), (52, 4)]

def optimizedBody344_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody344_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 52), (48, 46), (52, 54), (54, 48), (56, 50), (58, 16)]

def optimizedBody344_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody344_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody344_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_28 optimizedBody344_3

def optimizedBody344_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody344_27, 344, 6)) (some 161) ([2, 4]) (some (2, optimizedBody344_29, 344, 7))

def optimizedBody344_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody344_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 20#64)

def optimizedBody344_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody344_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody344_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody344_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_35 optimizedBody344_3

def optimizedBody344_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_34 optimizedBody344_36

def optimizedBody344_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_33 optimizedBody344_37

def optimizedBody344_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_21 optimizedBody344_38

def optimizedBody344_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_32 optimizedBody344_39

def optimizedBody344_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_40

def optimizedBody344_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody344_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody344_41 optimizedBody344_42

def optimizedBody344_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody344_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (12, 2), (44, 44), (8, 46), (10, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody344_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (10, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody344_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_46 optimizedBody344_3

def optimizedBody344_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody344_45, 344, 8)) (some 169) ([2, 4]) (some (2, optimizedBody344_47, 344, 9))

def optimizedBody344_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 6#64)

def optimizedBody344_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody344_41 optimizedBody344_42

def optimizedBody344_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody344_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody344_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody344_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody344_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody344_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody344_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 8), (48, 10), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 2)]

def optimizedBody344_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (12, 2), (4, 4), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (10, 60)]

def optimizedBody344_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (10, 60)]

def optimizedBody344_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_59 optimizedBody344_3

def optimizedBody344_61 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody344_58, 344, 10)) (some 336) ([2, 4, 6]) (some (2, optimizedBody344_60, 344, 11))

def optimizedBody344_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12), (8, 8), (6, 6), (4, 4)]

def optimizedBody344_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody344_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody344_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody344_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody344_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody344_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody344_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody344_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def optimizedBody344_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody344_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody344_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 2)]

def optimizedBody344_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (4, 60)]

def optimizedBody344_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (4, 60)]

def optimizedBody344_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_75 optimizedBody344_3

def optimizedBody344_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody344_74, 344, 12)) (some 339) ([2, 4, 6]) (some (2, optimizedBody344_76, 344, 13))

def optimizedBody344_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody344_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody344_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody344_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 12#64)

def optimizedBody344_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8#64)

def optimizedBody344_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody344_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 2)]

def optimizedBody344_85 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody344_74, 344, 14)) (some 337) ([2, 4, 6, 8]) (some (2, optimizedBody344_76, 344, 15))

def optimizedBody344_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody344_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody344_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody344_89 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody344_74, 344, 16)) (some 337) ([2, 4, 6, 8]) (some (2, optimizedBody344_76, 344, 17))

def optimizedBody344_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody344_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody344_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (10, 60)]

def optimizedBody344_93 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody344_92, 344, 18)) (some 336) ([2, 4, 6]) (some (2, optimizedBody344_60, 344, 19))

def optimizedBody344_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody344_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (8, 8), (6, 6), (4, 4)]

def optimizedBody344_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody344_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody344_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody344_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody344_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody344_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody344_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5#64)

def optimizedBody344_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody344_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (8, 8), (4, 4), (6, 6), (24, 44), (10, 46), (22, 48), (14, 50), (0, 52), (20, 54), (18, 56), (16, 58)]

def optimizedBody344_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (24, 44), (10, 46), (22, 48), (14, 50), (0, 52), (20, 54), (18, 56), (16, 58)]

def optimizedBody344_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_105 optimizedBody344_3

def optimizedBody344_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody344_104, 344, 20)) (some 336) ([2, 4, 6]) (some (2, optimizedBody344_106, 344, 21))

def optimizedBody344_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody344_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody344_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody344_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody344_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 24), (4, 4), (46, 22), (0, 0), (48, 20), (50, 18), (16, 16)]

def optimizedBody344_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody344_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_112 optimizedBody344_113

def optimizedBody344_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_111 optimizedBody344_114

def optimizedBody344_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_110 optimizedBody344_115

def optimizedBody344_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_101 optimizedBody344_116

def optimizedBody344_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_100 optimizedBody344_117

def optimizedBody344_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_99 optimizedBody344_118

def optimizedBody344_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_79 optimizedBody344_119

def optimizedBody344_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_98 optimizedBody344_120

def optimizedBody344_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_97 optimizedBody344_121

def optimizedBody344_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_96 optimizedBody344_122

def optimizedBody344_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_95 optimizedBody344_123

def optimizedBody344_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_109 optimizedBody344_124

def optimizedBody344_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_108 optimizedBody344_125

def optimizedBody344_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_126

def optimizedBody344_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_107 optimizedBody344_127

def optimizedBody344_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_103 optimizedBody344_128

def optimizedBody344_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_102 optimizedBody344_129

def optimizedBody344_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_56 optimizedBody344_130

def optimizedBody344_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_70 optimizedBody344_131

def optimizedBody344_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_101 optimizedBody344_132

def optimizedBody344_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_100 optimizedBody344_133

def optimizedBody344_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_99 optimizedBody344_134

def optimizedBody344_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_79 optimizedBody344_135

def optimizedBody344_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_98 optimizedBody344_136

def optimizedBody344_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_97 optimizedBody344_137

def optimizedBody344_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_96 optimizedBody344_138

def optimizedBody344_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_95 optimizedBody344_139

def optimizedBody344_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_94 optimizedBody344_140

def optimizedBody344_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_21 optimizedBody344_141

def optimizedBody344_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_142

def optimizedBody344_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_93 optimizedBody344_143

def optimizedBody344_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_73 optimizedBody344_144

def optimizedBody344_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_91 optimizedBody344_145

def optimizedBody344_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_56 optimizedBody344_146

def optimizedBody344_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_7 optimizedBody344_147

def optimizedBody344_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_80 optimizedBody344_148

def optimizedBody344_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_79 optimizedBody344_149

def optimizedBody344_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_90 optimizedBody344_150

def optimizedBody344_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_21 optimizedBody344_151

def optimizedBody344_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_152

def optimizedBody344_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_89 optimizedBody344_153

def optimizedBody344_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_84 optimizedBody344_154

def optimizedBody344_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_88 optimizedBody344_155

def optimizedBody344_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_87 optimizedBody344_156

def optimizedBody344_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_81 optimizedBody344_157

def optimizedBody344_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_7 optimizedBody344_158

def optimizedBody344_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_80 optimizedBody344_159

def optimizedBody344_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_79 optimizedBody344_160

def optimizedBody344_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_86 optimizedBody344_161

def optimizedBody344_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_21 optimizedBody344_162

def optimizedBody344_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_163

def optimizedBody344_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_85 optimizedBody344_164

def optimizedBody344_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_84 optimizedBody344_165

def optimizedBody344_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_83 optimizedBody344_166

def optimizedBody344_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_82 optimizedBody344_167

def optimizedBody344_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_81 optimizedBody344_168

def optimizedBody344_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_7 optimizedBody344_169

def optimizedBody344_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_80 optimizedBody344_170

def optimizedBody344_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_79 optimizedBody344_171

def optimizedBody344_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_78 optimizedBody344_172

def optimizedBody344_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_21 optimizedBody344_173

def optimizedBody344_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_174

def optimizedBody344_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_77 optimizedBody344_175

def optimizedBody344_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_73 optimizedBody344_176

def optimizedBody344_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_72 optimizedBody344_177

def optimizedBody344_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_71 optimizedBody344_178

def optimizedBody344_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_70 optimizedBody344_179

def optimizedBody344_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_69 optimizedBody344_180

def optimizedBody344_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_68 optimizedBody344_181

def optimizedBody344_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_67 optimizedBody344_182

def optimizedBody344_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_66 optimizedBody344_183

def optimizedBody344_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_65 optimizedBody344_184

def optimizedBody344_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_64 optimizedBody344_185

def optimizedBody344_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_63 optimizedBody344_186

def optimizedBody344_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_62 optimizedBody344_187

def optimizedBody344_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_188

def optimizedBody344_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_61 optimizedBody344_189

def optimizedBody344_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_57 optimizedBody344_190

def optimizedBody344_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_16 optimizedBody344_191

def optimizedBody344_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_56 optimizedBody344_192

def optimizedBody344_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_55 optimizedBody344_193

def optimizedBody344_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_54 optimizedBody344_194

def optimizedBody344_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_53 optimizedBody344_195

def optimizedBody344_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_10 optimizedBody344_196

def optimizedBody344_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_52 optimizedBody344_197

def optimizedBody344_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_8 optimizedBody344_198

def optimizedBody344_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_51 optimizedBody344_199

def optimizedBody344_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_200

def optimizedBody344_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_201

def optimizedBody344_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_50 optimizedBody344_202

def optimizedBody344_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_49 optimizedBody344_203

def optimizedBody344_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_19 optimizedBody344_204

def optimizedBody344_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_205

def optimizedBody344_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_48 optimizedBody344_206

def optimizedBody344_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_44 optimizedBody344_207

def optimizedBody344_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_208

def optimizedBody344_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_209

def optimizedBody344_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_43 optimizedBody344_210

def optimizedBody344_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_31 optimizedBody344_211

def optimizedBody344_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_21 optimizedBody344_212

def optimizedBody344_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_213

def optimizedBody344_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_30 optimizedBody344_214

def optimizedBody344_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_26 optimizedBody344_215

def optimizedBody344_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_25 optimizedBody344_216

def optimizedBody344_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_24 optimizedBody344_217

def optimizedBody344_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_23 optimizedBody344_218

def optimizedBody344_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_22 optimizedBody344_219

def optimizedBody344_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_21 optimizedBody344_220

def optimizedBody344_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_20 optimizedBody344_221

def optimizedBody344_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_19 optimizedBody344_222

def optimizedBody344_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_223

def optimizedBody344_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody344_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody344_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_225 optimizedBody344_226

def optimizedBody344_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_227

def optimizedBody344_229 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 16) optimizedBody344_224 optimizedBody344_228

def optimizedBody344_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (4, 4), (46, 6), (0, 0), (48, 8), (50, 10), (16, 16)]

def optimizedBody344_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_230

def optimizedBody344_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_229 optimizedBody344_231

def optimizedBody344_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_18 optimizedBody344_232

def optimizedBody344_234 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody344_233 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody344_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 16)]

def optimizedBody344_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody344_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_235 optimizedBody344_236

def optimizedBody344_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_237

def optimizedBody344_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_234 optimizedBody344_238

def optimizedBody344_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_17 optimizedBody344_239

def optimizedBody344_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_240

def optimizedBody344_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_16 optimizedBody344_241

def optimizedBody344_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_242

def optimizedBody344_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_15 optimizedBody344_243

def optimizedBody344_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_11 optimizedBody344_244

def optimizedBody344_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_10 optimizedBody344_245

def optimizedBody344_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_9 optimizedBody344_246

def optimizedBody344_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_8 optimizedBody344_247

def optimizedBody344_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_7 optimizedBody344_248

def optimizedBody344_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_6 optimizedBody344_249

def optimizedBody344_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_5 optimizedBody344_250

def optimizedBody344_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody344_0 optimizedBody344_251

def optimized344 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(344, 3, optimizedBody344_252)
end InitECandidate.Proofs.StackAnalysis
