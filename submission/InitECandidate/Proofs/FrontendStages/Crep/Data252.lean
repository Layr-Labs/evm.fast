import InitECandidate.Proofs.FrontendStages.Crep.Translate236
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody252_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 4)

def crepBody252_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody252_2 : CrepProg (BitVec 64) :=
.seq crepBody252_0 crepBody252_1

def crepBody252_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody252_2

def crepBody252_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody252_5 : CrepProg (BitVec 64) :=
.seq crepBody252_4 crepBody252_1

def crepBody252_6 : CrepProg (BitVec 64) :=
.seq crepBody252_3 crepBody252_5

def crepBody252_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]]))
  (Flapjack.CrepExp.const 0#64)) crepBody252_6 crepBody252_1

def crepBody252_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody252_9 : CrepProg (BitVec 64) :=
.seq crepBody252_8 crepBody252_1

def crepBody252_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody252_9

def crepBody252_11 : CrepProg (BitVec 64) :=
.seq crepBody252_7 crepBody252_10

def crepBody252_12 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 16#64)) crepBody252_11

def crepBody252_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "mpt_fail" [Flapjack.CrepExp.const 12#64]

def crepBody252_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody252_13

def crepBody252_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody252_14 crepBody252_1

def crepBody252_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "node_new_leaf"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.var 4]

def crepBody252_17 : CrepProg (BitVec 64) :=
.seq crepBody252_15 crepBody252_16

def crepBody252_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody252_17 crepBody252_1

def crepBody252_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "mpt_fail" [Flapjack.CrepExp.const 2#64]

def crepBody252_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody252_19

def crepBody252_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody252_20 crepBody252_1

def crepBody252_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 8#64]

def crepBody252_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 2)

def crepBody252_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "node_new_ext" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 5]

def crepBody252_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 3#64)) crepBody252_24 crepBody252_1

def crepBody252_26 : CrepProg (BitVec 64) :=
.seq crepBody252_23 crepBody252_25

def crepBody252_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "nibbles_concat"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64])]

def crepBody252_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "node_new_leaf"
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 1#64,
        Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64])],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 56#64])]

def crepBody252_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody252_28 crepBody252_1

def crepBody252_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "node_new_ext"
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 1#64,
        Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64])],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 48#64])]

def crepBody252_31 : CrepProg (BitVec 64) :=
.seq crepBody252_29 crepBody252_30

def crepBody252_32 : CrepProg (BitVec 64) :=
.seq crepBody252_27 crepBody252_31

def crepBody252_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody252_32

def crepBody252_34 : CrepProg (BitVec 64) :=
.seq crepBody252_26 crepBody252_33

def crepBody252_35 : CrepProg (BitVec 64) :=
.seq crepBody252_22 crepBody252_34

def crepBody252_36 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody252_35

def crepBody252_37 : CrepProg (BitVec 64) :=
.seq crepBody252_21 crepBody252_36

def crepBody252_38 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 0#64])) crepBody252_37

def crepBody252_39 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]])) crepBody252_38

def crepBody252_40 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64))]) crepBody252_39 crepBody252_1

def crepBody252_41 : CrepProg (BitVec 64) :=
.seq crepBody252_18 crepBody252_40

def crepBody252_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 0]

def crepBody252_43 : CrepProg (BitVec 64) :=
.seq crepBody252_41 crepBody252_42

def crepBody252_44 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 168#64])) crepBody252_43

def crepBody252_45 : CrepProg (BitVec 64) :=
.seq crepBody252_12 crepBody252_44

def crepBody252_46 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody252_45

def crepBody252_47 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody252_46

def crepBody252_48 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody252_47

def data252 : CrepProg (BitVec 64) := crepBody252_48
def output252 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 99#8, 111#8, 108#8, 108#8, 97#8, 112#8, 115#8, 101#8, 95#8, 98#8, 114#8, 97#8, 110#8, 99#8, 104#8], [0], crepProgToHOL data252)
end InitECandidate.Proofs.FrontendStages.Crep
