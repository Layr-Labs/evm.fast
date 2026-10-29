import InitECandidate.Proofs.FrontendStages.Crep.Translate558
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody574_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 3)

def crepBody574_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody574_2 : CrepProg (BitVec 64) :=
.seq crepBody574_0 crepBody574_1

def crepBody574_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 12)

def crepBody574_4 : CrepProg (BitVec 64) :=
.seq crepBody574_3 crepBody574_1

def crepBody574_5 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody574_4

def crepBody574_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13], none)) "div64by32"
  [Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.var 10]

def crepBody574_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody574_8 : CrepProg (BitVec 64) :=
.seq crepBody574_7 crepBody574_1

def crepBody574_9 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 12) crepBody574_8

def crepBody574_10 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]) crepBody574_9

def crepBody574_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 13)

def crepBody574_12 : CrepProg (BitVec 64) :=
.seq crepBody574_11 crepBody574_1

def crepBody574_13 : CrepProg (BitVec 64) :=
.seq crepBody574_10 crepBody574_12

def crepBody574_14 : CrepProg (BitVec 64) :=
.seq crepBody574_6 crepBody574_13

def crepBody574_15 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody574_14

def crepBody574_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody574_15

def crepBody574_17 : CrepProg (BitVec 64) :=
.seq crepBody574_5 crepBody574_16

def crepBody574_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 9)) crepBody574_17

def crepBody574_19 : CrepProg (BitVec 64) :=
.seq crepBody574_2 crepBody574_18

def crepBody574_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody574_21 : CrepProg (BitVec 64) :=
.seq crepBody574_20 crepBody574_1

def crepBody574_22 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 11) crepBody574_21

def crepBody574_23 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 1) crepBody574_22

def crepBody574_24 : CrepProg (BitVec 64) :=
.seq crepBody574_19 crepBody574_23

def crepBody574_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody574_26 : CrepProg (BitVec 64) :=
.seq crepBody574_24 crepBody574_25

def crepBody574_27 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody574_26

def crepBody574_28 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 4)) crepBody574_27

def crepBody574_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody574_28 crepBody574_1

def crepBody574_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "nlz32"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 4,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody574_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64])

def crepBody574_32 : CrepProg (BitVec 64) :=
.seq crepBody574_31 crepBody574_1

def crepBody574_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody574_34 : CrepProg (BitVec 64) :=
.seq crepBody574_33 crepBody574_1

def crepBody574_35 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 4,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.var 10),
        Flapjack.CrepExp.shift Flapjack.Shift.lsr
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 4,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64],
                    Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10])],
    Flapjack.CrepExp.const 4294967295#64]) crepBody574_34

def crepBody574_36 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]) crepBody574_35

def crepBody574_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 11)

def crepBody574_38 : CrepProg (BitVec 64) :=
.seq crepBody574_37 crepBody574_1

def crepBody574_39 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody574_38

def crepBody574_40 : CrepProg (BitVec 64) :=
.seq crepBody574_36 crepBody574_39

def crepBody574_41 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 8)) crepBody574_40

def crepBody574_42 : CrepProg (BitVec 64) :=
.seq crepBody574_32 crepBody574_41

def crepBody574_43 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.load (Flapjack.CrepExp.var 4)) (Flapjack.CrepExp.var 10),
    Flapjack.CrepExp.const 4294967295#64]) crepBody574_34

def crepBody574_44 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 7) crepBody574_43

def crepBody574_45 : CrepProg (BitVec 64) :=
.seq crepBody574_42 crepBody574_44

def crepBody574_46 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.const 8#64]]))
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10])) crepBody574_34

def crepBody574_47 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]]) crepBody574_46

def crepBody574_48 : CrepProg (BitVec 64) :=
.seq crepBody574_45 crepBody574_47

def crepBody574_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])

def crepBody574_50 : CrepProg (BitVec 64) :=
.seq crepBody574_49 crepBody574_1

def crepBody574_51 : CrepProg (BitVec 64) :=
.seq crepBody574_48 crepBody574_50

def crepBody574_52 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 2,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.var 10),
        Flapjack.CrepExp.shift Flapjack.Shift.lsr
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 2,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64],
                    Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10])],
    Flapjack.CrepExp.const 4294967295#64]) crepBody574_34

def crepBody574_53 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]) crepBody574_52

def crepBody574_54 : CrepProg (BitVec 64) :=
.seq crepBody574_53 crepBody574_39

def crepBody574_55 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 8)) crepBody574_54

def crepBody574_56 : CrepProg (BitVec 64) :=
.seq crepBody574_51 crepBody574_55

def crepBody574_57 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.load (Flapjack.CrepExp.var 2)) (Flapjack.CrepExp.var 10),
    Flapjack.CrepExp.const 4294967295#64]) crepBody574_34

def crepBody574_58 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 6) crepBody574_57

def crepBody574_59 : CrepProg (BitVec 64) :=
.seq crepBody574_56 crepBody574_58

def crepBody574_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5],
      Flapjack.CrepExp.const 1#64])

def crepBody574_61 : CrepProg (BitVec 64) :=
.seq crepBody574_60 crepBody574_1

def crepBody574_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 13)

def crepBody574_63 : CrepProg (BitVec 64) :=
.seq crepBody574_62 crepBody574_1

def crepBody574_64 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody574_63

def crepBody574_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.const 4294967295#64)

def crepBody574_66 : CrepProg (BitVec 64) :=
.seq crepBody574_65 crepBody574_1

def crepBody574_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.op Flapjack.BinOp.or
        [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 32#64),
          Flapjack.CrepExp.var 14],
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 11]])

def crepBody574_68 : CrepProg (BitVec 64) :=
.seq crepBody574_67 crepBody574_1

def crepBody574_69 : CrepProg (BitVec 64) :=
.seq crepBody574_66 crepBody574_68

def crepBody574_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19], none)) "div64by32"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 11]

def crepBody574_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 18)

def crepBody574_72 : CrepProg (BitVec 64) :=
.seq crepBody574_71 crepBody574_1

def crepBody574_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 19)

def crepBody574_74 : CrepProg (BitVec 64) :=
.seq crepBody574_73 crepBody574_1

def crepBody574_75 : CrepProg (BitVec 64) :=
.seq crepBody574_72 crepBody574_74

def crepBody574_76 : CrepProg (BitVec 64) :=
.seq crepBody574_70 crepBody574_75

def crepBody574_77 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody574_76

def crepBody574_78 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody574_77

def crepBody574_79 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 11)) crepBody574_69 crepBody574_78

def crepBody574_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.const 0#64)

def crepBody574_81 : CrepProg (BitVec 64) :=
.seq crepBody574_80 crepBody574_1

def crepBody574_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 19)

def crepBody574_83 : CrepProg (BitVec 64) :=
.seq crepBody574_82 crepBody574_1

def crepBody574_84 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 1#64]) crepBody574_83

def crepBody574_85 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 11]) crepBody574_74

def crepBody574_86 : CrepProg (BitVec 64) :=
.seq crepBody574_84 crepBody574_85

def crepBody574_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.const 1#64)

def crepBody574_88 : CrepProg (BitVec 64) :=
.seq crepBody574_87 crepBody574_1

def crepBody574_89 : CrepProg (BitVec 64) :=
.seq crepBody574_86 crepBody574_88

def crepBody574_90 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 32#64),
      Flapjack.CrepExp.var 15])
  (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 12])) crepBody574_89 crepBody574_1

def crepBody574_91 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 4294967296#64)) crepBody574_90 crepBody574_1

def crepBody574_92 : CrepProg (BitVec 64) :=
.seq crepBody574_81 crepBody574_91

def crepBody574_93 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 1#64)) crepBody574_92

def crepBody574_94 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 0#64)

def crepBody574_95 : CrepProg (BitVec 64) :=
.seq crepBody574_94 crepBody574_1

def crepBody574_96 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.var 23)

def crepBody574_97 : CrepProg (BitVec 64) :=
.seq crepBody574_96 crepBody574_1

def crepBody574_98 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 4294967295#64]) crepBody574_97

def crepBody574_99 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9],
        Flapjack.CrepExp.const 8#64]]) crepBody574_98

def crepBody574_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 32#64),
      Flapjack.CrepExp.shift Flapjack.Shift.asr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 32#64)])

def crepBody574_101 : CrepProg (BitVec 64) :=
.seq crepBody574_100 crepBody574_1

def crepBody574_102 : CrepProg (BitVec 64) :=
.seq crepBody574_99 crepBody574_101

def crepBody574_103 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 22)

def crepBody574_104 : CrepProg (BitVec 64) :=
.seq crepBody574_103 crepBody574_1

def crepBody574_105 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody574_104

def crepBody574_106 : CrepProg (BitVec 64) :=
.seq crepBody574_102 crepBody574_105

def crepBody574_107 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.var 6,
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9],
                  Flapjack.CrepExp.const 8#64]]),
        Flapjack.CrepExp.var 19],
    Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 4294967295#64]]) crepBody574_106

def crepBody574_108 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
  [Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 7,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]])]) crepBody574_107

def crepBody574_109 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 5)) crepBody574_108

def crepBody574_110 : CrepProg (BitVec 64) :=
.seq crepBody574_95 crepBody574_109

def crepBody574_111 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody574_112 : CrepProg (BitVec 64) :=
.seq crepBody574_111 crepBody574_1

def crepBody574_113 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 1#64]) crepBody574_112

def crepBody574_114 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]) crepBody574_113

def crepBody574_115 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.const 0#64)

def crepBody574_116 : CrepProg (BitVec 64) :=
.seq crepBody574_115 crepBody574_1

def crepBody574_117 : CrepProg (BitVec 64) :=
.seq crepBody574_114 crepBody574_116

def crepBody574_118 : CrepProg (BitVec 64) :=
.seq crepBody574_117 crepBody574_95

def crepBody574_119 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 32#64))

def crepBody574_120 : CrepProg (BitVec 64) :=
.seq crepBody574_119 crepBody574_1

def crepBody574_121 : CrepProg (BitVec 64) :=
.seq crepBody574_99 crepBody574_120

def crepBody574_122 : CrepProg (BitVec 64) :=
.seq crepBody574_121 crepBody574_105

def crepBody574_123 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 6,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 7,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.var 19]) crepBody574_122

def crepBody574_124 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 5)) crepBody574_123

def crepBody574_125 : CrepProg (BitVec 64) :=
.seq crepBody574_118 crepBody574_124

def crepBody574_126 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 19],
    Flapjack.CrepExp.const 4294967295#64]) crepBody574_112

def crepBody574_127 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5],
        Flapjack.CrepExp.const 8#64]]) crepBody574_126

def crepBody574_128 : CrepProg (BitVec 64) :=
.seq crepBody574_125 crepBody574_127

def crepBody574_129 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 16) crepBody574_112

def crepBody574_130 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]) crepBody574_129

def crepBody574_131 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 20) crepBody574_112

def crepBody574_132 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5],
        Flapjack.CrepExp.const 8#64]]) crepBody574_131

def crepBody574_133 : CrepProg (BitVec 64) :=
.seq crepBody574_130 crepBody574_132

def crepBody574_134 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64)) crepBody574_128 crepBody574_133

def crepBody574_135 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 19]) crepBody574_134

def crepBody574_136 : CrepProg (BitVec 64) :=
.seq crepBody574_110 crepBody574_135

def crepBody574_137 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody574_136

def crepBody574_138 : CrepProg (BitVec 64) :=
.seq crepBody574_93 crepBody574_137

def crepBody574_139 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 1#64) crepBody574_138

def crepBody574_140 : CrepProg (BitVec 64) :=
.seq crepBody574_79 crepBody574_139

def crepBody574_141 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody574_140

def crepBody574_142 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody574_141

def crepBody574_143 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 6,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5],
              Flapjack.CrepExp.const 2#64],
          Flapjack.CrepExp.const 8#64]])) crepBody574_142

def crepBody574_144 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 6,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5],
              Flapjack.CrepExp.const 1#64],
          Flapjack.CrepExp.const 8#64]])) crepBody574_143

def crepBody574_145 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 6,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5],
          Flapjack.CrepExp.const 8#64]])) crepBody574_144

def crepBody574_146 : CrepProg (BitVec 64) :=
.seq crepBody574_64 crepBody574_145

def crepBody574_147 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 9)) crepBody574_146

def crepBody574_148 : CrepProg (BitVec 64) :=
.seq crepBody574_61 crepBody574_147

def crepBody574_149 : CrepProg (BitVec 64) :=
.seq crepBody574_148 crepBody574_61

def crepBody574_150 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody574_151 : CrepProg (BitVec 64) :=
.seq crepBody574_150 crepBody574_1

def crepBody574_152 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody574_151

def crepBody574_153 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]) crepBody574_152

def crepBody574_154 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody574_63

def crepBody574_155 : CrepProg (BitVec 64) :=
.seq crepBody574_153 crepBody574_154

def crepBody574_156 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 3)) crepBody574_155

def crepBody574_157 : CrepProg (BitVec 64) :=
.seq crepBody574_149 crepBody574_156

def crepBody574_158 : CrepProg (BitVec 64) :=
.seq crepBody574_157 crepBody574_95

def crepBody574_159 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 6,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]))
      (Flapjack.CrepExp.var 10),
    Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 6,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64],
                    Flapjack.CrepExp.const 8#64]]))
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 10]),
        Flapjack.CrepExp.const 4294967295#64]]) crepBody574_151

def crepBody574_160 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]) crepBody574_159

def crepBody574_161 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 13)

def crepBody574_162 : CrepProg (BitVec 64) :=
.seq crepBody574_161 crepBody574_1

def crepBody574_163 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody574_162

def crepBody574_164 : CrepProg (BitVec 64) :=
.seq crepBody574_160 crepBody574_163

def crepBody574_165 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 5)) crepBody574_164

def crepBody574_166 : CrepProg (BitVec 64) :=
.seq crepBody574_158 crepBody574_165

def crepBody574_167 : CrepProg (BitVec 64) :=
.seq crepBody574_166 crepBody574_25

def crepBody574_168 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 7,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 2#64],
          Flapjack.CrepExp.const 8#64]])) crepBody574_167

def crepBody574_169 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 7,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64],
          Flapjack.CrepExp.const 8#64]])) crepBody574_168

def crepBody574_170 : CrepProg (BitVec 64) :=
.seq crepBody574_59 crepBody574_169

def crepBody574_171 : CrepProg (BitVec 64) :=
.seq crepBody574_30 crepBody574_170

def crepBody574_172 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody574_171

def crepBody574_173 : CrepProg (BitVec 64) :=
.seq crepBody574_29 crepBody574_172

def crepBody574_174 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody574_173

def crepBody574_175 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody574_174

def data574 : CrepProg (BitVec 64) := crepBody574_175
def output574 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 100#8, 105#8, 118#8, 109#8, 110#8, 117#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data574)
end InitECandidate.Proofs.FrontendStages.Crep
