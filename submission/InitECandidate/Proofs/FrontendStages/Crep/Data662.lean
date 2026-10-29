import InitECandidate.Proofs.FrontendStages.Crep.Translate646
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody662_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "st_be64" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody662_1 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody662_0

def crepBody662_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64], Flapjack.CrepExp.var 4]

def crepBody662_3 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody662_2

def crepBody662_4 : CrepProg (BitVec 64) :=
.seq crepBody662_1 crepBody662_3

def crepBody662_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.var 3]

def crepBody662_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody662_5

def crepBody662_7 : CrepProg (BitVec 64) :=
.seq crepBody662_4 crepBody662_6

def crepBody662_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64],
    Flapjack.CrepExp.var 2]

def crepBody662_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody662_8

def crepBody662_10 : CrepProg (BitVec 64) :=
.seq crepBody662_7 crepBody662_9

def crepBody662_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.var 1]

def crepBody662_12 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody662_11

def crepBody662_13 : CrepProg (BitVec 64) :=
.seq crepBody662_10 crepBody662_12

def crepBody662_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 40#64],
    Flapjack.CrepExp.var 0]

def crepBody662_15 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody662_14

def crepBody662_16 : CrepProg (BitVec 64) :=
.seq crepBody662_13 crepBody662_15

def crepBody662_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody662_18 : CrepProg (BitVec 64) :=
.seq crepBody662_16 crepBody662_17

def data662 : CrepProg (BitVec 64) := crepBody662_18
def output662 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8, 52#8, 56#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data662)
end InitECandidate.Proofs.FrontendStages.Crep
