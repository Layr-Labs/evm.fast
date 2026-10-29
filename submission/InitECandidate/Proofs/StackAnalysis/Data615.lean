import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody615_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 8), (50, 4), (48, 2), (54, 10), (56, 6)]

def optimizedBody615_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (48, 48), (54, 54), (56, 56)]

def optimizedBody615_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48), (54, 54), (56, 56)]

def optimizedBody615_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody615_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_2 optimizedBody615_3

def optimizedBody615_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_1, 615, 2)) (some 69) ([]) (some (2, optimizedBody615_4, 615, 3))

def optimizedBody615_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody615_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody615_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (48, 48), (52, 0), (54, 54), (56, 56)]

def optimizedBody615_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (4, 48), (52, 52), (54, 54), (56, 56)]

def optimizedBody615_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (4, 48), (52, 52), (54, 54), (56, 56)]

def optimizedBody615_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_10 optimizedBody615_3

def optimizedBody615_12 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody615_9, 615, 4)) (some 68) ([2]) (some (2, optimizedBody615_11, 615, 5))

def optimizedBody615_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody615_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 255#64)

def optimizedBody615_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody615_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody615_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody615_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody615_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody615_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody615_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (50, 52), (52, 54), (54, 56)]

def optimizedBody615_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_21 optimizedBody615_3

def optimizedBody615_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody615_20, 615, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody615_22, 615, 7))

def optimizedBody615_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody615_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody615_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54)]

def optimizedBody615_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (48, 50), (50, 52), (6, 54)]

def optimizedBody615_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50), (50, 52), (6, 54)]

def optimizedBody615_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_28 optimizedBody615_3

def optimizedBody615_30 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody615_27, 615, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody615_29, 615, 9))

def optimizedBody615_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody615_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 53#64)))

def optimizedBody615_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody615_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody615_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody615_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_35 optimizedBody615_3

def optimizedBody615_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_34, 615, 10)) (some 158) ([2, 4, 6]) (some (2, optimizedBody615_36, 615, 11))

def optimizedBody615_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody615_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (50, 50)]

def optimizedBody615_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50)]

def optimizedBody615_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_40 optimizedBody615_3

def optimizedBody615_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_39, 615, 12)) (some 68) ([2]) (some (2, optimizedBody615_41, 615, 13))

def optimizedBody615_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody615_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 85#64)

def optimizedBody615_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50)]

def optimizedBody615_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody615_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody615_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_47 optimizedBody615_3

def optimizedBody615_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_46, 615, 14)) (some 158) ([2, 4, 6]) (some (2, optimizedBody615_48, 615, 15))

def optimizedBody615_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody615_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody615_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody615_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody615_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody615_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_54 optimizedBody615_3

def optimizedBody615_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_53, 615, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody615_55, 615, 17))

def optimizedBody615_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody615_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody615_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody615_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_59 optimizedBody615_3

def optimizedBody615_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody615_58, 615, 18)) (some 70) ([2]) (some (2, optimizedBody615_60, 615, 19))

def optimizedBody615_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody615_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody615_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody615_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_63 optimizedBody615_64

def optimizedBody615_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_62 optimizedBody615_65

def optimizedBody615_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_66

def optimizedBody615_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_61 optimizedBody615_67

def optimizedBody615_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_57 optimizedBody615_68

def optimizedBody615_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_69

def optimizedBody615_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_56 optimizedBody615_70

def optimizedBody615_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_52 optimizedBody615_71

def optimizedBody615_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_18 optimizedBody615_72

def optimizedBody615_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_51 optimizedBody615_73

def optimizedBody615_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_50 optimizedBody615_74

def optimizedBody615_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_75

def optimizedBody615_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_49 optimizedBody615_76

def optimizedBody615_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_45 optimizedBody615_77

def optimizedBody615_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_44 optimizedBody615_78

def optimizedBody615_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_43 optimizedBody615_79

def optimizedBody615_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_80

def optimizedBody615_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_42 optimizedBody615_81

def optimizedBody615_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_35 optimizedBody615_82

def optimizedBody615_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_38 optimizedBody615_83

def optimizedBody615_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_84

def optimizedBody615_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_37 optimizedBody615_85

def optimizedBody615_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_33 optimizedBody615_86

def optimizedBody615_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_32 optimizedBody615_87

def optimizedBody615_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_31 optimizedBody615_88

def optimizedBody615_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_89

def optimizedBody615_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_30 optimizedBody615_90

def optimizedBody615_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_26 optimizedBody615_91

def optimizedBody615_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_25 optimizedBody615_92

def optimizedBody615_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_17 optimizedBody615_93

def optimizedBody615_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_24 optimizedBody615_94

def optimizedBody615_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_13 optimizedBody615_95

def optimizedBody615_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_96

def optimizedBody615_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_23 optimizedBody615_97

def optimizedBody615_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_19 optimizedBody615_98

def optimizedBody615_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_18 optimizedBody615_99

def optimizedBody615_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_17 optimizedBody615_100

def optimizedBody615_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_16 optimizedBody615_101

def optimizedBody615_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_13 optimizedBody615_102

def optimizedBody615_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_15 optimizedBody615_103

def optimizedBody615_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_14 optimizedBody615_104

def optimizedBody615_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_13 optimizedBody615_105

def optimizedBody615_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_106

def optimizedBody615_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_12 optimizedBody615_107

def optimizedBody615_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_8 optimizedBody615_108

def optimizedBody615_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_7 optimizedBody615_109

def optimizedBody615_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_6 optimizedBody615_110

def optimizedBody615_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_5 optimizedBody615_111

def optimizedBody615_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody615_0 optimizedBody615_112

def optimized615 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(615, 6, optimizedBody615_113)
end InitECandidate.Proofs.StackAnalysis
