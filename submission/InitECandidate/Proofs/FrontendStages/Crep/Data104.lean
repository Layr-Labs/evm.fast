import InitECandidate.Proofs.FrontendStages.Crep.Translate88
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody104_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody104_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody104_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 128#64)) crepBody104_0 crepBody104_1

def crepBody104_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 1],
        Flapjack.CrepExp.const 128#64]]

def crepBody104_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 183#64) (Flapjack.CrepExp.var 1)) crepBody104_3 crepBody104_1

def crepBody104_5 : CrepProg (BitVec 64) :=
.seq crepBody104_2 crepBody104_4

def crepBody104_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_read_length"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 2]

def crepBody104_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]]

def crepBody104_8 : CrepProg (BitVec 64) :=
.seq crepBody104_6 crepBody104_7

def crepBody104_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody104_8

def crepBody104_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 183#64]) crepBody104_9

def crepBody104_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 191#64) (Flapjack.CrepExp.var 1)) crepBody104_10 crepBody104_1

def crepBody104_12 : CrepProg (BitVec 64) :=
.seq crepBody104_5 crepBody104_11

def crepBody104_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 1],
        Flapjack.CrepExp.const 192#64]]

def crepBody104_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 247#64) (Flapjack.CrepExp.var 1)) crepBody104_13 crepBody104_1

def crepBody104_15 : CrepProg (BitVec 64) :=
.seq crepBody104_12 crepBody104_14

def crepBody104_16 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 247#64]) crepBody104_9

def crepBody104_17 : CrepProg (BitVec 64) :=
.seq crepBody104_15 crepBody104_16

def crepBody104_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0)) crepBody104_17

def data104 : CrepProg (BitVec 64) := crepBody104_18
def output104 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8, 95#8, 116#8, 111#8, 116#8, 97#8, 108#8, 95#8, 117#8, 110#8,
    99#8, 104#8, 101#8, 99#8, 107#8, 101#8, 100#8], [0], crepProgToHOL data104)
end InitECandidate.Proofs.FrontendStages.Crep
