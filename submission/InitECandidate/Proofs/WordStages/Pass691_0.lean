import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source691
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word691_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word691_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word691_0_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word691_0_0, 691, 2)) (some 69) ([]) (some (14, word691_0_1, 691, 3))

def word691_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word691_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_2 word691_0_3

def word691_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_4 word691_0_5

def word691_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_6 word691_0_5

def word691_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word691_0_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word691_0_0, 691, 4)) (some 68) ([48]) (some (48, word691_0_8, 691, 5))

def word691_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_7 word691_0_9

def word691_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_10 word691_0_3

def word691_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_11 word691_0_12

def word691_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_13 word691_0_12

def word691_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word691_0_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word691_0_0, 691, 6)) (some 68) ([32]) (some (32, word691_0_15, 691, 7))

def word691_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_14 word691_0_16

def word691_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_17 word691_0_3

def word691_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_18 word691_0_19

def word691_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_20 word691_0_19

def word691_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word691_0_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word691_0_0, 691, 8)) (some 68) ([66]) (some (66, word691_0_22, 691, 9))

def word691_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_21 word691_0_23

def word691_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_24 word691_0_3

def word691_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_25 word691_0_26

def word691_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_27 word691_0_26

def word691_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word691_0_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word691_0_0, 691, 10)) (some 68) ([10]) (some (10, word691_0_29, 691, 11))

def word691_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_28 word691_0_30

def word691_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_31 word691_0_3

def word691_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_32 word691_0_33

def word691_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_34 word691_0_33

def word691_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word691_0_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 12)) (some 68) ([44]) (some (44, word691_0_36, 691, 13))

def word691_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_35 word691_0_37

def word691_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_38 word691_0_3

def word691_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_39 word691_0_40

def word691_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_41 word691_0_40

def word691_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word691_0_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 14)) (some 68) ([28]) (some (28, word691_0_43, 691, 15))

def word691_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_42 word691_0_44

def word691_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_45 word691_0_3

def word691_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 14)

def word691_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_46 word691_0_47

def word691_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_48 word691_0_49

def word691_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_50 word691_0_49

def word691_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word691_0_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 16)) (some 78) ([62, 20]) (some (62, word691_0_52, 691, 17))

def word691_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_51 word691_0_53

def word691_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_54 word691_0_3

def word691_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def word691_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_55 word691_0_56

def word691_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 5544790254283102953#64)

def word691_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_57 word691_0_58

def word691_0_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13698472384431417117#64)

def word691_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_59 word691_0_60

def word691_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 4628036095437277618#64)

def word691_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_61 word691_0_62

def word691_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2762764518496934255#64)

def word691_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_63 word691_0_64

def word691_0_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 5544790254283102953#64)

def word691_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_65 word691_0_66

def word691_0_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 70

def word691_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_67 word691_0_68

def word691_0_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 13698472384431417117#64)

def word691_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_69 word691_0_70

def word691_0_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64])
  70

def word691_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_71 word691_0_72

def word691_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 4628036095437277618#64)

def word691_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_73 word691_0_74

def word691_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64])
  70

def word691_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_75 word691_0_76

def word691_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 2762764518496934255#64)

def word691_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_77 word691_0_78

def word691_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 24#64])
  70

def word691_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_79 word691_0_80

def word691_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 192#64])

def word691_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_81 word691_0_82

def word691_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 10102850021236865696#64)

def word691_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_83 word691_0_84

def word691_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 15026249742141879542#64)

def word691_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_85 word691_0_86

def word691_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 2169086236411634456#64)

def word691_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_87 word691_0_88

def word691_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2710440286313254821#64)

def word691_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_89 word691_0_90

def word691_0_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 10102850021236865696#64)

def word691_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_91 word691_0_92

def word691_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_93 word691_0_68

def word691_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 15026249742141879542#64)

def word691_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_94 word691_0_95

def word691_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_96 word691_0_72

def word691_0_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 2169086236411634456#64)

def word691_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_97 word691_0_98

def word691_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_99 word691_0_76

def word691_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 2710440286313254821#64)

def word691_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_100 word691_0_101

def word691_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_102 word691_0_80

def word691_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 384#64])

def word691_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_103 word691_0_104

def word691_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def word691_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_105 word691_0_106

def word691_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def word691_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_107 word691_0_108

def word691_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def word691_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_109 word691_0_110

def word691_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def word691_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_111 word691_0_112

def word691_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def word691_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_113 word691_0_114

def word691_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_115 word691_0_68

def word691_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def word691_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_116 word691_0_117

def word691_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_118 word691_0_72

def word691_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def word691_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_119 word691_0_120

def word691_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_121 word691_0_76

def word691_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def word691_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_122 word691_0_123

def word691_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_124 word691_0_80

def word691_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 48)

def word691_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_125 word691_0_126

def word691_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_127 word691_0_49

def word691_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_128 word691_0_49

def word691_0_130 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 18)) (some 78) ([62, 20]) (some (62, word691_0_52, 691, 19))

def word691_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_129 word691_0_130

def word691_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_131 word691_0_3

def word691_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_132 word691_0_126

def word691_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def word691_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_133 word691_0_134

def word691_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 384#64)

def word691_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_135 word691_0_136

def word691_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_137 word691_0_136

def word691_0_139 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 20)) (some 77) ([62, 20, 52]) (some (62, word691_0_52, 691, 21))

def word691_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_138 word691_0_139

def word691_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_140 word691_0_3

def word691_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 32)

def word691_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_141 word691_0_142

def word691_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_143 word691_0_49

def word691_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_144 word691_0_49

def word691_0_146 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 22)) (some 78) ([62, 20]) (some (62, word691_0_52, 691, 23))

def word691_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_145 word691_0_146

def word691_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_147 word691_0_3

def word691_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 66)

def word691_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_148 word691_0_149

def word691_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_150 word691_0_49

def word691_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_151 word691_0_49

def word691_0_153 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 24)) (some 78) ([62, 20]) (some (62, word691_0_52, 691, 25))

def word691_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_152 word691_0_153

def word691_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_154 word691_0_3

def word691_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 66)

def word691_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_155 word691_0_156

def word691_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_157 word691_0_106

def word691_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_158 word691_0_108

def word691_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_159 word691_0_110

def word691_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_160 word691_0_112

def word691_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_161 word691_0_114

def word691_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_162 word691_0_68

def word691_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_163 word691_0_117

def word691_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_164 word691_0_72

def word691_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_165 word691_0_120

def word691_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_166 word691_0_76

def word691_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_167 word691_0_123

def word691_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_168 word691_0_80

def word691_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_169 word691_0_3

def word691_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_171 word691_0_126

def word691_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13#64)

def word691_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_172 word691_0_173

def word691_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_174 word691_0_173

def word691_0_176 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 26)) (some 689) ([62, 20]) (some (62, word691_0_52, 691, 27))

def word691_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_175 word691_0_176

def word691_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_177 word691_0_3

def word691_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_178 word691_0_179

def word691_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def word691_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_180 word691_0_181

def word691_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_183 word691_0_3

def word691_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_184 word691_0_185

def word691_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word691_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_186 word691_0_187

def word691_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_179 word691_0_3

def word691_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_189 word691_0_190

def word691_0_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 20 (Flapjack.WordRegImm.reg 52) word691_0_188 word691_0_191

def word691_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_182 word691_0_192

def word691_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_193 word691_0_3

def word691_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def word691_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_194 word691_0_195

def word691_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 13#64)

def word691_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_196 word691_0_197

def word691_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_198 word691_0_197

def word691_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word691_0_201 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 28)) (some 689) ([20, 52]) (some (20, word691_0_200, 691, 29))

def word691_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_199 word691_0_201

def word691_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_202 word691_0_3

def word691_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 10)

def word691_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_203 word691_0_204

def word691_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_205 word691_0_206

def word691_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_207 word691_0_206

def word691_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word691_0_210 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 30)) (some 78) ([52, 36]) (some (52, word691_0_209, 691, 31))

def word691_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_208 word691_0_210

def word691_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_211 word691_0_3

def word691_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word691_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_212 word691_0_213

def word691_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word691_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_214 word691_0_215

def word691_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word691_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_216 word691_0_217

def word691_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word691_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_218 word691_0_219

def word691_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def word691_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_220 word691_0_221

def word691_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def word691_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_222 word691_0_223

def word691_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def word691_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_224 word691_0_225

def word691_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 70)

def word691_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_226 word691_0_227

def word691_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word691_0_230 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 32)) (some 664) ([18, 50, 34, 68]) (some (18, word691_0_229, 691, 33))

def word691_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_228 word691_0_230

def word691_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_231 word691_0_3

def word691_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_232 word691_0_3

def word691_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 62)

def word691_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def word691_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_234 word691_0_235

def word691_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_237 word691_0_3

def word691_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_238 word691_0_239

def word691_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word691_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_240 word691_0_241

def word691_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word691_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_242 word691_0_243

def word691_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word691_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_244 word691_0_245

def word691_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word691_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_246 word691_0_247

def word691_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def word691_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_248 word691_0_249

def word691_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def word691_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_250 word691_0_251

def word691_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def word691_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_252 word691_0_253

def word691_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 68)

def word691_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_254 word691_0_255

def word691_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def word691_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_256 word691_0_257

def word691_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def word691_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_258 word691_0_259

def word691_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def word691_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_260 word691_0_261

def word691_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 60)

def word691_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_262 word691_0_263

def word691_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word691_0_266 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 34)) (some 661) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, word691_0_265, 691, 35))

def word691_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_264 word691_0_266

def word691_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_267 word691_0_3

def word691_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 62, Flapjack.WordLangExpHOL.var 28])
        (Flapjack.WordLangExpHOL.const 5#64)])

def word691_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_268 word691_0_269

def word691_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def word691_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_270 word691_0_271

def word691_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 46)

def word691_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_272 word691_0_273

def word691_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 30)

def word691_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_274 word691_0_275

def word691_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 64)

def word691_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_276 word691_0_277

def word691_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 54)

def word691_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_278 word691_0_279

def word691_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 40

def word691_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_280 word691_0_281

def word691_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def word691_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_282 word691_0_283

def word691_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
  40

def word691_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_284 word691_0_285

def word691_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def word691_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_286 word691_0_287

def word691_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])
  40

def word691_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_288 word691_0_289

def word691_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def word691_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_290 word691_0_291

def word691_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64])
  40

def word691_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_292 word691_0_293

def word691_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 14)

def word691_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_294 word691_0_295

def word691_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def word691_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_296 word691_0_297

def word691_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 12)

def word691_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_298 word691_0_299

def word691_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 46)

def word691_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_300 word691_0_301

def word691_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def word691_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_302 word691_0_303

def word691_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 64)

def word691_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_304 word691_0_305

def word691_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 62, Flapjack.WordLangExpHOL.var 28])

def word691_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_306 word691_0_307

def word691_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def word691_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_308 word691_0_309

def word691_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word691_0_312 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 36)) (some 690) ([54, 38, 72, 6, 40, 24, 58, 16]) (some (54, word691_0_311, 691, 37))

def word691_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_310 word691_0_312

def word691_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_313 word691_0_3

def word691_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def word691_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_314 word691_0_315

def word691_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 13#64)

def word691_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_316 word691_0_317

def word691_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_318 word691_0_317

def word691_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_319 word691_0_317

def word691_0_321 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 38)) (some 689) ([22, 54]) (some (22, word691_0_265, 691, 39))

def word691_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_320 word691_0_321

def word691_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_322 word691_0_3

def word691_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word691_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_323 word691_0_324

def word691_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_326 word691_0_3

def word691_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_327 word691_0_328

def word691_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_329 word691_0_187

def word691_0_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 50 (Flapjack.WordRegImm.reg 34) word691_0_325 word691_0_330

def word691_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_236 word691_0_331

def word691_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_332 word691_0_3

def word691_0_334 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word691_0_333 (Flapjack.Spt.bs
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

def word691_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_233 word691_0_334

def word691_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_335 word691_0_3

def word691_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def word691_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_336 word691_0_337

def word691_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def word691_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_338 word691_0_339

def word691_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 416#64)

def word691_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_340 word691_0_341

def word691_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_342 word691_0_341

def word691_0_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def word691_0_345 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 40)) (some 77) ([50, 34, 68]) (some (50, word691_0_344, 691, 41))

def word691_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_343 word691_0_345

def word691_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_346 word691_0_3

def word691_0_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_347 word691_0_348

def word691_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_349 word691_0_3

def word691_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def word691_0_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 13#64)

def word691_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_351 word691_0_352

def word691_0_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_354 word691_0_3

def word691_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_355 word691_0_356

def word691_0_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word691_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_357 word691_0_358

def word691_0_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word691_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_359 word691_0_360

def word691_0_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word691_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_361 word691_0_362

def word691_0_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word691_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_363 word691_0_364

def word691_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 50)

def word691_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_365 word691_0_366

def word691_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 34)

def word691_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_367 word691_0_368

def word691_0_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 68)

def word691_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_369 word691_0_370

def word691_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_371 word691_0_271

def word691_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word691_0_374 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 42)) (some 102) ([30, 64, 22, 54]) (some (30, word691_0_373, 691, 43))

def word691_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_372 word691_0_374

def word691_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_375 word691_0_3

def word691_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 46)

def word691_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_376 word691_0_377

def word691_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_378 word691_0_379

def word691_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_381 word691_0_3

def word691_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def word691_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_382 word691_0_383

def word691_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def word691_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_384 word691_0_385

def word691_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 66)

def word691_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_386 word691_0_387

def word691_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_388 word691_0_251

def word691_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_389 word691_0_253

def word691_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_390 word691_0_255

def word691_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def word691_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_391 word691_0_392

def word691_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def word691_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_393 word691_0_394

def word691_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.var 18])

def word691_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_395 word691_0_396

def word691_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def word691_0_399 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 44)) (some 690) ([64, 22, 54, 38, 72, 6, 40, 24]) (some (64, word691_0_398, 691, 45))

def word691_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_397 word691_0_399

def word691_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_400 word691_0_3

def word691_0_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_402 word691_0_3

def word691_0_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_403 word691_0_404

def word691_0_406 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 64 (Flapjack.WordRegImm.reg 22) word691_0_401 word691_0_405

def word691_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_380 word691_0_406

def word691_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_407 word691_0_3

def word691_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def word691_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_408 word691_0_409

def word691_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def word691_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_410 word691_0_411

def word691_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_412 word691_0_324

def word691_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_414 word691_0_3

def word691_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_415 word691_0_416

def word691_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_417 word691_0_187

def word691_0_419 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 68) word691_0_413 word691_0_418

def word691_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_353 word691_0_419

def word691_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_420 word691_0_3

def word691_0_422 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word691_0_421 (Flapjack.Spt.bs
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

def word691_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_350 word691_0_422

def word691_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_423 word691_0_3

def word691_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 14)

def word691_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_424 word691_0_425

def word691_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 48)

def word691_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_426 word691_0_427

def word691_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 50)

def word691_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_428 word691_0_429

def word691_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def word691_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_430 word691_0_431

def word691_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 66)

def word691_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_432 word691_0_433

def word691_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 44)

def word691_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_434 word691_0_435

def word691_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def word691_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_436 word691_0_437

def word691_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_438 word691_0_324

def word691_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_439 word691_0_3

def word691_0_441 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word691_0_440 (Flapjack.Spt.bs
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

def word691_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_170 word691_0_441

def word691_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_442 word691_0_3

def word691_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_443 word691_0_126

def word691_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_444 word691_0_173

def word691_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_445 word691_0_173

def word691_0_447 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 46)) (some 689) ([62, 20]) (some (62, word691_0_52, 691, 47))

def word691_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_446 word691_0_447

def word691_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_448 word691_0_3

def word691_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def word691_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_449 word691_0_450

def word691_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_451 word691_0_452

def word691_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def word691_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_186 word691_0_454

def word691_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_455 word691_0_136

def word691_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_456 word691_0_136

def word691_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_457 word691_0_136

def word691_0_459 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word691_0_0, 691, 48)) (some 78) ([20, 52]) (some (20, word691_0_200, 691, 49))

def word691_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_458 word691_0_459

def word691_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_460 word691_0_3

def word691_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 56)

def word691_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_461 word691_0_462

def word691_0_464 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word691_0_0, 691, 50)) (some 70) ([20]) (some (20, word691_0_200, 691, 51))

def word691_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_463 word691_0_464

def word691_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_465 word691_0_3

def word691_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_466 word691_0_467

def word691_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [62]

def word691_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_468 word691_0_469

def word691_0_471 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 52) word691_0_470 word691_0_0

def word691_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_471 word691_0_191

def word691_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_453 word691_0_472

def word691_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_473 word691_0_3

def word691_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 48))

def word691_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_474 word691_0_475

def word691_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 8#64]))

def word691_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_476 word691_0_477

def word691_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 16#64]))

def word691_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_478 word691_0_479

def word691_0_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 24#64]))

def word691_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_480 word691_0_481

def word691_0_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 62)

def word691_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_482 word691_0_483

def word691_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_484 word691_0_221

def word691_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_485 word691_0_223

def word691_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_486 word691_0_225

def word691_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word691_0_489 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 52)) (some 664) ([60, 18, 50, 34]) (some (60, word691_0_488, 691, 53))

def word691_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_487 word691_0_489

def word691_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_490 word691_0_3

def word691_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def word691_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_491 word691_0_492

def word691_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_493 word691_0_3

def word691_0_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 60)

def word691_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 12#64)

def word691_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_495 word691_0_496

def word691_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word691_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_240 word691_0_498

def word691_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word691_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_499 word691_0_500

def word691_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word691_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_501 word691_0_502

def word691_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word691_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_503 word691_0_504

def word691_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_505 word691_0_249

def word691_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_506 word691_0_251

def word691_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_507 word691_0_253

def word691_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_508 word691_0_255

def word691_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 70)

def word691_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_509 word691_0_510

def word691_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 8)

def word691_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_511 word691_0_512

def word691_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def word691_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_513 word691_0_514

def word691_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 26)

def word691_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_515 word691_0_516

def word691_0_518 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word691_0_0, 691, 54)) (some 661) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, word691_0_265, 691, 55))

def word691_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_517 word691_0_518

def word691_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_519 word691_0_3

def word691_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
        (Flapjack.WordLangExpHOL.const 5#64)])

def word691_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_520 word691_0_521

def word691_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_522 word691_0_271

def word691_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_523 word691_0_273

def word691_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_524 word691_0_275

def word691_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_525 word691_0_277

def word691_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_526 word691_0_279

def word691_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_527 word691_0_281

def word691_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_528 word691_0_283

def word691_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_529 word691_0_285

def word691_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_530 word691_0_287

def word691_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_531 word691_0_289

def word691_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_532 word691_0_291

def word691_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_533 word691_0_293

def word691_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 1#64])

def word691_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_534 word691_0_535

def word691_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 22)

def word691_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_536 word691_0_537

def word691_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_538 word691_0_324

def word691_0_540 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 50 (Flapjack.WordRegImm.reg 34) word691_0_539 word691_0_330

def word691_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_497 word691_0_540

def word691_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_541 word691_0_3

def word691_0_543 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word691_0_542 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word691_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_494 word691_0_543

def word691_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_544 word691_0_3

def word691_0_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def word691_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_545 word691_0_546

def word691_0_548 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word691_0_0, 691, 56)) (some 70) ([50]) (some (50, word691_0_344, 691, 57))

def word691_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_547 word691_0_548

def word691_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_549 word691_0_3

def word691_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_550 word691_0_348

def word691_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def word691_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word691_0_551 word691_0_552

def pass691_0 : WordLangProgHOL (BitVec 64) :=
word691_0_553
theorem pass691_0_eq : WordSimp.compileExp (source691.2.2) = pass691_0 := by
  kernel_rfl
#print axioms pass691_0_eq
end InitECandidate.Proofs.WordStages
