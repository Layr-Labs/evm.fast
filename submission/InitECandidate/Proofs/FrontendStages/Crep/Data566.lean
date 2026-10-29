import InitECandidate.Proofs.FrontendStages.Crep.Translate550
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody566_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody566_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody566_2 : CrepProg (BitVec 64) :=
.seq crepBody566_0 crepBody566_1

def crepBody566_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64]]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody566_2

def crepBody566_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 328#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]]) crepBody566_3

def crepBody566_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody566_6 : CrepProg (BitVec 64) :=
.seq crepBody566_5 crepBody566_1

def crepBody566_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody566_6

def crepBody566_8 : CrepProg (BitVec 64) :=
.seq crepBody566_4 crepBody566_7

def crepBody566_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 16#64)) crepBody566_8

def crepBody566_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "rmd_f"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody566_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "rmd_k" [Flapjack.CrepExp.var 13]

def crepBody566_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 18)

def crepBody566_13 : CrepProg (BitVec 64) :=
.seq crepBody566_12 crepBody566_1

def crepBody566_14 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.op Flapjack.BinOp.and
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.var 17),
                Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16)
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 17])],
            Flapjack.CrepExp.const 4294967295#64],
        Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_13

def crepBody566_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 7)

def crepBody566_16 : CrepProg (BitVec 64) :=
.seq crepBody566_15 crepBody566_1

def crepBody566_17 : CrepProg (BitVec 64) :=
.seq crepBody566_14 crepBody566_16

def crepBody566_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 6)

def crepBody566_19 : CrepProg (BitVec 64) :=
.seq crepBody566_18 crepBody566_1

def crepBody566_20 : CrepProg (BitVec 64) :=
.seq crepBody566_17 crepBody566_19

def crepBody566_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.op Flapjack.BinOp.or
        [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 10#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5)
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 10#64])],
      Flapjack.CrepExp.const 4294967295#64])

def crepBody566_22 : CrepProg (BitVec 64) :=
.seq crepBody566_21 crepBody566_1

def crepBody566_23 : CrepProg (BitVec 64) :=
.seq crepBody566_20 crepBody566_22

def crepBody566_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 4)

def crepBody566_25 : CrepProg (BitVec 64) :=
.seq crepBody566_24 crepBody566_1

def crepBody566_26 : CrepProg (BitVec 64) :=
.seq crepBody566_23 crepBody566_25

def crepBody566_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 16)

def crepBody566_28 : CrepProg (BitVec 64) :=
.seq crepBody566_27 crepBody566_1

def crepBody566_29 : CrepProg (BitVec 64) :=
.seq crepBody566_26 crepBody566_28

def crepBody566_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "rmd_f"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 79#64, Flapjack.CrepExp.var 13],
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody566_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "rmd_kp" [Flapjack.CrepExp.var 13]

def crepBody566_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20 (Flapjack.CrepExp.var 22)

def crepBody566_33 : CrepProg (BitVec 64) :=
.seq crepBody566_32 crepBody566_1

def crepBody566_34 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.op Flapjack.BinOp.and
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.var 21),
                Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20)
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 21])],
            Flapjack.CrepExp.const 4294967295#64],
        Flapjack.CrepExp.var 12],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_33

def crepBody566_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 12)

def crepBody566_36 : CrepProg (BitVec 64) :=
.seq crepBody566_35 crepBody566_1

def crepBody566_37 : CrepProg (BitVec 64) :=
.seq crepBody566_34 crepBody566_36

def crepBody566_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 11)

def crepBody566_39 : CrepProg (BitVec 64) :=
.seq crepBody566_38 crepBody566_1

def crepBody566_40 : CrepProg (BitVec 64) :=
.seq crepBody566_37 crepBody566_39

def crepBody566_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.op Flapjack.BinOp.or
        [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 10#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10)
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 10#64])],
      Flapjack.CrepExp.const 4294967295#64])

def crepBody566_42 : CrepProg (BitVec 64) :=
.seq crepBody566_41 crepBody566_1

def crepBody566_43 : CrepProg (BitVec 64) :=
.seq crepBody566_40 crepBody566_42

def crepBody566_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 9)

def crepBody566_45 : CrepProg (BitVec 64) :=
.seq crepBody566_44 crepBody566_1

def crepBody566_46 : CrepProg (BitVec 64) :=
.seq crepBody566_43 crepBody566_45

def crepBody566_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 20)

def crepBody566_48 : CrepProg (BitVec 64) :=
.seq crepBody566_47 crepBody566_1

def crepBody566_49 : CrepProg (BitVec 64) :=
.seq crepBody566_46 crepBody566_48

def crepBody566_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 22)

def crepBody566_51 : CrepProg (BitVec 64) :=
.seq crepBody566_50 crepBody566_1

def crepBody566_52 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody566_51

def crepBody566_53 : CrepProg (BitVec 64) :=
.seq crepBody566_49 crepBody566_52

def crepBody566_54 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
              [Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 5#64],
                    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 4#64)],
                Flapjack.CrepExp.const 8#64]]))
      (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 15#64],
          Flapjack.CrepExp.const 4#64]),
    Flapjack.CrepExp.const 15#64]) crepBody566_53

def crepBody566_55 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 18,
        Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 328#64]),
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                [Flapjack.CrepExp.op Flapjack.BinOp.and
                    [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                        (Flapjack.CrepExp.load
                          (Flapjack.CrepExp.op Flapjack.BinOp.add
                            [Flapjack.CrepExp.load
                                (Flapjack.CrepExp.op Flapjack.BinOp.sub
                                  [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
                              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                                [Flapjack.CrepExp.op Flapjack.BinOp.add
                                    [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                                        [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 5#64],
                                      Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13)
                                        (Flapjack.CrepExp.const 4#64)],
                                  Flapjack.CrepExp.const 8#64]]))
                        (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                          [Flapjack.CrepExp.op Flapjack.BinOp.and
                              [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 15#64],
                            Flapjack.CrepExp.const 4#64]),
                      Flapjack.CrepExp.const 15#64],
                  Flapjack.CrepExp.const 8#64]]),
        Flapjack.CrepExp.var 19],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_54

def crepBody566_56 : CrepProg (BitVec 64) :=
.seq crepBody566_31 crepBody566_55

def crepBody566_57 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody566_56

def crepBody566_58 : CrepProg (BitVec 64) :=
.seq crepBody566_30 crepBody566_57

def crepBody566_59 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody566_58

def crepBody566_60 : CrepProg (BitVec 64) :=
.seq crepBody566_29 crepBody566_59

def crepBody566_61 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
              [Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 5#64],
                    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 4#64)],
                Flapjack.CrepExp.const 8#64]]))
      (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 15#64],
          Flapjack.CrepExp.const 4#64]),
    Flapjack.CrepExp.const 15#64]) crepBody566_60

def crepBody566_62 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 14,
        Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 328#64]),
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                [Flapjack.CrepExp.op Flapjack.BinOp.and
                    [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                        (Flapjack.CrepExp.load
                          (Flapjack.CrepExp.op Flapjack.BinOp.add
                            [Flapjack.CrepExp.load
                                (Flapjack.CrepExp.op Flapjack.BinOp.sub
                                  [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 320#64]),
                              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                                [Flapjack.CrepExp.op Flapjack.BinOp.add
                                    [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                                        [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 5#64],
                                      Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13)
                                        (Flapjack.CrepExp.const 4#64)],
                                  Flapjack.CrepExp.const 8#64]]))
                        (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                          [Flapjack.CrepExp.op Flapjack.BinOp.and
                              [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 15#64],
                            Flapjack.CrepExp.const 4#64]),
                      Flapjack.CrepExp.const 15#64],
                  Flapjack.CrepExp.const 8#64]]),
        Flapjack.CrepExp.var 15],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_61

def crepBody566_63 : CrepProg (BitVec 64) :=
.seq crepBody566_11 crepBody566_62

def crepBody566_64 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody566_63

def crepBody566_65 : CrepProg (BitVec 64) :=
.seq crepBody566_10 crepBody566_64

def crepBody566_66 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody566_65

def crepBody566_67 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 80#64)) crepBody566_66

def crepBody566_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody566_69 : CrepProg (BitVec 64) :=
.seq crepBody566_68 crepBody566_1

def crepBody566_70 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 11],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_69

def crepBody566_71 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 0) crepBody566_70

def crepBody566_72 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 12],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_69

def crepBody566_73 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]) crepBody566_72

def crepBody566_74 : CrepProg (BitVec 64) :=
.seq crepBody566_71 crepBody566_73

def crepBody566_75 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_69

def crepBody566_76 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]) crepBody566_75

def crepBody566_77 : CrepProg (BitVec 64) :=
.seq crepBody566_74 crepBody566_76

def crepBody566_78 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 9],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_69

def crepBody566_79 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody566_78

def crepBody566_80 : CrepProg (BitVec 64) :=
.seq crepBody566_77 crepBody566_79

def crepBody566_81 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 10],
    Flapjack.CrepExp.const 4294967295#64]) crepBody566_69

def crepBody566_82 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody566_81

def crepBody566_83 : CrepProg (BitVec 64) :=
.seq crepBody566_80 crepBody566_82

def crepBody566_84 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody566_85 : CrepProg (BitVec 64) :=
.seq crepBody566_83 crepBody566_84

def crepBody566_86 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody566_85

def crepBody566_87 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody566_86

def crepBody566_88 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody566_87

def crepBody566_89 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody566_88

def crepBody566_90 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) crepBody566_89

def crepBody566_91 : CrepProg (BitVec 64) :=
.seq crepBody566_67 crepBody566_90

def crepBody566_92 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody566_91

def crepBody566_93 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 7) crepBody566_92

def crepBody566_94 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 6) crepBody566_93

def crepBody566_95 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 5) crepBody566_94

def crepBody566_96 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 4) crepBody566_95

def crepBody566_97 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 3) crepBody566_96

def crepBody566_98 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody566_97

def crepBody566_99 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody566_98

def crepBody566_100 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody566_99

def crepBody566_101 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody566_100

def crepBody566_102 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) crepBody566_101

def crepBody566_103 : CrepProg (BitVec 64) :=
.seq crepBody566_9 crepBody566_102

def crepBody566_104 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody566_103

def data566 : CrepProg (BitVec 64) := crepBody566_104
def output566 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8], [0, 1], crepProgToHOL data566)
end InitECandidate.Proofs.FrontendStages.Crep
