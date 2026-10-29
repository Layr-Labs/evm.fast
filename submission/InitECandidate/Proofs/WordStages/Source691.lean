import InitECandidate.Proofs.WordStages.Source675
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody691_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody691_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody691_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 2)) (some 69) ([]) (some (14, sourceBody691_1, 691, 3))

def sourceBody691_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody691_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_2 sourceBody691_3

def sourceBody691_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_4 sourceBody691_0

def sourceBody691_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody691_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 4)) (some 68) ([48]) (some (48, sourceBody691_7, 691, 5))

def sourceBody691_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_8 sourceBody691_3

def sourceBody691_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_9 sourceBody691_0

def sourceBody691_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_6 sourceBody691_10

def sourceBody691_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody691_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 6)) (some 68) ([32]) (some (32, sourceBody691_13, 691, 7))

def sourceBody691_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_14 sourceBody691_3

def sourceBody691_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_15 sourceBody691_0

def sourceBody691_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_12 sourceBody691_16

def sourceBody691_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody691_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 8)) (some 68) ([66]) (some (66, sourceBody691_19, 691, 9))

def sourceBody691_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_20 sourceBody691_3

def sourceBody691_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_21 sourceBody691_0

def sourceBody691_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_18 sourceBody691_22

def sourceBody691_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody691_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 10)) (some 68) ([10]) (some (10, sourceBody691_25, 691, 11))

def sourceBody691_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_26 sourceBody691_3

def sourceBody691_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_27 sourceBody691_0

def sourceBody691_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_24 sourceBody691_28

def sourceBody691_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody691_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 12)) (some 68) ([44]) (some (44, sourceBody691_31, 691, 13))

def sourceBody691_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_32 sourceBody691_3

def sourceBody691_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_33 sourceBody691_0

def sourceBody691_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_30 sourceBody691_34

def sourceBody691_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody691_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 14)) (some 68) ([28]) (some (28, sourceBody691_37, 691, 15))

def sourceBody691_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_38 sourceBody691_3

def sourceBody691_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_39 sourceBody691_0

def sourceBody691_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_36 sourceBody691_40

def sourceBody691_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 14)

def sourceBody691_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody691_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 16)) (some 78) ([62, 20]) (some (62, sourceBody691_44, 691, 17))

def sourceBody691_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_45 sourceBody691_3

def sourceBody691_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_46 sourceBody691_0

def sourceBody691_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_43 sourceBody691_47

def sourceBody691_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_42 sourceBody691_48

def sourceBody691_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_49

def sourceBody691_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_50

def sourceBody691_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody691_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 5544790254283102953#64)

def sourceBody691_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13698472384431417117#64)

def sourceBody691_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 4628036095437277618#64)

def sourceBody691_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2762764518496934255#64)

def sourceBody691_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 62)

def sourceBody691_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 70

def sourceBody691_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_58 sourceBody691_0

def sourceBody691_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_57 sourceBody691_59

def sourceBody691_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 20)

def sourceBody691_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64])
  70

def sourceBody691_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_62 sourceBody691_0

def sourceBody691_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_61 sourceBody691_63

def sourceBody691_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 52)

def sourceBody691_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64])
  70

def sourceBody691_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_66 sourceBody691_0

def sourceBody691_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_65 sourceBody691_67

def sourceBody691_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 36)

def sourceBody691_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 24#64])
  70

def sourceBody691_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_70 sourceBody691_0

def sourceBody691_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_69 sourceBody691_71

def sourceBody691_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_72 sourceBody691_0

def sourceBody691_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_68 sourceBody691_73

def sourceBody691_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_64 sourceBody691_74

def sourceBody691_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_60 sourceBody691_75

def sourceBody691_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_56 sourceBody691_76

def sourceBody691_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_77

def sourceBody691_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_55 sourceBody691_78

def sourceBody691_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_79

def sourceBody691_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_54 sourceBody691_80

def sourceBody691_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_81

def sourceBody691_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_53 sourceBody691_82

def sourceBody691_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_83

def sourceBody691_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_52 sourceBody691_84

def sourceBody691_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_85

def sourceBody691_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_51 sourceBody691_86

def sourceBody691_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody691_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 10102850021236865696#64)

def sourceBody691_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 15026249742141879542#64)

def sourceBody691_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 2169086236411634456#64)

def sourceBody691_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2710440286313254821#64)

def sourceBody691_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_92 sourceBody691_76

def sourceBody691_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_93

def sourceBody691_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_91 sourceBody691_94

def sourceBody691_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_95

def sourceBody691_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_90 sourceBody691_96

def sourceBody691_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_97

def sourceBody691_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_89 sourceBody691_98

def sourceBody691_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_99

def sourceBody691_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_88 sourceBody691_100

def sourceBody691_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_101

def sourceBody691_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_87 sourceBody691_102

def sourceBody691_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody691_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def sourceBody691_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def sourceBody691_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def sourceBody691_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def sourceBody691_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_108 sourceBody691_76

def sourceBody691_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_109

def sourceBody691_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_107 sourceBody691_110

def sourceBody691_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_111

def sourceBody691_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_106 sourceBody691_112

def sourceBody691_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_113

def sourceBody691_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_105 sourceBody691_114

def sourceBody691_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_115

def sourceBody691_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_104 sourceBody691_116

def sourceBody691_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_117

def sourceBody691_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_103 sourceBody691_118

def sourceBody691_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 48)

def sourceBody691_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 18)) (some 78) ([62, 20]) (some (62, sourceBody691_44, 691, 19))

def sourceBody691_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_121 sourceBody691_3

def sourceBody691_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_122 sourceBody691_0

def sourceBody691_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_43 sourceBody691_123

def sourceBody691_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_120 sourceBody691_124

def sourceBody691_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_125

def sourceBody691_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_126

def sourceBody691_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_119 sourceBody691_127

def sourceBody691_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody691_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody691_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 20)) (some 77) ([62, 20, 52]) (some (62, sourceBody691_44, 691, 21))

def sourceBody691_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_131 sourceBody691_3

def sourceBody691_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_132 sourceBody691_0

def sourceBody691_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_130 sourceBody691_133

def sourceBody691_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_129 sourceBody691_134

def sourceBody691_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_120 sourceBody691_135

def sourceBody691_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_136

def sourceBody691_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_137

def sourceBody691_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_128 sourceBody691_138

def sourceBody691_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 32)

def sourceBody691_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 22)) (some 78) ([62, 20]) (some (62, sourceBody691_44, 691, 23))

def sourceBody691_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_141 sourceBody691_3

def sourceBody691_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_142 sourceBody691_0

def sourceBody691_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_43 sourceBody691_143

def sourceBody691_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_140 sourceBody691_144

def sourceBody691_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_145

def sourceBody691_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_146

def sourceBody691_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_139 sourceBody691_147

def sourceBody691_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 66)

def sourceBody691_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 24)) (some 78) ([62, 20]) (some (62, sourceBody691_44, 691, 25))

def sourceBody691_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_150 sourceBody691_3

def sourceBody691_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_151 sourceBody691_0

def sourceBody691_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_43 sourceBody691_152

def sourceBody691_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_149 sourceBody691_153

def sourceBody691_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_154

def sourceBody691_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_155

def sourceBody691_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_148 sourceBody691_156

def sourceBody691_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 66)

def sourceBody691_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_158 sourceBody691_116

def sourceBody691_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_159

def sourceBody691_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_157 sourceBody691_160

def sourceBody691_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody691_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody691_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 26)) (some 689) ([62, 20]) (some (62, sourceBody691_44, 691, 27))

def sourceBody691_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_164 sourceBody691_3

def sourceBody691_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_165 sourceBody691_0

def sourceBody691_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_163 sourceBody691_166

def sourceBody691_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_120 sourceBody691_167

def sourceBody691_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody691_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody691_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 20 (Flapjack.WordRegImm.reg 52) sourceBody691_171 sourceBody691_169

def sourceBody691_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_172 sourceBody691_3

def sourceBody691_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody691_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody691_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody691_175 sourceBody691_0

def sourceBody691_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_176 sourceBody691_3

def sourceBody691_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_177 sourceBody691_0

def sourceBody691_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_174 sourceBody691_178

def sourceBody691_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_173 sourceBody691_179

def sourceBody691_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_170 sourceBody691_180

def sourceBody691_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_169 sourceBody691_181

def sourceBody691_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody691_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody691_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody691_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 28)) (some 689) ([20, 52]) (some (20, sourceBody691_185, 691, 29))

def sourceBody691_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_186 sourceBody691_3

def sourceBody691_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_187 sourceBody691_0

def sourceBody691_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_184 sourceBody691_188

def sourceBody691_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_183 sourceBody691_189

def sourceBody691_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 10)

def sourceBody691_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody691_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 30)) (some 78) ([52, 36]) (some (52, sourceBody691_193, 691, 31))

def sourceBody691_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_194 sourceBody691_3

def sourceBody691_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_195 sourceBody691_0

def sourceBody691_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_192 sourceBody691_196

def sourceBody691_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_191 sourceBody691_197

def sourceBody691_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_198

def sourceBody691_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_199

def sourceBody691_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody691_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody691_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody691_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody691_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody691_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody691_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody691_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 70)

def sourceBody691_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody691_210 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 42, 26, 60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 32)) (some 664) ([18, 50, 34, 68]) (some (18, sourceBody691_209, 691, 33))

def sourceBody691_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_210 sourceBody691_3

def sourceBody691_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_211 sourceBody691_0

def sourceBody691_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_208 sourceBody691_212

def sourceBody691_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_207 sourceBody691_213

def sourceBody691_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_206 sourceBody691_214

def sourceBody691_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_205 sourceBody691_215

def sourceBody691_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 62)

def sourceBody691_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody691_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody691_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_221 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 50 (Flapjack.WordRegImm.reg 34) sourceBody691_219 sourceBody691_220

def sourceBody691_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_221 sourceBody691_3

def sourceBody691_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 50)

def sourceBody691_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody691_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody691_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody691_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody691_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody691_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody691_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody691_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 68)

def sourceBody691_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody691_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def sourceBody691_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody691_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 60)

def sourceBody691_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody691_237 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 46, 30, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 34)) (some 661) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, sourceBody691_236, 691, 35))

def sourceBody691_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_237 sourceBody691_3

def sourceBody691_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_238 sourceBody691_0

def sourceBody691_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_235 sourceBody691_239

def sourceBody691_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_234 sourceBody691_240

def sourceBody691_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_233 sourceBody691_241

def sourceBody691_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_232 sourceBody691_242

def sourceBody691_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_231 sourceBody691_243

def sourceBody691_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_230 sourceBody691_244

def sourceBody691_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_229 sourceBody691_245

def sourceBody691_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_228 sourceBody691_246

def sourceBody691_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 62, Flapjack.WordLangExpHOL.var 28])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody691_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody691_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 46)

def sourceBody691_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 30)

def sourceBody691_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 64)

def sourceBody691_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 54)

def sourceBody691_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 40

def sourceBody691_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_254 sourceBody691_0

def sourceBody691_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_253 sourceBody691_255

def sourceBody691_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def sourceBody691_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
  40

def sourceBody691_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_258 sourceBody691_0

def sourceBody691_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_257 sourceBody691_259

def sourceBody691_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def sourceBody691_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])
  40

def sourceBody691_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_262 sourceBody691_0

def sourceBody691_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_261 sourceBody691_263

def sourceBody691_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def sourceBody691_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64])
  40

def sourceBody691_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_266 sourceBody691_0

def sourceBody691_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_265 sourceBody691_267

def sourceBody691_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_268 sourceBody691_0

def sourceBody691_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_264 sourceBody691_269

def sourceBody691_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_260 sourceBody691_270

def sourceBody691_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_256 sourceBody691_271

def sourceBody691_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_252 sourceBody691_272

def sourceBody691_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_273

def sourceBody691_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_251 sourceBody691_274

def sourceBody691_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_275

def sourceBody691_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_250 sourceBody691_276

def sourceBody691_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_277

def sourceBody691_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_249 sourceBody691_278

def sourceBody691_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_279

def sourceBody691_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_248 sourceBody691_280

def sourceBody691_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_281

def sourceBody691_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 14)

def sourceBody691_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def sourceBody691_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 12)

def sourceBody691_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 46)

def sourceBody691_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def sourceBody691_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 64)

def sourceBody691_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 62, Flapjack.WordLangExpHOL.var 28])

def sourceBody691_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody691_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody691_292 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 36)) (some 690) ([54, 38, 72, 6, 40, 24, 58, 16]) (some (54, sourceBody691_291, 691, 37))

def sourceBody691_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_292 sourceBody691_3

def sourceBody691_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_293 sourceBody691_0

def sourceBody691_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_290 sourceBody691_294

def sourceBody691_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_289 sourceBody691_295

def sourceBody691_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_288 sourceBody691_296

def sourceBody691_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_287 sourceBody691_297

def sourceBody691_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_286 sourceBody691_298

def sourceBody691_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_285 sourceBody691_299

def sourceBody691_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_284 sourceBody691_300

def sourceBody691_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_283 sourceBody691_301

def sourceBody691_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_302

def sourceBody691_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_303

def sourceBody691_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_282 sourceBody691_304

def sourceBody691_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody691_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody691_308 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 38)) (some 689) ([22, 54]) (some (22, sourceBody691_236, 691, 39))

def sourceBody691_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_308 sourceBody691_3

def sourceBody691_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_309 sourceBody691_0

def sourceBody691_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_307 sourceBody691_310

def sourceBody691_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_306 sourceBody691_311

def sourceBody691_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_305 sourceBody691_312

def sourceBody691_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_247 sourceBody691_313

def sourceBody691_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_314

def sourceBody691_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_315

def sourceBody691_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_316

def sourceBody691_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_317

def sourceBody691_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_318

def sourceBody691_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_319

def sourceBody691_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_320

def sourceBody691_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_321

def sourceBody691_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_227 sourceBody691_322

def sourceBody691_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_323

def sourceBody691_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_226 sourceBody691_324

def sourceBody691_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_325

def sourceBody691_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_225 sourceBody691_326

def sourceBody691_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_327

def sourceBody691_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_224 sourceBody691_328

def sourceBody691_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_329

def sourceBody691_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody691_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_330 sourceBody691_331

def sourceBody691_333 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 68 (Flapjack.WordRegImm.imm 0#64) sourceBody691_332 sourceBody691_175

def sourceBody691_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_333 sourceBody691_3

def sourceBody691_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_334 sourceBody691_0

def sourceBody691_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_223 sourceBody691_335

def sourceBody691_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_222 sourceBody691_336

def sourceBody691_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_218 sourceBody691_337

def sourceBody691_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_217 sourceBody691_338

def sourceBody691_340 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody691_339 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody691_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_340 sourceBody691_3

def sourceBody691_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_3 sourceBody691_341

def sourceBody691_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def sourceBody691_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody691_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 416#64)

def sourceBody691_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody691_347 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 40)) (some 77) ([50, 34, 68]) (some (50, sourceBody691_346, 691, 41))

def sourceBody691_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_347 sourceBody691_3

def sourceBody691_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_348 sourceBody691_0

def sourceBody691_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_345 sourceBody691_349

def sourceBody691_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_344 sourceBody691_350

def sourceBody691_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_343 sourceBody691_351

def sourceBody691_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_352

def sourceBody691_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_353

def sourceBody691_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_342 sourceBody691_354

def sourceBody691_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody691_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody691_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody691_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_361 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 68) sourceBody691_359 sourceBody691_360

def sourceBody691_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_361 sourceBody691_3

def sourceBody691_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody691_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody691_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody691_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody691_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody691_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 50)

def sourceBody691_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 34)

def sourceBody691_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 68)

def sourceBody691_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody691_372 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 42)) (some 102) ([30, 64, 22, 54]) (some (30, sourceBody691_371, 691, 43))

def sourceBody691_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_372 sourceBody691_3

def sourceBody691_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_373 sourceBody691_0

def sourceBody691_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_249 sourceBody691_374

def sourceBody691_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_370 sourceBody691_375

def sourceBody691_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_369 sourceBody691_376

def sourceBody691_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_368 sourceBody691_377

def sourceBody691_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 46)

def sourceBody691_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody691_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_383 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 64 (Flapjack.WordRegImm.reg 22) sourceBody691_381 sourceBody691_382

def sourceBody691_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_383 sourceBody691_3

def sourceBody691_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 64)

def sourceBody691_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def sourceBody691_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 66)

def sourceBody691_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody691_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def sourceBody691_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.var 18])

def sourceBody691_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def sourceBody691_392 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 44)) (some 690) ([64, 22, 54, 38, 72, 6, 40, 24]) (some (64, sourceBody691_391, 691, 45))

def sourceBody691_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_392 sourceBody691_3

def sourceBody691_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_393 sourceBody691_0

def sourceBody691_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_390 sourceBody691_394

def sourceBody691_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_389 sourceBody691_395

def sourceBody691_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_388 sourceBody691_396

def sourceBody691_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_231 sourceBody691_397

def sourceBody691_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_230 sourceBody691_398

def sourceBody691_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_229 sourceBody691_399

def sourceBody691_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_387 sourceBody691_400

def sourceBody691_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_386 sourceBody691_401

def sourceBody691_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_402

def sourceBody691_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_403

def sourceBody691_405 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.imm 0#64) sourceBody691_404 sourceBody691_0

def sourceBody691_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_405 sourceBody691_3

def sourceBody691_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_406 sourceBody691_0

def sourceBody691_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_385 sourceBody691_407

def sourceBody691_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_384 sourceBody691_408

def sourceBody691_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_380 sourceBody691_409

def sourceBody691_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_379 sourceBody691_410

def sourceBody691_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody691_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody691_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_413 sourceBody691_0

def sourceBody691_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_414 sourceBody691_0

def sourceBody691_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_412 sourceBody691_415

def sourceBody691_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_416

def sourceBody691_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_411 sourceBody691_417

def sourceBody691_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_378 sourceBody691_418

def sourceBody691_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_419

def sourceBody691_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_420

def sourceBody691_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_367 sourceBody691_421

def sourceBody691_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_422

def sourceBody691_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_366 sourceBody691_423

def sourceBody691_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_424

def sourceBody691_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_365 sourceBody691_425

def sourceBody691_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_426

def sourceBody691_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_364 sourceBody691_427

def sourceBody691_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_428

def sourceBody691_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_429 sourceBody691_331

def sourceBody691_431 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody691_430 sourceBody691_175

def sourceBody691_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_431 sourceBody691_3

def sourceBody691_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_432 sourceBody691_0

def sourceBody691_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_363 sourceBody691_433

def sourceBody691_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_362 sourceBody691_434

def sourceBody691_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_358 sourceBody691_435

def sourceBody691_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_357 sourceBody691_436

def sourceBody691_438 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody691_437 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody691_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_438 sourceBody691_3

def sourceBody691_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_3 sourceBody691_439

def sourceBody691_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 14)

def sourceBody691_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 48)

def sourceBody691_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_442 sourceBody691_0

def sourceBody691_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_443 sourceBody691_0

def sourceBody691_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 50)

def sourceBody691_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_445 sourceBody691_0

def sourceBody691_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_446 sourceBody691_0

def sourceBody691_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_444 sourceBody691_447

def sourceBody691_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def sourceBody691_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_449 sourceBody691_0

def sourceBody691_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_450 sourceBody691_0

def sourceBody691_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_448 sourceBody691_451

def sourceBody691_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 66)

def sourceBody691_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_453 sourceBody691_0

def sourceBody691_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_454 sourceBody691_0

def sourceBody691_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_452 sourceBody691_455

def sourceBody691_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 44)

def sourceBody691_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_457 sourceBody691_0

def sourceBody691_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_458 sourceBody691_0

def sourceBody691_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_456 sourceBody691_459

def sourceBody691_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def sourceBody691_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_461 sourceBody691_0

def sourceBody691_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_462 sourceBody691_0

def sourceBody691_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_460 sourceBody691_463

def sourceBody691_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_441 sourceBody691_464

def sourceBody691_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_465

def sourceBody691_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_440 sourceBody691_466

def sourceBody691_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_356 sourceBody691_467

def sourceBody691_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_468

def sourceBody691_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_355 sourceBody691_469

def sourceBody691_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_216 sourceBody691_470

def sourceBody691_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_471

def sourceBody691_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_472

def sourceBody691_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_473

def sourceBody691_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_474

def sourceBody691_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_475

def sourceBody691_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_476

def sourceBody691_478 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_477

def sourceBody691_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_478

def sourceBody691_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_204 sourceBody691_479

def sourceBody691_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_480

def sourceBody691_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_203 sourceBody691_481

def sourceBody691_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_482

def sourceBody691_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_202 sourceBody691_483

def sourceBody691_485 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_484

def sourceBody691_486 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_201 sourceBody691_485

def sourceBody691_487 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_486

def sourceBody691_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_200 sourceBody691_487

def sourceBody691_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_190 sourceBody691_488

def sourceBody691_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_489

def sourceBody691_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_490

def sourceBody691_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_182 sourceBody691_491

def sourceBody691_493 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_168 sourceBody691_492

def sourceBody691_494 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_493

def sourceBody691_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_494

def sourceBody691_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_495 sourceBody691_331

def sourceBody691_497 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody691_496 sourceBody691_175

def sourceBody691_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_497 sourceBody691_3

def sourceBody691_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_498 sourceBody691_0

def sourceBody691_500 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_162 sourceBody691_499

def sourceBody691_501 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody691_500 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody691_502 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_501 sourceBody691_3

def sourceBody691_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_3 sourceBody691_502

def sourceBody691_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_161 sourceBody691_503

def sourceBody691_505 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 46)) (some 689) ([62, 20]) (some (62, sourceBody691_44, 691, 47))

def sourceBody691_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_505 sourceBody691_3

def sourceBody691_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_506 sourceBody691_0

def sourceBody691_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_163 sourceBody691_507

def sourceBody691_509 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_120 sourceBody691_508

def sourceBody691_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody691_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_512 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 52) sourceBody691_171 sourceBody691_169

def sourceBody691_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_512 sourceBody691_3

def sourceBody691_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody691_515 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 48)) (some 78) ([20, 52]) (some (20, sourceBody691_185, 691, 49))

def sourceBody691_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_515 sourceBody691_3

def sourceBody691_517 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_516 sourceBody691_0

def sourceBody691_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_130 sourceBody691_517

def sourceBody691_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_514 sourceBody691_518

def sourceBody691_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_519

def sourceBody691_521 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_520

def sourceBody691_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 56)

def sourceBody691_523 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody691_0, 691, 50)) (some 70) ([20]) (some (20, sourceBody691_185, 691, 51))

def sourceBody691_524 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_523 sourceBody691_3

def sourceBody691_525 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_524 sourceBody691_0

def sourceBody691_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_522 sourceBody691_525

def sourceBody691_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_526

def sourceBody691_528 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_527

def sourceBody691_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_521 sourceBody691_528

def sourceBody691_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [62]

def sourceBody691_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_531 sourceBody691_0

def sourceBody691_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_530 sourceBody691_532

def sourceBody691_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_529 sourceBody691_533

def sourceBody691_535 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody691_534 sourceBody691_0

def sourceBody691_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_535 sourceBody691_3

def sourceBody691_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_536 sourceBody691_0

def sourceBody691_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_174 sourceBody691_537

def sourceBody691_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_513 sourceBody691_538

def sourceBody691_540 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_511 sourceBody691_539

def sourceBody691_541 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_510 sourceBody691_540

def sourceBody691_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 48))

def sourceBody691_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody691_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody691_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody691_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 62)

def sourceBody691_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody691_548 : WordLangProgHOL (BitVec 64) :=
.call (some (([70, 8, 42, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 52)) (some 664) ([60, 18, 50, 34]) (some (60, sourceBody691_547, 691, 53))

def sourceBody691_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_548 sourceBody691_3

def sourceBody691_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_549 sourceBody691_0

def sourceBody691_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_207 sourceBody691_550

def sourceBody691_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_206 sourceBody691_551

def sourceBody691_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_205 sourceBody691_552

def sourceBody691_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_546 sourceBody691_553

def sourceBody691_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody691_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 60)

def sourceBody691_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody691_558 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 50 (Flapjack.WordRegImm.reg 34) sourceBody691_219 sourceBody691_220

def sourceBody691_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_558 sourceBody691_3

def sourceBody691_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody691_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody691_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody691_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody691_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 70)

def sourceBody691_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 8)

def sourceBody691_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody691_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 26)

def sourceBody691_568 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 46, 30, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody691_0, 691, 54)) (some 661) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, sourceBody691_236, 691, 55))

def sourceBody691_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_568 sourceBody691_3

def sourceBody691_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_569 sourceBody691_0

def sourceBody691_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_567 sourceBody691_570

def sourceBody691_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_566 sourceBody691_571

def sourceBody691_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_565 sourceBody691_572

def sourceBody691_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_564 sourceBody691_573

def sourceBody691_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_231 sourceBody691_574

def sourceBody691_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_230 sourceBody691_575

def sourceBody691_577 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_229 sourceBody691_576

def sourceBody691_578 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_228 sourceBody691_577

def sourceBody691_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody691_580 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_579 sourceBody691_280

def sourceBody691_581 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_580

def sourceBody691_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody691_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 22)

def sourceBody691_584 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_583 sourceBody691_0

def sourceBody691_585 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_584 sourceBody691_0

def sourceBody691_586 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_582 sourceBody691_585

def sourceBody691_587 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_586

def sourceBody691_588 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_581 sourceBody691_587

def sourceBody691_589 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_578 sourceBody691_588

def sourceBody691_590 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_589

def sourceBody691_591 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_590

def sourceBody691_592 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_591

def sourceBody691_593 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_592

def sourceBody691_594 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_593

def sourceBody691_595 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_594

def sourceBody691_596 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_595

def sourceBody691_597 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_596

def sourceBody691_598 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_563 sourceBody691_597

def sourceBody691_599 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_598

def sourceBody691_600 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_562 sourceBody691_599

def sourceBody691_601 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_600

def sourceBody691_602 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_561 sourceBody691_601

def sourceBody691_603 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_602

def sourceBody691_604 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_560 sourceBody691_603

def sourceBody691_605 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_604

def sourceBody691_606 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_605 sourceBody691_331

def sourceBody691_607 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 68 (Flapjack.WordRegImm.imm 0#64) sourceBody691_606 sourceBody691_175

def sourceBody691_608 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_607 sourceBody691_3

def sourceBody691_609 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_608 sourceBody691_0

def sourceBody691_610 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_223 sourceBody691_609

def sourceBody691_611 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_559 sourceBody691_610

def sourceBody691_612 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_557 sourceBody691_611

def sourceBody691_613 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_556 sourceBody691_612

def sourceBody691_614 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody691_613 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody691_615 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_614 sourceBody691_3

def sourceBody691_616 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_3 sourceBody691_615

def sourceBody691_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def sourceBody691_618 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody691_0, 691, 56)) (some 70) ([50]) (some (50, sourceBody691_346, 691, 57))

def sourceBody691_619 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_618 sourceBody691_3

def sourceBody691_620 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_619 sourceBody691_0

def sourceBody691_621 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_617 sourceBody691_620

def sourceBody691_622 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_621

def sourceBody691_623 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_622

def sourceBody691_624 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_616 sourceBody691_623

def sourceBody691_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody691_626 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_625 sourceBody691_0

def sourceBody691_627 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_356 sourceBody691_626

def sourceBody691_628 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_624 sourceBody691_627

def sourceBody691_629 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_555 sourceBody691_628

def sourceBody691_630 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_629

def sourceBody691_631 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_554 sourceBody691_630

def sourceBody691_632 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_631

def sourceBody691_633 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_632

def sourceBody691_634 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_633

def sourceBody691_635 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_634

def sourceBody691_636 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_635

def sourceBody691_637 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_636

def sourceBody691_638 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_637

def sourceBody691_639 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_638

def sourceBody691_640 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_545 sourceBody691_639

def sourceBody691_641 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_640

def sourceBody691_642 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_544 sourceBody691_641

def sourceBody691_643 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_642

def sourceBody691_644 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_543 sourceBody691_643

def sourceBody691_645 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_644

def sourceBody691_646 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_542 sourceBody691_645

def sourceBody691_647 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_646

def sourceBody691_648 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_541 sourceBody691_647

def sourceBody691_649 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_509 sourceBody691_648

def sourceBody691_650 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_649

def sourceBody691_651 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_650

def sourceBody691_652 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_504 sourceBody691_651

def sourceBody691_653 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_41 sourceBody691_652

def sourceBody691_654 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_653

def sourceBody691_655 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_654

def sourceBody691_656 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_35 sourceBody691_655

def sourceBody691_657 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_656

def sourceBody691_658 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_657

def sourceBody691_659 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_29 sourceBody691_658

def sourceBody691_660 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_659

def sourceBody691_661 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_660

def sourceBody691_662 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_23 sourceBody691_661

def sourceBody691_663 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_662

def sourceBody691_664 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_663

def sourceBody691_665 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_17 sourceBody691_664

def sourceBody691_666 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_665

def sourceBody691_667 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_666

def sourceBody691_668 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_11 sourceBody691_667

def sourceBody691_669 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_668

def sourceBody691_670 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_669

def sourceBody691_671 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_5 sourceBody691_670

def sourceBody691_672 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_671

def sourceBody691_673 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody691_0 sourceBody691_672

def source691 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (691, 3, sourceBody691_673)
end InitECandidate.Proofs.WordStages
