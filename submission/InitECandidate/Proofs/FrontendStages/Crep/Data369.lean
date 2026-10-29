import InitECandidate.Proofs.FrontendStages.Crep.Translate353
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody369_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_union_into"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 24#64])]

def crepBody369_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody369_0

def crepBody369_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_union_into"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 8#64])]

def crepBody369_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody369_2

def crepBody369_4 : CrepProg (BitVec 64) :=
.seq crepBody369_1 crepBody369_3

def crepBody369_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_union_into"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 40#64])]

def crepBody369_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody369_5

def crepBody369_7 : CrepProg (BitVec 64) :=
.seq crepBody369_4 crepBody369_6

def crepBody369_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_union_into"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 16#64])]

def crepBody369_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody369_8

def crepBody369_10 : CrepProg (BitVec 64) :=
.seq crepBody369_7 crepBody369_9

def crepBody369_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_union_into"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 48#64])]

def crepBody369_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody369_11

def crepBody369_13 : CrepProg (BitVec 64) :=
.seq crepBody369_10 crepBody369_12

def crepBody369_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7], none)) "htab_item" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]

def crepBody369_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9], none)) "htab_get" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 6]

def crepBody369_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "htab_new" [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 8#64]

def crepBody369_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "htab_set"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 10]

def crepBody369_18 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody369_17

def crepBody369_19 : CrepProg (BitVec 64) :=
.seq crepBody369_16 crepBody369_18

def crepBody369_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 9)

def crepBody369_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody369_22 : CrepProg (BitVec 64) :=
.seq crepBody369_20 crepBody369_21

def crepBody369_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody369_19 crepBody369_22

def crepBody369_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "htab_union_into" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 7]

def crepBody369_25 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody369_24

def crepBody369_26 : CrepProg (BitVec 64) :=
.seq crepBody369_23 crepBody369_25

def crepBody369_27 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody369_26

def crepBody369_28 : CrepProg (BitVec 64) :=
.seq crepBody369_15 crepBody369_27

def crepBody369_29 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody369_28

def crepBody369_30 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody369_29

def crepBody369_31 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody369_30 crepBody369_21

def crepBody369_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 8)

def crepBody369_33 : CrepProg (BitVec 64) :=
.seq crepBody369_32 crepBody369_21

def crepBody369_34 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody369_33

def crepBody369_35 : CrepProg (BitVec 64) :=
.seq crepBody369_31 crepBody369_34

def crepBody369_36 : CrepProg (BitVec 64) :=
.seq crepBody369_14 crepBody369_35

def crepBody369_37 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody369_36

def crepBody369_38 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody369_37

def crepBody369_39 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody369_38

def crepBody369_40 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 3)) crepBody369_39

def crepBody369_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody369_42 : CrepProg (BitVec 64) :=
.seq crepBody369_40 crepBody369_41

def crepBody369_43 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody369_42

def crepBody369_44 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody369_43

def crepBody369_45 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
      Flapjack.CrepExp.const 32#64])) crepBody369_44

def crepBody369_46 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
      Flapjack.CrepExp.const 32#64])) crepBody369_45

def crepBody369_47 : CrepProg (BitVec 64) :=
.seq crepBody369_13 crepBody369_46

def data369 : CrepProg (BitVec 64) := crepBody369_47
def output369 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 101#8, 114#8, 103#8, 101#8, 95#8, 116#8, 120#8, 95#8, 105#8, 110#8, 116#8, 111#8, 95#8, 98#8, 108#8, 111#8,
    99#8, 107#8], [], crepProgToHOL data369)
end InitECandidate.Proofs.FrontendStages.Crep
