import InitECandidate.Proofs.WordStages.Source224
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody240_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody240_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody240_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody240_0, 240, 2)) (some 69) ([]) (some (18, sourceBody240_1, 240, 3))

def sourceBody240_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody240_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_2 sourceBody240_3

def sourceBody240_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_4 sourceBody240_0

def sourceBody240_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody240_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody240_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody240_0, 240, 4)) (some 68) ([14]) (some (14, sourceBody240_7, 240, 5))

def sourceBody240_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_8 sourceBody240_3

def sourceBody240_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_9 sourceBody240_0

def sourceBody240_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_6 sourceBody240_10

def sourceBody240_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody240_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody240_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody240_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody240_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody240_0, 240, 6)) (some 237) ([22, 8, 16]) (some (22, sourceBody240_15, 240, 7))

def sourceBody240_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_16 sourceBody240_3

def sourceBody240_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_17 sourceBody240_0

def sourceBody240_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_14 sourceBody240_18

def sourceBody240_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_13 sourceBody240_19

def sourceBody240_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_12 sourceBody240_20

def sourceBody240_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_21

def sourceBody240_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_22

def sourceBody240_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody240_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody240_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody240_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody240_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody240_0, 240, 8)) (some 78) ([8, 16]) (some (8, sourceBody240_27, 240, 9))

def sourceBody240_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_28 sourceBody240_3

def sourceBody240_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_29 sourceBody240_0

def sourceBody240_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_26 sourceBody240_30

def sourceBody240_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_25 sourceBody240_31

def sourceBody240_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_32

def sourceBody240_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_33

def sourceBody240_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody240_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody240_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody240_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody240_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody240_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 12) sourceBody240_38 sourceBody240_39

def sourceBody240_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_40 sourceBody240_3

def sourceBody240_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody240_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody240_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody240_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody240_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.const 1#64)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 7#64])])

def sourceBody240_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody240_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_47 sourceBody240_0

def sourceBody240_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_46 sourceBody240_48

def sourceBody240_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_45 sourceBody240_49

def sourceBody240_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_44 sourceBody240_50

def sourceBody240_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_43 sourceBody240_51

def sourceBody240_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody240_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody240_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_54 sourceBody240_0

def sourceBody240_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_55 sourceBody240_0

def sourceBody240_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_53 sourceBody240_56

def sourceBody240_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_57

def sourceBody240_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_52 sourceBody240_58

def sourceBody240_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody240_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_59 sourceBody240_60

def sourceBody240_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody240_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody240_61 sourceBody240_62

def sourceBody240_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_63 sourceBody240_3

def sourceBody240_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_64 sourceBody240_0

def sourceBody240_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_42 sourceBody240_65

def sourceBody240_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_41 sourceBody240_66

def sourceBody240_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_37 sourceBody240_67

def sourceBody240_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_36 sourceBody240_68

def sourceBody240_70 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody240_69 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody240_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_70 sourceBody240_3

def sourceBody240_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_3 sourceBody240_71

def sourceBody240_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody240_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody240_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody240_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody240_0, 240, 10)) (some 154) ([16, 12, 20]) (some (16, sourceBody240_75, 240, 11))

def sourceBody240_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_76 sourceBody240_3

def sourceBody240_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_77 sourceBody240_0

def sourceBody240_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_74 sourceBody240_78

def sourceBody240_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_73 sourceBody240_79

def sourceBody240_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_14 sourceBody240_80

def sourceBody240_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_81

def sourceBody240_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_82

def sourceBody240_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_72 sourceBody240_83

def sourceBody240_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody240_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody240_0, 240, 12)) (some 70) ([16]) (some (16, sourceBody240_75, 240, 13))

def sourceBody240_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_86 sourceBody240_3

def sourceBody240_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_87 sourceBody240_0

def sourceBody240_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_85 sourceBody240_88

def sourceBody240_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_89

def sourceBody240_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_90

def sourceBody240_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_84 sourceBody240_91

def sourceBody240_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody240_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody240_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_94 sourceBody240_0

def sourceBody240_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_93 sourceBody240_95

def sourceBody240_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_92 sourceBody240_96

def sourceBody240_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_35 sourceBody240_97

def sourceBody240_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_98

def sourceBody240_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_34 sourceBody240_99

def sourceBody240_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_24 sourceBody240_100

def sourceBody240_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_101

def sourceBody240_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_23 sourceBody240_102

def sourceBody240_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_11 sourceBody240_103

def sourceBody240_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_104

def sourceBody240_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_105

def sourceBody240_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_5 sourceBody240_106

def sourceBody240_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_107

def sourceBody240_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody240_0 sourceBody240_108

def source240 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (240, 4, sourceBody240_109)
end InitECandidate.Proofs.WordStages
