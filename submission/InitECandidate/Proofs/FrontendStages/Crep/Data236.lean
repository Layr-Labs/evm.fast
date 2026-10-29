import InitECandidate.Proofs.FrontendStages.Crep.Translate220
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody236_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody236_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody236_2 : CrepProg (BitVec 64) :=
.seq crepBody236_0 crepBody236_1

def crepBody236_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "mpt_fail" [Flapjack.CrepExp.const 3#64]

def crepBody236_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody236_3

def crepBody236_5 : CrepProg (BitVec 64) :=
.seq crepBody236_2 crepBody236_4

def crepBody236_6 : CrepProg (BitVec 64) :=
.call (some (([3, 4, 5, 6]), some ((1#64), crepBody236_5))) ("rlp_item") ([Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2])

def crepBody236_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody236_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody236_7 crepBody236_1

def crepBody236_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "mpt_fail" [Flapjack.CrepExp.const 10#64]

def crepBody236_10 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody236_9

def crepBody236_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 32#64)) crepBody236_10 crepBody236_1

def crepBody236_12 : CrepProg (BitVec 64) :=
.seq crepBody236_8 crepBody236_11

def crepBody236_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10], none)) "nodedb_lookup" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]

def crepBody236_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "node_new_hashed" [Flapjack.CrepExp.var 4]

def crepBody236_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody236_16 : CrepProg (BitVec 64) :=
.seq crepBody236_14 crepBody236_15

def crepBody236_17 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody236_16

def crepBody236_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody236_17 crepBody236_1

def crepBody236_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 4]

def crepBody236_20 : CrepProg (BitVec 64) :=
.seq crepBody236_18 crepBody236_19

def crepBody236_21 : CrepProg (BitVec 64) :=
.seq crepBody236_13 crepBody236_20

def crepBody236_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody236_21

def crepBody236_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody236_22

def crepBody236_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody236_23

def crepBody236_25 : CrepProg (BitVec 64) :=
.seq crepBody236_12 crepBody236_24

def crepBody236_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody236_25 crepBody236_1

def crepBody236_27 : CrepProg (BitVec 64) :=
.seq crepBody236_6 crepBody236_26

def crepBody236_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]

def crepBody236_29 : CrepProg (BitVec 64) :=
.seq crepBody236_27 crepBody236_28

def crepBody236_30 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody236_29

def crepBody236_31 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody236_30

def crepBody236_32 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody236_31

def crepBody236_33 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody236_32

def crepBody236_34 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody236_33

def data236 : CrepProg (BitVec 64) := crepBody236_34
def output236 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 114#8, 101#8, 115#8, 111#8, 108#8, 118#8, 101#8, 95#8, 115#8, 116#8, 101#8, 112#8], [0, 1, 2], crepProgToHOL data236)
end InitECandidate.Proofs.FrontendStages.Crep
