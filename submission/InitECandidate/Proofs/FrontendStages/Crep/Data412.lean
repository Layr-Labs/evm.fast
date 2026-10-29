import InitECandidate.Proofs.FrontendStages.Crep.Translate396
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody412_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody412_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody412_2 : CrepProg (BitVec 64) :=
.seq crepBody412_0 crepBody412_1

def crepBody412_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 3#64) crepBody412_2

def crepBody412_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody412_5 : CrepProg (BitVec 64) :=
.seq crepBody412_3 crepBody412_4

def crepBody412_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1024#64)) crepBody412_5 crepBody412_1

def crepBody412_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 1024#64)

def crepBody412_8 : CrepProg (BitVec 64) :=
.seq crepBody412_7 crepBody412_1

def crepBody412_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64) (Flapjack.CrepExp.var 6)) crepBody412_8 crepBody412_1

def crepBody412_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]]

def crepBody412_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]]

def crepBody412_12 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody412_11

def crepBody412_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody412_14 : CrepProg (BitVec 64) :=
.seq crepBody412_13 crepBody412_1

def crepBody412_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody412_14

def crepBody412_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 8#64]) crepBody412_15

def crepBody412_17 : CrepProg (BitVec 64) :=
.seq crepBody412_12 crepBody412_16

def crepBody412_18 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 6) crepBody412_14

def crepBody412_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 232#64]) crepBody412_18

def crepBody412_20 : CrepProg (BitVec 64) :=
.seq crepBody412_17 crepBody412_19

def crepBody412_21 : CrepProg (BitVec 64) :=
.seq crepBody412_10 crepBody412_20

def crepBody412_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody412_21

def crepBody412_23 : CrepProg (BitVec 64) :=
.seq crepBody412_9 crepBody412_22

def crepBody412_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 2#64]) crepBody412_23

def crepBody412_25 : CrepProg (BitVec 64) :=
.seq crepBody412_6 crepBody412_24

def crepBody412_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)) crepBody412_25 crepBody412_1

def crepBody412_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1024#64)) crepBody412_5 crepBody412_1

def crepBody412_28 : CrepProg (BitVec 64) :=
.seq crepBody412_26 crepBody412_27

def crepBody412_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody412_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 8)

def crepBody412_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 9)

def crepBody412_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 10)

def crepBody412_33 : CrepProg (BitVec 64) :=
.seq crepBody412_32 crepBody412_1

def crepBody412_34 : CrepProg (BitVec 64) :=
.seq crepBody412_31 crepBody412_33

def crepBody412_35 : CrepProg (BitVec 64) :=
.seq crepBody412_30 crepBody412_34

def crepBody412_36 : CrepProg (BitVec 64) :=
.seq crepBody412_29 crepBody412_35

def crepBody412_37 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 3) crepBody412_36

def crepBody412_38 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 2) crepBody412_37

def crepBody412_39 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 1) crepBody412_38

def crepBody412_40 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 0) crepBody412_39

def crepBody412_41 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]]) crepBody412_40

def crepBody412_42 : CrepProg (BitVec 64) :=
.seq crepBody412_28 crepBody412_41

def crepBody412_43 : CrepProg (BitVec 64) :=
.seq crepBody412_29 crepBody412_1

def crepBody412_44 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody412_43

def crepBody412_45 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 16#64]) crepBody412_44

def crepBody412_46 : CrepProg (BitVec 64) :=
.seq crepBody412_42 crepBody412_45

def crepBody412_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody412_48 : CrepProg (BitVec 64) :=
.seq crepBody412_46 crepBody412_47

def crepBody412_49 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 232#64])) crepBody412_48

def crepBody412_50 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 16#64])) crepBody412_49

def data412 : CrepProg (BitVec 64) := crepBody412_50
def output412 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 112#8, 117#8, 115#8, 104#8], [0, 1, 2, 3], crepProgToHOL data412)
end InitECandidate.Proofs.FrontendStages.Crep
