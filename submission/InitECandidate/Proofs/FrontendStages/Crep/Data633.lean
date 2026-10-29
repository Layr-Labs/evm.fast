import InitECandidate.Proofs.FrontendStages.Crep.Translate617
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody633_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody633_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memzero" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]

def crepBody633_2 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody633_1

def crepBody633_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody633_4 : CrepProg (BitVec 64) :=
.seq crepBody633_2 crepBody633_3

def crepBody633_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody633_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody633_4 crepBody633_5

def crepBody633_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9, 10], none)) "fq_inv"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody633_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "fq_mul"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody633_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "fq_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody633_10 : CrepProg (BitVec 64) :=
.seq crepBody633_8 crepBody633_9

def crepBody633_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "fq_from_mont"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody633_12 : CrepProg (BitVec 64) :=
.seq crepBody633_10 crepBody633_11

def crepBody633_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "fq_from_mont"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody633_14 : CrepProg (BitVec 64) :=
.seq crepBody633_12 crepBody633_13

def crepBody633_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 1]

def crepBody633_16 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody633_15

def crepBody633_17 : CrepProg (BitVec 64) :=
.seq crepBody633_14 crepBody633_16

def crepBody633_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]]

def crepBody633_19 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody633_18

def crepBody633_20 : CrepProg (BitVec 64) :=
.seq crepBody633_17 crepBody633_19

def crepBody633_21 : CrepProg (BitVec 64) :=
.seq crepBody633_20 crepBody633_3

def crepBody633_22 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody633_21

def crepBody633_23 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody633_22

def crepBody633_24 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody633_23

def crepBody633_25 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody633_24

def crepBody633_26 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody633_25

def crepBody633_27 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody633_26

def crepBody633_28 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody633_27

def crepBody633_29 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) crepBody633_28

def crepBody633_30 : CrepProg (BitVec 64) :=
.seq crepBody633_7 crepBody633_29

def crepBody633_31 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody633_30

def crepBody633_32 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody633_31

def crepBody633_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody633_32

def crepBody633_34 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody633_33

def crepBody633_35 : CrepProg (BitVec 64) :=
.seq crepBody633_6 crepBody633_34

def crepBody633_36 : CrepProg (BitVec 64) :=
.seq crepBody633_0 crepBody633_35

def crepBody633_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody633_36

def crepBody633_38 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 24#64])) crepBody633_37

def crepBody633_39 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 16#64])) crepBody633_38

def crepBody633_40 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 8#64])) crepBody633_39

def crepBody633_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64])) crepBody633_40

def data633 : CrepProg (BitVec 64) := crepBody633_41
def output633 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 103#8, 49#8, 95#8, 116#8, 111#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8], [0, 1], crepProgToHOL data633)
end InitECandidate.Proofs.FrontendStages.Crep
