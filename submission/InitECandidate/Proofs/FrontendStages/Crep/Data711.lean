import InitECandidate.Proofs.FrontendStages.Crep.Translate695
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody711_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bls_fp_decode64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody711_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody711_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody711_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody711_1 crepBody711_2

def crepBody711_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "bls_fp_decode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]]

def crepBody711_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody711_1 crepBody711_2

def crepBody711_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "bls_fp_is_zero"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody711_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "bls_fp_is_zero"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody711_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.var 19)

def crepBody711_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 20)

def crepBody711_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 21)

def crepBody711_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 22)

def crepBody711_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 23)

def crepBody711_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 24)

def crepBody711_14 : CrepProg (BitVec 64) :=
.seq crepBody711_13 crepBody711_2

def crepBody711_15 : CrepProg (BitVec 64) :=
.seq crepBody711_12 crepBody711_14

def crepBody711_16 : CrepProg (BitVec 64) :=
.seq crepBody711_11 crepBody711_15

def crepBody711_17 : CrepProg (BitVec 64) :=
.seq crepBody711_10 crepBody711_16

def crepBody711_18 : CrepProg (BitVec 64) :=
.seq crepBody711_9 crepBody711_17

def crepBody711_19 : CrepProg (BitVec 64) :=
.seq crepBody711_8 crepBody711_18

def crepBody711_20 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody711_19

def crepBody711_21 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody711_20

def crepBody711_22 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody711_21

def crepBody711_23 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody711_22

def crepBody711_24 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody711_23

def crepBody711_25 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody711_24

def crepBody711_26 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]) crepBody711_25

def crepBody711_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody711_28 : CrepProg (BitVec 64) :=
.seq crepBody711_26 crepBody711_27

def crepBody711_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 1#64))]) crepBody711_28 crepBody711_2

def crepBody711_30 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 1582556514881692819#64) crepBody711_19

def crepBody711_31 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 6631298214892334189#64) crepBody711_30

def crepBody711_32 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 8632934651105793861#64) crepBody711_31

def crepBody711_33 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 6865905132761471162#64) crepBody711_32

def crepBody711_34 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 17002214543764226050#64) crepBody711_33

def crepBody711_35 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 8505329371266088957#64) crepBody711_34

def crepBody711_36 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]) crepBody711_35

def crepBody711_37 : CrepProg (BitVec 64) :=
.seq crepBody711_29 crepBody711_36

def crepBody711_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "g1_on_curve"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody711_39 : CrepProg (BitVec 64) :=
.seq crepBody711_37 crepBody711_38

def crepBody711_40 : CrepProg (BitVec 64) :=
.seq crepBody711_7 crepBody711_39

def crepBody711_41 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody711_40

def crepBody711_42 : CrepProg (BitVec 64) :=
.seq crepBody711_6 crepBody711_41

def crepBody711_43 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody711_42

def crepBody711_44 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody711_43

def crepBody711_45 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody711_44

def crepBody711_46 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody711_45

def crepBody711_47 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody711_46

def crepBody711_48 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody711_47

def crepBody711_49 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody711_48

def crepBody711_50 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody711_49

def crepBody711_51 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody711_50

def crepBody711_52 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody711_51

def crepBody711_53 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody711_52

def crepBody711_54 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody711_53

def crepBody711_55 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody711_54

def crepBody711_56 : CrepProg (BitVec 64) :=
.seq crepBody711_5 crepBody711_55

def crepBody711_57 : CrepProg (BitVec 64) :=
.seq crepBody711_4 crepBody711_56

def crepBody711_58 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody711_57

def crepBody711_59 : CrepProg (BitVec 64) :=
.seq crepBody711_3 crepBody711_58

def crepBody711_60 : CrepProg (BitVec 64) :=
.seq crepBody711_0 crepBody711_59

def crepBody711_61 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody711_60

def data711 : CrepProg (BitVec 64) := crepBody711_61
def output711 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8], [0, 1], crepProgToHOL data711)
end InitECandidate.Proofs.FrontendStages.Crep
