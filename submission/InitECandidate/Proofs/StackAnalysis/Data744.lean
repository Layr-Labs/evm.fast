import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody744_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (48, 8), (50, 4), (52, 2), (54, 6)]

def optimizedBody744_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody744_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody744_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody744_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_2 optimizedBody744_3

def optimizedBody744_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody744_1, 744, 2)) (some 69) ([]) (some (2, optimizedBody744_4, 744, 3))

def optimizedBody744_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody744_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody744_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 0)]

def optimizedBody744_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody744_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody744_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_10 optimizedBody744_3

def optimizedBody744_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody744_9, 744, 4)) (some 68) ([2]) (some (2, optimizedBody744_11, 744, 5))

def optimizedBody744_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58)]

def optimizedBody744_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (0, 44), (44, 48), (4, 50), (50, 52), (52, 54), (58, 58)]

def optimizedBody744_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (44, 48), (4, 50), (50, 52), (52, 54), (58, 58)]

def optimizedBody744_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_15 optimizedBody744_3

def optimizedBody744_17 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody744_14, 744, 6)) (some 68) ([2]) (some (2, optimizedBody744_16, 744, 7))

def optimizedBody744_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (46, 46), (54, 0), (44, 44), (56, 4), (48, 6), (50, 50), (52, 52), (58, 58)]

def optimizedBody744_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (54, 54), (44, 44), (56, 56), (0, 48), (50, 50), (52, 52), (58, 58)]

def optimizedBody744_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (44, 44), (56, 56), (0, 48), (50, 50), (52, 52), (58, 58)]

def optimizedBody744_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_20 optimizedBody744_3

def optimizedBody744_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody744_19, 744, 8)) (some 729) ([2, 4]) (some (2, optimizedBody744_21, 744, 9))

def optimizedBody744_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (54, 54), (44, 44), (56, 56), (48, 0), (50, 50), (52, 52), (58, 58)]

def optimizedBody744_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (54, 54), (6, 44), (56, 56), (4, 48), (44, 50), (50, 52), (48, 58)]

def optimizedBody744_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (6, 44), (56, 56), (4, 48), (44, 50), (50, 52), (48, 58)]

def optimizedBody744_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_25 optimizedBody744_3

def optimizedBody744_27 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody744_24, 744, 10)) (some 731) ([2]) (some (2, optimizedBody744_26, 744, 11))

def optimizedBody744_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody744_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody744_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 6 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody744_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (54, 54), (52, 6), (56, 56), (10, 10), (4, 4), (44, 44), (0, 0), (50, 50), (48, 48)]

def optimizedBody744_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody744_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody744_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody744_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (58, 2)]

def optimizedBody744_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody744_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (46, 46), (54, 54), (48, 52), (50, 56), (44, 58), (52, 4), (56, 44), (58, 0), (60, 50), (62, 48)]

def optimizedBody744_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (6, 54), (48, 48), (50, 50), (10, 44), (4, 52), (56, 56), (0, 58), (12, 60), (60, 62)]

def optimizedBody744_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 54), (48, 48), (50, 50), (10, 44), (4, 52), (56, 56), (0, 58), (12, 60), (60, 62)]

def optimizedBody744_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_39 optimizedBody744_3

def optimizedBody744_41 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody744_38, 744, 12)) (some 740) ([2, 4]) (some (2, optimizedBody744_40, 744, 13))

def optimizedBody744_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 6), (48, 48), (50, 50), (10, 10), (4, 4), (56, 56), (0, 0), (12, 12), (60, 60)]

def optimizedBody744_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_42

def optimizedBody744_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_41 optimizedBody744_43

def optimizedBody744_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_37 optimizedBody744_44

def optimizedBody744_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_45

def optimizedBody744_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 54), (48, 52), (50, 56), (10, 58), (4, 4), (56, 44), (0, 0), (12, 50), (60, 48)]

def optimizedBody744_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_47

def optimizedBody744_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody744_46 optimizedBody744_48

def optimizedBody744_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 10 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody744_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody744_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody744_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody744_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody744_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody744_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody744_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody744_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody744_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody744_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody744_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (46, 46), (44, 6), (48, 48), (50, 50), (52, 10), (54, 4), (56, 56), (58, 12), (60, 60)]

def optimizedBody744_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 44), (8, 48), (14, 50), (10, 52), (4, 54), (16, 56), (12, 58), (48, 60)]

def optimizedBody744_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 44), (8, 48), (14, 50), (10, 52), (4, 54), (16, 56), (12, 58), (48, 60)]

def optimizedBody744_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_63 optimizedBody744_3

def optimizedBody744_65 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody744_62, 744, 14)) (some 739) ([2, 4, 6]) (some (2, optimizedBody744_64, 744, 15))

def optimizedBody744_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody744_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 6), (8, 8), (14, 14), (10, 10), (4, 4), (16, 16), (0, 0), (12, 12), (48, 48)]

def optimizedBody744_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_66 optimizedBody744_67

def optimizedBody744_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_68

def optimizedBody744_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_65 optimizedBody744_69

def optimizedBody744_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_61 optimizedBody744_70

def optimizedBody744_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_71

def optimizedBody744_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (6, 6), (8, 48), (14, 50), (10, 10), (4, 4), (16, 56), (0, 0), (12, 12), (48, 60)]

def optimizedBody744_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_73

def optimizedBody744_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody744_72 optimizedBody744_74

def optimizedBody744_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (54, 6), (52, 8), (56, 14), (10, 10), (4, 4), (44, 16), (0, 0), (50, 12), (48, 48)]

def optimizedBody744_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody744_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_76 optimizedBody744_77

def optimizedBody744_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_78

def optimizedBody744_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_75 optimizedBody744_79

def optimizedBody744_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_60 optimizedBody744_80

def optimizedBody744_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_59 optimizedBody744_81

def optimizedBody744_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_58 optimizedBody744_82

def optimizedBody744_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_57 optimizedBody744_83

def optimizedBody744_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_56 optimizedBody744_84

def optimizedBody744_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_55 optimizedBody744_85

def optimizedBody744_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_33 optimizedBody744_86

def optimizedBody744_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_54 optimizedBody744_87

def optimizedBody744_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_53 optimizedBody744_88

def optimizedBody744_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_52 optimizedBody744_89

def optimizedBody744_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_51 optimizedBody744_90

def optimizedBody744_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_50 optimizedBody744_91

def optimizedBody744_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_33 optimizedBody744_92

def optimizedBody744_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_93

def optimizedBody744_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_49 optimizedBody744_94

def optimizedBody744_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_36 optimizedBody744_95

def optimizedBody744_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_35 optimizedBody744_96

def optimizedBody744_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_34 optimizedBody744_97

def optimizedBody744_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_33 optimizedBody744_98

def optimizedBody744_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_99

def optimizedBody744_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody744_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_101

def optimizedBody744_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody744_100 optimizedBody744_102

def optimizedBody744_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (54, 6), (52, 8), (56, 12), (10, 10), (4, 4), (44, 14), (0, 0), (50, 16), (48, 18)]

def optimizedBody744_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_104

def optimizedBody744_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_103 optimizedBody744_105

def optimizedBody744_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_33 optimizedBody744_106

def optimizedBody744_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_32 optimizedBody744_107

def optimizedBody744_109 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody744_108 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody744_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 4), (44, 46), (46, 48)]

def optimizedBody744_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody744_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody744_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_112 optimizedBody744_3

def optimizedBody744_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody744_111, 744, 16)) (some 729) ([2, 4]) (some (2, optimizedBody744_113, 744, 17))

def optimizedBody744_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody744_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody744_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody744_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_117 optimizedBody744_3

def optimizedBody744_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody744_116, 744, 18)) (some 70) ([2]) (some (2, optimizedBody744_118, 744, 19))

def optimizedBody744_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody744_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_59 optimizedBody744_120

def optimizedBody744_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_32 optimizedBody744_121

def optimizedBody744_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_122

def optimizedBody744_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_119 optimizedBody744_123

def optimizedBody744_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_115 optimizedBody744_124

def optimizedBody744_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_125

def optimizedBody744_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_114 optimizedBody744_126

def optimizedBody744_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_110 optimizedBody744_127

def optimizedBody744_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_128

def optimizedBody744_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_109 optimizedBody744_129

def optimizedBody744_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_31 optimizedBody744_130

def optimizedBody744_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_131

def optimizedBody744_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_30 optimizedBody744_132

def optimizedBody744_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_29 optimizedBody744_133

def optimizedBody744_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_28 optimizedBody744_134

def optimizedBody744_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_135

def optimizedBody744_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_27 optimizedBody744_136

def optimizedBody744_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_23 optimizedBody744_137

def optimizedBody744_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_138

def optimizedBody744_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_22 optimizedBody744_139

def optimizedBody744_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_18 optimizedBody744_140

def optimizedBody744_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_141

def optimizedBody744_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_17 optimizedBody744_142

def optimizedBody744_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_13 optimizedBody744_143

def optimizedBody744_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_7 optimizedBody744_144

def optimizedBody744_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_145

def optimizedBody744_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_12 optimizedBody744_146

def optimizedBody744_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_8 optimizedBody744_147

def optimizedBody744_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_7 optimizedBody744_148

def optimizedBody744_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_6 optimizedBody744_149

def optimizedBody744_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_5 optimizedBody744_150

def optimizedBody744_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody744_0 optimizedBody744_151

def optimized744 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(744, 5, optimizedBody744_152)
end InitECandidate.Proofs.StackAnalysis
