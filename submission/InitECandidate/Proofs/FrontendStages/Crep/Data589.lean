import InitECandidate.Proofs.FrontendStages.Crep.Translate573
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody589_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody589_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody589_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody589_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody589_1 crepBody589_2

def crepBody589_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "p256_fp_inv"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody589_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "p256_fp_sqr"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody589_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "p256_fp_mul"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody589_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "p256_fp_mul"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody589_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22, 23, 24, 25], none)) "p256_fp_mul"
  [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody589_9 : CrepProg (BitVec 64) :=
.seq crepBody589_7 crepBody589_8

def crepBody589_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "p256_set_affine"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24,
    Flapjack.CrepExp.var 25]

def crepBody589_11 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody589_10

def crepBody589_12 : CrepProg (BitVec 64) :=
.seq crepBody589_9 crepBody589_11

def crepBody589_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody589_14 : CrepProg (BitVec 64) :=
.seq crepBody589_12 crepBody589_13

def crepBody589_15 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody589_14

def crepBody589_16 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody589_15

def crepBody589_17 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody589_16

def crepBody589_18 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody589_17

def crepBody589_19 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody589_18

def crepBody589_20 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody589_19

def crepBody589_21 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody589_20

def crepBody589_22 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) crepBody589_21

def crepBody589_23 : CrepProg (BitVec 64) :=
.seq crepBody589_6 crepBody589_22

def crepBody589_24 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody589_23

def crepBody589_25 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody589_24

def crepBody589_26 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody589_25

def crepBody589_27 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody589_26

def crepBody589_28 : CrepProg (BitVec 64) :=
.seq crepBody589_5 crepBody589_27

def crepBody589_29 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody589_28

def crepBody589_30 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody589_29

def crepBody589_31 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody589_30

def crepBody589_32 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody589_31

def crepBody589_33 : CrepProg (BitVec 64) :=
.seq crepBody589_4 crepBody589_32

def crepBody589_34 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody589_33

def crepBody589_35 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody589_34

def crepBody589_36 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody589_35

def crepBody589_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody589_36

def crepBody589_38 : CrepProg (BitVec 64) :=
.seq crepBody589_3 crepBody589_37

def crepBody589_39 : CrepProg (BitVec 64) :=
.seq crepBody589_0 crepBody589_38

def crepBody589_40 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody589_39

def crepBody589_41 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 24#64])) crepBody589_40

def crepBody589_42 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 16#64])) crepBody589_41

def crepBody589_43 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 8#64])) crepBody589_42

def crepBody589_44 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64])) crepBody589_43

def data589 : CrepProg (BitVec 64) := crepBody589_44
def output589 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 50#8, 53#8, 54#8, 95#8, 101#8, 99#8, 95#8, 116#8, 111#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8], [0], crepProgToHOL data589)
end InitECandidate.Proofs.FrontendStages.Crep
