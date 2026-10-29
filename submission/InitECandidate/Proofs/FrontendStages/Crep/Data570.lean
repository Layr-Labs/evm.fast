import InitECandidate.Proofs.FrontendStages.Crep.Translate554
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody570_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]

def crepBody570_1 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody570_0

def crepBody570_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
        Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 360#64]),
    Flapjack.CrepExp.const 64#64]

def crepBody570_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody570_2

def crepBody570_4 : CrepProg (BitVec 64) :=
.seq crepBody570_1 crepBody570_3

def crepBody570_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody570_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody570_7 : CrepProg (BitVec 64) :=
.seq crepBody570_5 crepBody570_6

def crepBody570_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.var 3]) crepBody570_7

def crepBody570_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.const 96#64]) crepBody570_8

def crepBody570_10 : CrepProg (BitVec 64) :=
.seq crepBody570_4 crepBody570_9

def crepBody570_11 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 13#64, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.var 4]) crepBody570_7

def crepBody570_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.const 104#64]) crepBody570_11

def crepBody570_13 : CrepProg (BitVec 64) :=
.seq crepBody570_10 crepBody570_12

def crepBody570_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 14#64, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody570_7

def crepBody570_15 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
    Flapjack.CrepExp.const 112#64]) crepBody570_14

def crepBody570_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody570_15 crepBody570_6

def crepBody570_17 : CrepProg (BitVec 64) :=
.seq crepBody570_13 crepBody570_16

def crepBody570_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 12#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_18

def crepBody570_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 5#64, Flapjack.CrepExp.const 9#64, Flapjack.CrepExp.const 13#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_20

def crepBody570_22 : CrepProg (BitVec 64) :=
.seq crepBody570_19 crepBody570_21

def crepBody570_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 6#64, Flapjack.CrepExp.const 10#64, Flapjack.CrepExp.const 14#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 5#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_23

def crepBody570_25 : CrepProg (BitVec 64) :=
.seq crepBody570_22 crepBody570_24

def crepBody570_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 7#64, Flapjack.CrepExp.const 11#64, Flapjack.CrepExp.const 15#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 6#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 7#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_26

def crepBody570_28 : CrepProg (BitVec 64) :=
.seq crepBody570_25 crepBody570_27

def crepBody570_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 5#64, Flapjack.CrepExp.const 10#64, Flapjack.CrepExp.const 15#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 9#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_30 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_29

def crepBody570_31 : CrepProg (BitVec 64) :=
.seq crepBody570_28 crepBody570_30

def crepBody570_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 6#64, Flapjack.CrepExp.const 11#64, Flapjack.CrepExp.const 12#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 10#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 11#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_32

def crepBody570_34 : CrepProg (BitVec 64) :=
.seq crepBody570_31 crepBody570_33

def crepBody570_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 7#64, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 13#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 13#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_36 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_35

def crepBody570_37 : CrepProg (BitVec 64) :=
.seq crepBody570_34 crepBody570_36

def crepBody570_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "blake2_g"
  [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 9#64, Flapjack.CrepExp.const 14#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 14#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr
                    (Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.add
                        [Flapjack.CrepExp.load
                            (Flapjack.CrepExp.op Flapjack.BinOp.sub
                              [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 352#64]),
                          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                            [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]]))
                    (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                      [Flapjack.CrepExp.const 15#64, Flapjack.CrepExp.const 4#64]),
                  Flapjack.CrepExp.const 15#64],
              Flapjack.CrepExp.const 8#64]])]

def crepBody570_39 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_38

def crepBody570_40 : CrepProg (BitVec 64) :=
.seq crepBody570_37 crepBody570_39

def crepBody570_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 8)

def crepBody570_42 : CrepProg (BitVec 64) :=
.seq crepBody570_41 crepBody570_6

def crepBody570_43 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody570_42

def crepBody570_44 : CrepProg (BitVec 64) :=
.seq crepBody570_40 crepBody570_43

def crepBody570_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody570_46 : CrepProg (BitVec 64) :=
.seq crepBody570_45 crepBody570_6

def crepBody570_47 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody570_46

def crepBody570_48 : CrepProg (BitVec 64) :=
.seq crepBody570_44 crepBody570_47

def crepBody570_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 0#64)

def crepBody570_50 : CrepProg (BitVec 64) :=
.seq crepBody570_49 crepBody570_6

def crepBody570_51 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 10#64)) crepBody570_50 crepBody570_6

def crepBody570_52 : CrepProg (BitVec 64) :=
.seq crepBody570_48 crepBody570_51

def crepBody570_53 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 0)) crepBody570_52

def crepBody570_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody570_55 : CrepProg (BitVec 64) :=
.seq crepBody570_54 crepBody570_6

def crepBody570_56 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 368#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64],
              Flapjack.CrepExp.const 8#64]])]) crepBody570_55

def crepBody570_57 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]) crepBody570_56

def crepBody570_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 9)

def crepBody570_59 : CrepProg (BitVec 64) :=
.seq crepBody570_58 crepBody570_6

def crepBody570_60 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody570_59

def crepBody570_61 : CrepProg (BitVec 64) :=
.seq crepBody570_57 crepBody570_60

def crepBody570_62 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 8#64)) crepBody570_61

def crepBody570_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody570_64 : CrepProg (BitVec 64) :=
.seq crepBody570_62 crepBody570_63

def crepBody570_65 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody570_64

def crepBody570_66 : CrepProg (BitVec 64) :=
.seq crepBody570_53 crepBody570_65

def crepBody570_67 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody570_66

def crepBody570_68 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody570_67

def crepBody570_69 : CrepProg (BitVec 64) :=
.seq crepBody570_17 crepBody570_68

def data570 : CrepProg (BitVec 64) := crepBody570_69
def output570 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 95#8, 102#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data570)
end InitECandidate.Proofs.FrontendStages.Crep
