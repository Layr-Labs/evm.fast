import InitECandidate.Proofs.FrontendStages.Crep.Translate53
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody69_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody69_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody69_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7])
  (Flapjack.CrepExp.const 0#64)) crepBody69_0 crepBody69_1

def crepBody69_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "u256_abs"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody69_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13, 14, 15], none)) "u256_abs"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody69_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16, 17, 18, 19], none)) "u256_div"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody69_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "u256_neg"
  [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody69_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7])
    (Flapjack.CrepExp.const 63#64))
  (Flapjack.CrepExp.const 1#64)) crepBody69_6 crepBody69_1

def crepBody69_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody69_9 : CrepProg (BitVec 64) :=
.seq crepBody69_7 crepBody69_8

def crepBody69_10 : CrepProg (BitVec 64) :=
.seq crepBody69_5 crepBody69_9

def crepBody69_11 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody69_10

def crepBody69_12 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody69_11

def crepBody69_13 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody69_12

def crepBody69_14 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody69_13

def crepBody69_15 : CrepProg (BitVec 64) :=
.seq crepBody69_4 crepBody69_14

def crepBody69_16 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody69_15

def crepBody69_17 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody69_16

def crepBody69_18 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody69_17

def crepBody69_19 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody69_18

def crepBody69_20 : CrepProg (BitVec 64) :=
.seq crepBody69_3 crepBody69_19

def crepBody69_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody69_20

def crepBody69_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody69_21

def crepBody69_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody69_22

def crepBody69_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody69_23

def crepBody69_25 : CrepProg (BitVec 64) :=
.seq crepBody69_2 crepBody69_24

def data69 : CrepProg (BitVec 64) := crepBody69_25
def output69 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 100#8, 105#8, 118#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data69)
end InitECandidate.Proofs.FrontendStages.Crep
