import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source829
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles829
def optimizedBody829_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (52, 4), (46, 2)]

def optimizedBody829_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (46, 46)]

def optimizedBody829_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46)]

def optimizedBody829_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody829_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_2 optimizedBody829_3

def optimizedBody829_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody829_1, 829, 2)) (some 69) ([]) (some (2, optimizedBody829_4, 829, 3))

def optimizedBody829_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody829_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody829_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 0)]

def optimizedBody829_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (46, 46), (62, 62)]

def optimizedBody829_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62)]

def optimizedBody829_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_10 optimizedBody829_3

def optimizedBody829_12 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_9, 829, 4)) (some 68) ([2]) (some (2, optimizedBody829_11, 829, 5))

def optimizedBody829_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody829_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62), (48, 0)]

def optimizedBody829_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (52, 52), (46, 46), (62, 62), (48, 48)]

def optimizedBody829_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62), (48, 48)]

def optimizedBody829_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_16 optimizedBody829_3

def optimizedBody829_18 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_15, 829, 6)) (some 68) ([2]) (some (2, optimizedBody829_17, 829, 7))

def optimizedBody829_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (62, 62), (50, 0), (48, 48)]

def optimizedBody829_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (52, 52), (0, 46), (62, 62), (50, 50), (6, 48)]

def optimizedBody829_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (0, 46), (62, 62), (50, 50), (6, 48)]

def optimizedBody829_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_21 optimizedBody829_3

def optimizedBody829_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_20, 829, 8)) (some 68) ([2]) (some (2, optimizedBody829_22, 829, 9))

def optimizedBody829_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody829_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody829_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody829_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 48#64)

def optimizedBody829_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (52, 52), (46, 8), (48, 0), (62, 62), (50, 50), (54, 6)]

def optimizedBody829_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 52), (46, 46), (4, 48), (62, 62), (50, 50), (0, 54)]

def optimizedBody829_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (4, 48), (62, 62), (50, 50), (0, 54)]

def optimizedBody829_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_30 optimizedBody829_3

def optimizedBody829_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_29, 829, 10)) (some 153) ([2, 4, 6]) (some (2, optimizedBody829_31, 829, 11))

def optimizedBody829_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody829_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody829_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody829_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody829_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody829_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (52, 52), (46, 46), (48, 4), (62, 62), (50, 50)]

def optimizedBody829_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (52, 52), (46, 46), (0, 48), (62, 62), (4, 50)]

def optimizedBody829_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (46, 46), (0, 48), (62, 62), (4, 50)]

def optimizedBody829_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_40 optimizedBody829_3

def optimizedBody829_42 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_39, 829, 12)) (some 79) ([2, 4, 6]) (some (2, optimizedBody829_41, 829, 13))

def optimizedBody829_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody829_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (48, 44)]

def optimizedBody829_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 48)]

def optimizedBody829_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 48)]

def optimizedBody829_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_46 optimizedBody829_3

def optimizedBody829_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody829_45, 829, 14)) (some 70) ([2]) (some (2, optimizedBody829_47, 829, 15))

def optimizedBody829_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody829_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody829_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody829_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_50 optimizedBody829_51

def optimizedBody829_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_49 optimizedBody829_52

def optimizedBody829_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_53

def optimizedBody829_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_48 optimizedBody829_54

def optimizedBody829_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_44 optimizedBody829_55

def optimizedBody829_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_56

def optimizedBody829_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(52, 52), (46, 46), (0, 0), (62, 62), (4, 4), (44, 44)]

def optimizedBody829_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody829_57 optimizedBody829_58

def optimizedBody829_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (46, 46), (48, 0), (62, 62), (64, 4)]

def optimizedBody829_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (52, 52), (4, 46), (0, 48), (62, 62), (64, 64)]

def optimizedBody829_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (4, 46), (0, 48), (62, 62), (64, 64)]

def optimizedBody829_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_62 optimizedBody829_3

def optimizedBody829_64 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_61, 829, 16)) (some 818) ([2, 4]) (some (2, optimizedBody829_63, 829, 17))

def optimizedBody829_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 62), (46, 44)]

def optimizedBody829_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46)]

def optimizedBody829_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 46)]

def optimizedBody829_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_67 optimizedBody829_3

def optimizedBody829_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody829_66, 829, 18)) (some 70) ([2]) (some (2, optimizedBody829_68, 829, 19))

def optimizedBody829_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_69 optimizedBody829_54

def optimizedBody829_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_65 optimizedBody829_70

def optimizedBody829_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_71

def optimizedBody829_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(52, 52), (4, 4), (0, 0), (62, 62), (64, 64), (44, 44)]

def optimizedBody829_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody829_72 optimizedBody829_73

def optimizedBody829_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody829_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (58, 4), (46, 0), (62, 62), (64, 64)]

def optimizedBody829_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (52, 52), (58, 58), (0, 46), (62, 62), (64, 64)]

def optimizedBody829_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (58, 58), (0, 46), (62, 62), (64, 64)]

def optimizedBody829_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_78 optimizedBody829_3

def optimizedBody829_80 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_77, 829, 20)) (some 818) ([2, 4]) (some (2, optimizedBody829_79, 829, 21))

def optimizedBody829_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody829_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 46)]

def optimizedBody829_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 46)]

def optimizedBody829_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_83 optimizedBody829_3

def optimizedBody829_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody829_82, 829, 22)) (some 70) ([2]) (some (2, optimizedBody829_84, 829, 23))

def optimizedBody829_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody829_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_50 optimizedBody829_86

def optimizedBody829_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_49 optimizedBody829_87

def optimizedBody829_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_88

def optimizedBody829_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_85 optimizedBody829_89

def optimizedBody829_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_65 optimizedBody829_90

def optimizedBody829_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_91

def optimizedBody829_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(52, 52), (58, 58), (0, 0), (62, 62), (64, 64), (44, 44)]

def optimizedBody829_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody829_92 optimizedBody829_93

def optimizedBody829_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody829_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody829_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (52, 52), (58, 58), (46, 0), (62, 62), (64, 64)]

def optimizedBody829_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (8, 8), (12, 2), (6, 6), (44, 44), (52, 52), (58, 58), (10, 46), (62, 62), (64, 64)]

def optimizedBody829_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (58, 58), (10, 46), (62, 62), (64, 64)]

def optimizedBody829_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_99 optimizedBody829_3

def optimizedBody829_101 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_98, 829, 24)) (some 146) ([2, 4]) (some (2, optimizedBody829_100, 829, 25))

def optimizedBody829_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody829_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody829_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (52, 52), (58, 58), (60, 10), (48, 8), (62, 62), (64, 64), (50, 12), (54, 6)]

def optimizedBody829_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (24, 2), (6, 6), (44, 44), (0, 46), (52, 52), (58, 58), (60, 60), (20, 48), (62, 62), (64, 64),
    (22, 50), (18, 54)]

def optimizedBody829_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (52, 52), (58, 58), (60, 60), (20, 48), (62, 62), (64, 64), (22, 50), (18, 54)]

def optimizedBody829_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_106 optimizedBody829_3

def optimizedBody829_108 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_105, 829, 26)) (some 146) ([2, 4]) (some (2, optimizedBody829_107, 829, 27))

def optimizedBody829_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody829_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody829_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody829_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551104#64))

def optimizedBody829_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 1344#64))

def optimizedBody829_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody829_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 1352#64))

def optimizedBody829_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 1360#64))

def optimizedBody829_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 1368#64))

def optimizedBody829_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 22), (4, 0), (6, 18), (8, 20), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 4), (48, 16), (50, 8),
    (52, 52), (54, 10), (56, 14), (58, 58), (60, 60), (62, 62), (64, 64), (66, 12), (68, 24), (70, 6)]

def optimizedBody829_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (4, 46), (16, 48), (8, 50), (48, 52), (10, 54), (14, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (12, 66), (0, 68), (6, 70)]

def optimizedBody829_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (16, 48), (8, 50), (48, 52), (10, 54), (14, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (12, 66), (0, 68), (6, 70)]

def optimizedBody829_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_120 optimizedBody829_3

def optimizedBody829_122 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_119, 829, 28)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody829_121, 829, 29))

def optimizedBody829_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 16), (48, 48), (50, 10),
    (52, 14), (54, 18), (56, 56), (58, 58), (60, 60), (62, 62), (64, 12)]

def optimizedBody829_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (8, 56), (10, 58), (54, 60), (6, 62), (56, 64)]

def optimizedBody829_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (4, 54), (8, 56), (10, 58), (54, 60), (6, 62), (56, 64)]

def optimizedBody829_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_125 optimizedBody829_3

def optimizedBody829_127 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_124, 829, 30)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody829_126, 829, 31))

def optimizedBody829_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_49 optimizedBody829_114

def optimizedBody829_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_43 optimizedBody829_114

def optimizedBody829_130 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody829_128 optimizedBody829_129

def optimizedBody829_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody829_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody829_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_34 optimizedBody829_132

def optimizedBody829_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody829_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_134 optimizedBody829_132

def optimizedBody829_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody829_133 optimizedBody829_135

def optimizedBody829_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody829_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody829_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 54), (58, 44)]

def optimizedBody829_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 58)]

def optimizedBody829_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 58)]

def optimizedBody829_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_141 optimizedBody829_3

def optimizedBody829_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody829_140, 829, 32)) (some 70) ([2]) (some (2, optimizedBody829_142, 829, 33))

def optimizedBody829_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody829_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_50 optimizedBody829_144

def optimizedBody829_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_49 optimizedBody829_145

def optimizedBody829_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_146

def optimizedBody829_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_143 optimizedBody829_147

def optimizedBody829_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_139 optimizedBody829_148

def optimizedBody829_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_149

def optimizedBody829_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (52, 52), (8, 8), (10, 10), (54, 54), (6, 6), (56, 56), (44, 44)]

def optimizedBody829_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody829_150 optimizedBody829_151

def optimizedBody829_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 6)]

def optimizedBody829_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody829_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody829_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody829_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56)]

def optimizedBody829_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (0, 54), (56, 56)]

def optimizedBody829_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_158 optimizedBody829_3

def optimizedBody829_160 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_157, 829, 34)) (some 820) ([2, 4, 6, 8]) (some (2, optimizedBody829_159, 829, 35))

def optimizedBody829_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 4), (56, 56)]

def optimizedBody829_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (46, 46), (0, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody829_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (46, 46), (0, 48), (50, 50), (52, 52), (4, 54), (54, 56)]

def optimizedBody829_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_163 optimizedBody829_3

def optimizedBody829_165 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_162, 829, 36)) (some 70) ([2]) (some (2, optimizedBody829_164, 829, 37))

def optimizedBody829_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody829_167 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody829_54 optimizedBody829_166

def optimizedBody829_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody829_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 6), (46, 46), (48, 2), (50, 50), (52, 52), (54, 54)]

def optimizedBody829_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (0, 48), (10, 50), (6, 52), (4, 54)]

def optimizedBody829_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (0, 48), (10, 50), (6, 52), (4, 54)]

def optimizedBody829_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_171 optimizedBody829_3

def optimizedBody829_173 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody829_170, 829, 38)) (some 78) ([2, 4]) (some (2, optimizedBody829_172, 829, 39))

def optimizedBody829_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 0 (Flapjack.WordRegImm.imm 30#64)))

def optimizedBody829_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody829_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody829_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody829_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody829_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody829_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody829_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody829_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_181 optimizedBody829_3

def optimizedBody829_183 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody829_180, 829, 40)) (some 147) ([2, 4, 6, 8, 10]) (some (2, optimizedBody829_182, 829, 41))

def optimizedBody829_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_43 optimizedBody829_145

def optimizedBody829_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_184

def optimizedBody829_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_183 optimizedBody829_185

def optimizedBody829_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_179 optimizedBody829_186

def optimizedBody829_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_178 optimizedBody829_187

def optimizedBody829_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_177 optimizedBody829_188

def optimizedBody829_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_176 optimizedBody829_189

def optimizedBody829_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_175 optimizedBody829_190

def optimizedBody829_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_174 optimizedBody829_191

def optimizedBody829_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_24 optimizedBody829_192

def optimizedBody829_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_193

def optimizedBody829_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_173 optimizedBody829_194

def optimizedBody829_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_169 optimizedBody829_195

def optimizedBody829_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_168 optimizedBody829_196

def optimizedBody829_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_33 optimizedBody829_197

def optimizedBody829_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_198

def optimizedBody829_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_199

def optimizedBody829_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_167 optimizedBody829_200

def optimizedBody829_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_43 optimizedBody829_201

def optimizedBody829_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_81 optimizedBody829_202

def optimizedBody829_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_203

def optimizedBody829_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_165 optimizedBody829_204

def optimizedBody829_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_161 optimizedBody829_205

def optimizedBody829_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_206

def optimizedBody829_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_160 optimizedBody829_207

def optimizedBody829_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_156 optimizedBody829_208

def optimizedBody829_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_155 optimizedBody829_209

def optimizedBody829_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_102 optimizedBody829_210

def optimizedBody829_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_154 optimizedBody829_211

def optimizedBody829_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_153 optimizedBody829_212

def optimizedBody829_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_213

def optimizedBody829_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_214

def optimizedBody829_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_152 optimizedBody829_215

def optimizedBody829_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_138 optimizedBody829_216

def optimizedBody829_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_137 optimizedBody829_217

def optimizedBody829_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_131 optimizedBody829_218

def optimizedBody829_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_219

def optimizedBody829_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_136 optimizedBody829_220

def optimizedBody829_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_131 optimizedBody829_221

def optimizedBody829_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_24 optimizedBody829_222

def optimizedBody829_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_223

def optimizedBody829_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_130 optimizedBody829_224

def optimizedBody829_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_43 optimizedBody829_225

def optimizedBody829_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_81 optimizedBody829_226

def optimizedBody829_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_227

def optimizedBody829_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_127 optimizedBody829_228

def optimizedBody829_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_123 optimizedBody829_229

def optimizedBody829_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_230

def optimizedBody829_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_122 optimizedBody829_231

def optimizedBody829_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_118 optimizedBody829_232

def optimizedBody829_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_117 optimizedBody829_233

def optimizedBody829_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_114 optimizedBody829_234

def optimizedBody829_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_116 optimizedBody829_235

def optimizedBody829_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_114 optimizedBody829_236

def optimizedBody829_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_115 optimizedBody829_237

def optimizedBody829_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_114 optimizedBody829_238

def optimizedBody829_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_113 optimizedBody829_239

def optimizedBody829_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_112 optimizedBody829_240

def optimizedBody829_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_111 optimizedBody829_241

def optimizedBody829_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_110 optimizedBody829_242

def optimizedBody829_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_109 optimizedBody829_243

def optimizedBody829_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_244

def optimizedBody829_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_108 optimizedBody829_245

def optimizedBody829_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_104 optimizedBody829_246

def optimizedBody829_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_96 optimizedBody829_247

def optimizedBody829_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_103 optimizedBody829_248

def optimizedBody829_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_102 optimizedBody829_249

def optimizedBody829_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_250

def optimizedBody829_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_101 optimizedBody829_251

def optimizedBody829_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_97 optimizedBody829_252

def optimizedBody829_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_96 optimizedBody829_253

def optimizedBody829_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_95 optimizedBody829_254

def optimizedBody829_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_24 optimizedBody829_255

def optimizedBody829_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_256

def optimizedBody829_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_257

def optimizedBody829_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_94 optimizedBody829_258

def optimizedBody829_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_43 optimizedBody829_259

def optimizedBody829_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_81 optimizedBody829_260

def optimizedBody829_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_261

def optimizedBody829_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_80 optimizedBody829_262

def optimizedBody829_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_76 optimizedBody829_263

def optimizedBody829_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_75 optimizedBody829_264

def optimizedBody829_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_24 optimizedBody829_265

def optimizedBody829_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_266

def optimizedBody829_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_267

def optimizedBody829_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_74 optimizedBody829_268

def optimizedBody829_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_43 optimizedBody829_269

def optimizedBody829_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_26 optimizedBody829_270

def optimizedBody829_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_271

def optimizedBody829_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_64 optimizedBody829_272

def optimizedBody829_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_60 optimizedBody829_273

def optimizedBody829_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_25 optimizedBody829_274

def optimizedBody829_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_24 optimizedBody829_275

def optimizedBody829_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_276

def optimizedBody829_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_277

def optimizedBody829_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_59 optimizedBody829_278

def optimizedBody829_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_43 optimizedBody829_279

def optimizedBody829_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_26 optimizedBody829_280

def optimizedBody829_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_281

def optimizedBody829_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_42 optimizedBody829_282

def optimizedBody829_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_38 optimizedBody829_283

def optimizedBody829_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_37 optimizedBody829_284

def optimizedBody829_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_36 optimizedBody829_285

def optimizedBody829_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_35 optimizedBody829_286

def optimizedBody829_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_34 optimizedBody829_287

def optimizedBody829_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_33 optimizedBody829_288

def optimizedBody829_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_289

def optimizedBody829_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_32 optimizedBody829_290

def optimizedBody829_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_28 optimizedBody829_291

def optimizedBody829_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_27 optimizedBody829_292

def optimizedBody829_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_26 optimizedBody829_293

def optimizedBody829_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_25 optimizedBody829_294

def optimizedBody829_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_24 optimizedBody829_295

def optimizedBody829_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_296

def optimizedBody829_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_23 optimizedBody829_297

def optimizedBody829_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_19 optimizedBody829_298

def optimizedBody829_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_13 optimizedBody829_299

def optimizedBody829_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_300

def optimizedBody829_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_18 optimizedBody829_301

def optimizedBody829_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_14 optimizedBody829_302

def optimizedBody829_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_13 optimizedBody829_303

def optimizedBody829_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_304

def optimizedBody829_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_12 optimizedBody829_305

def optimizedBody829_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_8 optimizedBody829_306

def optimizedBody829_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_7 optimizedBody829_307

def optimizedBody829_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_6 optimizedBody829_308

def optimizedBody829_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_5 optimizedBody829_309

def optimizedBody829_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody829_0 optimizedBody829_310

def oracle829 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 1 Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)) 26
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 1 (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9)))
                  26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 31
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 29 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 31
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                      (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 31 Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 29)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.ls 32)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  31
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                26
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 32)) 31
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 29))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 12)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  22
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 32 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 11)))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 1 (Flapjack.Spt.ls 1))) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 22 (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 1 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 28)) 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 4)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                22
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 31)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 29 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 29)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 31 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 22)))))
                23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) (Flapjack.Spt.ls 32)) 26
                  (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 31 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 29 Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 31) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                22 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 31))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 Flapjack.Spt.ln) (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 32 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 27 (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 23 Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) (Flapjack.Spt.ls 31)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) 31
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26 Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23)) 31
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)) 23
                  (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))))))))
def optimized829 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(829, 3, optimizedBody829_311)
end InitECandidate.Proofs.SmallStages.Oracles829
