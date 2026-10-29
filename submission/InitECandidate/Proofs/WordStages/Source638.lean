import InitECandidate.Proofs.WordStages.Source622
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody638_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody638_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody638_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 46) sourceBody638_5 sourceBody638_6

def sourceBody638_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody638_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_7 sourceBody638_8

def sourceBody638_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody638_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 10))

def sourceBody638_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody638_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_12 sourceBody638_0

def sourceBody638_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_13 sourceBody638_0

def sourceBody638_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 30)

def sourceBody638_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 36 (Flapjack.WordRegImm.reg 56) sourceBody638_17 sourceBody638_15

def sourceBody638_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_18 sourceBody638_8

def sourceBody638_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def sourceBody638_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 46)

def sourceBody638_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_22 sourceBody638_0

def sourceBody638_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_23 sourceBody638_0

def sourceBody638_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_21 sourceBody638_24

def sourceBody638_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_25

def sourceBody638_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 24)

def sourceBody638_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 50)

def sourceBody638_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody638_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody638_0, 638, 2)) (some 123) ([56, 18, 38]) (some (56, sourceBody638_30, 638, 3))

def sourceBody638_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_31 sourceBody638_8

def sourceBody638_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_32 sourceBody638_0

def sourceBody638_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_29 sourceBody638_33

def sourceBody638_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_28 sourceBody638_34

def sourceBody638_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_27 sourceBody638_35

def sourceBody638_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 46)

def sourceBody638_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody638_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 56) 38

def sourceBody638_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_40 sourceBody638_0

def sourceBody638_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_39 sourceBody638_41

def sourceBody638_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_42 sourceBody638_0

def sourceBody638_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_38 sourceBody638_43

def sourceBody638_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_44

def sourceBody638_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_37 sourceBody638_45

def sourceBody638_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_46

def sourceBody638_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody638_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_48 sourceBody638_0

def sourceBody638_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_49 sourceBody638_0

def sourceBody638_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_47 sourceBody638_50

def sourceBody638_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_36 sourceBody638_51

def sourceBody638_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_52

def sourceBody638_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_53

def sourceBody638_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_54

def sourceBody638_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_55

def sourceBody638_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_26 sourceBody638_56

def sourceBody638_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody638_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_57 sourceBody638_58

def sourceBody638_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody638_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody638_59 sourceBody638_60

def sourceBody638_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_61 sourceBody638_8

def sourceBody638_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_62 sourceBody638_0

def sourceBody638_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_20 sourceBody638_63

def sourceBody638_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_19 sourceBody638_64

def sourceBody638_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_16 sourceBody638_65

def sourceBody638_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_15 sourceBody638_66

def sourceBody638_68 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_67 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_68 sourceBody638_8

def sourceBody638_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_69

def sourceBody638_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_14 sourceBody638_70

def sourceBody638_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 4)

def sourceBody638_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 36)

def sourceBody638_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 46) 56

def sourceBody638_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_74 sourceBody638_0

def sourceBody638_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_73 sourceBody638_75

def sourceBody638_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_76 sourceBody638_0

def sourceBody638_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_10 sourceBody638_77

def sourceBody638_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_78

def sourceBody638_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_72 sourceBody638_79

def sourceBody638_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_80

def sourceBody638_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_71 sourceBody638_81

def sourceBody638_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def sourceBody638_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_84 sourceBody638_0

def sourceBody638_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_83 sourceBody638_85

def sourceBody638_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_82 sourceBody638_86

def sourceBody638_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_6 sourceBody638_87

def sourceBody638_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_88

def sourceBody638_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_11 sourceBody638_89

def sourceBody638_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_90

def sourceBody638_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody638_91 sourceBody638_0

def sourceBody638_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_92 sourceBody638_8

def sourceBody638_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_93 sourceBody638_0

def sourceBody638_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_10 sourceBody638_94

def sourceBody638_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_9 sourceBody638_95

def sourceBody638_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_4 sourceBody638_96

def sourceBody638_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_3 sourceBody638_97

def sourceBody638_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody638_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody638_0, 638, 4)) (some 122) ([24]) (some (24, sourceBody638_100, 638, 5))

def sourceBody638_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_101 sourceBody638_8

def sourceBody638_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_102 sourceBody638_0

def sourceBody638_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_99 sourceBody638_103

def sourceBody638_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_105 sourceBody638_0

def sourceBody638_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_106 sourceBody638_0

def sourceBody638_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 40)

def sourceBody638_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 46 (Flapjack.WordRegImm.reg 36) sourceBody638_4 sourceBody638_83

def sourceBody638_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_109 sourceBody638_8

def sourceBody638_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 46)

def sourceBody638_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 10,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 3#64)]))
            (Flapjack.WordLangExpHOL.var 50),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
            (Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 10,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])
                    (Flapjack.WordLangExpHOL.const 3#64)]))
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 50])],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody638_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 46)

def sourceBody638_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 36

def sourceBody638_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_115 sourceBody638_0

def sourceBody638_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_114 sourceBody638_116

def sourceBody638_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_117 sourceBody638_0

def sourceBody638_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_113 sourceBody638_118

def sourceBody638_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_119

def sourceBody638_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_112 sourceBody638_120

def sourceBody638_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_121

def sourceBody638_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 24)

def sourceBody638_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_124 sourceBody638_0

def sourceBody638_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_125 sourceBody638_0

def sourceBody638_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_123 sourceBody638_126

def sourceBody638_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_127

def sourceBody638_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_122 sourceBody638_128

def sourceBody638_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_129 sourceBody638_58

def sourceBody638_131 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody638_130 sourceBody638_60

def sourceBody638_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_131 sourceBody638_8

def sourceBody638_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_132 sourceBody638_0

def sourceBody638_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_111 sourceBody638_133

def sourceBody638_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_110 sourceBody638_134

def sourceBody638_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_108 sourceBody638_135

def sourceBody638_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_83 sourceBody638_136

def sourceBody638_138 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_137 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_138 sourceBody638_8

def sourceBody638_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_139

def sourceBody638_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_107 sourceBody638_140

def sourceBody638_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody638_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 10))
        (Flapjack.WordLangExpHOL.var 50),
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody638_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_143 sourceBody638_118

def sourceBody638_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_144

def sourceBody638_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_142 sourceBody638_145

def sourceBody638_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_146

def sourceBody638_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_141 sourceBody638_147

def sourceBody638_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.load
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 6,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])
            (Flapjack.WordLangExpHOL.const 3#64)]))
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 50]))

def sourceBody638_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_150 sourceBody638_118

def sourceBody638_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_151

def sourceBody638_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_149 sourceBody638_152

def sourceBody638_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_153

def sourceBody638_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_148 sourceBody638_154

def sourceBody638_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_156 sourceBody638_0

def sourceBody638_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_157 sourceBody638_0

def sourceBody638_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_155 sourceBody638_158

def sourceBody638_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 6,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
                    (Flapjack.WordLangExpHOL.const 3#64)]))
            (Flapjack.WordLangExpHOL.var 50),
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
            (Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 6,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])
                    (Flapjack.WordLangExpHOL.const 3#64)]))
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 50])],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody638_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_161 sourceBody638_118

def sourceBody638_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_162

def sourceBody638_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_160 sourceBody638_163

def sourceBody638_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_164

def sourceBody638_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_165 sourceBody638_128

def sourceBody638_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_166 sourceBody638_58

def sourceBody638_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 56 (Flapjack.WordRegImm.imm 0#64) sourceBody638_167 sourceBody638_60

def sourceBody638_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_168 sourceBody638_8

def sourceBody638_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_169 sourceBody638_0

def sourceBody638_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_111 sourceBody638_170

def sourceBody638_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_110 sourceBody638_171

def sourceBody638_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_108 sourceBody638_172

def sourceBody638_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_83 sourceBody638_173

def sourceBody638_175 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_174 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_175 sourceBody638_8

def sourceBody638_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_176

def sourceBody638_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_159 sourceBody638_177

def sourceBody638_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody638_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 6))
        (Flapjack.WordLangExpHOL.var 50),
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody638_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_180 sourceBody638_118

def sourceBody638_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_181

def sourceBody638_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_179 sourceBody638_182

def sourceBody638_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_183

def sourceBody638_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_178 sourceBody638_184

def sourceBody638_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 2#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 12],
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_188 sourceBody638_0

def sourceBody638_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_189 sourceBody638_0

def sourceBody638_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody638_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 56 (Flapjack.WordRegImm.reg 18) sourceBody638_193 sourceBody638_191

def sourceBody638_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_194 sourceBody638_8

def sourceBody638_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 56)

def sourceBody638_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody638_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_198 sourceBody638_0

def sourceBody638_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_199 sourceBody638_0

def sourceBody638_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_197 sourceBody638_200

def sourceBody638_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_201

def sourceBody638_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 12])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 12],
              Flapjack.WordLangExpHOL.const 1#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 12],
              Flapjack.WordLangExpHOL.const 2#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 36)

def sourceBody638_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 24)

def sourceBody638_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_210 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 22 (Flapjack.WordRegImm.reg 44) sourceBody638_208 sourceBody638_209

def sourceBody638_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_210 sourceBody638_8

def sourceBody638_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody638_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody638_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_213 sourceBody638_0

def sourceBody638_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_214 sourceBody638_0

def sourceBody638_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody638_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody638_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 44 44 48 22))

def sourceBody638_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
            (Flapjack.WordLangExpHOL.const 32#64),
          Flapjack.WordLangExpHOL.var 56],
      Flapjack.WordLangExpHOL.var 44])

def sourceBody638_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_219 sourceBody638_0

def sourceBody638_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_218 sourceBody638_220

def sourceBody638_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_217 sourceBody638_221

def sourceBody638_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_216 sourceBody638_222

def sourceBody638_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_223 sourceBody638_0

def sourceBody638_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_215 sourceBody638_224

def sourceBody638_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 36)

def sourceBody638_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 56)

def sourceBody638_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 24)

def sourceBody638_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody638_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody638_0, 638, 6)) (some 123) ([44, 34, 54]) (some (44, sourceBody638_229, 638, 7))

def sourceBody638_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_230 sourceBody638_8

def sourceBody638_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_231 sourceBody638_0

def sourceBody638_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_228 sourceBody638_232

def sourceBody638_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_227 sourceBody638_233

def sourceBody638_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_226 sourceBody638_234

def sourceBody638_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def sourceBody638_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_236 sourceBody638_0

def sourceBody638_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_237 sourceBody638_0

def sourceBody638_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody638_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_239 sourceBody638_0

def sourceBody638_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_240 sourceBody638_0

def sourceBody638_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_238 sourceBody638_241

def sourceBody638_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_235 sourceBody638_242

def sourceBody638_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_243

def sourceBody638_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_244

def sourceBody638_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_245

def sourceBody638_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_246

def sourceBody638_248 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody638_225 sourceBody638_247

def sourceBody638_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_248 sourceBody638_8

def sourceBody638_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_249 sourceBody638_0

def sourceBody638_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_212 sourceBody638_250

def sourceBody638_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_211 sourceBody638_251

def sourceBody638_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_207 sourceBody638_252

def sourceBody638_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_206 sourceBody638_253

def sourceBody638_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 48)

def sourceBody638_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 44 (Flapjack.WordRegImm.reg 34) sourceBody638_258 sourceBody638_259

def sourceBody638_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_260 sourceBody638_8

def sourceBody638_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 44)

def sourceBody638_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_263 sourceBody638_0

def sourceBody638_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_264 sourceBody638_0

def sourceBody638_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 28)

def sourceBody638_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 4294967296#64)

def sourceBody638_268 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 44 (Flapjack.WordRegImm.reg 34) sourceBody638_258 sourceBody638_259

def sourceBody638_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_268 sourceBody638_8

def sourceBody638_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def sourceBody638_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 46)

def sourceBody638_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 34 34 22 44))

def sourceBody638_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 32#64),
      Flapjack.WordLangExpHOL.var 18])

def sourceBody638_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 34)

def sourceBody638_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_277 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 42) sourceBody638_275 sourceBody638_276

def sourceBody638_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_277 sourceBody638_8

def sourceBody638_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody638_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody638_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_281 sourceBody638_0

def sourceBody638_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_282 sourceBody638_0

def sourceBody638_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_280 sourceBody638_283

def sourceBody638_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_284

def sourceBody638_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 24])

def sourceBody638_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_286 sourceBody638_241

def sourceBody638_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_287

def sourceBody638_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_285 sourceBody638_288

def sourceBody638_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_255 sourceBody638_0

def sourceBody638_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_290 sourceBody638_0

def sourceBody638_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_289 sourceBody638_291

def sourceBody638_293 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody638_292 sourceBody638_0

def sourceBody638_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_293 sourceBody638_8

def sourceBody638_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_294 sourceBody638_0

def sourceBody638_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_279 sourceBody638_295

def sourceBody638_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_278 sourceBody638_296

def sourceBody638_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_274 sourceBody638_297

def sourceBody638_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_273 sourceBody638_298

def sourceBody638_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_272 sourceBody638_299

def sourceBody638_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_271 sourceBody638_300

def sourceBody638_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_270 sourceBody638_301

def sourceBody638_303 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.imm 0#64) sourceBody638_302 sourceBody638_0

def sourceBody638_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_303 sourceBody638_8

def sourceBody638_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_304 sourceBody638_0

def sourceBody638_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_262 sourceBody638_305

def sourceBody638_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_269 sourceBody638_306

def sourceBody638_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_267 sourceBody638_307

def sourceBody638_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_266 sourceBody638_308

def sourceBody638_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_265 sourceBody638_309

def sourceBody638_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_310 sourceBody638_58

def sourceBody638_312 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.imm 0#64) sourceBody638_311 sourceBody638_60

def sourceBody638_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_312 sourceBody638_8

def sourceBody638_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_313 sourceBody638_0

def sourceBody638_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_262 sourceBody638_314

def sourceBody638_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_261 sourceBody638_315

def sourceBody638_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_257 sourceBody638_316

def sourceBody638_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_256 sourceBody638_317

def sourceBody638_319 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_318 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_319 sourceBody638_8

def sourceBody638_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_320

def sourceBody638_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_1 sourceBody638_0

def sourceBody638_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_322 sourceBody638_0

def sourceBody638_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody638_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody638_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_327 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 54) sourceBody638_257 sourceBody638_326

def sourceBody638_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_327 sourceBody638_8

def sourceBody638_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody638_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 38)

def sourceBody638_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody638_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 54 54 44 34))

def sourceBody638_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_332 sourceBody638_0

def sourceBody638_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_331 sourceBody638_333

def sourceBody638_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_330 sourceBody638_334

def sourceBody638_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 54)

def sourceBody638_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 14,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 30])
                  (Flapjack.WordLangExpHOL.const 3#64)]),
          Flapjack.WordLangExpHOL.var 22],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 4294967295#64]])

def sourceBody638_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 30])
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody638_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 52)

def sourceBody638_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 26

def sourceBody638_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_341 sourceBody638_0

def sourceBody638_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_340 sourceBody638_342

def sourceBody638_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_343 sourceBody638_0

def sourceBody638_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_339 sourceBody638_344

def sourceBody638_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_345

def sourceBody638_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_338 sourceBody638_346

def sourceBody638_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_347

def sourceBody638_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 32#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.asr (Flapjack.WordLangExpHOL.var 42)
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody638_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_349 sourceBody638_0

def sourceBody638_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_350 sourceBody638_0

def sourceBody638_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_348 sourceBody638_351

def sourceBody638_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody638_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_354 sourceBody638_0

def sourceBody638_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_355 sourceBody638_0

def sourceBody638_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_353 sourceBody638_356

def sourceBody638_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_357

def sourceBody638_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_352 sourceBody638_358

def sourceBody638_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_337 sourceBody638_359

def sourceBody638_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_360

def sourceBody638_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_336 sourceBody638_361

def sourceBody638_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_335 sourceBody638_362

def sourceBody638_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_363 sourceBody638_58

def sourceBody638_365 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody638_364 sourceBody638_60

def sourceBody638_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_365 sourceBody638_8

def sourceBody638_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_366 sourceBody638_0

def sourceBody638_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_329 sourceBody638_367

def sourceBody638_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_328 sourceBody638_368

def sourceBody638_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_325 sourceBody638_369

def sourceBody638_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_324 sourceBody638_370

def sourceBody638_372 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_371 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_372 sourceBody638_8

def sourceBody638_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_373

def sourceBody638_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_323 sourceBody638_374

def sourceBody638_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 22])

def sourceBody638_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody638_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody638_379 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 54 (Flapjack.WordRegImm.reg 20) sourceBody638_377 sourceBody638_378

def sourceBody638_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_379 sourceBody638_8

def sourceBody638_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 54)

def sourceBody638_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 20

def sourceBody638_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_384 sourceBody638_0

def sourceBody638_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_336 sourceBody638_385

def sourceBody638_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_386 sourceBody638_0

def sourceBody638_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_383 sourceBody638_387

def sourceBody638_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_388

def sourceBody638_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_382 sourceBody638_389

def sourceBody638_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_390

def sourceBody638_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_209 sourceBody638_0

def sourceBody638_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_392 sourceBody638_0

def sourceBody638_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_391 sourceBody638_393

def sourceBody638_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_394 sourceBody638_323

def sourceBody638_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody638_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody638_398 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 54 (Flapjack.WordRegImm.reg 20) sourceBody638_377 sourceBody638_378

def sourceBody638_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_398 sourceBody638_8

def sourceBody638_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 30])
              (Flapjack.WordLangExpHOL.const 3#64)]),
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 16,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 3#64)]),
      Flapjack.WordLangExpHOL.var 22])

def sourceBody638_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 30])
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody638_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 20)

def sourceBody638_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 54) 42

def sourceBody638_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_404 sourceBody638_0

def sourceBody638_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_403 sourceBody638_405

def sourceBody638_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_406 sourceBody638_0

def sourceBody638_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_402 sourceBody638_407

def sourceBody638_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_408

def sourceBody638_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_401 sourceBody638_409

def sourceBody638_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_410

def sourceBody638_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 34)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody638_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_412 sourceBody638_0

def sourceBody638_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_413 sourceBody638_0

def sourceBody638_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_411 sourceBody638_414

def sourceBody638_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 54)

def sourceBody638_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_417 sourceBody638_0

def sourceBody638_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_418 sourceBody638_0

def sourceBody638_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_416 sourceBody638_419

def sourceBody638_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_420

def sourceBody638_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_415 sourceBody638_421

def sourceBody638_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_400 sourceBody638_422

def sourceBody638_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_423

def sourceBody638_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_424 sourceBody638_58

def sourceBody638_426 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody638_425 sourceBody638_60

def sourceBody638_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_426 sourceBody638_8

def sourceBody638_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_427 sourceBody638_0

def sourceBody638_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_381 sourceBody638_428

def sourceBody638_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_399 sourceBody638_429

def sourceBody638_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_397 sourceBody638_430

def sourceBody638_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_396 sourceBody638_431

def sourceBody638_433 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_432 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_433 sourceBody638_8

def sourceBody638_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_434

def sourceBody638_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_395 sourceBody638_435

def sourceBody638_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 12])
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.var 22],
      Flapjack.WordLangExpHOL.const 4294967295#64])

def sourceBody638_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_438 sourceBody638_387

def sourceBody638_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_439

def sourceBody638_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_437 sourceBody638_440

def sourceBody638_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_441

def sourceBody638_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_436 sourceBody638_442

def sourceBody638_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def sourceBody638_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_444 sourceBody638_387

def sourceBody638_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_445

def sourceBody638_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_382 sourceBody638_446

def sourceBody638_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_447

def sourceBody638_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_262 sourceBody638_387

def sourceBody638_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_449

def sourceBody638_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_437 sourceBody638_450

def sourceBody638_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_451

def sourceBody638_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_448 sourceBody638_452

def sourceBody638_454 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody638_443 sourceBody638_453

def sourceBody638_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_454 sourceBody638_8

def sourceBody638_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_455 sourceBody638_0

def sourceBody638_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_381 sourceBody638_456

def sourceBody638_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_380 sourceBody638_457

def sourceBody638_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_276 sourceBody638_458

def sourceBody638_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_262 sourceBody638_459

def sourceBody638_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_376 sourceBody638_460

def sourceBody638_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_461

def sourceBody638_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_375 sourceBody638_462

def sourceBody638_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_209 sourceBody638_463

def sourceBody638_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_464

def sourceBody638_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_321 sourceBody638_465

def sourceBody638_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_255 sourceBody638_466

def sourceBody638_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_467

def sourceBody638_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_254 sourceBody638_468

def sourceBody638_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_469

def sourceBody638_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_470

def sourceBody638_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_471

def sourceBody638_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_472

def sourceBody638_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_205 sourceBody638_473

def sourceBody638_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_474

def sourceBody638_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_204 sourceBody638_475

def sourceBody638_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_476

def sourceBody638_478 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_203 sourceBody638_477

def sourceBody638_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_478

def sourceBody638_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_202 sourceBody638_479

def sourceBody638_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_480 sourceBody638_58

def sourceBody638_482 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody638_481 sourceBody638_60

def sourceBody638_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_482 sourceBody638_8

def sourceBody638_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_483 sourceBody638_0

def sourceBody638_485 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_196 sourceBody638_484

def sourceBody638_486 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_195 sourceBody638_485

def sourceBody638_487 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_192 sourceBody638_486

def sourceBody638_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_191 sourceBody638_487

def sourceBody638_489 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_488 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_489 sourceBody638_8

def sourceBody638_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_490

def sourceBody638_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_190 sourceBody638_491

def sourceBody638_493 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_492 sourceBody638_190

def sourceBody638_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody638_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 56)

def sourceBody638_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 36) 18

def sourceBody638_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_497 sourceBody638_0

def sourceBody638_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_496 sourceBody638_498

def sourceBody638_500 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_499 sourceBody638_0

def sourceBody638_501 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_191 sourceBody638_500

def sourceBody638_502 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_501

def sourceBody638_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_495 sourceBody638_502

def sourceBody638_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_503

def sourceBody638_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_505 sourceBody638_200

def sourceBody638_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_506

def sourceBody638_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_504 sourceBody638_507

def sourceBody638_509 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_508 sourceBody638_58

def sourceBody638_510 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody638_509 sourceBody638_60

def sourceBody638_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_510 sourceBody638_8

def sourceBody638_512 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_511 sourceBody638_0

def sourceBody638_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_196 sourceBody638_512

def sourceBody638_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_195 sourceBody638_513

def sourceBody638_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_494 sourceBody638_514

def sourceBody638_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_16 sourceBody638_515

def sourceBody638_517 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_516 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody638_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_517 sourceBody638_8

def sourceBody638_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_518

def sourceBody638_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_493 sourceBody638_519

def sourceBody638_521 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_520 sourceBody638_323

def sourceBody638_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 40)

def sourceBody638_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody638_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody638_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 14,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
                (Flapjack.WordLangExpHOL.const 3#64)]))
        (Flapjack.WordLangExpHOL.var 50),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 14,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])
                    (Flapjack.WordLangExpHOL.const 3#64)]))
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.var 50]),
          Flapjack.WordLangExpHOL.const 4294967295#64]])

def sourceBody638_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_525 sourceBody638_500

def sourceBody638_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_526

def sourceBody638_528 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_524 sourceBody638_527

def sourceBody638_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_528

def sourceBody638_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody638_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 36)

def sourceBody638_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_531 sourceBody638_0

def sourceBody638_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_532 sourceBody638_0

def sourceBody638_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_530 sourceBody638_533

def sourceBody638_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_534

def sourceBody638_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_529 sourceBody638_535

def sourceBody638_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_536 sourceBody638_58

def sourceBody638_538 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody638_537 sourceBody638_60

def sourceBody638_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_538 sourceBody638_8

def sourceBody638_540 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_539 sourceBody638_0

def sourceBody638_541 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_196 sourceBody638_540

def sourceBody638_542 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_195 sourceBody638_541

def sourceBody638_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_523 sourceBody638_542

def sourceBody638_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_522 sourceBody638_543

def sourceBody638_545 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody638_544 (Flapjack.Spt.ls PUnit.unit)

def sourceBody638_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_545 sourceBody638_8

def sourceBody638_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_8 sourceBody638_546

def sourceBody638_548 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_521 sourceBody638_547

def sourceBody638_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody638_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_549 sourceBody638_0

def sourceBody638_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_15 sourceBody638_550

def sourceBody638_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_548 sourceBody638_551

def sourceBody638_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_187 sourceBody638_552

def sourceBody638_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_553

def sourceBody638_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_186 sourceBody638_554

def sourceBody638_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_555

def sourceBody638_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_185 sourceBody638_556

def sourceBody638_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_104 sourceBody638_557

def sourceBody638_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_558

def sourceBody638_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_559

def sourceBody638_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_98 sourceBody638_560

def sourceBody638_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_2 sourceBody638_561

def sourceBody638_563 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_562

def sourceBody638_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_1 sourceBody638_563

def sourceBody638_565 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody638_0 sourceBody638_564

def source638 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (638, 9, sourceBody638_565)
end InitECandidate.Proofs.WordStages
