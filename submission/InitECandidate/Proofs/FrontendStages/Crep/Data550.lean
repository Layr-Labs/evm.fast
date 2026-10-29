import InitECandidate.Proofs.FrontendStages.Crep.Translate534
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody550_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody550_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody550_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64]

def crepBody550_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 7)

def crepBody550_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody550_5 : CrepProg (BitVec 64) :=
.seq crepBody550_3 crepBody550_4

def crepBody550_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]) crepBody550_5

def crepBody550_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "rlp_encode_word" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1]

def crepBody550_8 : CrepProg (BitVec 64) :=
.seq crepBody550_6 crepBody550_7

def crepBody550_9 : CrepProg (BitVec 64) :=
.seq crepBody550_8 crepBody550_6

def crepBody550_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 7]

def crepBody550_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "rlp_encode_list_header"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 9#64],
        Flapjack.CrepExp.var 8],
    Flapjack.CrepExp.var 7]

def crepBody550_12 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody550_11

def crepBody550_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody550_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "keccak256"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 9#64],
        Flapjack.CrepExp.var 8],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8], Flapjack.CrepExp.var 9]

def crepBody550_15 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody550_14

def crepBody550_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memcpy"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 12#64],
    Flapjack.CrepExp.const 20#64]

def crepBody550_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody550_16

def crepBody550_18 : CrepProg (BitVec 64) :=
.seq crepBody550_15 crepBody550_17

def crepBody550_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody550_20 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody550_19

def crepBody550_21 : CrepProg (BitVec 64) :=
.seq crepBody550_18 crepBody550_20

def crepBody550_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody550_23 : CrepProg (BitVec 64) :=
.seq crepBody550_21 crepBody550_22

def crepBody550_24 : CrepProg (BitVec 64) :=
.seq crepBody550_13 crepBody550_23

def crepBody550_25 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody550_24

def crepBody550_26 : CrepProg (BitVec 64) :=
.seq crepBody550_12 crepBody550_25

def crepBody550_27 : CrepProg (BitVec 64) :=
.seq crepBody550_10 crepBody550_26

def crepBody550_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody550_27

def crepBody550_29 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 9#64]]) crepBody550_28

def crepBody550_30 : CrepProg (BitVec 64) :=
.seq crepBody550_9 crepBody550_29

def crepBody550_31 : CrepProg (BitVec 64) :=
.seq crepBody550_2 crepBody550_30

def crepBody550_32 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody550_31

def crepBody550_33 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 9#64]) crepBody550_32

def crepBody550_34 : CrepProg (BitVec 64) :=
.seq crepBody550_1 crepBody550_33

def crepBody550_35 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody550_34

def crepBody550_36 : CrepProg (BitVec 64) :=
.seq crepBody550_0 crepBody550_35

def crepBody550_37 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody550_36

def data550 : CrepProg (BitVec 64) := crepBody550_37
def output550 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 99#8, 111#8, 110#8, 116#8, 114#8, 97#8, 99#8, 116#8, 95#8,
    97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8], [0, 1, 2], crepProgToHOL data550)
end InitECandidate.Proofs.FrontendStages.Crep
