import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody13_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody13_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody13_2 : CrepProg (BitVec 64) :=
.seq crepBody13_0 crepBody13_1

def crepBody13_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3])) crepBody13_2

def crepBody13_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]) crepBody13_3

def crepBody13_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody13_2

def crepBody13_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody13_5

def crepBody13_7 : CrepProg (BitVec 64) :=
.seq crepBody13_4 crepBody13_6

def crepBody13_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64])) crepBody13_2

def crepBody13_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]) crepBody13_8

def crepBody13_10 : CrepProg (BitVec 64) :=
.seq crepBody13_7 crepBody13_9

def crepBody13_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody13_2

def crepBody13_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]) crepBody13_11

def crepBody13_13 : CrepProg (BitVec 64) :=
.seq crepBody13_10 crepBody13_12

def crepBody13_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody13_15 : CrepProg (BitVec 64) :=
.seq crepBody13_14 crepBody13_1

def crepBody13_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]) crepBody13_15

def crepBody13_17 : CrepProg (BitVec 64) :=
.seq crepBody13_13 crepBody13_16

def crepBody13_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64])) crepBody13_17

def crepBody13_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody13_15

def crepBody13_20 : CrepProg (BitVec 64) :=
.seq crepBody13_4 crepBody13_19

def crepBody13_21 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody13_20

def crepBody13_22 : CrepProg (BitVec 64) :=
.seq crepBody13_18 crepBody13_21

def crepBody13_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1],
      Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody13_22 crepBody13_1

def crepBody13_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3])
  (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]))

def crepBody13_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]))

def crepBody13_26 : CrepProg (BitVec 64) :=
.seq crepBody13_24 crepBody13_25

def crepBody13_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64])
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64]))

def crepBody13_28 : CrepProg (BitVec 64) :=
.seq crepBody13_26 crepBody13_27

def crepBody13_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 3#64]))

def crepBody13_30 : CrepProg (BitVec 64) :=
.seq crepBody13_28 crepBody13_29

def crepBody13_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64])
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64]))

def crepBody13_32 : CrepProg (BitVec 64) :=
.seq crepBody13_30 crepBody13_31

def crepBody13_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 5#64])
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 5#64]))

def crepBody13_34 : CrepProg (BitVec 64) :=
.seq crepBody13_32 crepBody13_33

def crepBody13_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 6#64])
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 6#64]))

def crepBody13_36 : CrepProg (BitVec 64) :=
.seq crepBody13_34 crepBody13_35

def crepBody13_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 7#64]))

def crepBody13_38 : CrepProg (BitVec 64) :=
.seq crepBody13_36 crepBody13_37

def crepBody13_39 : CrepProg (BitVec 64) :=
.seq crepBody13_38 crepBody13_19

def crepBody13_40 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody13_39

def crepBody13_41 : CrepProg (BitVec 64) :=
.seq crepBody13_23 crepBody13_40

def crepBody13_42 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody13_15

def crepBody13_43 : CrepProg (BitVec 64) :=
.seq crepBody13_24 crepBody13_42

def crepBody13_44 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody13_43

def crepBody13_45 : CrepProg (BitVec 64) :=
.seq crepBody13_41 crepBody13_44

def crepBody13_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody13_47 : CrepProg (BitVec 64) :=
.seq crepBody13_45 crepBody13_46

def crepBody13_48 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody13_47

def data13 : CrepProg (BitVec 64) := crepBody13_48
def output13 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 99#8, 112#8, 121#8], [0, 1, 2], crepProgToHOL data13)
end InitECandidate.Proofs.FrontendStages.Crep
