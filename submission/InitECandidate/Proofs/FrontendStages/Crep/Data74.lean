import InitECandidate.Proofs.FrontendStages.Crep.Translate58
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody74_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bit_length64" [Flapjack.CrepExp.var 3]

def crepBody74_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 192#64, Flapjack.CrepExp.var 4]]

def crepBody74_2 : CrepProg (BitVec 64) :=
.seq crepBody74_0 crepBody74_1

def crepBody74_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody74_2

def crepBody74_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody74_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody74_3 crepBody74_4

def crepBody74_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bit_length64" [Flapjack.CrepExp.var 2]

def crepBody74_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 128#64, Flapjack.CrepExp.var 4]]

def crepBody74_8 : CrepProg (BitVec 64) :=
.seq crepBody74_6 crepBody74_7

def crepBody74_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody74_8

def crepBody74_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody74_9 crepBody74_4

def crepBody74_11 : CrepProg (BitVec 64) :=
.seq crepBody74_5 crepBody74_10

def crepBody74_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bit_length64" [Flapjack.CrepExp.var 1]

def crepBody74_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 4]]

def crepBody74_14 : CrepProg (BitVec 64) :=
.seq crepBody74_12 crepBody74_13

def crepBody74_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody74_14

def crepBody74_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody74_15 crepBody74_4

def crepBody74_17 : CrepProg (BitVec 64) :=
.seq crepBody74_11 crepBody74_16

def crepBody74_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "bit_length64" [Flapjack.CrepExp.var 0]

def crepBody74_19 : CrepProg (BitVec 64) :=
.seq crepBody74_17 crepBody74_18

def data74 : CrepProg (BitVec 64) := crepBody74_19
def output74 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 105#8, 116#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8], [0, 1, 2, 3], crepProgToHOL data74)
end InitECandidate.Proofs.FrontendStages.Crep
