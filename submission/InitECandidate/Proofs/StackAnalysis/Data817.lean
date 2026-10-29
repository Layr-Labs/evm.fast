import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody817_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (52, 4), (46, 2)]

def optimizedBody817_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (46, 46)]

def optimizedBody817_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46)]

def optimizedBody817_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody817_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_2 optimizedBody817_3

def optimizedBody817_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_1, 817, 2)) (some 69) ([]) (some (2, optimizedBody817_4, 817, 3))

def optimizedBody817_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody817_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody817_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 0)]

def optimizedBody817_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (46, 46), (62, 62)]

def optimizedBody817_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62)]

def optimizedBody817_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_10 optimizedBody817_3

def optimizedBody817_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_9, 817, 4)) (some 68) ([2]) (some (2, optimizedBody817_11, 817, 5))

def optimizedBody817_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody817_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62), (48, 0)]

def optimizedBody817_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (46, 46), (62, 62), (48, 48)]

def optimizedBody817_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62), (48, 48)]

def optimizedBody817_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_16 optimizedBody817_3

def optimizedBody817_18 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody817_15, 817, 6)) (some 68) ([2]) (some (2, optimizedBody817_17, 817, 7))

def optimizedBody817_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62), (50, 0), (48, 48)]

def optimizedBody817_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (52, 52), (0, 46), (62, 62), (50, 50), (6, 48)]

def optimizedBody817_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (0, 46), (62, 62), (50, 50), (6, 48)]

def optimizedBody817_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_21 optimizedBody817_3

def optimizedBody817_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_20, 817, 8)) (some 68) ([2]) (some (2, optimizedBody817_22, 817, 9))

def optimizedBody817_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody817_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody817_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody817_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody817_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (52, 52), (46, 8), (48, 0), (62, 62), (50, 50), (54, 6)]

def optimizedBody817_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (46, 46), (4, 48), (62, 62), (50, 50), (0, 54)]

def optimizedBody817_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (4, 48), (62, 62), (50, 50), (0, 54)]

def optimizedBody817_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_30 optimizedBody817_3

def optimizedBody817_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_29, 817, 10)) (some 153) ([2, 4, 6]) (some (2, optimizedBody817_31, 817, 11))

def optimizedBody817_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody817_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody817_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody817_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody817_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody817_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (52, 52), (46, 46), (48, 4), (62, 62), (50, 50)]

def optimizedBody817_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (52, 52), (46, 46), (0, 48), (62, 62), (4, 50)]

def optimizedBody817_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (0, 48), (62, 62), (4, 50)]

def optimizedBody817_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_40 optimizedBody817_3

def optimizedBody817_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_39, 817, 12)) (some 79) ([2, 4, 6]) (some (2, optimizedBody817_41, 817, 13))

def optimizedBody817_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody817_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (48, 44)]

def optimizedBody817_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody817_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48)]

def optimizedBody817_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_46 optimizedBody817_3

def optimizedBody817_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_45, 817, 14)) (some 70) ([2]) (some (2, optimizedBody817_47, 817, 15))

def optimizedBody817_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody817_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody817_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody817_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_50 optimizedBody817_51

def optimizedBody817_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_49 optimizedBody817_52

def optimizedBody817_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_53

def optimizedBody817_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_48 optimizedBody817_54

def optimizedBody817_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_44 optimizedBody817_55

def optimizedBody817_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_56

def optimizedBody817_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(52, 52), (46, 46), (0, 0), (62, 62), (4, 4), (44, 44)]

def optimizedBody817_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody817_57 optimizedBody817_58

def optimizedBody817_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (46, 46), (48, 0), (62, 62), (64, 4)]

def optimizedBody817_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (52, 52), (4, 46), (0, 48), (62, 62), (64, 64)]

def optimizedBody817_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (4, 46), (0, 48), (62, 62), (64, 64)]

def optimizedBody817_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_62 optimizedBody817_3

def optimizedBody817_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_61, 817, 16)) (some 806) ([2, 4]) (some (2, optimizedBody817_63, 817, 17))

def optimizedBody817_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (46, 44)]

def optimizedBody817_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46)]

def optimizedBody817_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 46)]

def optimizedBody817_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_67 optimizedBody817_3

def optimizedBody817_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_66, 817, 18)) (some 70) ([2]) (some (2, optimizedBody817_68, 817, 19))

def optimizedBody817_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_69 optimizedBody817_54

def optimizedBody817_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_65 optimizedBody817_70

def optimizedBody817_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_71

def optimizedBody817_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(52, 52), (4, 4), (0, 0), (62, 62), (64, 64), (44, 44)]

def optimizedBody817_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody817_72 optimizedBody817_73

def optimizedBody817_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody817_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (58, 4), (46, 0), (62, 62), (64, 64)]

def optimizedBody817_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (52, 52), (58, 58), (0, 46), (62, 62), (64, 64)]

def optimizedBody817_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (58, 58), (0, 46), (62, 62), (64, 64)]

def optimizedBody817_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_78 optimizedBody817_3

def optimizedBody817_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_77, 817, 20)) (some 806) ([2, 4]) (some (2, optimizedBody817_79, 817, 21))

def optimizedBody817_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody817_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 46)]

def optimizedBody817_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 46)]

def optimizedBody817_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_83 optimizedBody817_3

def optimizedBody817_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_82, 817, 22)) (some 70) ([2]) (some (2, optimizedBody817_84, 817, 23))

def optimizedBody817_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody817_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_50 optimizedBody817_86

def optimizedBody817_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_49 optimizedBody817_87

def optimizedBody817_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_88

def optimizedBody817_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_85 optimizedBody817_89

def optimizedBody817_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_65 optimizedBody817_90

def optimizedBody817_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_91

def optimizedBody817_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(52, 52), (58, 58), (0, 0), (62, 62), (64, 64), (44, 44)]

def optimizedBody817_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody817_92 optimizedBody817_93

def optimizedBody817_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody817_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody817_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (58, 58), (46, 0), (62, 62), (64, 64)]

def optimizedBody817_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (8, 8), (12, 2), (6, 6), (44, 44), (52, 52), (58, 58), (10, 46), (62, 62), (64, 64)]

def optimizedBody817_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (58, 58), (10, 46), (62, 62), (64, 64)]

def optimizedBody817_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_99 optimizedBody817_3

def optimizedBody817_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_98, 817, 24)) (some 146) ([2, 4]) (some (2, optimizedBody817_100, 817, 25))

def optimizedBody817_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody817_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody817_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (52, 52), (58, 58), (60, 10), (48, 8), (62, 62), (64, 64), (50, 12), (54, 6)]

def optimizedBody817_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (24, 2), (6, 6), (44, 44), (0, 46), (52, 52), (58, 58), (60, 60), (20, 48), (62, 62), (64, 64),
    (22, 50), (18, 54)]

def optimizedBody817_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (52, 52), (58, 58), (60, 60), (20, 48), (62, 62), (64, 64), (22, 50), (18, 54)]

def optimizedBody817_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_106 optimizedBody817_3

def optimizedBody817_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_105, 817, 26)) (some 146) ([2, 4]) (some (2, optimizedBody817_107, 817, 27))

def optimizedBody817_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody817_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody817_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody817_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551224#64))

def optimizedBody817_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 1344#64))

def optimizedBody817_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody817_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 1352#64))

def optimizedBody817_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 1360#64))

def optimizedBody817_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 1368#64))

def optimizedBody817_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 4), (48, 16), (50, 8),
    (52, 52), (54, 10), (56, 14), (58, 58), (60, 60), (62, 62), (64, 64), (66, 12), (68, 24), (70, 6)]

def optimizedBody817_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (4, 46), (16, 48), (8, 50), (48, 52), (10, 54), (14, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (12, 66), (0, 68), (6, 70)]

def optimizedBody817_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (8, 50), (48, 52), (10, 54), (14, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (12, 66), (0, 68), (6, 70)]

def optimizedBody817_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_120 optimizedBody817_3

def optimizedBody817_122 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody817_119, 817, 28)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody817_121, 817, 29))

def optimizedBody817_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 16), (48, 48), (50, 10),
    (52, 14), (54, 18), (56, 56), (58, 58), (60, 60), (62, 62), (64, 12)]

def optimizedBody817_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (8, 56), (10, 58), (54, 60), (6, 62), (56, 64)]

def optimizedBody817_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (8, 56), (10, 58), (54, 60), (6, 62), (56, 64)]

def optimizedBody817_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_125 optimizedBody817_3

def optimizedBody817_127 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody817_124, 817, 30)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody817_126, 817, 31))

def optimizedBody817_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_49 optimizedBody817_114

def optimizedBody817_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_43 optimizedBody817_114

def optimizedBody817_130 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody817_128 optimizedBody817_129

def optimizedBody817_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody817_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody817_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_34 optimizedBody817_132

def optimizedBody817_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody817_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_134 optimizedBody817_132

def optimizedBody817_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody817_133 optimizedBody817_135

def optimizedBody817_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody817_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody817_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 54), (58, 44)]

def optimizedBody817_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 58)]

def optimizedBody817_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 58)]

def optimizedBody817_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_141 optimizedBody817_3

def optimizedBody817_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_140, 817, 32)) (some 70) ([2]) (some (2, optimizedBody817_142, 817, 33))

def optimizedBody817_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody817_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_50 optimizedBody817_144

def optimizedBody817_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_49 optimizedBody817_145

def optimizedBody817_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_146

def optimizedBody817_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_143 optimizedBody817_147

def optimizedBody817_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_139 optimizedBody817_148

def optimizedBody817_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_149

def optimizedBody817_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (52, 52), (8, 8), (10, 10), (54, 54), (6, 6), (56, 56), (44, 44)]

def optimizedBody817_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody817_150 optimizedBody817_151

def optimizedBody817_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 6)]

def optimizedBody817_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody817_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody817_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody817_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56)]

def optimizedBody817_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56)]

def optimizedBody817_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_158 optimizedBody817_3

def optimizedBody817_160 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody817_157, 817, 34)) (some 808) ([2, 4, 6, 8]) (some (2, optimizedBody817_159, 817, 35))

def optimizedBody817_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56)]

def optimizedBody817_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (46, 46), (0, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody817_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (46, 46), (0, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody817_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_163 optimizedBody817_3

def optimizedBody817_165 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody817_162, 817, 36)) (some 70) ([2]) (some (2, optimizedBody817_164, 817, 37))

def optimizedBody817_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody817_167 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody817_54 optimizedBody817_166

def optimizedBody817_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody817_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 6), (46, 46), (48, 2), (50, 50), (52, 52), (54, 54)]

def optimizedBody817_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (0, 48), (10, 50), (6, 52), (4, 54)]

def optimizedBody817_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (0, 48), (10, 50), (6, 52), (4, 54)]

def optimizedBody817_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_171 optimizedBody817_3

def optimizedBody817_173 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody817_170, 817, 38)) (some 78) ([2, 4]) (some (2, optimizedBody817_172, 817, 39))

def optimizedBody817_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 0 (Flapjack.WordRegImm.imm 30#64)))

def optimizedBody817_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody817_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody817_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody817_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody817_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody817_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody817_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody817_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_181 optimizedBody817_3

def optimizedBody817_183 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody817_180, 817, 40)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody817_182, 817, 41))

def optimizedBody817_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_43 optimizedBody817_145

def optimizedBody817_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_184

def optimizedBody817_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_183 optimizedBody817_185

def optimizedBody817_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_179 optimizedBody817_186

def optimizedBody817_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_178 optimizedBody817_187

def optimizedBody817_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_177 optimizedBody817_188

def optimizedBody817_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_176 optimizedBody817_189

def optimizedBody817_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_175 optimizedBody817_190

def optimizedBody817_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_174 optimizedBody817_191

def optimizedBody817_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_24 optimizedBody817_192

def optimizedBody817_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_193

def optimizedBody817_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_173 optimizedBody817_194

def optimizedBody817_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_169 optimizedBody817_195

def optimizedBody817_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_168 optimizedBody817_196

def optimizedBody817_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_33 optimizedBody817_197

def optimizedBody817_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_198

def optimizedBody817_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_199

def optimizedBody817_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_167 optimizedBody817_200

def optimizedBody817_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_43 optimizedBody817_201

def optimizedBody817_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_81 optimizedBody817_202

def optimizedBody817_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_203

def optimizedBody817_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_165 optimizedBody817_204

def optimizedBody817_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_161 optimizedBody817_205

def optimizedBody817_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_206

def optimizedBody817_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_160 optimizedBody817_207

def optimizedBody817_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_156 optimizedBody817_208

def optimizedBody817_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_155 optimizedBody817_209

def optimizedBody817_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_102 optimizedBody817_210

def optimizedBody817_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_154 optimizedBody817_211

def optimizedBody817_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_153 optimizedBody817_212

def optimizedBody817_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_213

def optimizedBody817_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_214

def optimizedBody817_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_152 optimizedBody817_215

def optimizedBody817_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_138 optimizedBody817_216

def optimizedBody817_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_137 optimizedBody817_217

def optimizedBody817_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_131 optimizedBody817_218

def optimizedBody817_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_219

def optimizedBody817_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_136 optimizedBody817_220

def optimizedBody817_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_131 optimizedBody817_221

def optimizedBody817_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_24 optimizedBody817_222

def optimizedBody817_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_223

def optimizedBody817_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_130 optimizedBody817_224

def optimizedBody817_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_43 optimizedBody817_225

def optimizedBody817_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_81 optimizedBody817_226

def optimizedBody817_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_227

def optimizedBody817_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_127 optimizedBody817_228

def optimizedBody817_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_123 optimizedBody817_229

def optimizedBody817_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_230

def optimizedBody817_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_122 optimizedBody817_231

def optimizedBody817_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_118 optimizedBody817_232

def optimizedBody817_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_117 optimizedBody817_233

def optimizedBody817_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_114 optimizedBody817_234

def optimizedBody817_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_116 optimizedBody817_235

def optimizedBody817_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_114 optimizedBody817_236

def optimizedBody817_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_115 optimizedBody817_237

def optimizedBody817_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_114 optimizedBody817_238

def optimizedBody817_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_113 optimizedBody817_239

def optimizedBody817_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_112 optimizedBody817_240

def optimizedBody817_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_111 optimizedBody817_241

def optimizedBody817_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_110 optimizedBody817_242

def optimizedBody817_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_109 optimizedBody817_243

def optimizedBody817_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_244

def optimizedBody817_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_108 optimizedBody817_245

def optimizedBody817_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_104 optimizedBody817_246

def optimizedBody817_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_96 optimizedBody817_247

def optimizedBody817_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_103 optimizedBody817_248

def optimizedBody817_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_102 optimizedBody817_249

def optimizedBody817_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_250

def optimizedBody817_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_101 optimizedBody817_251

def optimizedBody817_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_97 optimizedBody817_252

def optimizedBody817_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_96 optimizedBody817_253

def optimizedBody817_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_95 optimizedBody817_254

def optimizedBody817_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_24 optimizedBody817_255

def optimizedBody817_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_256

def optimizedBody817_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_257

def optimizedBody817_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_94 optimizedBody817_258

def optimizedBody817_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_43 optimizedBody817_259

def optimizedBody817_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_81 optimizedBody817_260

def optimizedBody817_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_261

def optimizedBody817_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_80 optimizedBody817_262

def optimizedBody817_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_76 optimizedBody817_263

def optimizedBody817_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_75 optimizedBody817_264

def optimizedBody817_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_24 optimizedBody817_265

def optimizedBody817_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_266

def optimizedBody817_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_267

def optimizedBody817_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_74 optimizedBody817_268

def optimizedBody817_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_43 optimizedBody817_269

def optimizedBody817_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_26 optimizedBody817_270

def optimizedBody817_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_271

def optimizedBody817_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_64 optimizedBody817_272

def optimizedBody817_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_60 optimizedBody817_273

def optimizedBody817_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_25 optimizedBody817_274

def optimizedBody817_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_24 optimizedBody817_275

def optimizedBody817_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_276

def optimizedBody817_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_277

def optimizedBody817_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_59 optimizedBody817_278

def optimizedBody817_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_43 optimizedBody817_279

def optimizedBody817_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_26 optimizedBody817_280

def optimizedBody817_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_281

def optimizedBody817_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_42 optimizedBody817_282

def optimizedBody817_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_38 optimizedBody817_283

def optimizedBody817_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_37 optimizedBody817_284

def optimizedBody817_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_36 optimizedBody817_285

def optimizedBody817_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_35 optimizedBody817_286

def optimizedBody817_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_34 optimizedBody817_287

def optimizedBody817_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_33 optimizedBody817_288

def optimizedBody817_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_289

def optimizedBody817_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_32 optimizedBody817_290

def optimizedBody817_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_28 optimizedBody817_291

def optimizedBody817_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_27 optimizedBody817_292

def optimizedBody817_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_26 optimizedBody817_293

def optimizedBody817_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_25 optimizedBody817_294

def optimizedBody817_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_24 optimizedBody817_295

def optimizedBody817_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_296

def optimizedBody817_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_23 optimizedBody817_297

def optimizedBody817_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_19 optimizedBody817_298

def optimizedBody817_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_13 optimizedBody817_299

def optimizedBody817_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_300

def optimizedBody817_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_18 optimizedBody817_301

def optimizedBody817_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_14 optimizedBody817_302

def optimizedBody817_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_13 optimizedBody817_303

def optimizedBody817_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_304

def optimizedBody817_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_12 optimizedBody817_305

def optimizedBody817_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_8 optimizedBody817_306

def optimizedBody817_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_7 optimizedBody817_307

def optimizedBody817_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_6 optimizedBody817_308

def optimizedBody817_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_5 optimizedBody817_309

def optimizedBody817_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody817_0 optimizedBody817_310

def optimized817 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(817, 3, optimizedBody817_311)
end InitECandidate.Proofs.StackAnalysis
