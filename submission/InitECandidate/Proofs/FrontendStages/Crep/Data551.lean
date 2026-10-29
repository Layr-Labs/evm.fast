import InitECandidate.Proofs.FrontendStages.Crep.Translate535
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody551_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody551_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody551_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 255#64)

def crepBody551_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.const 20#64]

def crepBody551_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody551_3

def crepBody551_5 : CrepProg (BitVec 64) :=
.seq crepBody551_2 crepBody551_4

def crepBody551_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 21#64],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]

def crepBody551_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody551_6

def crepBody551_8 : CrepProg (BitVec 64) :=
.seq crepBody551_5 crepBody551_7

def crepBody551_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "keccak256"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 53#64]]

def crepBody551_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody551_9

def crepBody551_11 : CrepProg (BitVec 64) :=
.seq crepBody551_8 crepBody551_10

def crepBody551_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody551_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "keccak256"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 85#64, Flapjack.CrepExp.var 7]

def crepBody551_14 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody551_13

def crepBody551_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 12#64],
    Flapjack.CrepExp.const 20#64]

def crepBody551_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody551_15

def crepBody551_17 : CrepProg (BitVec 64) :=
.seq crepBody551_14 crepBody551_16

def crepBody551_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody551_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody551_18

def crepBody551_20 : CrepProg (BitVec 64) :=
.seq crepBody551_17 crepBody551_19

def crepBody551_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody551_22 : CrepProg (BitVec 64) :=
.seq crepBody551_20 crepBody551_21

def crepBody551_23 : CrepProg (BitVec 64) :=
.seq crepBody551_12 crepBody551_22

def crepBody551_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody551_23

def crepBody551_25 : CrepProg (BitVec 64) :=
.seq crepBody551_11 crepBody551_24

def crepBody551_26 : CrepProg (BitVec 64) :=
.seq crepBody551_1 crepBody551_25

def crepBody551_27 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody551_26

def crepBody551_28 : CrepProg (BitVec 64) :=
.seq crepBody551_0 crepBody551_27

def crepBody551_29 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody551_28

def data551 : CrepProg (BitVec 64) := crepBody551_29
def output551 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 50#8, 95#8, 99#8,
    111#8, 110#8, 116#8, 114#8, 97#8, 99#8, 116#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8], [0, 1, 2, 3, 4], crepProgToHOL data551)
end InitECandidate.Proofs.FrontendStages.Crep
