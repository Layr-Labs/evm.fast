import InitECandidate.Proofs.FrontendStages.Crep.Translate78
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody94_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memzero" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 200#64]

def crepBody94_1 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody94_0

def crepBody94_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "keccak_absorb_block"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]]

def crepBody94_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody94_2

def crepBody94_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 5)

def crepBody94_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody94_6 : CrepProg (BitVec 64) :=
.seq crepBody94_4 crepBody94_5

def crepBody94_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 136#64]) crepBody94_6

def crepBody94_8 : CrepProg (BitVec 64) :=
.seq crepBody94_3 crepBody94_7

def crepBody94_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 136#64])) crepBody94_8

def crepBody94_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 80#64]),
    Flapjack.CrepExp.const 136#64]

def crepBody94_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody94_10

def crepBody94_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 80#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4], Flapjack.CrepExp.var 5]

def crepBody94_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody94_12

def crepBody94_14 : CrepProg (BitVec 64) :=
.seq crepBody94_11 crepBody94_13

def crepBody94_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 80#64]),
      Flapjack.CrepExp.var 5])
  (Flapjack.CrepExp.const 1#64)

def crepBody94_16 : CrepProg (BitVec 64) :=
.seq crepBody94_14 crepBody94_15

def crepBody94_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 80#64]),
      Flapjack.CrepExp.const 135#64])
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 80#64]),
            Flapjack.CrepExp.const 135#64]),
      Flapjack.CrepExp.const 128#64])

def crepBody94_18 : CrepProg (BitVec 64) :=
.seq crepBody94_16 crepBody94_17

def crepBody94_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "keccak_absorb_block"
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 80#64])]

def crepBody94_20 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody94_19

def crepBody94_21 : CrepProg (BitVec 64) :=
.seq crepBody94_18 crepBody94_20

def crepBody94_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody94_23 : CrepProg (BitVec 64) :=
.seq crepBody94_22 crepBody94_5

def crepBody94_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 3)) crepBody94_23

def crepBody94_25 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 2) crepBody94_24

def crepBody94_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody94_23

def crepBody94_27 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody94_26

def crepBody94_28 : CrepProg (BitVec 64) :=
.seq crepBody94_25 crepBody94_27

def crepBody94_29 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64])) crepBody94_23

def crepBody94_30 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]) crepBody94_29

def crepBody94_31 : CrepProg (BitVec 64) :=
.seq crepBody94_28 crepBody94_30

def crepBody94_32 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody94_23

def crepBody94_33 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64]) crepBody94_32

def crepBody94_34 : CrepProg (BitVec 64) :=
.seq crepBody94_31 crepBody94_33

def crepBody94_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]

def crepBody94_36 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody94_35

def crepBody94_37 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody94_34 crepBody94_36

def crepBody94_38 : CrepProg (BitVec 64) :=
.seq crepBody94_21 crepBody94_37

def crepBody94_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody94_40 : CrepProg (BitVec 64) :=
.seq crepBody94_38 crepBody94_39

def crepBody94_41 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]) crepBody94_40

def crepBody94_42 : CrepProg (BitVec 64) :=
.seq crepBody94_9 crepBody94_41

def crepBody94_43 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody94_42

def crepBody94_44 : CrepProg (BitVec 64) :=
.seq crepBody94_1 crepBody94_43

def crepBody94_45 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 72#64])) crepBody94_44

def data94 : CrepProg (BitVec 64) := crepBody94_45
def output94 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [107#8, 101#8, 99#8, 99#8, 97#8, 107#8, 50#8, 53#8, 54#8], [0, 1, 2], crepProgToHOL data94)
end InitECandidate.Proofs.FrontendStages.Crep
