import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source859
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles859
def optimizedBody859_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (48, 2), (52, 6)]

def optimizedBody859_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (46, 46), (0, 44), (48, 48), (52, 52)]

def optimizedBody859_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (48, 48), (52, 52)]

def optimizedBody859_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody859_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_2 optimizedBody859_3

def optimizedBody859_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody859_1, 859, 2)) (some 69) ([]) (some (2, optimizedBody859_4, 859, 3))

def optimizedBody859_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody859_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody859_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody859_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody859_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (48, 48), (50, 4), (52, 52)]

def optimizedBody859_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody859_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (48, 50), (44, 52)]

def optimizedBody859_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_12 optimizedBody859_3

def optimizedBody859_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody859_11, 859, 4)) (some 68) ([2]) (some (2, optimizedBody859_13, 859, 5))

def optimizedBody859_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody859_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 0), (4, 4), (10, 10), (48, 48), (44, 44), (8, 8)]

def optimizedBody859_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody859_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody859_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody859_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody859_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody859_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody859_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (50, 4), (8, 8)]

def optimizedBody859_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody859_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody859_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody859_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody859_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (46, 46), (44, 0), (48, 50), (50, 10), (52, 48), (54, 44), (56, 8)]

def optimizedBody859_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (4, 48), (10, 50), (48, 52), (12, 54), (6, 56)]

def optimizedBody859_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (4, 48), (10, 50), (48, 52), (12, 54), (6, 56)]

def optimizedBody859_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_30 optimizedBody859_3

def optimizedBody859_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody859_29, 859, 6)) (some 153) ([2, 4, 6]) (some (2, optimizedBody859_31, 859, 7))

def optimizedBody859_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody859_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody859_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (0, 0), (4, 4), (10, 10), (48, 48), (44, 12), (8, 8)]

def optimizedBody859_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody859_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_35 optimizedBody859_36

def optimizedBody859_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_34 optimizedBody859_37

def optimizedBody859_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_33 optimizedBody859_38

def optimizedBody859_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_39

def optimizedBody859_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_32 optimizedBody859_40

def optimizedBody859_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_28 optimizedBody859_41

def optimizedBody859_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_27 optimizedBody859_42

def optimizedBody859_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_26 optimizedBody859_43

def optimizedBody859_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_25 optimizedBody859_44

def optimizedBody859_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_18 optimizedBody859_45

def optimizedBody859_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_24 optimizedBody859_46

def optimizedBody859_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_23 optimizedBody859_47

def optimizedBody859_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_22 optimizedBody859_48

def optimizedBody859_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_21 optimizedBody859_49

def optimizedBody859_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_20 optimizedBody859_50

def optimizedBody859_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_19 optimizedBody859_51

def optimizedBody859_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_18 optimizedBody859_52

def optimizedBody859_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_53

def optimizedBody859_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody859_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody859_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_55 optimizedBody859_56

def optimizedBody859_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_57

def optimizedBody859_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) optimizedBody859_54 optimizedBody859_58

def optimizedBody859_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2), (0, 0), (4, 4), (10, 10), (48, 6), (44, 12), (8, 8)]

def optimizedBody859_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_60

def optimizedBody859_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_59 optimizedBody859_61

def optimizedBody859_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_17 optimizedBody859_62

def optimizedBody859_64 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody859_63 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody859_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 10)]

def optimizedBody859_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody859_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 44), (44, 46), (46, 48)]

def optimizedBody859_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody859_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody859_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_69 optimizedBody859_3

def optimizedBody859_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody859_68, 859, 8)) (some 153) ([2, 4, 6]) (some (2, optimizedBody859_70, 859, 9))

def optimizedBody859_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody859_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody859_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody859_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_74 optimizedBody859_3

def optimizedBody859_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody859_73, 859, 10)) (some 70) ([2]) (some (2, optimizedBody859_75, 859, 11))

def optimizedBody859_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody859_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody859_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody859_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_78 optimizedBody859_79

def optimizedBody859_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_77 optimizedBody859_80

def optimizedBody859_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_81

def optimizedBody859_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_76 optimizedBody859_82

def optimizedBody859_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_72 optimizedBody859_83

def optimizedBody859_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_84

def optimizedBody859_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_71 optimizedBody859_85

def optimizedBody859_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_67 optimizedBody859_86

def optimizedBody859_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_66 optimizedBody859_87

def optimizedBody859_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_65 optimizedBody859_88

def optimizedBody859_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_89

def optimizedBody859_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_64 optimizedBody859_90

def optimizedBody859_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_16 optimizedBody859_91

def optimizedBody859_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_92

def optimizedBody859_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_15 optimizedBody859_93

def optimizedBody859_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_94

def optimizedBody859_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_14 optimizedBody859_95

def optimizedBody859_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_10 optimizedBody859_96

def optimizedBody859_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_9 optimizedBody859_97

def optimizedBody859_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_8 optimizedBody859_98

def optimizedBody859_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_7 optimizedBody859_99

def optimizedBody859_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_6 optimizedBody859_100

def optimizedBody859_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_5 optimizedBody859_101

def optimizedBody859_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_0 optimizedBody859_102

def oracle859 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 24)))
              23
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 4)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 3)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 26
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              Flapjack.Spt.ln))))))
def optimized859 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(859, 4, optimizedBody859_103)
end InitECandidate.Proofs.SmallStages.Oracles859
