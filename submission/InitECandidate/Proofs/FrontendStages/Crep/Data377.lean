import InitECandidate.Proofs.FrontendStages.Crep.Translate361
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody377_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "bal_ensure_account" [Flapjack.CrepExp.var 0]

def crepBody377_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10], none)) "htab_get" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 1]

def crepBody377_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "lst_new" [Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 2#64]

def crepBody377_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "htab_set"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 11]

def crepBody377_4 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody377_3

def crepBody377_5 : CrepProg (BitVec 64) :=
.seq crepBody377_2 crepBody377_4

def crepBody377_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 10)

def crepBody377_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody377_8 : CrepProg (BitVec 64) :=
.seq crepBody377_6 crepBody377_7

def crepBody377_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody377_5 crepBody377_8

def crepBody377_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "lst_upsert_idx"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.var 2]

def crepBody377_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody377_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 15)

def crepBody377_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 16)

def crepBody377_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 17)

def crepBody377_15 : CrepProg (BitVec 64) :=
.seq crepBody377_14 crepBody377_7

def crepBody377_16 : CrepProg (BitVec 64) :=
.seq crepBody377_13 crepBody377_15

def crepBody377_17 : CrepProg (BitVec 64) :=
.seq crepBody377_12 crepBody377_16

def crepBody377_18 : CrepProg (BitVec 64) :=
.seq crepBody377_11 crepBody377_17

def crepBody377_19 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 6) crepBody377_18

def crepBody377_20 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 5) crepBody377_19

def crepBody377_21 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 4) crepBody377_20

def crepBody377_22 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 3) crepBody377_21

def crepBody377_23 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]) crepBody377_22

def crepBody377_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody377_25 : CrepProg (BitVec 64) :=
.seq crepBody377_23 crepBody377_24

def crepBody377_26 : CrepProg (BitVec 64) :=
.seq crepBody377_10 crepBody377_25

def crepBody377_27 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody377_26

def crepBody377_28 : CrepProg (BitVec 64) :=
.seq crepBody377_9 crepBody377_27

def crepBody377_29 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody377_28

def crepBody377_30 : CrepProg (BitVec 64) :=
.seq crepBody377_1 crepBody377_29

def crepBody377_31 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody377_30

def crepBody377_32 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody377_31

def crepBody377_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 0#64])) crepBody377_32

def crepBody377_34 : CrepProg (BitVec 64) :=
.seq crepBody377_0 crepBody377_33

def crepBody377_35 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody377_34

def data377 : CrepProg (BitVec 64) := crepBody377_35
def output377 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 119#8, 114#8, 105#8, 116#8, 101#8], [0, 1, 2, 3, 4, 5, 6], crepProgToHOL data377)
end InitECandidate.Proofs.FrontendStages.Crep
