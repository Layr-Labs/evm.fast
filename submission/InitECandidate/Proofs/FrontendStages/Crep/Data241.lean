import InitECandidate.Proofs.FrontendStages.Crep.Translate225
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody241_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memeq"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody241_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody241_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody241_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody241_1 crepBody241_2

def crepBody241_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5], none)) "nodedb_lookup" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody241_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "mpt_fail" [Flapjack.CrepExp.const 1#64]

def crepBody241_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody241_5

def crepBody241_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody241_6 crepBody241_2

def crepBody241_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "_decode_witness_node"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody241_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody241_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]

def crepBody241_11 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody241_10

def crepBody241_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody241_13 : CrepProg (BitVec 64) :=
.seq crepBody241_12 crepBody241_2

def crepBody241_14 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody241_13

def crepBody241_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64]) crepBody241_14

def crepBody241_16 : CrepProg (BitVec 64) :=
.seq crepBody241_11 crepBody241_15

def crepBody241_17 : CrepProg (BitVec 64) :=
.seq crepBody241_9 crepBody241_16

def crepBody241_18 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody241_17

def crepBody241_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody241_18 crepBody241_2

def crepBody241_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6]

def crepBody241_21 : CrepProg (BitVec 64) :=
.seq crepBody241_19 crepBody241_20

def crepBody241_22 : CrepProg (BitVec 64) :=
.seq crepBody241_8 crepBody241_21

def crepBody241_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody241_22

def crepBody241_24 : CrepProg (BitVec 64) :=
.seq crepBody241_7 crepBody241_23

def crepBody241_25 : CrepProg (BitVec 64) :=
.seq crepBody241_4 crepBody241_24

def crepBody241_26 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody241_25

def crepBody241_27 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody241_26

def crepBody241_28 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody241_27

def crepBody241_29 : CrepProg (BitVec 64) :=
.seq crepBody241_3 crepBody241_28

def crepBody241_30 : CrepProg (BitVec 64) :=
.seq crepBody241_0 crepBody241_29

def crepBody241_31 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody241_30

def data241 : CrepProg (BitVec 64) := crepBody241_31
def output241 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8, 116#8, 111#8,
    95#8, 109#8, 112#8, 116#8], [0, 1], crepProgToHOL data241)
end InitECandidate.Proofs.FrontendStages.Crep
