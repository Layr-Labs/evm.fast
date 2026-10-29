import InitECandidate.Proofs.FrontendStages.Crep.Translate461
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody477_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 145#64],
        Flapjack.CrepExp.const 255#64]]

def crepBody477_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody477_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 90#64) (Flapjack.CrepExp.var 0),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 128#64)])) crepBody477_0 crepBody477_1

def crepBody477_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody477_4 : CrepProg (BitVec 64) :=
.seq crepBody477_3 crepBody477_1

def crepBody477_5 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 10#64) crepBody477_4

def crepBody477_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody477_7 : CrepProg (BitVec 64) :=
.seq crepBody477_5 crepBody477_6

def crepBody477_8 : CrepProg (BitVec 64) :=
.seq crepBody477_2 crepBody477_7

def crepBody477_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody477_10 : CrepProg (BitVec 64) :=
.seq crepBody477_8 crepBody477_9

def data477 : CrepProg (BitVec 64) := crepBody477_10
def output477 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 115#8, 105#8, 110#8, 103#8, 108#8, 101#8], [0], crepProgToHOL data477)
end InitECandidate.Proofs.FrontendStages.Crep
