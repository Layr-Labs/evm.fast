import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody14_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody14_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody14_2 : CrepProg (BitVec 64) :=
.seq crepBody14_0 crepBody14_1

def crepBody14_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody14_2

def crepBody14_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]) crepBody14_3

def crepBody14_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody14_3

def crepBody14_6 : CrepProg (BitVec 64) :=
.seq crepBody14_4 crepBody14_5

def crepBody14_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]) crepBody14_3

def crepBody14_8 : CrepProg (BitVec 64) :=
.seq crepBody14_6 crepBody14_7

def crepBody14_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64]) crepBody14_3

def crepBody14_10 : CrepProg (BitVec 64) :=
.seq crepBody14_8 crepBody14_9

def crepBody14_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody14_12 : CrepProg (BitVec 64) :=
.seq crepBody14_11 crepBody14_1

def crepBody14_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]) crepBody14_12

def crepBody14_14 : CrepProg (BitVec 64) :=
.seq crepBody14_10 crepBody14_13

def crepBody14_15 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64])) crepBody14_14

def crepBody14_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody14_12

def crepBody14_17 : CrepProg (BitVec 64) :=
.seq crepBody14_4 crepBody14_16

def crepBody14_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])) crepBody14_17

def crepBody14_19 : CrepProg (BitVec 64) :=
.seq crepBody14_15 crepBody14_18

def crepBody14_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody14_19 crepBody14_1

def crepBody14_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_23 : CrepProg (BitVec 64) :=
.seq crepBody14_21 crepBody14_22

def crepBody14_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 2#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_25 : CrepProg (BitVec 64) :=
.seq crepBody14_23 crepBody14_24

def crepBody14_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_27 : CrepProg (BitVec 64) :=
.seq crepBody14_25 crepBody14_26

def crepBody14_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_29 : CrepProg (BitVec 64) :=
.seq crepBody14_27 crepBody14_28

def crepBody14_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 5#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_31 : CrepProg (BitVec 64) :=
.seq crepBody14_29 crepBody14_30

def crepBody14_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 6#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_33 : CrepProg (BitVec 64) :=
.seq crepBody14_31 crepBody14_32

def crepBody14_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)

def crepBody14_35 : CrepProg (BitVec 64) :=
.seq crepBody14_33 crepBody14_34

def crepBody14_36 : CrepProg (BitVec 64) :=
.seq crepBody14_35 crepBody14_16

def crepBody14_37 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])) crepBody14_36

def crepBody14_38 : CrepProg (BitVec 64) :=
.seq crepBody14_20 crepBody14_37

def crepBody14_39 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody14_12

def crepBody14_40 : CrepProg (BitVec 64) :=
.seq crepBody14_21 crepBody14_39

def crepBody14_41 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 1)) crepBody14_40

def crepBody14_42 : CrepProg (BitVec 64) :=
.seq crepBody14_38 crepBody14_41

def crepBody14_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody14_44 : CrepProg (BitVec 64) :=
.seq crepBody14_42 crepBody14_43

def crepBody14_45 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody14_44

def data14 : CrepProg (BitVec 64) := crepBody14_45
def output14 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 122#8, 101#8, 114#8, 111#8], [0, 1], crepProgToHOL data14)
end InitECandidate.Proofs.FrontendStages.Crep
