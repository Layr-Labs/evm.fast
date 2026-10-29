import InitECandidate.Proofs.FrontendStages.Crep.Translate4
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody20_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 1)

def crepBody20_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody20_2 : CrepProg (BitVec 64) :=
.seq crepBody20_0 crepBody20_1

def crepBody20_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 71777214294589695#64])
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.const 71777214294589695#64]]) crepBody20_2

def crepBody20_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 281470681808895#64])
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.const 281470681808895#64]]) crepBody20_2

def crepBody20_5 : CrepProg (BitVec 64) :=
.seq crepBody20_3 crepBody20_4

def crepBody20_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64)]]

def crepBody20_7 : CrepProg (BitVec 64) :=
.seq crepBody20_5 crepBody20_6

def data20 : CrepProg (BitVec 64) := crepBody20_7
def output20 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 115#8, 119#8, 97#8, 112#8, 54#8, 52#8], [0], crepProgToHOL data20)
end InitECandidate.Proofs.FrontendStages.Crep
