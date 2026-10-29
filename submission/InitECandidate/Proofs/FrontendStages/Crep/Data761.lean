import InitECandidate.Proofs.FrontendStages.Crep.Translate745
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody761_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody761_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody761_2 : CrepProg (BitVec 64) :=
.seq crepBody761_0 crepBody761_1

def crepBody761_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 10#64) crepBody761_2

def crepBody761_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody761_5 : CrepProg (BitVec 64) :=
.seq crepBody761_3 crepBody761_4

def crepBody761_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody761_5 crepBody761_1

def crepBody761_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "udivmod" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 384#64]

def crepBody761_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody761_9 : CrepProg (BitVec 64) :=
.seq crepBody761_8 crepBody761_1

def crepBody761_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 10#64) crepBody761_9

def crepBody761_11 : CrepProg (BitVec 64) :=
.seq crepBody761_10 crepBody761_4

def crepBody761_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody761_11 crepBody761_1

def crepBody761_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "charge_gas"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 32600#64, Flapjack.CrepExp.var 5],
        Flapjack.CrepExp.const 37700#64]]

def crepBody761_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody761_13

def crepBody761_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody761_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "bls_pairing_exec"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody761_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 8)

def crepBody761_18 : CrepProg (BitVec 64) :=
.seq crepBody761_17 crepBody761_1

def crepBody761_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 10#64) crepBody761_18

def crepBody761_20 : CrepProg (BitVec 64) :=
.seq crepBody761_19 crepBody761_4

def crepBody761_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody761_20 crepBody761_1

def crepBody761_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody761_23 : CrepProg (BitVec 64) :=
.seq crepBody761_22 crepBody761_1

def crepBody761_24 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 6) crepBody761_23

def crepBody761_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody761_24

def crepBody761_26 : CrepProg (BitVec 64) :=
.seq crepBody761_21 crepBody761_25

def crepBody761_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 32#64) crepBody761_23

def crepBody761_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody761_27

def crepBody761_29 : CrepProg (BitVec 64) :=
.seq crepBody761_26 crepBody761_28

def crepBody761_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody761_31 : CrepProg (BitVec 64) :=
.seq crepBody761_29 crepBody761_30

def crepBody761_32 : CrepProg (BitVec 64) :=
.seq crepBody761_16 crepBody761_31

def crepBody761_33 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody761_32

def crepBody761_34 : CrepProg (BitVec 64) :=
.seq crepBody761_15 crepBody761_33

def crepBody761_35 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody761_34

def crepBody761_36 : CrepProg (BitVec 64) :=
.seq crepBody761_14 crepBody761_35

def crepBody761_37 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 3) crepBody761_36

def crepBody761_38 : CrepProg (BitVec 64) :=
.seq crepBody761_12 crepBody761_37

def crepBody761_39 : CrepProg (BitVec 64) :=
.seq crepBody761_7 crepBody761_38

def crepBody761_40 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody761_39

def crepBody761_41 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody761_40

def crepBody761_42 : CrepProg (BitVec 64) :=
.seq crepBody761_6 crepBody761_41

def crepBody761_43 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody761_42

def crepBody761_44 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody761_43

def data761 : CrepProg (BitVec 64) := crepBody761_44
def output761 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8], [], crepProgToHOL data761)
end InitECandidate.Proofs.FrontendStages.Crep
