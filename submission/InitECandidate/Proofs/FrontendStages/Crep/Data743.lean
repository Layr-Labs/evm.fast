import InitECandidate.Proofs.FrontendStages.Crep.Translate727
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody743_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4, 5], none)) "u256_from_be" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]

def crepBody743_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody743_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody743_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 13)

def crepBody743_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 14)

def crepBody743_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 15)

def crepBody743_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody743_7 : CrepProg (BitVec 64) :=
.seq crepBody743_5 crepBody743_6

def crepBody743_8 : CrepProg (BitVec 64) :=
.seq crepBody743_4 crepBody743_7

def crepBody743_9 : CrepProg (BitVec 64) :=
.seq crepBody743_3 crepBody743_8

def crepBody743_10 : CrepProg (BitVec 64) :=
.seq crepBody743_2 crepBody743_9

def crepBody743_11 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody743_10

def crepBody743_12 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody743_11

def crepBody743_13 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody743_12

def crepBody743_14 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody743_13

def crepBody743_15 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 1) crepBody743_14

def crepBody743_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody743_17 : CrepProg (BitVec 64) :=
.seq crepBody743_15 crepBody743_16

def crepBody743_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64)) crepBody743_17 crepBody743_6

def crepBody743_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "u256_sub"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody743_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.var 16)

def crepBody743_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 17)

def crepBody743_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 18)

def crepBody743_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 19)

def crepBody743_24 : CrepProg (BitVec 64) :=
.seq crepBody743_23 crepBody743_6

def crepBody743_25 : CrepProg (BitVec 64) :=
.seq crepBody743_22 crepBody743_24

def crepBody743_26 : CrepProg (BitVec 64) :=
.seq crepBody743_21 crepBody743_25

def crepBody743_27 : CrepProg (BitVec 64) :=
.seq crepBody743_20 crepBody743_26

def crepBody743_28 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody743_27

def crepBody743_29 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody743_28

def crepBody743_30 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 12) crepBody743_29

def crepBody743_31 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody743_30

def crepBody743_32 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 1) crepBody743_31

def crepBody743_33 : CrepProg (BitVec 64) :=
.seq crepBody743_32 crepBody743_16

def crepBody743_34 : CrepProg (BitVec 64) :=
.seq crepBody743_19 crepBody743_33

def crepBody743_35 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody743_34

def crepBody743_36 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody743_35

def crepBody743_37 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody743_36

def crepBody743_38 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody743_37

def crepBody743_39 : CrepProg (BitVec 64) :=
.seq crepBody743_18 crepBody743_38

def crepBody743_40 : CrepProg (BitVec 64) :=
.seq crepBody743_1 crepBody743_39

def crepBody743_41 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody743_40

def crepBody743_42 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
          Flapjack.CrepExp.const 1344#64],
      Flapjack.CrepExp.const 24#64])) crepBody743_41

def crepBody743_43 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
          Flapjack.CrepExp.const 1344#64],
      Flapjack.CrepExp.const 16#64])) crepBody743_42

def crepBody743_44 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
          Flapjack.CrepExp.const 1344#64],
      Flapjack.CrepExp.const 8#64])) crepBody743_43

def crepBody743_45 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
      Flapjack.CrepExp.const 1344#64])) crepBody743_44

def crepBody743_46 : CrepProg (BitVec 64) :=
.seq crepBody743_0 crepBody743_45

def crepBody743_47 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody743_46

def crepBody743_48 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody743_47

def crepBody743_49 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody743_48

def crepBody743_50 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody743_49

def data743 : CrepProg (BitVec 64) := crepBody743_50
def output743 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [107#8, 122#8, 103#8, 95#8, 110#8, 101#8, 103#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8], [0, 1], crepProgToHOL data743)
end InitECandidate.Proofs.FrontendStages.Crep
