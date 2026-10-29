import InitECandidate.Proofs.WordStages.Source756
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody772_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody772_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody772_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 2)) (some 69) ([]) (some (16, sourceBody772_1, 772, 3))

def sourceBody772_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody772_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_2 sourceBody772_3

def sourceBody772_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_4 sourceBody772_0

def sourceBody772_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody772_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody772_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 4)) (some 68) ([28]) (some (28, sourceBody772_7, 772, 5))

def sourceBody772_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_8 sourceBody772_3

def sourceBody772_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_9 sourceBody772_0

def sourceBody772_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_6 sourceBody772_10

def sourceBody772_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 144#64)

def sourceBody772_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody772_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 6)) (some 68) ([10]) (some (10, sourceBody772_13, 772, 7))

def sourceBody772_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_14 sourceBody772_3

def sourceBody772_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_15 sourceBody772_0

def sourceBody772_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_12 sourceBody772_16

def sourceBody772_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody772_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody772_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody772_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 8)) (some 768) ([20, 14]) (some (20, sourceBody772_20, 772, 9))

def sourceBody772_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_21 sourceBody772_3

def sourceBody772_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_22 sourceBody772_0

def sourceBody772_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_19 sourceBody772_23

def sourceBody772_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_18 sourceBody772_24

def sourceBody772_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_25

def sourceBody772_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_26

def sourceBody772_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody772_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 10)) (some 766) ([20]) (some (20, sourceBody772_20, 772, 11))

def sourceBody772_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_29 sourceBody772_3

def sourceBody772_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_30 sourceBody772_0

def sourceBody772_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_28 sourceBody772_31

def sourceBody772_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_32

def sourceBody772_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_33

def sourceBody772_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_27 sourceBody772_34

def sourceBody772_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody772_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody772_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody772_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody772_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody772_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 12) sourceBody772_40 sourceBody772_38

def sourceBody772_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_41 sourceBody772_3

def sourceBody772_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody772_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody772_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody772_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_45 sourceBody772_0

def sourceBody772_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_46 sourceBody772_0

def sourceBody772_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_44 sourceBody772_47

def sourceBody772_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_48

def sourceBody772_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody772_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody772_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 12) sourceBody772_40 sourceBody772_38

def sourceBody772_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_52 sourceBody772_3

def sourceBody772_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody772_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody772_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody772_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 12)) (some 770) ([26, 12]) (some (26, sourceBody772_56, 772, 13))

def sourceBody772_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_57 sourceBody772_3

def sourceBody772_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_58 sourceBody772_0

def sourceBody772_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_55 sourceBody772_59

def sourceBody772_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_54 sourceBody772_60

def sourceBody772_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_61

def sourceBody772_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_62

def sourceBody772_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody772_63 sourceBody772_0

def sourceBody772_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_64 sourceBody772_3

def sourceBody772_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_65 sourceBody772_0

def sourceBody772_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_43 sourceBody772_66

def sourceBody772_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_53 sourceBody772_67

def sourceBody772_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_51 sourceBody772_68

def sourceBody772_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_50 sourceBody772_69

def sourceBody772_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_49 sourceBody772_70

def sourceBody772_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 6,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
                  (Flapjack.WordLangExpHOL.const 6#64))
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 63#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody772_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody772_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody772_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody772_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 24) sourceBody772_51 sourceBody772_75

def sourceBody772_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_76 sourceBody772_3

def sourceBody772_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody772_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody772_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody772_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody772_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 14)) (some 771) ([12, 24, 18]) (some (12, sourceBody772_81, 772, 15))

def sourceBody772_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_82 sourceBody772_3

def sourceBody772_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_83 sourceBody772_0

def sourceBody772_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_80 sourceBody772_84

def sourceBody772_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_79 sourceBody772_85

def sourceBody772_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_55 sourceBody772_86

def sourceBody772_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_87

def sourceBody772_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_88

def sourceBody772_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody772_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_90 sourceBody772_0

def sourceBody772_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_91 sourceBody772_0

def sourceBody772_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_89 sourceBody772_92

def sourceBody772_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody772_93 sourceBody772_0

def sourceBody772_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_94 sourceBody772_3

def sourceBody772_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_95 sourceBody772_0

def sourceBody772_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_78 sourceBody772_96

def sourceBody772_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_77 sourceBody772_97

def sourceBody772_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_74 sourceBody772_98

def sourceBody772_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_73 sourceBody772_99

def sourceBody772_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_72 sourceBody772_100

def sourceBody772_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_101

def sourceBody772_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_71 sourceBody772_102

def sourceBody772_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody772_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_103 sourceBody772_104

def sourceBody772_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody772_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody772_105 sourceBody772_106

def sourceBody772_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_107 sourceBody772_3

def sourceBody772_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_108 sourceBody772_0

def sourceBody772_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_43 sourceBody772_109

def sourceBody772_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_42 sourceBody772_110

def sourceBody772_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_39 sourceBody772_111

def sourceBody772_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_38 sourceBody772_112

def sourceBody772_114 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody772_113 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody772_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_114 sourceBody772_3

def sourceBody772_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_3 sourceBody772_115

def sourceBody772_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody772_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody772_0, 772, 16)) (some 768) ([26, 12]) (some (26, sourceBody772_56, 772, 17))

def sourceBody772_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_118 sourceBody772_3

def sourceBody772_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_119 sourceBody772_0

def sourceBody772_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_55 sourceBody772_120

def sourceBody772_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_117 sourceBody772_121

def sourceBody772_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_122

def sourceBody772_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_123

def sourceBody772_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_116 sourceBody772_124

def sourceBody772_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody772_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody772_0, 772, 18)) (some 70) ([26]) (some (26, sourceBody772_56, 772, 19))

def sourceBody772_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_127 sourceBody772_3

def sourceBody772_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_128 sourceBody772_0

def sourceBody772_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_126 sourceBody772_129

def sourceBody772_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_130

def sourceBody772_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_131

def sourceBody772_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_125 sourceBody772_132

def sourceBody772_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody772_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody772_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_135 sourceBody772_0

def sourceBody772_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_134 sourceBody772_136

def sourceBody772_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_133 sourceBody772_137

def sourceBody772_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_37 sourceBody772_138

def sourceBody772_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_139

def sourceBody772_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_36 sourceBody772_140

def sourceBody772_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_141

def sourceBody772_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_35 sourceBody772_142

def sourceBody772_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_17 sourceBody772_143

def sourceBody772_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_144

def sourceBody772_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_145

def sourceBody772_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_11 sourceBody772_146

def sourceBody772_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_147

def sourceBody772_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_148

def sourceBody772_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_5 sourceBody772_149

def sourceBody772_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_150

def sourceBody772_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody772_0 sourceBody772_151

def source772 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (772, 5, sourceBody772_152)
end InitECandidate.Proofs.WordStages
