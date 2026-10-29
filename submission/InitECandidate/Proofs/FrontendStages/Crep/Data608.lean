import InitECandidate.Proofs.FrontendStages.Crep.Translate592
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody608_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "fq_add"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody608_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.var 18)

def crepBody608_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 19)

def crepBody608_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 20)

def crepBody608_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 21)

def crepBody608_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody608_6 : CrepProg (BitVec 64) :=
.seq crepBody608_4 crepBody608_5

def crepBody608_7 : CrepProg (BitVec 64) :=
.seq crepBody608_3 crepBody608_6

def crepBody608_8 : CrepProg (BitVec 64) :=
.seq crepBody608_2 crepBody608_7

def crepBody608_9 : CrepProg (BitVec 64) :=
.seq crepBody608_1 crepBody608_8

def crepBody608_10 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 16) crepBody608_9

def crepBody608_11 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody608_10

def crepBody608_12 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody608_11

def crepBody608_13 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody608_12

def crepBody608_14 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]]) crepBody608_13

def crepBody608_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 17)

def crepBody608_16 : CrepProg (BitVec 64) :=
.seq crepBody608_15 crepBody608_5

def crepBody608_17 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody608_16

def crepBody608_18 : CrepProg (BitVec 64) :=
.seq crepBody608_14 crepBody608_17

def crepBody608_19 : CrepProg (BitVec 64) :=
.seq crepBody608_0 crepBody608_18

def crepBody608_20 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody608_19

def crepBody608_21 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody608_20

def crepBody608_22 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody608_21

def crepBody608_23 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody608_22

def crepBody608_24 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody608_23

def crepBody608_25 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody608_24

def crepBody608_26 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 3,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody608_25

def crepBody608_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 3,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]])) crepBody608_26

def crepBody608_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody608_27

def crepBody608_29 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody608_28

def crepBody608_30 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody608_29

def crepBody608_31 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]])) crepBody608_30

def crepBody608_32 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 0)) crepBody608_31

def crepBody608_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody608_34 : CrepProg (BitVec 64) :=
.seq crepBody608_32 crepBody608_33

def crepBody608_35 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody608_34

def data608 : CrepProg (BitVec 64) := crepBody608_35
def output608 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3], crepProgToHOL data608)
end InitECandidate.Proofs.FrontendStages.Crep
