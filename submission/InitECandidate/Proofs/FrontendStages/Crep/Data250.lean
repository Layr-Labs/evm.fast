import InitECandidate.Proofs.FrontendStages.Crep.Translate234
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody250_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "node_new_branch" []

def crepBody250_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody250_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody250_3 : CrepProg (BitVec 64) :=
.seq crepBody250_1 crepBody250_2

def crepBody250_4 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 8) crepBody250_3

def crepBody250_5 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]),
        Flapjack.CrepExp.const 8#64]]) crepBody250_4

def crepBody250_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64)) crepBody250_5 crepBody250_2

def crepBody250_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "node_new_ext"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 8]

def crepBody250_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody250_9 : CrepProg (BitVec 64) :=
.seq crepBody250_8 crepBody250_2

def crepBody250_10 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 11) crepBody250_9

def crepBody250_11 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]),
        Flapjack.CrepExp.const 8#64]]) crepBody250_10

def crepBody250_12 : CrepProg (BitVec 64) :=
.seq crepBody250_7 crepBody250_11

def crepBody250_13 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody250_12

def crepBody250_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 10)) crepBody250_13 crepBody250_2

def crepBody250_15 : CrepProg (BitVec 64) :=
.seq crepBody250_6 crepBody250_14

def crepBody250_16 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 3) crepBody250_9

def crepBody250_17 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 160#64]) crepBody250_16

def crepBody250_18 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 4) crepBody250_9

def crepBody250_19 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 168#64]) crepBody250_18

def crepBody250_20 : CrepProg (BitVec 64) :=
.seq crepBody250_17 crepBody250_19

def crepBody250_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "mpt_fail" [Flapjack.CrepExp.const 11#64]

def crepBody250_22 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody250_21

def crepBody250_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]]))
  (Flapjack.CrepExp.const 0#64)) crepBody250_22 crepBody250_2

def crepBody250_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "node_new_leaf"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody250_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody250_26 : CrepProg (BitVec 64) :=
.seq crepBody250_25 crepBody250_2

def crepBody250_27 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 13) crepBody250_26

def crepBody250_28 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]]) crepBody250_27

def crepBody250_29 : CrepProg (BitVec 64) :=
.seq crepBody250_24 crepBody250_28

def crepBody250_30 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody250_29

def crepBody250_31 : CrepProg (BitVec 64) :=
.seq crepBody250_23 crepBody250_30

def crepBody250_32 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5])) crepBody250_31

def crepBody250_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody250_20 crepBody250_32

def crepBody250_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 9]

def crepBody250_35 : CrepProg (BitVec 64) :=
.seq crepBody250_33 crepBody250_34

def crepBody250_36 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5]) crepBody250_35

def crepBody250_37 : CrepProg (BitVec 64) :=
.seq crepBody250_15 crepBody250_36

def crepBody250_38 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5]) crepBody250_37

def crepBody250_39 : CrepProg (BitVec 64) :=
.seq crepBody250_0 crepBody250_38

def crepBody250_40 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody250_39

def crepBody250_41 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody250_40

def crepBody250_42 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody250_41

def crepBody250_43 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody250_42

def data250 : CrepProg (BitVec 64) := crepBody250_43
def output250 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 115#8, 112#8, 108#8, 105#8, 116#8, 95#8, 101#8, 120#8, 116#8, 101#8, 110#8, 115#8, 105#8, 111#8, 110#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data250)
end InitECandidate.Proofs.FrontendStages.Crep
