import InitECandidate.Proofs.FrontendStages.Crep.Translate401
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody417_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16, 17], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody417_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody417_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody417_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 18446744073709551615#64)) crepBody417_1 crepBody417_2

def crepBody417_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody417_5 : CrepProg (BitVec 64) :=
.seq crepBody417_4 crepBody417_2

def crepBody417_6 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 17]) crepBody417_5

def crepBody417_7 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 32#64]) crepBody417_6

def crepBody417_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody417_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody417_10 : CrepProg (BitVec 64) :=
.seq crepBody417_9 crepBody417_2

def crepBody417_11 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 18) crepBody417_10

def crepBody417_12 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 32#64]) crepBody417_11

def crepBody417_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody417_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 18446744073709551615#64)) crepBody417_13 crepBody417_2

def crepBody417_15 : CrepProg (BitVec 64) :=
.seq crepBody417_12 crepBody417_14

def crepBody417_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 19],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 20]]

def crepBody417_17 : CrepProg (BitVec 64) :=
.seq crepBody417_15 crepBody417_16

def crepBody417_18 : CrepProg (BitVec 64) :=
.seq crepBody417_8 crepBody417_17

def crepBody417_19 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody417_18

def crepBody417_20 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody417_19

def crepBody417_21 : CrepProg (BitVec 64) :=
.seq crepBody417_7 crepBody417_20

def crepBody417_22 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 32#64])) crepBody417_21

def crepBody417_23 : CrepProg (BitVec 64) :=
.seq crepBody417_3 crepBody417_22

def crepBody417_24 : CrepProg (BitVec 64) :=
.seq crepBody417_0 crepBody417_23

def crepBody417_25 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody417_24

def crepBody417_26 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody417_25

def data417 : CrepProg (BitVec 64) := crepBody417_26
def output417 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 120#8, 116#8, 101#8, 110#8, 100#8, 95#8, 109#8, 101#8, 109#8, 111#8, 114#8, 121#8, 95#8, 99#8, 111#8, 115#8,
    116#8, 50#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], crepProgToHOL data417)
end InitECandidate.Proofs.FrontendStages.Crep
