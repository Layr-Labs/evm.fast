import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody783_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4), (62, 2), (48, 6)]

def optimizedBody783_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (62, 62), (4, 48)]

def optimizedBody783_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (62, 62), (4, 48)]

def optimizedBody783_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody783_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_2 optimizedBody783_3

def optimizedBody783_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_1, 783, 2)) (some 779) ([2]) (some (2, optimizedBody783_4, 783, 3))

def optimizedBody783_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody783_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody783_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody783_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (4, 4), (48, 44)]

def optimizedBody783_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 48)]

def optimizedBody783_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 48)]

def optimizedBody783_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_11 optimizedBody783_3

def optimizedBody783_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_10, 783, 4)) (some 780) ([2, 4]) (some (2, optimizedBody783_12, 783, 5))

def optimizedBody783_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody783_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody783_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody783_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_16

def optimizedBody783_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_14 optimizedBody783_17

def optimizedBody783_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_18

def optimizedBody783_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_13 optimizedBody783_19

def optimizedBody783_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_9 optimizedBody783_20

def optimizedBody783_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_21

def optimizedBody783_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (62, 62), (4, 4), (44, 44)]

def optimizedBody783_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody783_22 optimizedBody783_23

def optimizedBody783_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (46, 46), (62, 62), (48, 4)]

def optimizedBody783_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (62, 62), (48, 48)]

def optimizedBody783_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (62, 62), (48, 48)]

def optimizedBody783_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_27 optimizedBody783_3

def optimizedBody783_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_26, 783, 6)) (some 779) ([2]) (some (2, optimizedBody783_28, 783, 7))

def optimizedBody783_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (4, 46), (50, 44)]

def optimizedBody783_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 50)]

def optimizedBody783_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 50)]

def optimizedBody783_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_32 optimizedBody783_3

def optimizedBody783_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_31, 783, 8)) (some 780) ([2, 4]) (some (2, optimizedBody783_33, 783, 9))

def optimizedBody783_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_34 optimizedBody783_19

def optimizedBody783_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_30 optimizedBody783_35

def optimizedBody783_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_36

def optimizedBody783_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (62, 62), (48, 48), (44, 44)]

def optimizedBody783_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody783_37 optimizedBody783_38

def optimizedBody783_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (62, 62), (48, 48)]

def optimizedBody783_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_26, 783, 10)) (some 69) ([]) (some (2, optimizedBody783_28, 783, 11))

def optimizedBody783_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1152#64)

def optimizedBody783_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 0), (46, 46), (62, 62), (48, 48)]

def optimizedBody783_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (52, 52), (0, 46), (62, 62), (8, 48)]

def optimizedBody783_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (0, 46), (62, 62), (8, 48)]

def optimizedBody783_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_45 optimizedBody783_3

def optimizedBody783_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_44, 783, 12)) (some 68) ([2]) (some (2, optimizedBody783_46, 783, 13))

def optimizedBody783_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody783_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody783_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody783_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody783_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 2 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody783_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 2 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody783_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 2 (Flapjack.WordRegImm.imm 576#64)))

def optimizedBody783_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.imm 672#64)))

def optimizedBody783_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 2 (Flapjack.WordRegImm.imm 768#64)))

def optimizedBody783_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 2 (Flapjack.WordRegImm.imm 864#64)))

def optimizedBody783_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 2 (Flapjack.WordRegImm.imm 960#64)))

def optimizedBody783_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 2 (Flapjack.WordRegImm.imm 1056#64)))

def optimizedBody783_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody783_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody783_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody783_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 10), (48, 24), (50, 22), (52, 52), (54, 0), (56, 26), (58, 12), (60, 20),
    (62, 62), (64, 18), (66, 16), (68, 2), (70, 28), (72, 8), (74, 14), (76, 30)]

def optimizedBody783_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (8, 72), (74, 74), (76, 76)]

def optimizedBody783_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (8, 72), (74, 74), (76, 76)]

def optimizedBody783_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_65 optimizedBody783_3

def optimizedBody783_67 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_64, 783, 14)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_66, 783, 15))

def optimizedBody783_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody783_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody783_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody783_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody783_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 8), (74, 74), (76, 76)]

def optimizedBody783_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (4, 72), (6, 74), (76, 76)]

def optimizedBody783_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (4, 72), (6, 74), (76, 76)]

def optimizedBody783_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_74 optimizedBody783_3

def optimizedBody783_76 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_73, 783, 16)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_75, 783, 17))

def optimizedBody783_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody783_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 4), (74, 2), (76, 76)]

def optimizedBody783_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (6, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (0, 72), (74, 74), (76, 76)]

def optimizedBody783_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (6, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (0, 72), (74, 74), (76, 76)]

def optimizedBody783_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_80 optimizedBody783_3

def optimizedBody783_82 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_79, 783, 18)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_81, 783, 19))

def optimizedBody783_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56), (58, 2), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 0), (74, 74), (76, 76)]

def optimizedBody783_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (0, 74), (76, 76)]

def optimizedBody783_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (0, 74), (76, 76)]

def optimizedBody783_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_85 optimizedBody783_3

def optimizedBody783_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_84, 783, 20)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_86, 783, 21))

def optimizedBody783_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 0), (76, 76)]

def optimizedBody783_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (6, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (4, 68), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody783_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 64),
    (66, 66), (4, 68), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody783_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_90 optimizedBody783_3

def optimizedBody783_92 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_89, 783, 22)) (some 733) ([2, 4]) (some (2, optimizedBody783_91, 783, 23))

def optimizedBody783_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (46, 44), (44, 52), (48, 54), (50, 62)]

def optimizedBody783_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (46, 46), (0, 44), (44, 48), (48, 50)]

def optimizedBody783_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (44, 48), (48, 50)]

def optimizedBody783_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_95 optimizedBody783_3

def optimizedBody783_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_94, 783, 24)) (some 733) ([2, 4]) (some (2, optimizedBody783_96, 783, 25))

def optimizedBody783_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46), (44, 44), (48, 48), (50, 4)]

def optimizedBody783_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (0, 48), (6, 50)]

def optimizedBody783_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (0, 48), (6, 50)]

def optimizedBody783_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_100 optimizedBody783_3

def optimizedBody783_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_99, 783, 26)) (some 70) ([2]) (some (2, optimizedBody783_101, 783, 27))

def optimizedBody783_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody783_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 46)]

def optimizedBody783_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44)]

def optimizedBody783_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody783_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_106 optimizedBody783_3

def optimizedBody783_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_105, 783, 28)) (some 782) ([2, 4]) (some (2, optimizedBody783_107, 783, 29))

def optimizedBody783_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody783_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_109

def optimizedBody783_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_14 optimizedBody783_110

def optimizedBody783_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_111

def optimizedBody783_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_108 optimizedBody783_112

def optimizedBody783_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_104 optimizedBody783_113

def optimizedBody783_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_114

def optimizedBody783_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (46, 46)]

def optimizedBody783_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody783_115 optimizedBody783_116

def optimizedBody783_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (46, 46)]

def optimizedBody783_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 46)]

def optimizedBody783_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 46)]

def optimizedBody783_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_120 optimizedBody783_3

def optimizedBody783_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_119, 783, 30)) (some 778) ([2]) (some (2, optimizedBody783_121, 783, 31))

def optimizedBody783_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody783_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_123

def optimizedBody783_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_14 optimizedBody783_124

def optimizedBody783_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_125

def optimizedBody783_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_122 optimizedBody783_126

def optimizedBody783_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_118 optimizedBody783_127

def optimizedBody783_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_128

def optimizedBody783_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_129

def optimizedBody783_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_117 optimizedBody783_130

def optimizedBody783_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_8 optimizedBody783_131

def optimizedBody783_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_103 optimizedBody783_132

def optimizedBody783_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_133

def optimizedBody783_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_102 optimizedBody783_134

def optimizedBody783_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_98 optimizedBody783_135

def optimizedBody783_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_136

def optimizedBody783_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_97 optimizedBody783_137

def optimizedBody783_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_93 optimizedBody783_138

def optimizedBody783_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_139

def optimizedBody783_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(6, 6), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 0), (66, 66), (4, 4),
    (70, 70), (72, 72), (74, 74), (76, 76), (44, 44)]

def optimizedBody783_142 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody783_140 optimizedBody783_141

def optimizedBody783_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 0), (66, 66), (68, 4), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody783_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (6, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (4, 74), (74, 76)]

def optimizedBody783_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (6, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (4, 74), (74, 76)]

def optimizedBody783_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_145 optimizedBody783_3

def optimizedBody783_147 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_144, 783, 32)) (some 735) ([2, 4, 6]) (some (2, optimizedBody783_146, 783, 33))

def optimizedBody783_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 6), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody783_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody783_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody783_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_150 optimizedBody783_3

def optimizedBody783_152 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_149, 783, 34)) (some 735) ([2, 4, 6]) (some (2, optimizedBody783_151, 783, 35))

def optimizedBody783_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 54), (56, 56), (58, 58), (60, 0), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody783_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (6, 58), (4, 60), (60, 62), (62, 64), (0, 66),
    (66, 68), (68, 70), (70, 72), (72, 74)]

def optimizedBody783_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (6, 58), (4, 60), (60, 62), (62, 64),
    (0, 66), (66, 68), (68, 70), (70, 72), (72, 74)]

def optimizedBody783_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_155 optimizedBody783_3

def optimizedBody783_157 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_154, 783, 36)) (some 740) ([2, 4]) (some (2, optimizedBody783_156, 783, 37))

def optimizedBody783_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4), (60, 60),
    (62, 62), (64, 0), (66, 66), (68, 68), (70, 70), (72, 72)]

def optimizedBody783_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 48), (4, 50), (52, 52), (54, 54), (56, 56), (6, 58), (58, 60), (60, 62), (62, 64), (64, 66),
    (66, 68), (68, 70), (70, 72)]

def optimizedBody783_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (52, 52), (54, 54), (56, 56), (6, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (66, 68), (68, 70), (70, 72)]

def optimizedBody783_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_160 optimizedBody783_3

def optimizedBody783_162 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_159, 783, 38)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_161, 783, 39))

def optimizedBody783_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 4), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody783_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (0, 68), (6, 70)]

def optimizedBody783_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (54, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (0, 68), (6, 70)]

def optimizedBody783_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_165 optimizedBody783_3

def optimizedBody783_167 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_164, 783, 40)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_166, 783, 41))

def optimizedBody783_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody783_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody783_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 2)]

def optimizedBody783_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64), (66, 66)]

def optimizedBody783_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody783_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_172 optimizedBody783_3

def optimizedBody783_174 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_171, 783, 42)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_173, 783, 43))

def optimizedBody783_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0), (56, 56), (58, 4), (60, 60), (62, 62),
    (64, 64), (66, 66)]

def optimizedBody783_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (6, 66)]

def optimizedBody783_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (6, 66)]

def optimizedBody783_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_177 optimizedBody783_3

def optimizedBody783_179 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_176, 783, 44)) (some 740) ([2, 4]) (some (2, optimizedBody783_178, 783, 45))

def optimizedBody783_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 6)]

def optimizedBody783_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (6, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66)]

def optimizedBody783_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody783_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_182 optimizedBody783_3

def optimizedBody783_184 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_181, 783, 46)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_183, 783, 47))

def optimizedBody783_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 52), (54, 4), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66)]

def optimizedBody783_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (62, 62), (0, 64), (66, 66)]

def optimizedBody783_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (6, 60), (62, 62), (0, 64),
    (66, 66)]

def optimizedBody783_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_187 optimizedBody783_3

def optimizedBody783_189 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_186, 783, 48)) (some 735) ([2, 4, 6]) (some (2, optimizedBody783_188, 783, 49))

def optimizedBody783_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 6), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 6),
    (62, 62), (64, 0), (66, 66)]

def optimizedBody783_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (6, 64), (66, 66)]

def optimizedBody783_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (56, 56), (58, 58), (60, 60), (62, 62), (6, 64),
    (66, 66)]

def optimizedBody783_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_192 optimizedBody783_3

def optimizedBody783_194 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_191, 783, 50)) (some 734) ([2, 4, 6]) (some (2, optimizedBody783_193, 783, 51))

def optimizedBody783_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 6), (66, 66)]

def optimizedBody783_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (6, 54), (54, 56), (56, 58), (58, 60), (60, 62), (0, 64), (64, 66)]

def optimizedBody783_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (50, 52), (6, 54), (54, 56), (56, 58), (58, 60), (60, 62), (0, 64),
    (64, 66)]

def optimizedBody783_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_197 optimizedBody783_3

def optimizedBody783_199 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_196, 783, 52)) (some 735) ([2, 4, 6]) (some (2, optimizedBody783_198, 783, 53))

def optimizedBody783_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 0), (64, 64)]

def optimizedBody783_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (4, 58), (0, 60), (58, 62), (60, 64)]

def optimizedBody783_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (4, 58), (0, 60), (58, 62), (60, 64)]

def optimizedBody783_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_202 optimizedBody783_3

def optimizedBody783_204 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_201, 783, 54)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_203, 783, 55))

def optimizedBody783_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 0), (58, 58), (60, 60)]

def optimizedBody783_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (6, 56), (56, 58), (58, 60)]

def optimizedBody783_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (6, 56), (56, 58), (58, 60)]

def optimizedBody783_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_207 optimizedBody783_3

def optimizedBody783_209 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_206, 783, 56)) (some 735) ([2, 4, 6]) (some (2, optimizedBody783_208, 783, 57))

def optimizedBody783_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 6), (56, 56), (58, 58)]

def optimizedBody783_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody783_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody783_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_212 optimizedBody783_3

def optimizedBody783_214 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_211, 783, 58)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_213, 783, 59))

def optimizedBody783_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (6, 6), (44, 44), (46, 6), (48, 4), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody783_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (46, 48), (48, 50), (50, 52), (4, 54), (54, 56), (56, 58)]

def optimizedBody783_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48), (48, 50), (50, 52), (4, 54), (54, 56), (56, 58)]

def optimizedBody783_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_217 optimizedBody783_3

def optimizedBody783_219 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_216, 783, 60)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_218, 783, 61))

def optimizedBody783_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4), (54, 54), (56, 56)]

def optimizedBody783_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (52, 54), (6, 56)]

def optimizedBody783_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (52, 54), (6, 56)]

def optimizedBody783_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_222 optimizedBody783_3

def optimizedBody783_224 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody783_221, 783, 62)) (some 735) ([2, 4, 6]) (some (2, optimizedBody783_223, 783, 63))

def optimizedBody783_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 6)]

def optimizedBody783_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody783_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (4, 52), (52, 54)]

def optimizedBody783_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_227 optimizedBody783_3

def optimizedBody783_229 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody783_226, 783, 64)) (some 739) ([2, 4, 6]) (some (2, optimizedBody783_228, 783, 65))

def optimizedBody783_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52)]

def optimizedBody783_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50), (50, 52)]

def optimizedBody783_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (50, 52)]

def optimizedBody783_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_232 optimizedBody783_3

def optimizedBody783_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_231, 783, 66)) (some 729) ([2, 4]) (some (2, optimizedBody783_233, 783, 67))

def optimizedBody783_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody783_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody783_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody783_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody783_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_238 optimizedBody783_3

def optimizedBody783_240 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_237, 783, 68)) (some 729) ([2, 4]) (some (2, optimizedBody783_239, 783, 69))

def optimizedBody783_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody783_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody783_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody783_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody783_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_244 optimizedBody783_3

def optimizedBody783_246 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_243, 783, 70)) (some 729) ([2, 4]) (some (2, optimizedBody783_245, 783, 71))

def optimizedBody783_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody783_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody783_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody783_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_249 optimizedBody783_3

def optimizedBody783_251 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody783_248, 783, 72)) (some 70) ([2]) (some (2, optimizedBody783_250, 783, 73))

def optimizedBody783_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_251 optimizedBody783_19

def optimizedBody783_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_247 optimizedBody783_252

def optimizedBody783_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_253

def optimizedBody783_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_246 optimizedBody783_254

def optimizedBody783_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_242 optimizedBody783_255

def optimizedBody783_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_241 optimizedBody783_256

def optimizedBody783_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_7 optimizedBody783_257

def optimizedBody783_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_258

def optimizedBody783_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_240 optimizedBody783_259

def optimizedBody783_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_236 optimizedBody783_260

def optimizedBody783_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_235 optimizedBody783_261

def optimizedBody783_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_7 optimizedBody783_262

def optimizedBody783_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_263

def optimizedBody783_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_234 optimizedBody783_264

def optimizedBody783_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_230 optimizedBody783_265

def optimizedBody783_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_266

def optimizedBody783_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_229 optimizedBody783_267

def optimizedBody783_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_225 optimizedBody783_268

def optimizedBody783_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_269

def optimizedBody783_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_224 optimizedBody783_270

def optimizedBody783_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_220 optimizedBody783_271

def optimizedBody783_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_272

def optimizedBody783_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_219 optimizedBody783_273

def optimizedBody783_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_215 optimizedBody783_274

def optimizedBody783_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_275

def optimizedBody783_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_214 optimizedBody783_276

def optimizedBody783_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_210 optimizedBody783_277

def optimizedBody783_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_278

def optimizedBody783_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_209 optimizedBody783_279

def optimizedBody783_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_205 optimizedBody783_280

def optimizedBody783_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_281

def optimizedBody783_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_204 optimizedBody783_282

def optimizedBody783_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_200 optimizedBody783_283

def optimizedBody783_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_284

def optimizedBody783_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_199 optimizedBody783_285

def optimizedBody783_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_195 optimizedBody783_286

def optimizedBody783_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_287

def optimizedBody783_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_194 optimizedBody783_288

def optimizedBody783_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_190 optimizedBody783_289

def optimizedBody783_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_290

def optimizedBody783_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_189 optimizedBody783_291

def optimizedBody783_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_185 optimizedBody783_292

def optimizedBody783_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_293

def optimizedBody783_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_184 optimizedBody783_294

def optimizedBody783_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_180 optimizedBody783_295

def optimizedBody783_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_296

def optimizedBody783_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_179 optimizedBody783_297

def optimizedBody783_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_175 optimizedBody783_298

def optimizedBody783_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_299

def optimizedBody783_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_174 optimizedBody783_300

def optimizedBody783_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_170 optimizedBody783_301

def optimizedBody783_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_62 optimizedBody783_302

def optimizedBody783_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_7 optimizedBody783_303

def optimizedBody783_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_169 optimizedBody783_304

def optimizedBody783_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_168 optimizedBody783_305

def optimizedBody783_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_306

def optimizedBody783_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_167 optimizedBody783_307

def optimizedBody783_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_163 optimizedBody783_308

def optimizedBody783_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_309

def optimizedBody783_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_162 optimizedBody783_310

def optimizedBody783_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_158 optimizedBody783_311

def optimizedBody783_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_312

def optimizedBody783_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_157 optimizedBody783_313

def optimizedBody783_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_153 optimizedBody783_314

def optimizedBody783_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_315

def optimizedBody783_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_152 optimizedBody783_316

def optimizedBody783_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_148 optimizedBody783_317

def optimizedBody783_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_318

def optimizedBody783_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_147 optimizedBody783_319

def optimizedBody783_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_143 optimizedBody783_320

def optimizedBody783_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_321

def optimizedBody783_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_322

def optimizedBody783_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_142 optimizedBody783_323

def optimizedBody783_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_8 optimizedBody783_324

def optimizedBody783_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_70 optimizedBody783_325

def optimizedBody783_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_326

def optimizedBody783_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_92 optimizedBody783_327

def optimizedBody783_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_88 optimizedBody783_328

def optimizedBody783_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_329

def optimizedBody783_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_87 optimizedBody783_330

def optimizedBody783_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_83 optimizedBody783_331

def optimizedBody783_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_62 optimizedBody783_332

def optimizedBody783_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_77 optimizedBody783_333

def optimizedBody783_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_334

def optimizedBody783_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_82 optimizedBody783_335

def optimizedBody783_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_78 optimizedBody783_336

def optimizedBody783_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_62 optimizedBody783_337

def optimizedBody783_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_77 optimizedBody783_338

def optimizedBody783_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_339

def optimizedBody783_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_76 optimizedBody783_340

def optimizedBody783_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_72 optimizedBody783_341

def optimizedBody783_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_71 optimizedBody783_342

def optimizedBody783_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_70 optimizedBody783_343

def optimizedBody783_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_69 optimizedBody783_344

def optimizedBody783_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_68 optimizedBody783_345

def optimizedBody783_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_346

def optimizedBody783_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_67 optimizedBody783_347

def optimizedBody783_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_63 optimizedBody783_348

def optimizedBody783_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_62 optimizedBody783_349

def optimizedBody783_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_7 optimizedBody783_350

def optimizedBody783_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_61 optimizedBody783_351

def optimizedBody783_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_60 optimizedBody783_352

def optimizedBody783_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_59 optimizedBody783_353

def optimizedBody783_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_354

def optimizedBody783_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_58 optimizedBody783_355

def optimizedBody783_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_356

def optimizedBody783_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_57 optimizedBody783_357

def optimizedBody783_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_358

def optimizedBody783_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_56 optimizedBody783_359

def optimizedBody783_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_360

def optimizedBody783_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_55 optimizedBody783_361

def optimizedBody783_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_362

def optimizedBody783_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_54 optimizedBody783_363

def optimizedBody783_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_364

def optimizedBody783_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_53 optimizedBody783_365

def optimizedBody783_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_366

def optimizedBody783_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_52 optimizedBody783_367

def optimizedBody783_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_368

def optimizedBody783_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_51 optimizedBody783_369

def optimizedBody783_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_370

def optimizedBody783_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_50 optimizedBody783_371

def optimizedBody783_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_15 optimizedBody783_372

def optimizedBody783_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_49 optimizedBody783_373

def optimizedBody783_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_48 optimizedBody783_374

def optimizedBody783_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_375

def optimizedBody783_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_47 optimizedBody783_376

def optimizedBody783_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_43 optimizedBody783_377

def optimizedBody783_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_42 optimizedBody783_378

def optimizedBody783_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_379

def optimizedBody783_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_41 optimizedBody783_380

def optimizedBody783_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_40 optimizedBody783_381

def optimizedBody783_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_382

def optimizedBody783_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_383

def optimizedBody783_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_39 optimizedBody783_384

def optimizedBody783_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_8 optimizedBody783_385

def optimizedBody783_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_7 optimizedBody783_386

def optimizedBody783_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_387

def optimizedBody783_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_29 optimizedBody783_388

def optimizedBody783_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_25 optimizedBody783_389

def optimizedBody783_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_390

def optimizedBody783_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_391

def optimizedBody783_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_24 optimizedBody783_392

def optimizedBody783_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_8 optimizedBody783_393

def optimizedBody783_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_7 optimizedBody783_394

def optimizedBody783_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_6 optimizedBody783_395

def optimizedBody783_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_5 optimizedBody783_396

def optimizedBody783_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody783_0 optimizedBody783_397

def optimized783 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(783, 4, optimizedBody783_398)
end InitECandidate.Proofs.StackAnalysis
