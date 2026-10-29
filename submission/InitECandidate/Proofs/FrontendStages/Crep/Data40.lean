import InitECandidate.Proofs.FrontendStages.Crep.Translate24
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody40_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody40_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody40_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 256#64)) crepBody40_0 crepBody40_1

def crepBody40_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_limb"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 6#64)]

def crepBody40_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5)
          (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 63#64]),
        Flapjack.CrepExp.const 1#64]]

def crepBody40_5 : CrepProg (BitVec 64) :=
.seq crepBody40_3 crepBody40_4

def crepBody40_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody40_5

def crepBody40_7 : CrepProg (BitVec 64) :=
.seq crepBody40_2 crepBody40_6

def data40 : CrepProg (BitVec 64) := crepBody40_7
def output40 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 105#8, 116#8], [0, 1, 2, 3, 4], crepProgToHOL data40)
end InitECandidate.Proofs.FrontendStages.Crep
