import InitECandidate.Proofs.FrontendStages.Crep.Translate730
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody746_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody746_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody746_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody746_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "g1_decode" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody746_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "g1_decode"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64],
    Flapjack.CrepExp.var 4]

def crepBody746_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody746_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody746_4 crepBody746_5

def crepBody746_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody746_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody746_7

def crepBody746_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody746_10 : CrepProg (BitVec 64) :=
.seq crepBody746_8 crepBody746_9

def crepBody746_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody746_10 crepBody746_5

def crepBody746_12 : CrepProg (BitVec 64) :=
.seq crepBody746_6 crepBody746_11

def crepBody746_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "g1_add"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody746_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody746_13

def crepBody746_15 : CrepProg (BitVec 64) :=
.seq crepBody746_12 crepBody746_14

def crepBody746_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "g1_encode" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody746_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody746_16

def crepBody746_18 : CrepProg (BitVec 64) :=
.seq crepBody746_15 crepBody746_17

def crepBody746_19 : CrepProg (BitVec 64) :=
.seq crepBody746_18 crepBody746_8

def crepBody746_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody746_21 : CrepProg (BitVec 64) :=
.seq crepBody746_19 crepBody746_20

def crepBody746_22 : CrepProg (BitVec 64) :=
.seq crepBody746_3 crepBody746_21

def crepBody746_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody746_22

def crepBody746_24 : CrepProg (BitVec 64) :=
.seq crepBody746_2 crepBody746_23

def crepBody746_25 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody746_24

def crepBody746_26 : CrepProg (BitVec 64) :=
.seq crepBody746_1 crepBody746_25

def crepBody746_27 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody746_26

def crepBody746_28 : CrepProg (BitVec 64) :=
.seq crepBody746_0 crepBody746_27

def crepBody746_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody746_28

def data746 : CrepProg (BitVec 64) := crepBody746_29
def output746 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 97#8, 100#8, 100#8, 95#8, 101#8, 120#8, 101#8, 99#8], [0, 1], crepProgToHOL data746)
end InitECandidate.Proofs.FrontendStages.Crep
