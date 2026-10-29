import InitECandidate.Proofs.WordStages.Source728
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody744_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody744_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody744_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 2)) (some 69) ([]) (some (16, sourceBody744_1, 744, 3))

def sourceBody744_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody744_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_2 sourceBody744_3

def sourceBody744_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_4 sourceBody744_0

def sourceBody744_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody744_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody744_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 4)) (some 68) ([28]) (some (28, sourceBody744_7, 744, 5))

def sourceBody744_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_8 sourceBody744_3

def sourceBody744_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_9 sourceBody744_0

def sourceBody744_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_6 sourceBody744_10

def sourceBody744_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody744_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody744_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 6)) (some 68) ([10]) (some (10, sourceBody744_13, 744, 7))

def sourceBody744_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_14 sourceBody744_3

def sourceBody744_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_15 sourceBody744_0

def sourceBody744_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_12 sourceBody744_16

def sourceBody744_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody744_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody744_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody744_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 8)) (some 729) ([20, 14]) (some (20, sourceBody744_20, 744, 9))

def sourceBody744_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_21 sourceBody744_3

def sourceBody744_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_22 sourceBody744_0

def sourceBody744_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_19 sourceBody744_23

def sourceBody744_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_18 sourceBody744_24

def sourceBody744_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_25

def sourceBody744_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_26

def sourceBody744_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody744_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 10)) (some 731) ([20]) (some (20, sourceBody744_20, 744, 11))

def sourceBody744_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_29 sourceBody744_3

def sourceBody744_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_30 sourceBody744_0

def sourceBody744_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_28 sourceBody744_31

def sourceBody744_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_32

def sourceBody744_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_33

def sourceBody744_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_27 sourceBody744_34

def sourceBody744_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody744_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody744_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody744_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody744_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody744_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 12) sourceBody744_40 sourceBody744_38

def sourceBody744_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_41 sourceBody744_3

def sourceBody744_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody744_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody744_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody744_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_45 sourceBody744_0

def sourceBody744_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_46 sourceBody744_0

def sourceBody744_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_44 sourceBody744_47

def sourceBody744_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_48

def sourceBody744_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody744_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody744_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 12) sourceBody744_40 sourceBody744_38

def sourceBody744_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_52 sourceBody744_3

def sourceBody744_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody744_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody744_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody744_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 12)) (some 740) ([26, 12]) (some (26, sourceBody744_56, 744, 13))

def sourceBody744_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_57 sourceBody744_3

def sourceBody744_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_58 sourceBody744_0

def sourceBody744_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_55 sourceBody744_59

def sourceBody744_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_54 sourceBody744_60

def sourceBody744_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_61

def sourceBody744_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_62

def sourceBody744_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody744_63 sourceBody744_0

def sourceBody744_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_64 sourceBody744_3

def sourceBody744_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_65 sourceBody744_0

def sourceBody744_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_43 sourceBody744_66

def sourceBody744_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_53 sourceBody744_67

def sourceBody744_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_51 sourceBody744_68

def sourceBody744_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_50 sourceBody744_69

def sourceBody744_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_49 sourceBody744_70

def sourceBody744_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 6,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 20)
                  (Flapjack.WordLangExpHOL.const 6#64))
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 63#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody744_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody744_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody744_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody744_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 24) sourceBody744_51 sourceBody744_75

def sourceBody744_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_76 sourceBody744_3

def sourceBody744_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody744_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody744_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody744_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody744_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 14)) (some 739) ([12, 24, 18]) (some (12, sourceBody744_81, 744, 15))

def sourceBody744_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_82 sourceBody744_3

def sourceBody744_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_83 sourceBody744_0

def sourceBody744_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_80 sourceBody744_84

def sourceBody744_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_79 sourceBody744_85

def sourceBody744_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_55 sourceBody744_86

def sourceBody744_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_87

def sourceBody744_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_88

def sourceBody744_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody744_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_90 sourceBody744_0

def sourceBody744_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_91 sourceBody744_0

def sourceBody744_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_89 sourceBody744_92

def sourceBody744_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody744_93 sourceBody744_0

def sourceBody744_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_94 sourceBody744_3

def sourceBody744_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_95 sourceBody744_0

def sourceBody744_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_78 sourceBody744_96

def sourceBody744_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_77 sourceBody744_97

def sourceBody744_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_74 sourceBody744_98

def sourceBody744_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_73 sourceBody744_99

def sourceBody744_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_72 sourceBody744_100

def sourceBody744_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_101

def sourceBody744_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_71 sourceBody744_102

def sourceBody744_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody744_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_103 sourceBody744_104

def sourceBody744_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody744_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody744_105 sourceBody744_106

def sourceBody744_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_107 sourceBody744_3

def sourceBody744_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_108 sourceBody744_0

def sourceBody744_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_43 sourceBody744_109

def sourceBody744_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_42 sourceBody744_110

def sourceBody744_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_39 sourceBody744_111

def sourceBody744_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_38 sourceBody744_112

def sourceBody744_114 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody744_113 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody744_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_114 sourceBody744_3

def sourceBody744_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_3 sourceBody744_115

def sourceBody744_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody744_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody744_0, 744, 16)) (some 729) ([26, 12]) (some (26, sourceBody744_56, 744, 17))

def sourceBody744_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_118 sourceBody744_3

def sourceBody744_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_119 sourceBody744_0

def sourceBody744_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_55 sourceBody744_120

def sourceBody744_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_117 sourceBody744_121

def sourceBody744_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_122

def sourceBody744_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_123

def sourceBody744_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_116 sourceBody744_124

def sourceBody744_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody744_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody744_0, 744, 18)) (some 70) ([26]) (some (26, sourceBody744_56, 744, 19))

def sourceBody744_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_127 sourceBody744_3

def sourceBody744_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_128 sourceBody744_0

def sourceBody744_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_126 sourceBody744_129

def sourceBody744_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_130

def sourceBody744_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_131

def sourceBody744_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_125 sourceBody744_132

def sourceBody744_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody744_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody744_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_135 sourceBody744_0

def sourceBody744_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_134 sourceBody744_136

def sourceBody744_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_133 sourceBody744_137

def sourceBody744_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_37 sourceBody744_138

def sourceBody744_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_139

def sourceBody744_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_36 sourceBody744_140

def sourceBody744_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_141

def sourceBody744_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_35 sourceBody744_142

def sourceBody744_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_17 sourceBody744_143

def sourceBody744_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_144

def sourceBody744_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_145

def sourceBody744_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_11 sourceBody744_146

def sourceBody744_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_147

def sourceBody744_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_148

def sourceBody744_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_5 sourceBody744_149

def sourceBody744_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_150

def sourceBody744_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody744_0 sourceBody744_151

def source744 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (744, 5, sourceBody744_152)
end InitECandidate.Proofs.WordStages
