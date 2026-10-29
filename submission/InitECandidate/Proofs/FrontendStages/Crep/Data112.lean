import InitECandidate.Proofs.FrontendStages.Crep.Translate96
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody112_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 3)

def crepBody112_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody112_2 : CrepProg (BitVec 64) :=
.seq crepBody112_0 crepBody112_1

def crepBody112_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody112_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 128#64)) crepBody112_2 crepBody112_3

def crepBody112_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 1)) crepBody112_4

def crepBody112_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64)) crepBody112_5 crepBody112_3

def crepBody112_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_write_header"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64, Flapjack.CrepExp.var 2]

def crepBody112_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.var 2]

def crepBody112_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody112_8

def crepBody112_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2]]

def crepBody112_11 : CrepProg (BitVec 64) :=
.seq crepBody112_9 crepBody112_10

def crepBody112_12 : CrepProg (BitVec 64) :=
.seq crepBody112_7 crepBody112_11

def crepBody112_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody112_12

def crepBody112_14 : CrepProg (BitVec 64) :=
.seq crepBody112_6 crepBody112_13

def data112 : CrepProg (BitVec 64) := crepBody112_14
def output112 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8], [0, 1, 2], crepProgToHOL data112)
end InitECandidate.Proofs.FrontendStages.Crep
