import InitECandidate.Proofs.FrontendStages.Crep.Translate198
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody214_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody214_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody214_2 : CrepProg (BitVec 64) :=
.seq crepBody214_0 crepBody214_1

def crepBody214_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody214_2

def crepBody214_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody214_5 : CrepProg (BitVec 64) :=
.seq crepBody214_3 crepBody214_4

def crepBody214_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 256#64) (Flapjack.CrepExp.var 1)) crepBody214_5 crepBody214_1

def crepBody214_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody214_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody214_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "decode_header"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody214_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody214_11 : CrepProg (BitVec 64) :=
.seq crepBody214_10 crepBody214_1

def crepBody214_12 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody214_11

def crepBody214_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]]) crepBody214_12

def crepBody214_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "keccak256"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]]]

def crepBody214_15 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody214_14

def crepBody214_16 : CrepProg (BitVec 64) :=
.seq crepBody214_13 crepBody214_15

def crepBody214_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 6)

def crepBody214_18 : CrepProg (BitVec 64) :=
.seq crepBody214_17 crepBody214_1

def crepBody214_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody214_18

def crepBody214_20 : CrepProg (BitVec 64) :=
.seq crepBody214_16 crepBody214_19

def crepBody214_21 : CrepProg (BitVec 64) :=
.seq crepBody214_9 crepBody214_20

def crepBody214_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody214_21

def crepBody214_23 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 1)) crepBody214_22

def crepBody214_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.const 1#64)

def crepBody214_25 : CrepProg (BitVec 64) :=
.seq crepBody214_24 crepBody214_1

def crepBody214_26 : CrepProg (BitVec 64) :=
.seq crepBody214_23 crepBody214_25

def crepBody214_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 2,
                Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]]),
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.const 32#64]

def crepBody214_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody214_29 : CrepProg (BitVec 64) :=
.seq crepBody214_28 crepBody214_1

def crepBody214_30 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 2#64) crepBody214_29

def crepBody214_31 : CrepProg (BitVec 64) :=
.seq crepBody214_30 crepBody214_4

def crepBody214_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody214_31 crepBody214_1

def crepBody214_33 : CrepProg (BitVec 64) :=
.seq crepBody214_32 crepBody214_19

def crepBody214_34 : CrepProg (BitVec 64) :=
.seq crepBody214_27 crepBody214_33

def crepBody214_35 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody214_34

def crepBody214_36 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 1)) crepBody214_35

def crepBody214_37 : CrepProg (BitVec 64) :=
.seq crepBody214_26 crepBody214_36

def crepBody214_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody214_39 : CrepProg (BitVec 64) :=
.seq crepBody214_37 crepBody214_38

def crepBody214_40 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody214_39

def crepBody214_41 : CrepProg (BitVec 64) :=
.seq crepBody214_8 crepBody214_40

def crepBody214_42 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody214_41

def crepBody214_43 : CrepProg (BitVec 64) :=
.seq crepBody214_7 crepBody214_42

def crepBody214_44 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody214_43

def crepBody214_45 : CrepProg (BitVec 64) :=
.seq crepBody214_6 crepBody214_44

def data214 : CrepProg (BitVec 64) := crepBody214_45
def output214 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 115#8], [0, 1], crepProgToHOL data214)
end InitECandidate.Proofs.FrontendStages.Crep
