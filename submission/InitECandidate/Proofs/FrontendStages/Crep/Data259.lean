import InitECandidate.Proofs.FrontendStages.Crep.Translate243
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody259_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody259_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody259_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody259_0 crepBody259_1

def crepBody259_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody259_0 crepBody259_1

def crepBody259_4 : CrepProg (BitVec 64) :=
.seq crepBody259_2 crepBody259_3

def crepBody259_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody259_0 crepBody259_1

def crepBody259_6 : CrepProg (BitVec 64) :=
.seq crepBody259_4 crepBody259_5

def crepBody259_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody259_8 : CrepProg (BitVec 64) :=
.seq crepBody259_6 crepBody259_7

def data259 : CrepProg (BitVec 64) := crepBody259_8
def output259 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 101#8, 100#8, 115#8, 95#8, 114#8, 108#8, 112#8], [0], crepProgToHOL data259)
end InitECandidate.Proofs.FrontendStages.Crep
