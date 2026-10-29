import InitECandidate.Proofs.FrontendStages.Crep.Translate46
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody62_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody62_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody62_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.const 8#64]]))
  (Flapjack.CrepExp.const 0#64)) crepBody62_0 crepBody62_1

def crepBody62_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody62_4 : CrepProg (BitVec 64) :=
.seq crepBody62_3 crepBody62_1

def crepBody62_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody62_4

def crepBody62_6 : CrepProg (BitVec 64) :=
.seq crepBody62_2 crepBody62_5

def crepBody62_7 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 1)) crepBody62_6

def crepBody62_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody62_9 : CrepProg (BitVec 64) :=
.seq crepBody62_7 crepBody62_8

def data62 : CrepProg (BitVec 64) := crepBody62_9
def output62 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [100#8, 105#8, 103#8, 105#8, 116#8, 115#8, 95#8, 108#8, 101#8, 110#8], [0, 1], crepProgToHOL data62)
end InitECandidate.Proofs.FrontendStages.Crep
