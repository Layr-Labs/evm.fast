import InitECandidate.Proofs.FrontendStages.Crep.Translate9
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody25_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bswap64" [Flapjack.CrepExp.var 1]

def crepBody25_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody25_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody25_3 : CrepProg (BitVec 64) :=
.seq crepBody25_1 crepBody25_2

def crepBody25_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody25_3

def crepBody25_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 0) crepBody25_4

def crepBody25_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody25_7 : CrepProg (BitVec 64) :=
.seq crepBody25_5 crepBody25_6

def crepBody25_8 : CrepProg (BitVec 64) :=
.seq crepBody25_0 crepBody25_7

def crepBody25_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody25_8

def crepBody25_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody25_9 crepBody25_2

def crepBody25_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_be32"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 32#64)]

def crepBody25_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody25_11

def crepBody25_13 : CrepProg (BitVec 64) :=
.seq crepBody25_10 crepBody25_12

def crepBody25_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_be32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64], Flapjack.CrepExp.var 1]

def crepBody25_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody25_14

def crepBody25_16 : CrepProg (BitVec 64) :=
.seq crepBody25_13 crepBody25_15

def crepBody25_17 : CrepProg (BitVec 64) :=
.seq crepBody25_16 crepBody25_6

def data25 : CrepProg (BitVec 64) := crepBody25_17
def output25 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 95#8, 98#8, 101#8, 54#8, 52#8], [0, 1], crepProgToHOL data25)
end InitECandidate.Proofs.FrontendStages.Crep
