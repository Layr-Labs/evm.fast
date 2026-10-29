import InitECandidate.Proofs.WordStages.Source599
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody615_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody615_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody615_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 2)) (some 69) ([]) (some (24, sourceBody615_1, 615, 3))

def sourceBody615_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody615_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_2 sourceBody615_3

def sourceBody615_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_4 sourceBody615_0

def sourceBody615_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody615_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody615_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 4)) (some 68) ([12]) (some (12, sourceBody615_7, 615, 5))

def sourceBody615_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_8 sourceBody615_3

def sourceBody615_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_9 sourceBody615_0

def sourceBody615_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_6 sourceBody615_10

def sourceBody615_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody615_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 255#64)

def sourceBody615_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 20 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody615_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_14 sourceBody615_0

def sourceBody615_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_13 sourceBody615_15

def sourceBody615_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_12 sourceBody615_16

def sourceBody615_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody615_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody615_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody615_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody615_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 6)) (some 77) ([20, 16, 22]) (some (20, sourceBody615_21, 615, 7))

def sourceBody615_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_22 sourceBody615_3

def sourceBody615_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_23 sourceBody615_0

def sourceBody615_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_20 sourceBody615_24

def sourceBody615_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_19 sourceBody615_25

def sourceBody615_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_18 sourceBody615_26

def sourceBody615_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_27

def sourceBody615_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_28

def sourceBody615_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_17 sourceBody615_29

def sourceBody615_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 21#64])

def sourceBody615_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody615_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody615_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 8)) (some 77) ([20, 16, 22]) (some (20, sourceBody615_21, 615, 9))

def sourceBody615_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_34 sourceBody615_3

def sourceBody615_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_35 sourceBody615_0

def sourceBody615_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_33 sourceBody615_36

def sourceBody615_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_32 sourceBody615_37

def sourceBody615_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_31 sourceBody615_38

def sourceBody615_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_39

def sourceBody615_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_40

def sourceBody615_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_30 sourceBody615_41

def sourceBody615_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody615_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody615_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 53#64])

def sourceBody615_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 10)) (some 158) ([20, 16, 22]) (some (20, sourceBody615_21, 615, 11))

def sourceBody615_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_46 sourceBody615_3

def sourceBody615_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_47 sourceBody615_0

def sourceBody615_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_45 sourceBody615_48

def sourceBody615_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_44 sourceBody615_49

def sourceBody615_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_43 sourceBody615_50

def sourceBody615_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_51

def sourceBody615_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_52

def sourceBody615_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_42 sourceBody615_53

def sourceBody615_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody615_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 12)) (some 68) ([20]) (some (20, sourceBody615_21, 615, 13))

def sourceBody615_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_56 sourceBody615_3

def sourceBody615_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_57 sourceBody615_0

def sourceBody615_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_55 sourceBody615_58

def sourceBody615_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody615_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 85#64)

def sourceBody615_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody615_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody615_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 14)) (some 158) ([16, 22, 14]) (some (16, sourceBody615_63, 615, 15))

def sourceBody615_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_64 sourceBody615_3

def sourceBody615_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_65 sourceBody615_0

def sourceBody615_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_62 sourceBody615_66

def sourceBody615_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_61 sourceBody615_67

def sourceBody615_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_60 sourceBody615_68

def sourceBody615_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_69

def sourceBody615_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_70

def sourceBody615_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody615_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody615_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody615_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody615_0, 615, 16)) (some 77) ([16, 22, 14]) (some (16, sourceBody615_63, 615, 17))

def sourceBody615_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_75 sourceBody615_3

def sourceBody615_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_76 sourceBody615_0

def sourceBody615_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_74 sourceBody615_77

def sourceBody615_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_73 sourceBody615_78

def sourceBody615_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_72 sourceBody615_79

def sourceBody615_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_80

def sourceBody615_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_81

def sourceBody615_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_71 sourceBody615_82

def sourceBody615_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody615_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody615_0, 615, 18)) (some 70) ([16]) (some (16, sourceBody615_63, 615, 19))

def sourceBody615_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_85 sourceBody615_3

def sourceBody615_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_86 sourceBody615_0

def sourceBody615_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_84 sourceBody615_87

def sourceBody615_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_88

def sourceBody615_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_89

def sourceBody615_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_83 sourceBody615_90

def sourceBody615_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody615_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody615_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_93 sourceBody615_0

def sourceBody615_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_92 sourceBody615_94

def sourceBody615_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_91 sourceBody615_95

def sourceBody615_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_59 sourceBody615_96

def sourceBody615_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_97

def sourceBody615_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_98

def sourceBody615_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_54 sourceBody615_99

def sourceBody615_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_11 sourceBody615_100

def sourceBody615_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_101

def sourceBody615_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_102

def sourceBody615_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_5 sourceBody615_103

def sourceBody615_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_104

def sourceBody615_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody615_0 sourceBody615_105

def source615 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (615, 6, sourceBody615_106)
end InitECandidate.Proofs.WordStages
