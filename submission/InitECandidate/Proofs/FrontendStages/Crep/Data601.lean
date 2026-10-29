import InitECandidate.Proofs.FrontendStages.Crep.Translate585
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody601_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "bit_length64" [Flapjack.CrepExp.var 4]

def crepBody601_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 10)

def crepBody601_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody601_3 : CrepProg (BitVec 64) :=
.seq crepBody601_1 crepBody601_2

def crepBody601_4 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64]) crepBody601_3

def crepBody601_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "fq_add"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody601_6 : CrepProg (BitVec 64) :=
.seq crepBody601_4 crepBody601_5

def crepBody601_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "fq_add"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody601_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 9),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)) crepBody601_7 crepBody601_2

def crepBody601_9 : CrepProg (BitVec 64) :=
.seq crepBody601_6 crepBody601_8

def crepBody601_10 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 9)) crepBody601_9

def crepBody601_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody601_12 : CrepProg (BitVec 64) :=
.seq crepBody601_10 crepBody601_11

def crepBody601_13 : CrepProg (BitVec 64) :=
.seq crepBody601_0 crepBody601_12

def crepBody601_14 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody601_13

def crepBody601_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody601_14

def crepBody601_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody601_15

def crepBody601_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody601_16

def crepBody601_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody601_17

def data601 : CrepProg (BitVec 64) := crepBody601_18
def output601 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 113#8, 95#8, 109#8, 117#8, 108#8, 95#8, 115#8, 109#8, 97#8, 108#8, 108#8], [0, 1, 2, 3, 4], crepProgToHOL data601)
end InitECandidate.Proofs.FrontendStages.Crep
