import InitECandidate.Proofs.FrontendStages.Crep.Translate248
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody264_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody264_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody264_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody264_0 crepBody264_1

def crepBody264_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "mpt_fail" [Flapjack.CrepExp.const 13#64]

def crepBody264_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody264_3

def crepBody264_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody264_4 crepBody264_1

def crepBody264_6 : CrepProg (BitVec 64) :=
.seq crepBody264_2 crepBody264_5

def crepBody264_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody264_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "keccak256"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.var 2]

def crepBody264_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody264_8

def crepBody264_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody264_11 : CrepProg (BitVec 64) :=
.seq crepBody264_10 crepBody264_1

def crepBody264_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody264_11

def crepBody264_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody264_12

def crepBody264_14 : CrepProg (BitVec 64) :=
.seq crepBody264_9 crepBody264_13

def crepBody264_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody264_16 : CrepProg (BitVec 64) :=
.seq crepBody264_14 crepBody264_15

def crepBody264_17 : CrepProg (BitVec 64) :=
.seq crepBody264_7 crepBody264_16

def crepBody264_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody264_17

def crepBody264_19 : CrepProg (BitVec 64) :=
.seq crepBody264_6 crepBody264_18

def crepBody264_20 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody264_19

def data264 : CrepProg (BitVec 64) := crepBody264_20
def output264 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [110#8, 111#8, 100#8, 101#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 99#8, 97#8, 99#8, 104#8, 101#8, 100#8], [0], crepProgToHOL data264)
end InitECandidate.Proofs.FrontendStages.Crep
