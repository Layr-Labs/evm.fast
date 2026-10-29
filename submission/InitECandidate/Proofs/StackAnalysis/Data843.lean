import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody843_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody843_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody843_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody843_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody843_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_2 optimizedBody843_3

def optimizedBody843_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_1, 843, 2)) (some 841) ([2]) (some (2, optimizedBody843_4, 843, 3))

def optimizedBody843_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody843_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody843_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 400#64)))

def optimizedBody843_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (6, 48), (50, 50), (4, 52)]

def optimizedBody843_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (50, 50), (4, 52)]

def optimizedBody843_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_10 optimizedBody843_3

def optimizedBody843_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_9, 843, 4)) (some 68) ([2]) (some (2, optimizedBody843_11, 843, 5))

def optimizedBody843_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody843_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody843_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody843_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody843_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody843_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody843_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody843_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody843_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_19 optimizedBody843_20

def optimizedBody843_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_18 optimizedBody843_21

def optimizedBody843_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_17 optimizedBody843_22

def optimizedBody843_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_23

def optimizedBody843_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def optimizedBody843_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_25 optimizedBody843_21

def optimizedBody843_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_17 optimizedBody843_26

def optimizedBody843_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_27

def optimizedBody843_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 8) optimizedBody843_24 optimizedBody843_28

def optimizedBody843_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody843_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 2)]

def optimizedBody843_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody843_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52)]

def optimizedBody843_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_33 optimizedBody843_3

def optimizedBody843_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_32, 843, 6)) (some 177) ([2, 4]) (some (2, optimizedBody843_34, 843, 7))

def optimizedBody843_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody843_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody843_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 0)]

def optimizedBody843_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody843_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody843_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody843_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_41 optimizedBody843_3

def optimizedBody843_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_40, 843, 8)) (some 68) ([2]) (some (2, optimizedBody843_42, 843, 9))

def optimizedBody843_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 4)]

def optimizedBody843_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (4, 54)]

def optimizedBody843_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (4, 54)]

def optimizedBody843_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_46 optimizedBody843_3

def optimizedBody843_48 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody843_45, 843, 10)) (some 839) ([2, 4]) (some (2, optimizedBody843_47, 843, 11))

def optimizedBody843_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody843_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 256#64)

def optimizedBody843_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2)]

def optimizedBody843_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (46, 48), (48, 50), (6, 52)]

def optimizedBody843_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (6, 52)]

def optimizedBody843_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_53 optimizedBody843_3

def optimizedBody843_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_52, 843, 12)) (some 176) ([2, 4, 6]) (some (2, optimizedBody843_54, 843, 13))

def optimizedBody843_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody843_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody843_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 2)]

def optimizedBody843_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (48, 48), (4, 50)]

def optimizedBody843_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (4, 50)]

def optimizedBody843_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_60 optimizedBody843_3

def optimizedBody843_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_59, 843, 14)) (some 842) ([2, 4]) (some (2, optimizedBody843_61, 843, 15))

def optimizedBody843_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody843_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 6), (48, 48)]

def optimizedBody843_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (6, 46), (4, 48)]

def optimizedBody843_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (4, 48)]

def optimizedBody843_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_66 optimizedBody843_3

def optimizedBody843_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody843_65, 843, 16)) (some 840) ([2, 4]) (some (2, optimizedBody843_67, 843, 17))

def optimizedBody843_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody843_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody843_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody843_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody843_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody843_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody843_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody843_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody843_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_75 optimizedBody843_76

def optimizedBody843_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_74 optimizedBody843_77

def optimizedBody843_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_73 optimizedBody843_78

def optimizedBody843_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_72 optimizedBody843_79

def optimizedBody843_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_69 optimizedBody843_80

def optimizedBody843_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_71 optimizedBody843_81

def optimizedBody843_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_15 optimizedBody843_82

def optimizedBody843_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_83

def optimizedBody843_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 0), (10, 6)]

def optimizedBody843_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody843_84 optimizedBody843_85

def optimizedBody843_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 12)]

def optimizedBody843_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_87 optimizedBody843_76

def optimizedBody843_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_88

def optimizedBody843_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_89

def optimizedBody843_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_86 optimizedBody843_90

def optimizedBody843_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_70 optimizedBody843_91

def optimizedBody843_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_69 optimizedBody843_92

def optimizedBody843_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_93

def optimizedBody843_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_68 optimizedBody843_94

def optimizedBody843_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_64 optimizedBody843_95

def optimizedBody843_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_63 optimizedBody843_96

def optimizedBody843_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_36 optimizedBody843_97

def optimizedBody843_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_98

def optimizedBody843_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_62 optimizedBody843_99

def optimizedBody843_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_58 optimizedBody843_100

def optimizedBody843_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_57 optimizedBody843_101

def optimizedBody843_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_56 optimizedBody843_102

def optimizedBody843_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_103

def optimizedBody843_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_55 optimizedBody843_104

def optimizedBody843_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_51 optimizedBody843_105

def optimizedBody843_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_50 optimizedBody843_106

def optimizedBody843_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_49 optimizedBody843_107

def optimizedBody843_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_108

def optimizedBody843_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_48 optimizedBody843_109

def optimizedBody843_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_44 optimizedBody843_110

def optimizedBody843_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_111

def optimizedBody843_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_43 optimizedBody843_112

def optimizedBody843_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_2 optimizedBody843_113

def optimizedBody843_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_39 optimizedBody843_114

def optimizedBody843_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_38 optimizedBody843_115

def optimizedBody843_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_37 optimizedBody843_116

def optimizedBody843_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_36 optimizedBody843_117

def optimizedBody843_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_118

def optimizedBody843_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_35 optimizedBody843_119

def optimizedBody843_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_31 optimizedBody843_120

def optimizedBody843_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_30 optimizedBody843_121

def optimizedBody843_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_17 optimizedBody843_122

def optimizedBody843_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_123

def optimizedBody843_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_29 optimizedBody843_124

def optimizedBody843_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_16 optimizedBody843_125

def optimizedBody843_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_15 optimizedBody843_126

def optimizedBody843_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_14 optimizedBody843_127

def optimizedBody843_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_7 optimizedBody843_128

def optimizedBody843_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_13 optimizedBody843_129

def optimizedBody843_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_7 optimizedBody843_130

def optimizedBody843_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_131

def optimizedBody843_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_12 optimizedBody843_132

def optimizedBody843_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_2 optimizedBody843_133

def optimizedBody843_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_8 optimizedBody843_134

def optimizedBody843_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_7 optimizedBody843_135

def optimizedBody843_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_6 optimizedBody843_136

def optimizedBody843_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_5 optimizedBody843_137

def optimizedBody843_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody843_0 optimizedBody843_138

def optimized843 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(843, 5, optimizedBody843_139)
end InitECandidate.Proofs.StackAnalysis
