import InitECandidate.Proofs.FrontendStages.Crep.Translate405
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody421_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "scratch_alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.shift Flapjack.Shift.lsr
              (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 63#64])
              (Flapjack.CrepExp.const 6#64),
            Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody421_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memzero"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.shift Flapjack.Shift.lsr
              (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 63#64])
              (Flapjack.CrepExp.const 6#64),
            Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody421_2 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody421_1

def crepBody421_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody421_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody421_5 : CrepProg (BitVec 64) :=
.seq crepBody421_3 crepBody421_4

def crepBody421_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.const 1#64)
      (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 63#64])]) crepBody421_5

def crepBody421_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 6#64),
        Flapjack.CrepExp.const 8#64]]) crepBody421_6

def crepBody421_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 96#64],
      Flapjack.CrepExp.const 2#64])

def crepBody421_9 : CrepProg (BitVec 64) :=
.seq crepBody421_8 crepBody421_4

def crepBody421_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 2#64)

def crepBody421_11 : CrepProg (BitVec 64) :=
.seq crepBody421_10 crepBody421_4

def crepBody421_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 1#64)

def crepBody421_13 : CrepProg (BitVec 64) :=
.seq crepBody421_12 crepBody421_4

def crepBody421_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 91#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 127#64) (Flapjack.CrepExp.var 6))]) crepBody421_13 crepBody421_4

def crepBody421_15 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])) crepBody421_14

def crepBody421_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.var 1)) crepBody421_15 crepBody421_4

def crepBody421_17 : CrepProg (BitVec 64) :=
.seq crepBody421_11 crepBody421_16

def crepBody421_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 230#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 231#64)])) crepBody421_17 crepBody421_4

def crepBody421_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 82#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 127#64) (Flapjack.CrepExp.var 6))]) crepBody421_13 crepBody421_4

def crepBody421_20 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])) crepBody421_19

def crepBody421_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.var 1)) crepBody421_20 crepBody421_4

def crepBody421_22 : CrepProg (BitVec 64) :=
.seq crepBody421_11 crepBody421_21

def crepBody421_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 232#64)) crepBody421_22 crepBody421_4

def crepBody421_24 : CrepProg (BitVec 64) :=
.seq crepBody421_18 crepBody421_23

def crepBody421_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 96#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 127#64) (Flapjack.CrepExp.var 4))]) crepBody421_9 crepBody421_24

def crepBody421_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 91#64)) crepBody421_7 crepBody421_25

def crepBody421_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 6)

def crepBody421_28 : CrepProg (BitVec 64) :=
.seq crepBody421_27 crepBody421_4

def crepBody421_29 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5]) crepBody421_28

def crepBody421_30 : CrepProg (BitVec 64) :=
.seq crepBody421_26 crepBody421_29

def crepBody421_31 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 1#64) crepBody421_30

def crepBody421_32 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3])) crepBody421_31

def crepBody421_33 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody421_32

def crepBody421_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody421_35 : CrepProg (BitVec 64) :=
.seq crepBody421_33 crepBody421_34

def crepBody421_36 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody421_35

def crepBody421_37 : CrepProg (BitVec 64) :=
.seq crepBody421_2 crepBody421_36

def crepBody421_38 : CrepProg (BitVec 64) :=
.seq crepBody421_0 crepBody421_37

def crepBody421_39 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody421_38

def data421 : CrepProg (BitVec 64) := crepBody421_39
def output421 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 106#8, 117#8, 109#8, 112#8, 100#8, 101#8, 115#8, 116#8, 115#8], [0, 1], crepProgToHOL data421)
end InitECandidate.Proofs.FrontendStages.Crep
