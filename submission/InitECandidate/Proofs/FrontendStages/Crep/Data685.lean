import InitECandidate.Proofs.FrontendStages.Crep.Translate669
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody685_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fp2_add"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody685_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody685_0

def crepBody685_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fp2_add"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 96#64]]

def crepBody685_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody685_2

def crepBody685_4 : CrepProg (BitVec 64) :=
.seq crepBody685_1 crepBody685_3

def crepBody685_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fp2_add"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 192#64]]

def crepBody685_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody685_5

def crepBody685_7 : CrepProg (BitVec 64) :=
.seq crepBody685_4 crepBody685_6

def crepBody685_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody685_9 : CrepProg (BitVec 64) :=
.seq crepBody685_7 crepBody685_8

def data685 : CrepProg (BitVec 64) := crepBody685_9
def output685 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2], crepProgToHOL data685)
end InitECandidate.Proofs.FrontendStages.Crep
