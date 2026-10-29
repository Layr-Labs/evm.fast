import InitECandidate.Proofs.FrontendStages.Crep.Translate748
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody764_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody764_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody764_2 : CrepProg (BitVec 64) :=
.seq crepBody764_0 crepBody764_1

def crepBody764_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 13#64) crepBody764_2

def crepBody764_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody764_5 : CrepProg (BitVec 64) :=
.seq crepBody764_3 crepBody764_4

def crepBody764_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 192#64)) crepBody764_5 crepBody764_1

def crepBody764_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "charge_gas" [Flapjack.CrepExp.const 50000#64]

def crepBody764_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody764_7

def crepBody764_9 : CrepProg (BitVec 64) :=
.seq crepBody764_6 crepBody764_8

def crepBody764_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody764_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "kzg_point_evaluation_exec"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 3]

def crepBody764_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody764_13 : CrepProg (BitVec 64) :=
.seq crepBody764_12 crepBody764_1

def crepBody764_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 13#64) crepBody764_13

def crepBody764_15 : CrepProg (BitVec 64) :=
.seq crepBody764_14 crepBody764_4

def crepBody764_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody764_15 crepBody764_1

def crepBody764_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody764_18 : CrepProg (BitVec 64) :=
.seq crepBody764_17 crepBody764_1

def crepBody764_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody764_18

def crepBody764_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody764_19

def crepBody764_21 : CrepProg (BitVec 64) :=
.seq crepBody764_16 crepBody764_20

def crepBody764_22 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 64#64) crepBody764_18

def crepBody764_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody764_22

def crepBody764_24 : CrepProg (BitVec 64) :=
.seq crepBody764_21 crepBody764_23

def crepBody764_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody764_26 : CrepProg (BitVec 64) :=
.seq crepBody764_24 crepBody764_25

def crepBody764_27 : CrepProg (BitVec 64) :=
.seq crepBody764_11 crepBody764_26

def crepBody764_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody764_27

def crepBody764_29 : CrepProg (BitVec 64) :=
.seq crepBody764_10 crepBody764_28

def crepBody764_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody764_29

def crepBody764_31 : CrepProg (BitVec 64) :=
.seq crepBody764_9 crepBody764_30

def crepBody764_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody764_31

def crepBody764_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody764_32

def data764 : CrepProg (BitVec 64) := crepBody764_33
def output764 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 107#8, 122#8, 103#8, 95#8, 112#8, 111#8, 105#8, 110#8, 116#8, 95#8, 101#8, 118#8, 97#8,
    108#8, 117#8, 97#8, 116#8, 105#8, 111#8, 110#8], [], crepProgToHOL data764)
end InitECandidate.Proofs.FrontendStages.Crep
