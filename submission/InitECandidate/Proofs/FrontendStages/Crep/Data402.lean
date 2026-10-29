import InitECandidate.Proofs.FrontendStages.Crep.Translate386
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody402_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "st_be32" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]

def crepBody402_1 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody402_0

def crepBody402_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 4#64], Flapjack.CrepExp.var 1]

def crepBody402_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody402_2

def crepBody402_4 : CrepProg (BitVec 64) :=
.seq crepBody402_1 crepBody402_3

def crepBody402_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 12#64],
    Flapjack.CrepExp.var 0]

def crepBody402_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody402_5

def crepBody402_7 : CrepProg (BitVec 64) :=
.seq crepBody402_4 crepBody402_6

def crepBody402_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody402_9 : CrepProg (BitVec 64) :=
.seq crepBody402_7 crepBody402_8

def crepBody402_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 240#64]) crepBody402_9

def data402 : CrepProg (BitVec 64) := crepBody402_10
def output402 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 111#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8, 95#8, 109#8, 97#8, 115#8, 107#8, 101#8, 100#8], [0, 1, 2, 3], crepProgToHOL data402)
end InitECandidate.Proofs.FrontendStages.Crep
