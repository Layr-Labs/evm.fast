import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source687
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word687_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word687_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word687_0_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_0_0, 687, 2)) (some 69) ([]) (some (14, word687_0_1, 687, 3))

def word687_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word687_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_2 word687_0_3

def word687_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_4 word687_0_5

def word687_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_6 word687_0_5

def word687_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word687_0_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_0_0, 687, 4)) (some 68) ([48]) (some (48, word687_0_8, 687, 5))

def word687_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_7 word687_0_9

def word687_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_10 word687_0_3

def word687_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_11 word687_0_12

def word687_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_13 word687_0_12

def word687_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word687_0_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_0_0, 687, 6)) (some 68) ([32]) (some (32, word687_0_15, 687, 7))

def word687_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_14 word687_0_16

def word687_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_17 word687_0_3

def word687_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_18 word687_0_19

def word687_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_20 word687_0_19

def word687_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word687_0_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_0_0, 687, 8)) (some 68) ([66]) (some (66, word687_0_22, 687, 9))

def word687_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_21 word687_0_23

def word687_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_24 word687_0_3

def word687_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_25 word687_0_26

def word687_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_27 word687_0_26

def word687_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word687_0_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_0_0, 687, 10)) (some 68) ([10]) (some (10, word687_0_29, 687, 11))

def word687_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_28 word687_0_30

def word687_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_31 word687_0_3

def word687_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_32 word687_0_33

def word687_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_34 word687_0_33

def word687_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word687_0_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 12)) (some 68) ([44]) (some (44, word687_0_36, 687, 13))

def word687_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_35 word687_0_37

def word687_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_38 word687_0_3

def word687_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_39 word687_0_40

def word687_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_41 word687_0_40

def word687_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word687_0_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 14)) (some 68) ([28]) (some (28, word687_0_43, 687, 15))

def word687_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_42 word687_0_44

def word687_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_45 word687_0_3

def word687_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 14)

def word687_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_46 word687_0_47

def word687_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_48 word687_0_49

def word687_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_50 word687_0_49

def word687_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word687_0_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 16)) (some 78) ([62, 20]) (some (62, word687_0_52, 687, 17))

def word687_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_51 word687_0_53

def word687_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_54 word687_0_3

def word687_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def word687_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_55 word687_0_56

def word687_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 5544790254283102953#64)

def word687_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_57 word687_0_58

def word687_0_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13698472384431417117#64)

def word687_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_59 word687_0_60

def word687_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 4628036095437277618#64)

def word687_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_61 word687_0_62

def word687_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2762764518496934255#64)

def word687_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_63 word687_0_64

def word687_0_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 5544790254283102953#64)

def word687_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_65 word687_0_66

def word687_0_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 70

def word687_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_67 word687_0_68

def word687_0_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 13698472384431417117#64)

def word687_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_69 word687_0_70

def word687_0_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64])
  70

def word687_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_71 word687_0_72

def word687_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 4628036095437277618#64)

def word687_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_73 word687_0_74

def word687_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64])
  70

def word687_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_75 word687_0_76

def word687_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 2762764518496934255#64)

def word687_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_77 word687_0_78

def word687_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 24#64])
  70

def word687_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_79 word687_0_80

def word687_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 192#64])

def word687_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_81 word687_0_82

def word687_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 10102850021236865696#64)

def word687_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_83 word687_0_84

def word687_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 15026249742141879542#64)

def word687_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_85 word687_0_86

def word687_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 2169086236411634456#64)

def word687_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_87 word687_0_88

def word687_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2710440286313254821#64)

def word687_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_89 word687_0_90

def word687_0_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 10102850021236865696#64)

def word687_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_91 word687_0_92

def word687_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_93 word687_0_68

def word687_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 15026249742141879542#64)

def word687_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_94 word687_0_95

def word687_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_96 word687_0_72

def word687_0_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 2169086236411634456#64)

def word687_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_97 word687_0_98

def word687_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_99 word687_0_76

def word687_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 2710440286313254821#64)

def word687_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_100 word687_0_101

def word687_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_102 word687_0_80

def word687_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 384#64])

def word687_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_103 word687_0_104

def word687_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def word687_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_105 word687_0_106

def word687_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def word687_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_107 word687_0_108

def word687_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def word687_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_109 word687_0_110

def word687_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def word687_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_111 word687_0_112

def word687_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def word687_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_113 word687_0_114

def word687_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_115 word687_0_68

def word687_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def word687_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_116 word687_0_117

def word687_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_118 word687_0_72

def word687_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def word687_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_119 word687_0_120

def word687_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_121 word687_0_76

def word687_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def word687_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_122 word687_0_123

def word687_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_124 word687_0_80

def word687_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 48)

def word687_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_125 word687_0_126

def word687_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_127 word687_0_49

def word687_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_128 word687_0_49

def word687_0_130 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 18)) (some 78) ([62, 20]) (some (62, word687_0_52, 687, 19))

def word687_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_129 word687_0_130

def word687_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_131 word687_0_3

def word687_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_132 word687_0_126

def word687_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def word687_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_133 word687_0_134

def word687_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 384#64)

def word687_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_135 word687_0_136

def word687_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_137 word687_0_136

def word687_0_139 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 20)) (some 77) ([62, 20, 52]) (some (62, word687_0_52, 687, 21))

def word687_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_138 word687_0_139

def word687_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_140 word687_0_3

def word687_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 32)

def word687_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_141 word687_0_142

def word687_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_143 word687_0_49

def word687_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_144 word687_0_49

def word687_0_146 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 22)) (some 78) ([62, 20]) (some (62, word687_0_52, 687, 23))

def word687_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_145 word687_0_146

def word687_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_147 word687_0_3

def word687_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 66)

def word687_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_148 word687_0_149

def word687_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_150 word687_0_49

def word687_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_151 word687_0_49

def word687_0_153 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 24)) (some 78) ([62, 20]) (some (62, word687_0_52, 687, 25))

def word687_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_152 word687_0_153

def word687_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_154 word687_0_3

def word687_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 66)

def word687_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_155 word687_0_156

def word687_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_157 word687_0_106

def word687_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_158 word687_0_108

def word687_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_159 word687_0_110

def word687_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_160 word687_0_112

def word687_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_161 word687_0_114

def word687_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_162 word687_0_68

def word687_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_163 word687_0_117

def word687_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_164 word687_0_72

def word687_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_165 word687_0_120

def word687_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_166 word687_0_76

def word687_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_167 word687_0_123

def word687_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_168 word687_0_80

def word687_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_169 word687_0_3

def word687_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_171 word687_0_126

def word687_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13#64)

def word687_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_172 word687_0_173

def word687_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_174 word687_0_173

def word687_0_176 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 26)) (some 685) ([62, 20]) (some (62, word687_0_52, 687, 27))

def word687_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_175 word687_0_176

def word687_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_177 word687_0_3

def word687_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_178 word687_0_179

def word687_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def word687_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_180 word687_0_181

def word687_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_183 word687_0_3

def word687_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_184 word687_0_185

def word687_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word687_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_186 word687_0_187

def word687_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_179 word687_0_3

def word687_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_189 word687_0_190

def word687_0_192 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 20 (Flapjack.WordRegImm.reg 52) word687_0_188 word687_0_191

def word687_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_182 word687_0_192

def word687_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_193 word687_0_3

def word687_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def word687_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_194 word687_0_195

def word687_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 13#64)

def word687_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_196 word687_0_197

def word687_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_198 word687_0_197

def word687_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word687_0_201 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 28)) (some 685) ([20, 52]) (some (20, word687_0_200, 687, 29))

def word687_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_199 word687_0_201

def word687_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_202 word687_0_3

def word687_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 10)

def word687_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_203 word687_0_204

def word687_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_205 word687_0_206

def word687_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_207 word687_0_206

def word687_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word687_0_210 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 30)) (some 78) ([52, 36]) (some (52, word687_0_209, 687, 31))

def word687_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_208 word687_0_210

def word687_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_211 word687_0_3

def word687_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word687_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_212 word687_0_213

def word687_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word687_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_214 word687_0_215

def word687_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word687_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_216 word687_0_217

def word687_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 48,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word687_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_218 word687_0_219

def word687_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def word687_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_220 word687_0_221

def word687_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def word687_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_222 word687_0_223

def word687_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def word687_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_224 word687_0_225

def word687_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 70)

def word687_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_226 word687_0_227

def word687_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word687_0_230 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 32)) (some 660) ([18, 50, 34, 68]) (some (18, word687_0_229, 687, 33))

def word687_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_228 word687_0_230

def word687_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_231 word687_0_3

def word687_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_232 word687_0_3

def word687_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 62)

def word687_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def word687_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_234 word687_0_235

def word687_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_237 word687_0_3

def word687_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_238 word687_0_239

def word687_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word687_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_240 word687_0_241

def word687_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word687_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_242 word687_0_243

def word687_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word687_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_244 word687_0_245

def word687_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word687_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_246 word687_0_247

def word687_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def word687_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_248 word687_0_249

def word687_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def word687_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_250 word687_0_251

def word687_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def word687_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_252 word687_0_253

def word687_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 68)

def word687_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_254 word687_0_255

def word687_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def word687_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_256 word687_0_257

def word687_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def word687_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_258 word687_0_259

def word687_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def word687_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_260 word687_0_261

def word687_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 60)

def word687_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_262 word687_0_263

def word687_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word687_0_266 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 34)) (some 657) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, word687_0_265, 687, 35))

def word687_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_264 word687_0_266

def word687_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_267 word687_0_3

def word687_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 62, Flapjack.WordLangExpHOL.var 28])
        (Flapjack.WordLangExpHOL.const 5#64)])

def word687_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_268 word687_0_269

def word687_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def word687_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_270 word687_0_271

def word687_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 46)

def word687_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_272 word687_0_273

def word687_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 30)

def word687_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_274 word687_0_275

def word687_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 64)

def word687_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_276 word687_0_277

def word687_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 54)

def word687_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_278 word687_0_279

def word687_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 40

def word687_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_280 word687_0_281

def word687_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def word687_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_282 word687_0_283

def word687_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
  40

def word687_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_284 word687_0_285

def word687_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def word687_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_286 word687_0_287

def word687_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])
  40

def word687_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_288 word687_0_289

def word687_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def word687_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_290 word687_0_291

def word687_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64])
  40

def word687_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_292 word687_0_293

def word687_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 14)

def word687_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_294 word687_0_295

def word687_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def word687_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_296 word687_0_297

def word687_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 12)

def word687_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_298 word687_0_299

def word687_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 46)

def word687_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_300 word687_0_301

def word687_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 30)

def word687_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_302 word687_0_303

def word687_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 64)

def word687_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_304 word687_0_305

def word687_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 62, Flapjack.WordLangExpHOL.var 28])

def word687_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_306 word687_0_307

def word687_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def word687_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_308 word687_0_309

def word687_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word687_0_312 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 36)) (some 686) ([54, 38, 72, 6, 40, 24, 58, 16]) (some (54, word687_0_311, 687, 37))

def word687_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_310 word687_0_312

def word687_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_313 word687_0_3

def word687_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def word687_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_314 word687_0_315

def word687_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 13#64)

def word687_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_316 word687_0_317

def word687_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_318 word687_0_317

def word687_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_319 word687_0_317

def word687_0_321 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 38)) (some 685) ([22, 54]) (some (22, word687_0_265, 687, 39))

def word687_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_320 word687_0_321

def word687_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_322 word687_0_3

def word687_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word687_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_323 word687_0_324

def word687_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_326 word687_0_3

def word687_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_327 word687_0_328

def word687_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_329 word687_0_187

def word687_0_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 50 (Flapjack.WordRegImm.reg 34) word687_0_325 word687_0_330

def word687_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_236 word687_0_331

def word687_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_332 word687_0_3

def word687_0_334 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word687_0_333 (Flapjack.Spt.bs
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

def word687_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_233 word687_0_334

def word687_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_335 word687_0_3

def word687_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def word687_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_336 word687_0_337

def word687_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def word687_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_338 word687_0_339

def word687_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 416#64)

def word687_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_340 word687_0_341

def word687_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_342 word687_0_341

def word687_0_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def word687_0_345 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 40)) (some 77) ([50, 34, 68]) (some (50, word687_0_344, 687, 41))

def word687_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_343 word687_0_345

def word687_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_346 word687_0_3

def word687_0_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_347 word687_0_348

def word687_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_349 word687_0_3

def word687_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def word687_0_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 13#64)

def word687_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_351 word687_0_352

def word687_0_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_354 word687_0_3

def word687_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_355 word687_0_356

def word687_0_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word687_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_357 word687_0_358

def word687_0_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word687_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_359 word687_0_360

def word687_0_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word687_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_361 word687_0_362

def word687_0_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 10,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word687_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_363 word687_0_364

def word687_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 50)

def word687_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_365 word687_0_366

def word687_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 34)

def word687_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_367 word687_0_368

def word687_0_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 68)

def word687_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_369 word687_0_370

def word687_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_371 word687_0_271

def word687_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word687_0_374 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 42)) (some 102) ([30, 64, 22, 54]) (some (30, word687_0_373, 687, 43))

def word687_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_372 word687_0_374

def word687_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_375 word687_0_3

def word687_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 46)

def word687_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_376 word687_0_377

def word687_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_378 word687_0_379

def word687_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_381 word687_0_3

def word687_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def word687_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_382 word687_0_383

def word687_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def word687_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_384 word687_0_385

def word687_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 66)

def word687_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_386 word687_0_387

def word687_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_388 word687_0_251

def word687_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_389 word687_0_253

def word687_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_390 word687_0_255

def word687_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def word687_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_391 word687_0_392

def word687_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def word687_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_393 word687_0_394

def word687_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 12#64, Flapjack.WordLangExpHOL.var 18])

def word687_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_395 word687_0_396

def word687_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def word687_0_399 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 44)) (some 686) ([64, 22, 54, 38, 72, 6, 40, 24]) (some (64, word687_0_398, 687, 45))

def word687_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_397 word687_0_399

def word687_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_400 word687_0_3

def word687_0_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_402 word687_0_3

def word687_0_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_403 word687_0_404

def word687_0_406 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 64 (Flapjack.WordRegImm.reg 22) word687_0_401 word687_0_405

def word687_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_380 word687_0_406

def word687_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_407 word687_0_3

def word687_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def word687_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_408 word687_0_409

def word687_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def word687_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_410 word687_0_411

def word687_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_412 word687_0_324

def word687_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_414 word687_0_3

def word687_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_415 word687_0_416

def word687_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_417 word687_0_187

def word687_0_419 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 68) word687_0_413 word687_0_418

def word687_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_353 word687_0_419

def word687_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_420 word687_0_3

def word687_0_422 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word687_0_421 (Flapjack.Spt.bs
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

def word687_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_350 word687_0_422

def word687_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_423 word687_0_3

def word687_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 14)

def word687_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_424 word687_0_425

def word687_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 48)

def word687_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_426 word687_0_427

def word687_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 50)

def word687_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_428 word687_0_429

def word687_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def word687_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_430 word687_0_431

def word687_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 66)

def word687_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_432 word687_0_433

def word687_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 44)

def word687_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_434 word687_0_435

def word687_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def word687_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_436 word687_0_437

def word687_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_438 word687_0_324

def word687_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_439 word687_0_3

def word687_0_441 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word687_0_440 (Flapjack.Spt.bs
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

def word687_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_170 word687_0_441

def word687_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_442 word687_0_3

def word687_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_443 word687_0_126

def word687_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_444 word687_0_173

def word687_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_445 word687_0_173

def word687_0_447 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 46)) (some 685) ([62, 20]) (some (62, word687_0_52, 687, 47))

def word687_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_446 word687_0_447

def word687_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_448 word687_0_3

def word687_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def word687_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_449 word687_0_450

def word687_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_451 word687_0_452

def word687_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def word687_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_186 word687_0_454

def word687_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_455 word687_0_136

def word687_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_456 word687_0_136

def word687_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_457 word687_0_136

def word687_0_459 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_0_0, 687, 48)) (some 78) ([20, 52]) (some (20, word687_0_200, 687, 49))

def word687_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_458 word687_0_459

def word687_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_460 word687_0_3

def word687_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 56)

def word687_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_461 word687_0_462

def word687_0_464 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word687_0_0, 687, 50)) (some 70) ([20]) (some (20, word687_0_200, 687, 51))

def word687_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_463 word687_0_464

def word687_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_465 word687_0_3

def word687_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_466 word687_0_467

def word687_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [62]

def word687_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_468 word687_0_469

def word687_0_471 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 52) word687_0_470 word687_0_0

def word687_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_471 word687_0_191

def word687_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_453 word687_0_472

def word687_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_473 word687_0_3

def word687_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 48))

def word687_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_474 word687_0_475

def word687_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 8#64]))

def word687_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_476 word687_0_477

def word687_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 16#64]))

def word687_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_478 word687_0_479

def word687_0_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 24#64]))

def word687_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_480 word687_0_481

def word687_0_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 62)

def word687_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_482 word687_0_483

def word687_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_484 word687_0_221

def word687_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_485 word687_0_223

def word687_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_486 word687_0_225

def word687_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word687_0_489 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 52)) (some 660) ([60, 18, 50, 34]) (some (60, word687_0_488, 687, 53))

def word687_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_487 word687_0_489

def word687_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_490 word687_0_3

def word687_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def word687_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_491 word687_0_492

def word687_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_493 word687_0_3

def word687_0_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 60)

def word687_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 12#64)

def word687_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_495 word687_0_496

def word687_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def word687_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_240 word687_0_498

def word687_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def word687_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_499 word687_0_500

def word687_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def word687_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_501 word687_0_502

def word687_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def word687_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_503 word687_0_504

def word687_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_505 word687_0_249

def word687_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_506 word687_0_251

def word687_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_507 word687_0_253

def word687_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_508 word687_0_255

def word687_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 70)

def word687_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_509 word687_0_510

def word687_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 8)

def word687_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_511 word687_0_512

def word687_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def word687_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_513 word687_0_514

def word687_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 26)

def word687_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_515 word687_0_516

def word687_0_518 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word687_0_0, 687, 54)) (some 657) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, word687_0_265, 687, 55))

def word687_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_517 word687_0_518

def word687_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_519 word687_0_3

def word687_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
        (Flapjack.WordLangExpHOL.const 5#64)])

def word687_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_520 word687_0_521

def word687_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_522 word687_0_271

def word687_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_523 word687_0_273

def word687_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_524 word687_0_275

def word687_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_525 word687_0_277

def word687_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_526 word687_0_279

def word687_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_527 word687_0_281

def word687_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_528 word687_0_283

def word687_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_529 word687_0_285

def word687_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_530 word687_0_287

def word687_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_531 word687_0_289

def word687_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_532 word687_0_291

def word687_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_533 word687_0_293

def word687_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 1#64])

def word687_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_534 word687_0_535

def word687_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 22)

def word687_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_536 word687_0_537

def word687_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_538 word687_0_324

def word687_0_540 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 50 (Flapjack.WordRegImm.reg 34) word687_0_539 word687_0_330

def word687_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_497 word687_0_540

def word687_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_541 word687_0_3

def word687_0_543 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word687_0_542 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word687_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_494 word687_0_543

def word687_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_544 word687_0_3

def word687_0_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def word687_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_545 word687_0_546

def word687_0_548 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word687_0_0, 687, 56)) (some 70) ([50]) (some (50, word687_0_344, 687, 57))

def word687_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_547 word687_0_548

def word687_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_549 word687_0_3

def word687_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_550 word687_0_348

def word687_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def word687_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word687_0_551 word687_0_552

def pass687_0 : WordLangProgHOL (BitVec 64) :=
word687_0_553
theorem pass687_0_eq : WordSimp.compileExp (source687.2.2) = pass687_0 := by
  kernel_rfl
#print axioms pass687_0_eq
end InitECandidate.Proofs.WordStages
