import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles246
def optimizedBody246_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (54, 6)]

def optimizedBody246_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody246_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54)]

def optimizedBody246_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody246_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_2 optimizedBody246_3

def optimizedBody246_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody246_1, 246, 2)) (some 69) ([]) (some (2, optimizedBody246_4, 246, 3))

def optimizedBody246_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody246_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody246_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 0), (54, 54)]

def optimizedBody246_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (52, 52), (54, 54)]

def optimizedBody246_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (52, 52), (54, 54)]

def optimizedBody246_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_10 optimizedBody246_3

def optimizedBody246_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody246_9, 246, 4)) (some 68) ([2]) (some (2, optimizedBody246_11, 246, 5))

def optimizedBody246_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0), (50, 6), (52, 52), (54, 54)]

def optimizedBody246_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody246_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54)]

def optimizedBody246_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_15 optimizedBody246_3

def optimizedBody246_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody246_14, 246, 6)) (some 243) ([2, 4, 6]) (some (2, optimizedBody246_16, 246, 7))

def optimizedBody246_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody246_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody246_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody246_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody246_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 2)]

def optimizedBody246_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 46), (12, 48), (0, 50), (46, 52), (6, 54), (4, 56)]

def optimizedBody246_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (12, 48), (0, 50), (46, 52), (6, 54), (4, 56)]

def optimizedBody246_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_24 optimizedBody246_3

def optimizedBody246_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody246_23, 246, 8)) (some 78) ([2, 4]) (some (2, optimizedBody246_25, 246, 9))

def optimizedBody246_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody246_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (14, 14), (12, 12), (2, 0), (46, 46), (6, 6), (16, 16), (4, 4)]

def optimizedBody246_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody246_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody246_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody246_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody246_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody246_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody246_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (16, 16)]

def optimizedBody246_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody246_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 16 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody246_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody246_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody246_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody246_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody246_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody246_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody246_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (16, 16), (4, 4)]

def optimizedBody246_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody246_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_44 optimizedBody246_45

def optimizedBody246_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_43 optimizedBody246_46

def optimizedBody246_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_30 optimizedBody246_47

def optimizedBody246_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_42 optimizedBody246_48

def optimizedBody246_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_41 optimizedBody246_49

def optimizedBody246_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_40 optimizedBody246_50

def optimizedBody246_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_39 optimizedBody246_51

def optimizedBody246_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_38 optimizedBody246_52

def optimizedBody246_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_37 optimizedBody246_53

def optimizedBody246_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_30 optimizedBody246_54

def optimizedBody246_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_36 optimizedBody246_55

def optimizedBody246_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_35 optimizedBody246_56

def optimizedBody246_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_34 optimizedBody246_57

def optimizedBody246_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_33 optimizedBody246_58

def optimizedBody246_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_32 optimizedBody246_59

def optimizedBody246_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_31 optimizedBody246_60

def optimizedBody246_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_30 optimizedBody246_61

def optimizedBody246_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_62

def optimizedBody246_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody246_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_64

def optimizedBody246_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 14) optimizedBody246_63 optimizedBody246_65

def optimizedBody246_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_44

def optimizedBody246_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_66 optimizedBody246_67

def optimizedBody246_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_29 optimizedBody246_68

def optimizedBody246_70 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody246_69 (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody246_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody246_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody246_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody246_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_73 optimizedBody246_3

def optimizedBody246_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody246_72, 246, 10)) (some 154) ([2, 4, 6]) (some (2, optimizedBody246_74, 246, 11))

def optimizedBody246_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody246_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody246_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody246_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_78 optimizedBody246_3

def optimizedBody246_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody246_77, 246, 12)) (some 70) ([2]) (some (2, optimizedBody246_79, 246, 13))

def optimizedBody246_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody246_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody246_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_20 optimizedBody246_82

def optimizedBody246_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_81 optimizedBody246_83

def optimizedBody246_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_84

def optimizedBody246_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_80 optimizedBody246_85

def optimizedBody246_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_76 optimizedBody246_86

def optimizedBody246_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_87

def optimizedBody246_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_75 optimizedBody246_88

def optimizedBody246_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_71 optimizedBody246_89

def optimizedBody246_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_90

def optimizedBody246_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_70 optimizedBody246_91

def optimizedBody246_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_28 optimizedBody246_92

def optimizedBody246_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_93

def optimizedBody246_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_27 optimizedBody246_94

def optimizedBody246_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_95

def optimizedBody246_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_26 optimizedBody246_96

def optimizedBody246_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_22 optimizedBody246_97

def optimizedBody246_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_21 optimizedBody246_98

def optimizedBody246_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_20 optimizedBody246_99

def optimizedBody246_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_19 optimizedBody246_100

def optimizedBody246_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_18 optimizedBody246_101

def optimizedBody246_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_102

def optimizedBody246_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_17 optimizedBody246_103

def optimizedBody246_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_13 optimizedBody246_104

def optimizedBody246_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_105

def optimizedBody246_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_12 optimizedBody246_106

def optimizedBody246_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_8 optimizedBody246_107

def optimizedBody246_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_7 optimizedBody246_108

def optimizedBody246_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_109

def optimizedBody246_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_5 optimizedBody246_110

def optimizedBody246_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_0 optimizedBody246_111

def oracle246 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 26 (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.ls 7)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln) 23
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 22)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 2)) 22 (Flapjack.Spt.ls 22))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)) 27
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 23
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)) 24
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 23
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))
def optimized246 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(246, 4, optimizedBody246_112)
end InitECandidate.Proofs.SmallStages.Oracles246
