import InitECandidate.Proofs.FrontendStages.Crep.Translate540
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody556_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody556_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 2300#64)

def crepBody556_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody556_3 : CrepProg (BitVec 64) :=
.seq crepBody556_1 crepBody556_2

def crepBody556_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody556_3 crepBody556_2

def crepBody556_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "add_sat" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 6]

def crepBody556_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "add_sat" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 7]

def crepBody556_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "add_sat" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 9]

def crepBody556_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody556_9 : CrepProg (BitVec 64) :=
.seq crepBody556_7 crepBody556_8

def crepBody556_10 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody556_9

def crepBody556_11 : CrepProg (BitVec 64) :=
.seq crepBody556_6 crepBody556_10

def crepBody556_12 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody556_11

def crepBody556_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 10)) crepBody556_12 crepBody556_2

def crepBody556_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 12)

def crepBody556_15 : CrepProg (BitVec 64) :=
.seq crepBody556_14 crepBody556_2

def crepBody556_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)) crepBody556_15 crepBody556_2

def crepBody556_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 9]]

def crepBody556_18 : CrepProg (BitVec 64) :=
.seq crepBody556_16 crepBody556_17

def crepBody556_19 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 4) crepBody556_18

def crepBody556_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 6#64)]) crepBody556_19

def crepBody556_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6], Flapjack.CrepExp.var 7]) crepBody556_20

def crepBody556_22 : CrepProg (BitVec 64) :=
.seq crepBody556_13 crepBody556_21

def crepBody556_23 : CrepProg (BitVec 64) :=
.seq crepBody556_5 crepBody556_22

def crepBody556_24 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody556_23

def crepBody556_25 : CrepProg (BitVec 64) :=
.seq crepBody556_4 crepBody556_24

def crepBody556_26 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody556_25

def crepBody556_27 : CrepProg (BitVec 64) :=
.seq crepBody556_0 crepBody556_26

def crepBody556_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody556_27

def data556 : CrepProg (BitVec 64) := crepBody556_28
def output556 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8,
    95#8, 99#8, 97#8, 108#8, 108#8, 95#8, 103#8, 97#8, 115#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data556)
end InitECandidate.Proofs.FrontendStages.Crep
