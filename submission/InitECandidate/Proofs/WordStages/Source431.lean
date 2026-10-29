import InitECandidate.Proofs.WordStages.Source415
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody431_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody431_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody431_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody431_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody431_0, 431, 2)) (some 68) ([18]) (some (18, sourceBody431_2, 431, 3))

def sourceBody431_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody431_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_3 sourceBody431_4

def sourceBody431_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_5 sourceBody431_0

def sourceBody431_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_1 sourceBody431_6

def sourceBody431_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody431_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody431_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody431_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody431_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody431_0, 431, 4)) (some 158) ([14, 20, 8]) (some (14, sourceBody431_11, 431, 5))

def sourceBody431_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_12 sourceBody431_4

def sourceBody431_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_13 sourceBody431_0

def sourceBody431_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_10 sourceBody431_14

def sourceBody431_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_9 sourceBody431_15

def sourceBody431_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_8 sourceBody431_16

def sourceBody431_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_17

def sourceBody431_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_18

def sourceBody431_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody431_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody431_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody431_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody431_0, 431, 6)) (some 79) ([14, 20, 8]) (some (14, sourceBody431_11, 431, 7))

def sourceBody431_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_23 sourceBody431_4

def sourceBody431_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_24 sourceBody431_0

def sourceBody431_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_22 sourceBody431_25

def sourceBody431_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_21 sourceBody431_26

def sourceBody431_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_20 sourceBody431_27

def sourceBody431_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody431_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody431_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody431_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody431_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 8) sourceBody431_31 sourceBody431_32

def sourceBody431_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_33 sourceBody431_4

def sourceBody431_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody431_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody431_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody431_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody431_0, 431, 8)) (some 68) ([20]) (some (20, sourceBody431_37, 431, 9))

def sourceBody431_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_38 sourceBody431_4

def sourceBody431_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_39 sourceBody431_0

def sourceBody431_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_36 sourceBody431_40

def sourceBody431_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody431_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody431_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody431_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 16

def sourceBody431_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_45 sourceBody431_0

def sourceBody431_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_44 sourceBody431_46

def sourceBody431_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_47 sourceBody431_0

def sourceBody431_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_43 sourceBody431_48

def sourceBody431_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_49

def sourceBody431_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_42 sourceBody431_50

def sourceBody431_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_51

def sourceBody431_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody431_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody431_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_54 sourceBody431_48

def sourceBody431_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_55

def sourceBody431_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_53 sourceBody431_56

def sourceBody431_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_57

def sourceBody431_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_52 sourceBody431_58

def sourceBody431_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody431_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody431_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody431_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody431_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody431_0, 431, 10)) (some 388) ([8, 16, 12]) (some (8, sourceBody431_63, 431, 11))

def sourceBody431_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_64 sourceBody431_4

def sourceBody431_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_65 sourceBody431_0

def sourceBody431_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_62 sourceBody431_66

def sourceBody431_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_61 sourceBody431_67

def sourceBody431_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_60 sourceBody431_68

def sourceBody431_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_69

def sourceBody431_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_70

def sourceBody431_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_59 sourceBody431_71

def sourceBody431_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_41 sourceBody431_72

def sourceBody431_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_73

def sourceBody431_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_74

def sourceBody431_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody431_75 sourceBody431_0

def sourceBody431_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_76 sourceBody431_4

def sourceBody431_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_77 sourceBody431_0

def sourceBody431_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_35 sourceBody431_78

def sourceBody431_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_34 sourceBody431_79

def sourceBody431_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_30 sourceBody431_80

def sourceBody431_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_29 sourceBody431_81

def sourceBody431_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody431_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody431_0, 431, 12)) (some 407) ([20]) (some (20, sourceBody431_37, 431, 13))

def sourceBody431_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_84 sourceBody431_4

def sourceBody431_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_85 sourceBody431_0

def sourceBody431_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_83 sourceBody431_86

def sourceBody431_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody431_0, 431, 14)) (some 395) ([20]) (some (20, sourceBody431_37, 431, 15))

def sourceBody431_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_88 sourceBody431_4

def sourceBody431_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_89 sourceBody431_0

def sourceBody431_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_42 sourceBody431_90

def sourceBody431_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody431_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_10 sourceBody431_48

def sourceBody431_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_93

def sourceBody431_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_92 sourceBody431_94

def sourceBody431_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_95

def sourceBody431_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_91 sourceBody431_96

def sourceBody431_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody431_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody431_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody431_0, 431, 16)) (some 423) ([8, 16]) (some (8, sourceBody431_63, 431, 17))

def sourceBody431_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_100 sourceBody431_4

def sourceBody431_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_101 sourceBody431_0

def sourceBody431_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_99 sourceBody431_102

def sourceBody431_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_98 sourceBody431_103

def sourceBody431_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_104

def sourceBody431_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_105

def sourceBody431_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_97 sourceBody431_106

def sourceBody431_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody431_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_108 sourceBody431_0

def sourceBody431_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_32 sourceBody431_109

def sourceBody431_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_107 sourceBody431_110

def sourceBody431_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_87 sourceBody431_111

def sourceBody431_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_112

def sourceBody431_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_113

def sourceBody431_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_82 sourceBody431_114

def sourceBody431_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_28 sourceBody431_115

def sourceBody431_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_116

def sourceBody431_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_117

def sourceBody431_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_19 sourceBody431_118

def sourceBody431_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_7 sourceBody431_119

def sourceBody431_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_120

def sourceBody431_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody431_0 sourceBody431_121

def source431 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (431, 4, sourceBody431_122)
end InitECandidate.Proofs.WordStages
