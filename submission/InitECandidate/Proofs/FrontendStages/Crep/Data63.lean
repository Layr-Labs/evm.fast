import InitECandidate.Proofs.FrontendStages.Crep.Translate47
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody63_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 3)

def crepBody63_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody63_2 : CrepProg (BitVec 64) :=
.seq crepBody63_0 crepBody63_1

def crepBody63_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 10)

def crepBody63_4 : CrepProg (BitVec 64) :=
.seq crepBody63_3 crepBody63_1

def crepBody63_5 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody63_4

def crepBody63_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11], none)) "div64by32"
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.var 8]

def crepBody63_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody63_8 : CrepProg (BitVec 64) :=
.seq crepBody63_7 crepBody63_1

def crepBody63_9 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 10) crepBody63_8

def crepBody63_10 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]) crepBody63_9

def crepBody63_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 11)

def crepBody63_12 : CrepProg (BitVec 64) :=
.seq crepBody63_11 crepBody63_1

def crepBody63_13 : CrepProg (BitVec 64) :=
.seq crepBody63_10 crepBody63_12

def crepBody63_14 : CrepProg (BitVec 64) :=
.seq crepBody63_6 crepBody63_13

def crepBody63_15 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody63_14

def crepBody63_16 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody63_15

def crepBody63_17 : CrepProg (BitVec 64) :=
.seq crepBody63_5 crepBody63_16

def crepBody63_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 7)) crepBody63_17

def crepBody63_19 : CrepProg (BitVec 64) :=
.seq crepBody63_2 crepBody63_18

def crepBody63_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody63_21 : CrepProg (BitVec 64) :=
.seq crepBody63_20 crepBody63_1

def crepBody63_22 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody63_21

def crepBody63_23 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 1) crepBody63_22

def crepBody63_24 : CrepProg (BitVec 64) :=
.seq crepBody63_19 crepBody63_23

def crepBody63_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody63_26 : CrepProg (BitVec 64) :=
.seq crepBody63_24 crepBody63_25

def crepBody63_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody63_26

def crepBody63_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 4)) crepBody63_27

def crepBody63_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody63_28 crepBody63_1

def crepBody63_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "nlz32"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 4,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody63_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64])

def crepBody63_32 : CrepProg (BitVec 64) :=
.seq crepBody63_31 crepBody63_1

def crepBody63_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody63_34 : CrepProg (BitVec 64) :=
.seq crepBody63_33 crepBody63_1

def crepBody63_35 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 4,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.var 10),
        Flapjack.CrepExp.shift Flapjack.Shift.lsr
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 4,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64],
                    Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10])],
    Flapjack.CrepExp.const 4294967295#64]) crepBody63_34

def crepBody63_36 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]]) crepBody63_35

def crepBody63_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 11)

def crepBody63_38 : CrepProg (BitVec 64) :=
.seq crepBody63_37 crepBody63_1

def crepBody63_39 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody63_38

def crepBody63_40 : CrepProg (BitVec 64) :=
.seq crepBody63_36 crepBody63_39

def crepBody63_41 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 6)) crepBody63_40

def crepBody63_42 : CrepProg (BitVec 64) :=
.seq crepBody63_32 crepBody63_41

def crepBody63_43 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.load (Flapjack.CrepExp.var 4)) (Flapjack.CrepExp.var 10),
    Flapjack.CrepExp.const 4294967295#64]) crepBody63_34

def crepBody63_44 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody63_43

def crepBody63_45 : CrepProg (BitVec 64) :=
.seq crepBody63_42 crepBody63_44

def crepBody63_46 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.const 8#64]]))
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10])) crepBody63_34

def crepBody63_47 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]]) crepBody63_46

def crepBody63_48 : CrepProg (BitVec 64) :=
.seq crepBody63_45 crepBody63_47

def crepBody63_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])

def crepBody63_50 : CrepProg (BitVec 64) :=
.seq crepBody63_49 crepBody63_1

def crepBody63_51 : CrepProg (BitVec 64) :=
.seq crepBody63_48 crepBody63_50

def crepBody63_52 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 2,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.var 10),
        Flapjack.CrepExp.shift Flapjack.Shift.lsr
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 2,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64],
                    Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10])],
    Flapjack.CrepExp.const 4294967295#64]) crepBody63_34

def crepBody63_53 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]]) crepBody63_52

def crepBody63_54 : CrepProg (BitVec 64) :=
.seq crepBody63_53 crepBody63_39

def crepBody63_55 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 6)) crepBody63_54

def crepBody63_56 : CrepProg (BitVec 64) :=
.seq crepBody63_51 crepBody63_55

def crepBody63_57 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.load (Flapjack.CrepExp.var 2)) (Flapjack.CrepExp.var 10),
    Flapjack.CrepExp.const 4294967295#64]) crepBody63_34

def crepBody63_58 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 8) crepBody63_57

def crepBody63_59 : CrepProg (BitVec 64) :=
.seq crepBody63_56 crepBody63_58

def crepBody63_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5],
      Flapjack.CrepExp.const 1#64])

def crepBody63_61 : CrepProg (BitVec 64) :=
.seq crepBody63_60 crepBody63_1

def crepBody63_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 13)

def crepBody63_63 : CrepProg (BitVec 64) :=
.seq crepBody63_62 crepBody63_1

def crepBody63_64 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody63_63

def crepBody63_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.const 4294967295#64)

def crepBody63_66 : CrepProg (BitVec 64) :=
.seq crepBody63_65 crepBody63_1

def crepBody63_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.op Flapjack.BinOp.or
        [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 32#64),
          Flapjack.CrepExp.var 14],
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 11]])

def crepBody63_68 : CrepProg (BitVec 64) :=
.seq crepBody63_67 crepBody63_1

def crepBody63_69 : CrepProg (BitVec 64) :=
.seq crepBody63_66 crepBody63_68

def crepBody63_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19], none)) "div64by32"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 11]

def crepBody63_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 18)

def crepBody63_72 : CrepProg (BitVec 64) :=
.seq crepBody63_71 crepBody63_1

def crepBody63_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 19)

def crepBody63_74 : CrepProg (BitVec 64) :=
.seq crepBody63_73 crepBody63_1

def crepBody63_75 : CrepProg (BitVec 64) :=
.seq crepBody63_72 crepBody63_74

def crepBody63_76 : CrepProg (BitVec 64) :=
.seq crepBody63_70 crepBody63_75

def crepBody63_77 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody63_76

def crepBody63_78 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody63_77

def crepBody63_79 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 11)) crepBody63_69 crepBody63_78

def crepBody63_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.const 0#64)

def crepBody63_81 : CrepProg (BitVec 64) :=
.seq crepBody63_80 crepBody63_1

def crepBody63_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 19)

def crepBody63_83 : CrepProg (BitVec 64) :=
.seq crepBody63_82 crepBody63_1

def crepBody63_84 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 1#64]) crepBody63_83

def crepBody63_85 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 11]) crepBody63_74

def crepBody63_86 : CrepProg (BitVec 64) :=
.seq crepBody63_84 crepBody63_85

def crepBody63_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.const 1#64)

def crepBody63_88 : CrepProg (BitVec 64) :=
.seq crepBody63_87 crepBody63_1

def crepBody63_89 : CrepProg (BitVec 64) :=
.seq crepBody63_86 crepBody63_88

def crepBody63_90 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 32#64),
      Flapjack.CrepExp.var 15])
  (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 12])) crepBody63_89 crepBody63_1

def crepBody63_91 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 4294967296#64)) crepBody63_90 crepBody63_1

def crepBody63_92 : CrepProg (BitVec 64) :=
.seq crepBody63_81 crepBody63_91

def crepBody63_93 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 1#64)) crepBody63_92

def crepBody63_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 0#64)

def crepBody63_95 : CrepProg (BitVec 64) :=
.seq crepBody63_94 crepBody63_1

def crepBody63_96 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.var 23)

def crepBody63_97 : CrepProg (BitVec 64) :=
.seq crepBody63_96 crepBody63_1

def crepBody63_98 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 4294967295#64]) crepBody63_97

def crepBody63_99 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7],
        Flapjack.CrepExp.const 8#64]]) crepBody63_98

def crepBody63_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 32#64),
      Flapjack.CrepExp.shift Flapjack.Shift.asr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 32#64)])

def crepBody63_101 : CrepProg (BitVec 64) :=
.seq crepBody63_100 crepBody63_1

def crepBody63_102 : CrepProg (BitVec 64) :=
.seq crepBody63_99 crepBody63_101

def crepBody63_103 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 22)

def crepBody63_104 : CrepProg (BitVec 64) :=
.seq crepBody63_103 crepBody63_1

def crepBody63_105 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody63_104

def crepBody63_106 : CrepProg (BitVec 64) :=
.seq crepBody63_102 crepBody63_105

def crepBody63_107 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.var 8,
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7],
                  Flapjack.CrepExp.const 8#64]]),
        Flapjack.CrepExp.var 19],
    Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 4294967295#64]]) crepBody63_106

def crepBody63_108 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
  [Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 9,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]])]) crepBody63_107

def crepBody63_109 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody63_108

def crepBody63_110 : CrepProg (BitVec 64) :=
.seq crepBody63_95 crepBody63_109

def crepBody63_111 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody63_112 : CrepProg (BitVec 64) :=
.seq crepBody63_111 crepBody63_1

def crepBody63_113 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 1#64]) crepBody63_112

def crepBody63_114 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]) crepBody63_113

def crepBody63_115 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.const 0#64)

def crepBody63_116 : CrepProg (BitVec 64) :=
.seq crepBody63_115 crepBody63_1

def crepBody63_117 : CrepProg (BitVec 64) :=
.seq crepBody63_114 crepBody63_116

def crepBody63_118 : CrepProg (BitVec 64) :=
.seq crepBody63_117 crepBody63_95

def crepBody63_119 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 32#64))

def crepBody63_120 : CrepProg (BitVec 64) :=
.seq crepBody63_119 crepBody63_1

def crepBody63_121 : CrepProg (BitVec 64) :=
.seq crepBody63_99 crepBody63_120

def crepBody63_122 : CrepProg (BitVec 64) :=
.seq crepBody63_121 crepBody63_105

def crepBody63_123 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 8,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 9,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.var 19]) crepBody63_122

def crepBody63_124 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody63_123

def crepBody63_125 : CrepProg (BitVec 64) :=
.seq crepBody63_118 crepBody63_124

def crepBody63_126 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 19],
    Flapjack.CrepExp.const 4294967295#64]) crepBody63_112

def crepBody63_127 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5],
        Flapjack.CrepExp.const 8#64]]) crepBody63_126

def crepBody63_128 : CrepProg (BitVec 64) :=
.seq crepBody63_125 crepBody63_127

def crepBody63_129 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 16) crepBody63_112

def crepBody63_130 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]) crepBody63_129

def crepBody63_131 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 20) crepBody63_112

def crepBody63_132 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5],
        Flapjack.CrepExp.const 8#64]]) crepBody63_131

def crepBody63_133 : CrepProg (BitVec 64) :=
.seq crepBody63_130 crepBody63_132

def crepBody63_134 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64)) crepBody63_128 crepBody63_133

def crepBody63_135 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 19]) crepBody63_134

def crepBody63_136 : CrepProg (BitVec 64) :=
.seq crepBody63_110 crepBody63_135

def crepBody63_137 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody63_136

def crepBody63_138 : CrepProg (BitVec 64) :=
.seq crepBody63_93 crepBody63_137

def crepBody63_139 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 1#64) crepBody63_138

def crepBody63_140 : CrepProg (BitVec 64) :=
.seq crepBody63_79 crepBody63_139

def crepBody63_141 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody63_140

def crepBody63_142 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody63_141

def crepBody63_143 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 8,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5],
              Flapjack.CrepExp.const 2#64],
          Flapjack.CrepExp.const 8#64]])) crepBody63_142

def crepBody63_144 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 8,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5],
              Flapjack.CrepExp.const 1#64],
          Flapjack.CrepExp.const 8#64]])) crepBody63_143

def crepBody63_145 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 8,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5],
          Flapjack.CrepExp.const 8#64]])) crepBody63_144

def crepBody63_146 : CrepProg (BitVec 64) :=
.seq crepBody63_64 crepBody63_145

def crepBody63_147 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 7)) crepBody63_146

def crepBody63_148 : CrepProg (BitVec 64) :=
.seq crepBody63_61 crepBody63_147

def crepBody63_149 : CrepProg (BitVec 64) :=
.seq crepBody63_148 crepBody63_61

def crepBody63_150 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody63_151 : CrepProg (BitVec 64) :=
.seq crepBody63_150 crepBody63_1

def crepBody63_152 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody63_151

def crepBody63_153 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]) crepBody63_152

def crepBody63_154 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody63_63

def crepBody63_155 : CrepProg (BitVec 64) :=
.seq crepBody63_153 crepBody63_154

def crepBody63_156 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 3)) crepBody63_155

def crepBody63_157 : CrepProg (BitVec 64) :=
.seq crepBody63_149 crepBody63_156

def crepBody63_158 : CrepProg (BitVec 64) :=
.seq crepBody63_157 crepBody63_95

def crepBody63_159 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 8,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]]))
      (Flapjack.CrepExp.var 10),
    Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 8,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64],
                    Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10]),
        Flapjack.CrepExp.const 4294967295#64]]) crepBody63_151

def crepBody63_160 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]]) crepBody63_159

def crepBody63_161 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 13)

def crepBody63_162 : CrepProg (BitVec 64) :=
.seq crepBody63_161 crepBody63_1

def crepBody63_163 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody63_162

def crepBody63_164 : CrepProg (BitVec 64) :=
.seq crepBody63_160 crepBody63_163

def crepBody63_165 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody63_164

def crepBody63_166 : CrepProg (BitVec 64) :=
.seq crepBody63_158 crepBody63_165

def crepBody63_167 : CrepProg (BitVec 64) :=
.seq crepBody63_166 crepBody63_25

def crepBody63_168 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 9,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 2#64],
          Flapjack.CrepExp.const 8#64]])) crepBody63_167

def crepBody63_169 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 9,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64],
          Flapjack.CrepExp.const 8#64]])) crepBody63_168

def crepBody63_170 : CrepProg (BitVec 64) :=
.seq crepBody63_59 crepBody63_169

def crepBody63_171 : CrepProg (BitVec 64) :=
.seq crepBody63_30 crepBody63_170

def crepBody63_172 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody63_171

def crepBody63_173 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 144#64]) crepBody63_172

def crepBody63_174 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 0#64]) crepBody63_173

def crepBody63_175 : CrepProg (BitVec 64) :=
.seq crepBody63_29 crepBody63_174

def crepBody63_176 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody63_175

def crepBody63_177 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody63_176

def data63 : CrepProg (BitVec 64) := crepBody63_177
def output63 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [100#8, 105#8, 118#8, 109#8, 110#8, 117#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data63)
end InitECandidate.Proofs.FrontendStages.Crep
