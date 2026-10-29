import InitECandidate.Proofs.WordStages.Source791
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody807_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody807_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 2)

def sourceBody807_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody807_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody807_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 10, 30, 20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody807_0, 807, 2)) (some 146) ([42, 8]) (some (42, sourceBody807_3, 807, 3))

def sourceBody807_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody807_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_4 sourceBody807_5

def sourceBody807_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_6 sourceBody807_0

def sourceBody807_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_2 sourceBody807_7

def sourceBody807_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_1 sourceBody807_8

def sourceBody807_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1344#64]))

def sourceBody807_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1344#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody807_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1344#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody807_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 1344#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody807_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 36)

def sourceBody807_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody807_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody807_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 20)

def sourceBody807_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody807_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody807_0, 807, 4)) (some 102) ([14, 34, 24, 46]) (some (14, sourceBody807_18, 807, 5))

def sourceBody807_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_19 sourceBody807_5

def sourceBody807_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_20 sourceBody807_0

def sourceBody807_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_17 sourceBody807_21

def sourceBody807_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_16 sourceBody807_22

def sourceBody807_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_15 sourceBody807_23

def sourceBody807_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_14 sourceBody807_24

def sourceBody807_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody807_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody807_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody807_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody807_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 24) sourceBody807_28 sourceBody807_29

def sourceBody807_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_30 sourceBody807_5

def sourceBody807_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def sourceBody807_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody807_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody807_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody807_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody807_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody807_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 26

def sourceBody807_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_38 sourceBody807_0

def sourceBody807_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_37 sourceBody807_39

def sourceBody807_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 24)

def sourceBody807_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])
  26

def sourceBody807_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_42 sourceBody807_0

def sourceBody807_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_41 sourceBody807_43

def sourceBody807_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 46)

def sourceBody807_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])
  26

def sourceBody807_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_46 sourceBody807_0

def sourceBody807_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_45 sourceBody807_47

def sourceBody807_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody807_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64])
  26

def sourceBody807_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_50 sourceBody807_0

def sourceBody807_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_49 sourceBody807_51

def sourceBody807_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_52 sourceBody807_0

def sourceBody807_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_48 sourceBody807_53

def sourceBody807_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_44 sourceBody807_54

def sourceBody807_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_40 sourceBody807_55

def sourceBody807_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_36 sourceBody807_56

def sourceBody807_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_57

def sourceBody807_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_35 sourceBody807_58

def sourceBody807_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_59

def sourceBody807_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_34 sourceBody807_60

def sourceBody807_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_61

def sourceBody807_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_29 sourceBody807_62

def sourceBody807_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_63

def sourceBody807_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_33 sourceBody807_64

def sourceBody807_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_65

def sourceBody807_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody807_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody807_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_68 sourceBody807_0

def sourceBody807_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_67 sourceBody807_69

def sourceBody807_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_66 sourceBody807_70

def sourceBody807_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody807_71 sourceBody807_0

def sourceBody807_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_72 sourceBody807_5

def sourceBody807_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_73 sourceBody807_0

def sourceBody807_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_32 sourceBody807_74

def sourceBody807_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_31 sourceBody807_75

def sourceBody807_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_27 sourceBody807_76

def sourceBody807_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_26 sourceBody807_77

def sourceBody807_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 42)

def sourceBody807_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody807_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody807_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody807_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 36)

def sourceBody807_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody807_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 30)

def sourceBody807_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 20)

def sourceBody807_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody807_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 34, 24, 46]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody807_0, 807, 6)) (some 117) ([6, 26, 16, 38, 12, 32, 22, 44]) (some (6, sourceBody807_87, 807, 7))

def sourceBody807_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_88 sourceBody807_5

def sourceBody807_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_89 sourceBody807_0

def sourceBody807_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_86 sourceBody807_90

def sourceBody807_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_85 sourceBody807_91

def sourceBody807_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_84 sourceBody807_92

def sourceBody807_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_83 sourceBody807_93

def sourceBody807_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_82 sourceBody807_94

def sourceBody807_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_81 sourceBody807_95

def sourceBody807_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_80 sourceBody807_96

def sourceBody807_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_79 sourceBody807_97

def sourceBody807_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody807_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody807_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 34)

def sourceBody807_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 24)

def sourceBody807_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 46)

def sourceBody807_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody807_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 32

def sourceBody807_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_105 sourceBody807_0

def sourceBody807_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_104 sourceBody807_106

def sourceBody807_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody807_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]) 32

def sourceBody807_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_109 sourceBody807_0

def sourceBody807_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_108 sourceBody807_110

def sourceBody807_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 38)

def sourceBody807_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])
  32

def sourceBody807_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_113 sourceBody807_0

def sourceBody807_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_112 sourceBody807_114

def sourceBody807_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody807_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])
  32

def sourceBody807_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_117 sourceBody807_0

def sourceBody807_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_116 sourceBody807_118

def sourceBody807_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_119 sourceBody807_0

def sourceBody807_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_115 sourceBody807_120

def sourceBody807_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_111 sourceBody807_121

def sourceBody807_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_107 sourceBody807_122

def sourceBody807_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_103 sourceBody807_123

def sourceBody807_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_124

def sourceBody807_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_102 sourceBody807_125

def sourceBody807_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_126

def sourceBody807_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_101 sourceBody807_127

def sourceBody807_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_128

def sourceBody807_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_100 sourceBody807_129

def sourceBody807_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_130

def sourceBody807_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_99 sourceBody807_131

def sourceBody807_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_132

def sourceBody807_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody807_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_134 sourceBody807_0

def sourceBody807_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_36 sourceBody807_135

def sourceBody807_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_133 sourceBody807_136

def sourceBody807_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_98 sourceBody807_137

def sourceBody807_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_138

def sourceBody807_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_139

def sourceBody807_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_140

def sourceBody807_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_141

def sourceBody807_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_142

def sourceBody807_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_143

def sourceBody807_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_144

def sourceBody807_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_145

def sourceBody807_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_78 sourceBody807_146

def sourceBody807_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_25 sourceBody807_147

def sourceBody807_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_148

def sourceBody807_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_149

def sourceBody807_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_13 sourceBody807_150

def sourceBody807_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_151

def sourceBody807_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_12 sourceBody807_152

def sourceBody807_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_153

def sourceBody807_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_11 sourceBody807_154

def sourceBody807_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_155

def sourceBody807_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_10 sourceBody807_156

def sourceBody807_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_157

def sourceBody807_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_9 sourceBody807_158

def sourceBody807_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_159

def sourceBody807_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_160

def sourceBody807_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_161

def sourceBody807_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_162

def sourceBody807_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_163

def sourceBody807_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_164

def sourceBody807_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_165

def sourceBody807_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody807_0 sourceBody807_166

def source807 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (807, 3, sourceBody807_167)
end InitECandidate.Proofs.WordStages
