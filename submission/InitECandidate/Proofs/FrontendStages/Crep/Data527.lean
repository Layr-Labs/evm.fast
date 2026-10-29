import InitECandidate.Proofs.FrontendStages.Crep.Translate511
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody527_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2], none)) "ext_code_of" [Flapjack.CrepExp.var 0]

def crepBody527_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "is_valid_delegation" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody527_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]

def crepBody527_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody527_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody527_2 crepBody527_3

def crepBody527_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody527_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 3#64],
    Flapjack.CrepExp.const 20#64]

def crepBody527_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody527_6

def crepBody527_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_warm_address" [Flapjack.CrepExp.var 4]

def crepBody527_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 100#64]

def crepBody527_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody527_9 crepBody527_3

def crepBody527_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 3000#64]

def crepBody527_12 : CrepProg (BitVec 64) :=
.seq crepBody527_10 crepBody527_11

def crepBody527_13 : CrepProg (BitVec 64) :=
.seq crepBody527_8 crepBody527_12

def crepBody527_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody527_13

def crepBody527_15 : CrepProg (BitVec 64) :=
.seq crepBody527_7 crepBody527_14

def crepBody527_16 : CrepProg (BitVec 64) :=
.seq crepBody527_5 crepBody527_15

def crepBody527_17 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody527_16

def crepBody527_18 : CrepProg (BitVec 64) :=
.seq crepBody527_4 crepBody527_17

def crepBody527_19 : CrepProg (BitVec 64) :=
.seq crepBody527_1 crepBody527_18

def crepBody527_20 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody527_19

def crepBody527_21 : CrepProg (BitVec 64) :=
.seq crepBody527_0 crepBody527_20

def crepBody527_22 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody527_21

def crepBody527_23 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody527_22

def data527 : CrepProg (BitVec 64) := crepBody527_23
def output527 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8,
    105#8, 111#8, 110#8, 95#8, 99#8, 111#8, 115#8, 116#8], [0], crepProgToHOL data527)
end InitECandidate.Proofs.FrontendStages.Crep
