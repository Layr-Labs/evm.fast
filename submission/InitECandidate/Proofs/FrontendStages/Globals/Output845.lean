import InitECandidate.Proofs.FrontendStages.Declarations.Data845
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody845_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody845_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody845_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody845_3 : Prog (BitVec 64) :=
.seq globalBody845_1 globalBody845_2

def globalBody845_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody845_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody845_3 globalBody845_4

def globalBody845_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sg") (Flapjack.Exp.const 0#64)) globalBody845_3 globalBody845_4

def globalBody845_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "g2_decode"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 128#64],
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody845_8 : Prog (BitVec 64) :=
.seq globalBody845_6 globalBody845_7

def globalBody845_9 : Prog (BitVec 64) :=
.seq globalBody845_8 globalBody845_5

def globalBody845_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "sg"), none)) "g2_subgroup_check"
  [Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody845_11 : Prog (BitVec 64) :=
.seq globalBody845_9 globalBody845_10

def globalBody845_12 : Prog (BitVec 64) :=
.seq globalBody845_11 globalBody845_6

def globalBody845_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_accumulate"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody845_14 : Prog (BitVec 64) :=
.seq globalBody845_12 globalBody845_13

def globalBody845_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody845_16 : Prog (BitVec 64) :=
.seq globalBody845_14 globalBody845_15

def globalBody845_17 : Prog (BitVec 64) :=
.decCall ("sg") (Flapjack.Shape.one) ("g1_subgroup_check") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) globalBody845_16

def globalBody845_18 : Prog (BitVec 64) :=
.seq globalBody845_5 globalBody845_17

def globalBody845_19 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g1_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "p"]) globalBody845_18

def globalBody845_20 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "data",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 384#64]]) globalBody845_19

def globalBody845_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "k")) globalBody845_20

def globalBody845_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_final_exp"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody845_23 : Prog (BitVec 64) :=
.seq globalBody845_21 globalBody845_22

def globalBody845_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]

def globalBody845_25 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "one")

def globalBody845_26 : Prog (BitVec 64) :=
.seq globalBody845_24 globalBody845_25

def globalBody845_27 : Prog (BitVec 64) :=
.seq globalBody845_26 globalBody845_1

def globalBody845_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody845_29 : Prog (BitVec 64) :=
.seq globalBody845_27 globalBody845_28

def globalBody845_30 : Prog (BitVec 64) :=
.decCall ("one") (Flapjack.Shape.one) ("fp12_is_one") ([Flapjack.Exp.var Flapjack.VarKind.local "acc"]) globalBody845_29

def globalBody845_31 : Prog (BitVec 64) :=
.seq globalBody845_23 globalBody845_30

def globalBody845_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody845_31

def globalBody845_33 : Prog (BitVec 64) :=
.seq globalBody845_0 globalBody845_32

def globalBody845_34 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) globalBody845_33

def globalBody845_35 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody845_34

def globalBody845_36 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody845_35

def globalBody845_37 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody845_36

def globalData845 : Decl (BitVec 64) := .function { name := "bls_pairing_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("k", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody845_37, returnShape := (Flapjack.Shape.one) }
def globalOutput845 := Pancake.PanLang.declToHOL globalData845
end InitECandidate.Proofs.FrontendStages.Declarations
