import InitECandidate.Proofs.FrontendStages.Crep.Translate771
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody787_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "st_be32" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody787_1 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody787_0

def crepBody787_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64], Flapjack.CrepExp.var 2]

def crepBody787_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody787_2

def crepBody787_4 : CrepProg (BitVec 64) :=
.seq crepBody787_1 crepBody787_3

def crepBody787_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 12#64],
    Flapjack.CrepExp.var 3]

def crepBody787_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody787_5

def crepBody787_7 : CrepProg (BitVec 64) :=
.seq crepBody787_4 crepBody787_6

def crepBody787_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody787_9 : CrepProg (BitVec 64) :=
.seq crepBody787_7 crepBody787_8

def data787 : CrepProg (BitVec 64) := crepBody787_9
def output787 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 114#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 119#8, 111#8, 114#8, 100#8, 115#8], [0, 1, 2, 3], crepProgToHOL data787)
end InitECandidate.Proofs.FrontendStages.Crep
