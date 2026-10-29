import InitECandidate.Proofs.FrontendStages.Crep.Translate726
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody742_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.const 47#64]

def crepBody742_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "g1_set_inf" [Flapjack.CrepExp.var 1]

def crepBody742_2 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody742_1

def crepBody742_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody742_4 : CrepProg (BitVec 64) :=
.seq crepBody742_2 crepBody742_3

def crepBody742_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody742_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64)) crepBody742_4 crepBody742_5

def crepBody742_7 : CrepProg (BitVec 64) :=
.seq crepBody742_0 crepBody742_6

def crepBody742_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody742_7

def crepBody742_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0))
  (Flapjack.CrepExp.const 192#64)) crepBody742_8 crepBody742_5

def crepBody742_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "kzg_decompress_g1" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody742_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody742_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody742_11 crepBody742_5

def crepBody742_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "g1_is_inf" [Flapjack.CrepExp.var 1]

def crepBody742_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)) crepBody742_11 crepBody742_5

def crepBody742_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "g1_subgroup_check" [Flapjack.CrepExp.var 1]

def crepBody742_16 : CrepProg (BitVec 64) :=
.seq crepBody742_14 crepBody742_15

def crepBody742_17 : CrepProg (BitVec 64) :=
.seq crepBody742_13 crepBody742_16

def crepBody742_18 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody742_17

def crepBody742_19 : CrepProg (BitVec 64) :=
.seq crepBody742_12 crepBody742_18

def crepBody742_20 : CrepProg (BitVec 64) :=
.seq crepBody742_10 crepBody742_19

def crepBody742_21 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody742_20

def crepBody742_22 : CrepProg (BitVec 64) :=
.seq crepBody742_9 crepBody742_21

def data742 : CrepProg (BitVec 64) := crepBody742_22
def output742 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [107#8, 122#8, 103#8, 95#8, 108#8, 111#8, 97#8, 100#8, 95#8, 103#8, 49#8], [0, 1], crepProgToHOL data742)
end InitECandidate.Proofs.FrontendStages.Crep
