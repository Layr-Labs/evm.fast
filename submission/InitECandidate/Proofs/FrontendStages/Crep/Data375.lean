import InitECandidate.Proofs.FrontendStages.Crep.Translate359
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody375_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]),
    Flapjack.CrepExp.var 0]

def crepBody375_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody375_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody375_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody375_1 crepBody375_2

def crepBody375_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 40#64]

def crepBody375_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_new" [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 8#64]

def crepBody375_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody375_7 : CrepProg (BitVec 64) :=
.seq crepBody375_6 crepBody375_2

def crepBody375_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody375_7

def crepBody375_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64]) crepBody375_8

def crepBody375_10 : CrepProg (BitVec 64) :=
.seq crepBody375_9 crepBody375_5

def crepBody375_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody375_8

def crepBody375_12 : CrepProg (BitVec 64) :=
.seq crepBody375_10 crepBody375_11

def crepBody375_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "lst_new" [Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 4#64]

def crepBody375_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody375_15 : CrepProg (BitVec 64) :=
.seq crepBody375_14 crepBody375_2

def crepBody375_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody375_15

def crepBody375_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]) crepBody375_16

def crepBody375_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "lst_new" [Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 4#64]

def crepBody375_19 : CrepProg (BitVec 64) :=
.seq crepBody375_17 crepBody375_18

def crepBody375_20 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]) crepBody375_16

def crepBody375_21 : CrepProg (BitVec 64) :=
.seq crepBody375_19 crepBody375_20

def crepBody375_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "lst_new" [Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 2#64]

def crepBody375_23 : CrepProg (BitVec 64) :=
.seq crepBody375_21 crepBody375_22

def crepBody375_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]) crepBody375_16

def crepBody375_25 : CrepProg (BitVec 64) :=
.seq crepBody375_23 crepBody375_24

def crepBody375_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody375_27 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody375_26

def crepBody375_28 : CrepProg (BitVec 64) :=
.seq crepBody375_25 crepBody375_27

def crepBody375_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody375_30 : CrepProg (BitVec 64) :=
.seq crepBody375_28 crepBody375_29

def crepBody375_31 : CrepProg (BitVec 64) :=
.seq crepBody375_13 crepBody375_30

def crepBody375_32 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody375_31

def crepBody375_33 : CrepProg (BitVec 64) :=
.seq crepBody375_12 crepBody375_32

def crepBody375_34 : CrepProg (BitVec 64) :=
.seq crepBody375_5 crepBody375_33

def crepBody375_35 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody375_34

def crepBody375_36 : CrepProg (BitVec 64) :=
.seq crepBody375_4 crepBody375_35

def crepBody375_37 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody375_36

def crepBody375_38 : CrepProg (BitVec 64) :=
.seq crepBody375_3 crepBody375_37

def crepBody375_39 : CrepProg (BitVec 64) :=
.seq crepBody375_0 crepBody375_38

def crepBody375_40 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody375_39

def crepBody375_41 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody375_40

def data375 : CrepProg (BitVec 64) := crepBody375_41
def output375 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 97#8, 108#8, 95#8, 101#8, 110#8, 115#8, 117#8, 114#8, 101#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8,
    116#8], [0], crepProgToHOL data375)
end InitECandidate.Proofs.FrontendStages.Crep
