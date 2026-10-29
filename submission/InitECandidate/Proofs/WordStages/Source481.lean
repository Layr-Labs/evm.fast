import InitECandidate.Proofs.WordStages.Source465
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody481_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody481_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 2)

def sourceBody481_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody481_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 6)

def sourceBody481_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 8)

def sourceBody481_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 10)

def sourceBody481_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody481_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody481_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody481_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody481_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody481_0, 481, 2)) (some 480) ([54, 36, 50, 44, 58, 34, 48, 42]) (some (54, sourceBody481_9, 481, 3))

def sourceBody481_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody481_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_10 sourceBody481_11

def sourceBody481_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_12 sourceBody481_0

def sourceBody481_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_8 sourceBody481_13

def sourceBody481_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_7 sourceBody481_14

def sourceBody481_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_6 sourceBody481_15

def sourceBody481_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_5 sourceBody481_16

def sourceBody481_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_4 sourceBody481_17

def sourceBody481_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_3 sourceBody481_18

def sourceBody481_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_2 sourceBody481_19

def sourceBody481_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_1 sourceBody481_20

def sourceBody481_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 46)

def sourceBody481_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody481_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody481_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody481_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 36 (Flapjack.WordRegImm.reg 50) sourceBody481_24 sourceBody481_25

def sourceBody481_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_26 sourceBody481_11

def sourceBody481_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 36)

def sourceBody481_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 46)

def sourceBody481_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 40)

def sourceBody481_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [54, 36]

def sourceBody481_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_31 sourceBody481_0

def sourceBody481_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_30 sourceBody481_32

def sourceBody481_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_29 sourceBody481_33

def sourceBody481_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.imm 0#64) sourceBody481_34 sourceBody481_0

def sourceBody481_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_35 sourceBody481_11

def sourceBody481_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_36 sourceBody481_0

def sourceBody481_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_28 sourceBody481_37

def sourceBody481_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_27 sourceBody481_38

def sourceBody481_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_23 sourceBody481_39

def sourceBody481_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_22 sourceBody481_40

def sourceBody481_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody481_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody481_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.var 40])

def sourceBody481_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def sourceBody481_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 36) 44

def sourceBody481_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_46 sourceBody481_0

def sourceBody481_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_45 sourceBody481_47

def sourceBody481_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_48 sourceBody481_0

def sourceBody481_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_44 sourceBody481_49

def sourceBody481_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_50

def sourceBody481_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_43 sourceBody481_51

def sourceBody481_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_52

def sourceBody481_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 18)

def sourceBody481_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 20)

def sourceBody481_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody481_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 24)

def sourceBody481_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody481_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 28)

def sourceBody481_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody481_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 32)

def sourceBody481_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody481_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody481_0, 481, 4)) (some 480) ([44, 58, 34, 48, 42, 56, 38, 52]) (some (44, sourceBody481_62, 481, 5))

def sourceBody481_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_63 sourceBody481_11

def sourceBody481_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_64 sourceBody481_0

def sourceBody481_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_61 sourceBody481_65

def sourceBody481_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_60 sourceBody481_66

def sourceBody481_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_59 sourceBody481_67

def sourceBody481_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_58 sourceBody481_68

def sourceBody481_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_57 sourceBody481_69

def sourceBody481_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_56 sourceBody481_70

def sourceBody481_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_55 sourceBody481_71

def sourceBody481_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_54 sourceBody481_72

def sourceBody481_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody481_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 54)

def sourceBody481_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 58)

def sourceBody481_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 44) 34

def sourceBody481_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_77 sourceBody481_0

def sourceBody481_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_76 sourceBody481_78

def sourceBody481_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_79 sourceBody481_0

def sourceBody481_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_75 sourceBody481_80

def sourceBody481_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_81

def sourceBody481_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_74 sourceBody481_82

def sourceBody481_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_83

def sourceBody481_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 36)

def sourceBody481_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody481_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody481_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody481_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 58 (Flapjack.WordRegImm.reg 34) sourceBody481_87 sourceBody481_88

def sourceBody481_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_89 sourceBody481_11

def sourceBody481_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 58)

def sourceBody481_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 50)

def sourceBody481_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44, 58]

def sourceBody481_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_93 sourceBody481_0

def sourceBody481_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_92 sourceBody481_94

def sourceBody481_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_28 sourceBody481_95

def sourceBody481_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody481_96 sourceBody481_0

def sourceBody481_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_97 sourceBody481_11

def sourceBody481_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_98 sourceBody481_0

def sourceBody481_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_91 sourceBody481_99

def sourceBody481_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_90 sourceBody481_100

def sourceBody481_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_86 sourceBody481_101

def sourceBody481_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_85 sourceBody481_102

def sourceBody481_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_84 sourceBody481_103

def sourceBody481_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.var 36])

def sourceBody481_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 50])

def sourceBody481_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_106 sourceBody481_94

def sourceBody481_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_105 sourceBody481_107

def sourceBody481_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_104 sourceBody481_108

def sourceBody481_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_73 sourceBody481_109

def sourceBody481_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_110

def sourceBody481_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_111

def sourceBody481_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_112

def sourceBody481_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_113

def sourceBody481_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_53 sourceBody481_114

def sourceBody481_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_42 sourceBody481_115

def sourceBody481_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_116

def sourceBody481_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_41 sourceBody481_117

def sourceBody481_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_21 sourceBody481_118

def sourceBody481_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_119

def sourceBody481_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_120

def sourceBody481_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_121

def sourceBody481_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody481_0 sourceBody481_122

def source481 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (481, 17, sourceBody481_123)
end InitECandidate.Proofs.WordStages
