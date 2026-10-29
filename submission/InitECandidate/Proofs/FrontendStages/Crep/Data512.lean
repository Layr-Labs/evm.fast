import InitECandidate.Proofs.FrontendStages.Crep.Translate496
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody512_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody512_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas" [Flapjack.CrepExp.const 20#64]

def crepBody512_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody512_1

def crepBody512_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "block_env" []

def crepBody512_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody512_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody512_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody512_5

def crepBody512_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody512_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody512_7

def crepBody512_9 : CrepProg (BitVec 64) :=
.seq crepBody512_6 crepBody512_8

def crepBody512_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody512_11 : CrepProg (BitVec 64) :=
.seq crepBody512_9 crepBody512_10

def crepBody512_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody512_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 6),
      Flapjack.CrepExp.cmp Flapjack.Cmp.lower
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 256#64])
        (Flapjack.CrepExp.var 6),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7)
        (Flapjack.CrepExp.const 18446744073709551615#64)])) crepBody512_11 crepBody512_12

def crepBody512_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 10)

def crepBody512_15 : CrepProg (BitVec 64) :=
.seq crepBody512_14 crepBody512_12

def crepBody512_16 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 50#64) crepBody512_15

def crepBody512_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody512_18 : CrepProg (BitVec 64) :=
.seq crepBody512_16 crepBody512_17

def crepBody512_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 8)) crepBody512_18 crepBody512_12

def crepBody512_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8],
            Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.const 32#64]

def crepBody512_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "track_ancestor_access" [Flapjack.CrepExp.var 8]

def crepBody512_22 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody512_21

def crepBody512_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "stack_push"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody512_24 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody512_23

def crepBody512_25 : CrepProg (BitVec 64) :=
.seq crepBody512_22 crepBody512_24

def crepBody512_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody512_27 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody512_26

def crepBody512_28 : CrepProg (BitVec 64) :=
.seq crepBody512_25 crepBody512_27

def crepBody512_29 : CrepProg (BitVec 64) :=
.seq crepBody512_28 crepBody512_10

def crepBody512_30 : CrepProg (BitVec 64) :=
.seq crepBody512_20 crepBody512_29

def crepBody512_31 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody512_30

def crepBody512_32 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody512_31

def crepBody512_33 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody512_32

def crepBody512_34 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody512_33

def crepBody512_35 : CrepProg (BitVec 64) :=
.seq crepBody512_19 crepBody512_34

def crepBody512_36 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 24#64])) crepBody512_35

def crepBody512_37 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]) crepBody512_36

def crepBody512_38 : CrepProg (BitVec 64) :=
.seq crepBody512_13 crepBody512_37

def crepBody512_39 : CrepProg (BitVec 64) :=
.seq crepBody512_4 crepBody512_38

def crepBody512_40 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody512_39

def crepBody512_41 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64])) crepBody512_40

def crepBody512_42 : CrepProg (BitVec 64) :=
.seq crepBody512_3 crepBody512_41

def crepBody512_43 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody512_42

def crepBody512_44 : CrepProg (BitVec 64) :=
.seq crepBody512_2 crepBody512_43

def crepBody512_45 : CrepProg (BitVec 64) :=
.seq crepBody512_0 crepBody512_44

def crepBody512_46 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody512_45

def crepBody512_47 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody512_46

def crepBody512_48 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody512_47

def crepBody512_49 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody512_48

def data512 : CrepProg (BitVec 64) := crepBody512_49
def output512 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8, 104#8, 97#8, 115#8, 104#8], [], crepProgToHOL data512)
end InitECandidate.Proofs.FrontendStages.Crep
