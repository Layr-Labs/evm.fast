import InitECandidate.Proofs.FrontendStages.Crep.Translate754
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody770_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody770_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody770_2 : CrepProg (BitVec 64) :=
.seq crepBody770_0 crepBody770_1

def crepBody770_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 10#64) crepBody770_2

def crepBody770_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody770_5 : CrepProg (BitVec 64) :=
.seq crepBody770_3 crepBody770_4

def crepBody770_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 213#64)) crepBody770_5 crepBody770_1

def crepBody770_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "charge_gas" [Flapjack.CrepExp.var 4]

def crepBody770_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody770_7

def crepBody770_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody770_10 : CrepProg (BitVec 64) :=
.seq crepBody770_9 crepBody770_1

def crepBody770_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 10#64) crepBody770_10

def crepBody770_12 : CrepProg (BitVec 64) :=
.seq crepBody770_11 crepBody770_4

def crepBody770_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 5)) crepBody770_12 crepBody770_1

def crepBody770_14 : CrepProg (BitVec 64) :=
.seq crepBody770_8 crepBody770_13

def crepBody770_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody770_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody770_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody770_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody770_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody770_20 : CrepProg (BitVec 64) :=
.seq crepBody770_19 crepBody770_1

def crepBody770_21 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
            Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
            Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
            Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.or
        [Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                Flapjack.CrepExp.const 4#64]),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
                  Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                  Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
            (Flapjack.CrepExp.const 8#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
                  Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                  Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
            (Flapjack.CrepExp.const 16#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64,
                  Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                  Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64]))
            (Flapjack.CrepExp.const 24#64)])
      (Flapjack.CrepExp.const 32#64)]) crepBody770_20

def crepBody770_22 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]) crepBody770_21

def crepBody770_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 11)

def crepBody770_24 : CrepProg (BitVec 64) :=
.seq crepBody770_23 crepBody770_1

def crepBody770_25 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64]) crepBody770_24

def crepBody770_26 : CrepProg (BitVec 64) :=
.seq crepBody770_22 crepBody770_25

def crepBody770_27 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 8#64)) crepBody770_26

def crepBody770_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.const 0#64)

def crepBody770_29 : CrepProg (BitVec 64) :=
.seq crepBody770_28 crepBody770_1

def crepBody770_30 : CrepProg (BitVec 64) :=
.seq crepBody770_27 crepBody770_29

def crepBody770_31 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
            Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
            Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
            Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.or
        [Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                Flapjack.CrepExp.const 4#64]),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
                  Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                  Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
            (Flapjack.CrepExp.const 8#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
                  Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                  Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
            (Flapjack.CrepExp.const 16#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 68#64,
                  Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64],
                  Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64]))
            (Flapjack.CrepExp.const 24#64)])
      (Flapjack.CrepExp.const 32#64)]) crepBody770_20

def crepBody770_32 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]]) crepBody770_31

def crepBody770_33 : CrepProg (BitVec 64) :=
.seq crepBody770_32 crepBody770_25

def crepBody770_34 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 16#64)) crepBody770_33

def crepBody770_35 : CrepProg (BitVec 64) :=
.seq crepBody770_30 crepBody770_34

def crepBody770_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "blake2b_f"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64, Flapjack.CrepExp.const 1#64]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64, Flapjack.CrepExp.const 2#64]))
          (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64, Flapjack.CrepExp.const 3#64]))
          (Flapjack.CrepExp.const 24#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64, Flapjack.CrepExp.const 4#64]),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 1#64]))
                (Flapjack.CrepExp.const 8#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 2#64]))
                (Flapjack.CrepExp.const 16#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 196#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 3#64]))
                (Flapjack.CrepExp.const 24#64)])
          (Flapjack.CrepExp.const 32#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64, Flapjack.CrepExp.const 1#64]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64, Flapjack.CrepExp.const 2#64]))
          (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64, Flapjack.CrepExp.const 3#64]))
          (Flapjack.CrepExp.const 24#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64, Flapjack.CrepExp.const 4#64]),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 1#64]))
                (Flapjack.CrepExp.const 8#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 2#64]))
                (Flapjack.CrepExp.const 16#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add
                    [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 204#64, Flapjack.CrepExp.const 4#64,
                      Flapjack.CrepExp.const 3#64]))
                (Flapjack.CrepExp.const 24#64)])
          (Flapjack.CrepExp.const 32#64)],
    Flapjack.CrepExp.var 5]

def crepBody770_37 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody770_36

def crepBody770_38 : CrepProg (BitVec 64) :=
.seq crepBody770_35 crepBody770_37

def crepBody770_39 : CrepProg (BitVec 64) :=
.seq crepBody770_38 crepBody770_29

def crepBody770_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "st_le64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 8,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]])]

def crepBody770_41 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody770_40

def crepBody770_42 : CrepProg (BitVec 64) :=
.seq crepBody770_41 crepBody770_25

def crepBody770_43 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 8#64)) crepBody770_42

def crepBody770_44 : CrepProg (BitVec 64) :=
.seq crepBody770_39 crepBody770_43

def crepBody770_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody770_46 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody770_45

def crepBody770_47 : CrepProg (BitVec 64) :=
.seq crepBody770_44 crepBody770_46

def crepBody770_48 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 6) crepBody770_20

def crepBody770_49 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody770_48

def crepBody770_50 : CrepProg (BitVec 64) :=
.seq crepBody770_47 crepBody770_49

def crepBody770_51 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 64#64) crepBody770_20

def crepBody770_52 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody770_51

def crepBody770_53 : CrepProg (BitVec 64) :=
.seq crepBody770_50 crepBody770_52

def crepBody770_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody770_55 : CrepProg (BitVec 64) :=
.seq crepBody770_53 crepBody770_54

def crepBody770_56 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody770_55

def crepBody770_57 : CrepProg (BitVec 64) :=
.seq crepBody770_18 crepBody770_56

def crepBody770_58 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody770_57

def crepBody770_59 : CrepProg (BitVec 64) :=
.seq crepBody770_17 crepBody770_58

def crepBody770_60 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody770_59

def crepBody770_61 : CrepProg (BitVec 64) :=
.seq crepBody770_16 crepBody770_60

def crepBody770_62 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody770_61

def crepBody770_63 : CrepProg (BitVec 64) :=
.seq crepBody770_15 crepBody770_62

def crepBody770_64 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody770_63

def crepBody770_65 : CrepProg (BitVec 64) :=
.seq crepBody770_14 crepBody770_64

def crepBody770_66 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 212#64])) crepBody770_65

def crepBody770_67 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 3))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 3#64])]) crepBody770_66

def crepBody770_68 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64])) crepBody770_67

def crepBody770_69 : CrepProg (BitVec 64) :=
.seq crepBody770_6 crepBody770_68

def crepBody770_70 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody770_69

def crepBody770_71 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody770_70

def data770 : CrepProg (BitVec 64) := crepBody770_71
def output770 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 102#8], [], crepProgToHOL data770)
end InitECandidate.Proofs.FrontendStages.Crep
